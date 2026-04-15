const Database = require('better-sqlite3');
const path = require('path');

const dbPath = path.join(__dirname, 'library.db');
const db = new Database(dbPath);
db.pragma('foreign_keys = ON');

// create the db if it doesn't exist
db.exec(`
    CREATE TABLE IF NOT EXISTS books (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT NOT NULL,
        author TEXT NOT NULL,
        description TEXT NOT NULL,
        image TEXT NOT NULL,
        shelf INTEGER NOT NULL,
        highlight INTEGER CHECK (highlight IN (0, 1))
    );
    CREATE TABLE IF NOT EXISTS book_tags (
         id INTEGER PRIMARY KEY AUTOINCREMENT,
         description TEXT NOT NULL
    );
    CREATE TABLE IF NOT EXISTS books_with_tags (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        book_id INTEGER NOT NULL,
        tag_id INTEGER NOT NULL,
        FOREIGN KEY (book_id) REFERENCES books(id),
        FOREIGN KEY (tag_id) REFERENCES book_tags(id)
        );
`);

module.exports = db;