const express = require("express");
const router = express.Router();
const db = require("../db/database");

// GET clubs
router.get('/', (req, res) => {
    try {
        const clubs = db.prepare('SELECT * FROM book_clubs').all();
        const tags = db.prepare(`
            SELECT 
              book_clubs_w_tags.club_id,
              book_club_tags.description
            FROM book_clubs_w_tags
            JOIN book_club_tags ON book_club_tags.id = book_clubs_w_tags.tag_id
      `).all();
        const details = db.prepare(`
            SELECT club_id, description FROM book_club_details
        `).all();

        const groupedTags = {};
        for (const t of tags) {
            if (!groupedTags[t.club_id]) groupedTags[t.club_id] = [];
            groupedTags[t.club_id].push(t.description);
        }

        const groupedDetails = {};
        for (const d of details) {
            if (!groupedDetails[d.club_id]) groupedDetails[d.club_id] = [];
            groupedDetails[d.club_id].push(d.description);
        }

        const result = clubs.map(c => ({
            id: c.id,
            name: c.name,
            hours: c.hours,
            address: c.address,
            members: c.members,
            image: c.image,
            contact: c.contact,
            tags: groupedTags[c.id] || [],
            details: groupedDetails[c.id] || []
        }));

        res.json(result);
    } catch (error) {
        res.status(500).json({ error: 'Failed to fetch clubs' });
    }
});


// POST create a new book
router.post('/', (req, res) => {
    const { name, hours, address, members, image, contact, tags, details } = req.body;

    if (!name || !hours || !address || !members || !image || !contact) {
        return res.status(400).json({ error: 'Missing a required field!' });
    }

    try {
        const result = db.prepare(`
            INSERT INTO book_clubs (name, hours, address, members, image, contact)
            VALUES (?, ?, ?, ?, ?, ?)
        `).run(name, hours, address, members, image, contact);

        const clubId = result.lastInsertRowid;

        if (Array.isArray(tags)) {
            const insertTag = db.prepare(`
                INSERT INTO book_clubs_w_tags (club_id, tag_id)
                VALUES (?, ?)
            `);
            for (const tagId of tags) {
                insertTag.run(clubId, tagId);
            }
        }

        if (Array.isArray(details)) {
            const insertDetail = db.prepare(`
            INSERT INTO book_club_details (club_id, description)
            VALUES (?, ?)
        `);
            for (const detail of details) {
                insertDetail.run(clubId, detail);
            }
        }

        const newClub = {
            id: clubId,
            name,
            hours,
            address,
            members,
            image,
            contact,
            tags: Array.isArray(tags) ? tags : [],
            details: Array.isArray(details) ? details : []
        };

        res.status(201).json(newClub);

    } catch (error) {
        res.status(500).json({ error: 'Failed to create club' });
    }
});

module.exports = router;