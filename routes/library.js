const express = require("express");
const router = express.Router();
const db = require("../db/database");

// GET books
router.get('/', (req, res) => {
    try {
        const books = db.prepare('SELECT * FROM books').all();
        const tags = db.prepare(`
            SELECT
                books_with_tags.book_id,
                book_tags.description
            FROM books_with_tags
                     JOIN book_tags ON book_tags.id = books_with_tags.tag_id
        `).all();

        const groupedTags = {};
        for (const t of tags) {
            if (!groupedTags[t.book_id]) groupedTags[t.book_id] = [];
            groupedTags[t.book_id].push(t.description);
        }

        const result = books.map(b => ({
            id: b.id,
            title: b.title,
            author: b.author,
            description: b.description,
            image: b.image,
            shelf: b.shelf,
            highlight: b.highlight,
            chips: groupedTags[b.id] || []
        }));

        res.json(result);
    } catch (error) {
        res.status(500).json({ error: 'Failed to fetch books' });
    }
});


// POST create a new book
router.post('/', (req, res) => {
    const { title, author, description, image, shelf, highlight, tags } = req.body;

    if (!title || !author || !description || !image || !shelf || !highlight) {
        return res.status(400).json({ error: 'Missing a required field!' });
    }

    try {
        const result = db.prepare(`
            INSERT INTO books (title, author, description, image, shelf, highlight)
            VALUES (?, ?, ?, ?, ?, ?)
        `).run(title, author, description, image, shelf, highlight);

        const bookId = result.lastInsertRowid;

        if (Array.isArray(tags)) {
            const insertTag = db.prepare(`
                INSERT INTO books_with_tags (book_id, tag_id)
                VALUES (?, ?)
            `);
            for (const tagId of tags) {
                insertTag.run(bookId, tagId);
            }
        }

        const newBook = {
            id: bookId,
            title,
            author,
            description: description || null,
            image: image || null,
            shelf: shelf || null,
            highlight: highlight || null,
            tags: Array.isArray(tags) ? tags : []
        };

        res.status(201).json(newBook);

    } catch (error) {
        res.status(500).json({ error: 'Failed to create book' });
    }
});

// PATCH request
router.patch('/', (req, res) => {
    const { id, shelf } = req.body;

    if (!shelf) {
        return res.status(400).json({ error: 'Missing shelf!' });
    }

    try {
        const result = db.prepare(`
            UPDATE books SET shelf = ? WHERE id = ?
        `).run(shelf, id);

        if (result.changes === 0) {
            return res.status(404).json({ error: 'Book not found' });
        }

        res.json({ id, shelf });

    } catch (error) {
        res.status(500).json({ error: 'Failed to update shelf' });
    }

})

module.exports = router;