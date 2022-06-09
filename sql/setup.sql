-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP table if exists cheeses;

Create table cheeses (
    id BIGINT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    url VARCHAR NOT NULL,
    pairs VARCHAR NOT NULL,
    smells BOOLEAN
);

INSERT INTO cheeses (name, description, url, pairs, smells) VALUES
(
    'American',
    'American is a creamy, smooth cheese made from blending natural cheeses. It comes in several forms including individually wrapped cheese slices, small pre-sliced blocks and large blocks. It melts well.',
    'https://www.organicauthority.com/.image/t_share/MTU5MzI5OTc3NjUzMzM5MzUw/shutterstock_288297071.jpg',
    'pairs with chicken broth',
    false
),
(
    'Asiago',
    'Asiago, a nutty-flavored cheese, comes in two forms: fresh and mature. The fresh has an off-white color and is smoother and milder, while mature Asiago is yellowish and somewhat crumbly. Depending on its age, Asiago can be grated, melted or sliced.',
    'https://www.thespruceeats.com/thmb/jR2GuCLkYrFac2c2PZWvrzNFfYE=/2063x1453/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-187188253-c100e628c78540aaa5f0ce3ab342ec88.jpg',
    'pairs with fish broth',
    true
),
(
    'Blue Cheese',
    'Blue is a general name for cheeses that were made with Penicillium cultures, which creates “blue” spots or veins. Blue cheese has a distinct smell and, what some consider, an acquired taste. Blue cheeses can be eaten crumbed or melted.',
    'https://assets.bonappetit.com/photos/57c4bcde6a6acdf3485df8a5/master/w_1600%2Cc_limit/bleu-dauvergne.jpg',
    'pairs with bone broth',
    true
),
(
    'Brie',
    'Brie is a soft, white cheese. It comes in a wheel, sometimes in a small wooden box, and is considered a great dessert cheese. Experts recommend enjoying it at room temperature.',
    'http://cdn.shopify.com/s/files/1/2836/2982/products/brie-recipe_grande.jpg?v=1533088694',
    'pairs with turkey broth',
    false
),
(
    'Cheddar',
    'This popular cheese comes in many variations. Its flavor can range from creamy to sharp, and its color can run between a natural white to pumpkin orange. A Cheddar’s texture changes as it ages, becoming drier and more crumbly.',
    'https://cdn.cnn.com/cnnnext/dam/assets/200623110902-cheddar-cubes-super-169.jpg',
    'pairs with sturgeon broth',
    true
),
(
    'Cotija',
    'This hard, crumbly cheese begins as mild and salty, and becomes tangier as it ages. It doesn’t melt, so it is used for grating on soups, tacos, tostadas.',
    'https://www.cheese.com/media/img/cheese/08-cotija-shutterstock_171554048.jpg',
    'pairs with pigeon broth',
    false
),
(
    'Emmental',
    'When people think of “Swiss cheese,” they are likely thinking of Emmental (also known as Emmentaler). When the cheese curds are cooked and pressed together, bubbles form, which leave the holes in the cheese. It is sweet, tangy and melts well.',
    'https://cdn.cnn.com/cnnnext/dam/assets/200623110902-cheddar-cubes-super-169.jpg',
    'pairs with sturgeon broth',
    true
),
(
    'Gorgonzola',
    'Gorgonzola is one of the worlds oldest types of blue cheese. It has a crumbly and soft texture, and is taste can range from creamy to sharp.',
    'https://rms.condenast.it/rms/public/5d8/4d0/fa7/thumb_4123_1200_670_0_0_auto.jpg',
    'pairs with sheep broth',
    true
),
(
    'Gruyere',
    'This slightly grainy cheese is known for its fruity, earthy and nutty flavors. It melts well and adds a savory flavor without overpowering others. It’s commonly used on sandwiches, in hot meals, over French onion soup and more.',
    'https://bakeitwithlove.com/wp-content/uploads/2022/03/Gruyere-Cheese-Substitute-sq.jpg',
    'pairs with ferrett broth',
    true
);