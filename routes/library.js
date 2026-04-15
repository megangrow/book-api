const express = require("express");
const router = express.Router();
const db = require("../db/database"); // ← was missing entirely

// POST create a new book
router.post('/', (req, res) => {
    const { title, author, description, image, shelf, highlight, tags } = req.body;

    if (!title || !author) { // ← was checking !name || !address
        return res.status(400).json({ error: 'Title and author are required' });
    }

    try {
        const result = db.prepare(`
            INSERT INTO books (title, author, description, image, shelf, highlight)
            VALUES (?, ?, ?, ?, ?, ?)
        `).run(title, author, description || null, image || null, shelf || null, highlight || null);
        // ↑ had 6 columns but only 4 placeholders (?)

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

module.exports = router;