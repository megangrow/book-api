const express = require("express");
const app = express();
const PORT = 3000;

app.use(express.json());
const cors = require("cors");
app.use(cors());

require("./db/database");

const libraryRouter = require("./routes/library");
app.use("/library", libraryRouter);
const clubRouter = require("./routes/clubs");
app.use("/clubs", clubRouter);

app.get("/health", (req, res) => {
    res.status(200).json({
        status: "ok",
        uptime: process.uptime(),
        timestamp: new Date().toISOString(),
    });
});

app.listen(PORT, () => {
    console.log("API is running");
    console.log(`Test the health check at http://localhost:${PORT}/health`);
});
