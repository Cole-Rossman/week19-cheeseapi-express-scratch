const { Router } = require('express');
const Cheese = require('../models/Cheeses');

module.exports = Router()
.get('/:id', async (req, res) => {
    const id = req.params.id;
    const matchingCheese = await Cheese.getById(id);
    res.json(matchingCheese);
})

.get('/', async (req, res) => {
    const cheese = await Cheese.getAll();
    res.json(cheese);
});