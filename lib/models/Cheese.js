const pool = require('../utils/pool');

module.exports = class Cheese {
    id;
    name;
    description;
    url;
    pairs;
    smells;

    constructor(row) {
        this.id = row.id;
        this.name = row.name;
        this.description = row.description;
        this.url = row.url;
        this.pairs = row.pairs;
        this.smells = row.smells;
    }

    static async getAll() {
        const { rows } = await pool.query('SELECT id, name FROM cheeses;');
        return rows.map((row) => new Cheese(row));
    }

    static async getById(id) {
        const { rows } = await pool.query('SELECT * FROM cheeses WHERE id=$1;', [id]);
        if (!rows[0]) return null;

        return new Cheese(rows[0]);
    }
};