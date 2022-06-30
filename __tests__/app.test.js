const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const request = require('supertest');
const app = require('../lib/app');

const Cheese = require('../lib/models/Cheese');

describe('cheese routes', () => {
  beforeEach(() => {
    return setup(pool);
  });

  it('/api/v1/cheeses/ should return a list of cheeses', async () => {
    const res = await request(app).get('/api/v1/cheeses');
    const cheeses = await Cheese.getAll();
    const expected = cheeses.map((cheese) => {
      return { id: cheese.id, name: cheese.name };
    });
    expect(res.body).toEqual(expected);
  });

  it('/api/v1/cheeses/:id should return cheese detail', async () => {
    const res = await request(app).get('/api/v1/cheeses/2');
    const asiago = {
    id: '2',
    name: 'Asiago',
    description: 'Asiago, a nutty-flavored cheese, comes in two forms: fresh and mature. The fresh has an off-white color and is smoother and milder, while mature Asiago is yellowish and somewhat crumbly. Depending on its age, Asiago can be grated, melted or sliced.',
    url: 'https://www.thespruceeats.com/thmb/jR2GuCLkYrFac2c2PZWvrzNFfYE=/2063x1453/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-187188253-c100e628c78540aaa5f0ce3ab342ec88.jpg',
    pairs: 'pairs with fish broth',
    smells: true,
    };
    expect(res.body).toEqual(asiago);
  });

  afterAll(() => {
    pool.end();
  });
});
