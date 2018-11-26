# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = Category.create(
  [
    {name: 'Computers'},
    {name: 'Smart Phones'},
    {name: 'Telvisions'},
    {name: 'Game Consoles'}, 
    {name: 'Video Games'}, 
    {name: 'Appliances'}, 
    {name: 'Other'}
  ]
)

Product.create(name: 'Macbook Pro 13in', price: 1999, quantity: 100, description: 'Touch Bar and Touch ID, 512GB Storage, 2.3GHz Quad-Core Processor', brand: 'Apple', category_id: 1)
Product.create(name: 'Galaxy S9+', price: 699.99, quantity: 60, description: '64GB Single SIM Unlocked GSM 4G LTE Phone w/ 12 MP Camera - Titanium Gray ', brand: 'Samsung', category_id: 2)
Product.create(name: 'Samsung NU8000', price: 997.99, quantity: 4, description: '65" 4K UHD HDR Plus Smart TV', brand: 'Samsung', category_id: 3)
Product.create(name: 'Nintendo Switch', price: 299.99, quantity: 35, description: 'Hybrid gaming console', brand: 'Nintendo', category_id: 4)
Product.create(name: 'Mario Kart 8 Deluxe', price: 50, quantity: 75, description: 'Best drinking game ever', brand: 'Nintendo', category_id: 5)
Product.create(name: 'Samsung Smart Fridge', price: 3888, quantity: 6, description: 'Ridiculously priced refridgerator ', brand: 'Samsung', category_id: 6)
Product.create(name: 'EVO Remote Control Drone', price: 999, quantity: 9, description: 'with Camera, GPS, and Live Video', brand: 'Autel Robotics', category_id: 7)
Product.create(name: 'Google Pixelbook', price: 2097, quantity: 3, description: 'All day battery, 128 GB', brand: 'Google', category_id: 1)
Product.create(name: 'iPhone XS Max', price: 1434, quantity: 5, description: 'Super Retina in two sizes — including the largest display ever on an iPhone. Even faster Face ID. The smartest, most powerful chip in a smartphone. And a breakthrough dual-camera system with Depth Control. iPhone XS is everything you love about iPhone. Taken to the extreme.', brand: 'Apple', category_id: 2)
Product.create(name: 'LG OLED65C7P', price: 2496.99, quantity: 9, description: '65" 4K UHD OLED Smart TV', brand: 'LG', category_id: 3)
Product.create(name: 'Super NES Classic Edition', price: 87.99, quantity: 18, description: 'The Super NES Classic Edition system looks and feels just like the original \'90s home console, except it\'s super small. Play 20 classic Super NES games plus *gasp* the never-before-released Star Fox 2 game!', brand: 'Nintendo', category_id: 4)
Product.create(name: 'Pokemon Let\'s Go', price: 119.98, quantity: 2, description: 'Train your Pokemons for battle!', brand: 'Nintendo', category_id: 5)
Product.create(name: 'Kohler Numi', price: 7800, quantity: 11, description: 'The Numi toilet combines unmatched design and technology to bring you the finest in personal comfort and cleansing. KOHLER\'s most advanced toilet now offers personalized settings that let you fine-tune every option to your exact preferences, from ambient colored lighting to wireless Bluetooth music sync capability to the heated seat and foot warmer. Play your favorite music and podcasts - simply stream wirelessly with any device enabled with Bluetooth technology, store MP3 files to the SD card, or plug in your device using the auxiliary cable. Other upgrades include Power-Save mode for energy efficiency, emergency flush for power outages, and an intuitive touch-screen remote. From its striking form to its exceptional water efficiency, the Numi toilet marks a new standard of excellence in the bathroom.', brand: 'Kohler', category_id: 6)
Product.create(name: '7 in 1- Tech Tool Pen', price: 120.99, quantity: 10, description: 'Pen, stylus, bottle opener, screwdriver, etc. all in one teeny pen.', brand: 'ATECH', category_id: 7)