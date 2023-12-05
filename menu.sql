-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 04:52 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `menu_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `image_url`, `description`, `price`) VALUES
(1, 'Butter Chicken', 'https://www.licious.in/blog/wp-content/uploads/2020/10/butter-chicken-.jpg', 'Tender chicken in a creamy, spiced tomato sauce—a rich and comforting classic.', 350.00),
(2, 'Chicken Tikka', 'https://easyindiancookbook.com/wp-content/uploads/2023/02/chicken-tikka-3-jpg.webp', 'A popular Indian dish consisting of marinated chunks of chicken grilled to perfection, offering a smoky and flavorful taste with a hint of spice.', 250.00),
(3, 'Pizza', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Pizza-3007395.jpg/800px-Pizza-3007395.jpg', 'Savory round dough topped with tomato sauce, cheese, and diverse toppings, baked to mouthwatering perfection.', 470.00),
(4, 'Paneer Tikka', 'https://www.carolinescooking.com/wp-content/uploads/2021/09/paneer-tikka-featured-pic-sq.jpg', 'Marinated and grilled cubes of paneer cheese, bursting with aromatic spices.', 200.00),
(5, 'Vegetable Korma', 'https://holycowvegan.net/wp-content/uploads/2013/12/vegetable-korma-kurma-mixed-vegetable-curry-8.jpg', 'Screamy and aromatic Indian curry made with assorted vegetables simmered in a rich, spiced coconut or yogurt-based sauce.', 180.00),
(6, 'Palak Paneer', 'https://www.kuchpakrahahai.in/wp-content/uploads/2015/06/Palak-Paneer-Recipe.jpg', 'Made with tender spinach (palak) cooked with paneer cheese in a flavorful blend of spices and creamy textures', 220.00),
(7, 'Lamb Korma', 'https://spicecravings.com/wp-content/uploads/2017/12/Lamb-Korma-New-3.jpg', 'A rich, aromatic sauce made with yogurt, cream, and a blend of spices, creating a deliciously indulgent curry.', 300.00),
(8, 'Vegetable Fried Rice', 'https://shwetainthekitchen.com/wp-content/uploads/2023/06/veg-fried-rice.jpg', 'A savory dish made by stir-frying cooked rice with assorted vegetables, soy sauce, and seasonings, resulting in a flavorful and satisfying meal.', 150.00),
(9, 'Chicken Fried Rice', 'https://www.kitchensanctuary.com/wp-content/uploads/2020/04/Chicken-Fried-Rice-square-FS-.jpg', 'A delicious dish made by stir-frying cooked rice with diced chicken, vegetables, eggs, and soy sauce, creating a flavorful and protein-packed meal.', 170.00),
(10, 'Lamb Rogan Josh', 'https://static.toiimg.com/thumb/53192600.cms?imgsize=418831&width=800&height=800', 'A rich, spicy gravy infused with a blend of traditional Indian spices like cardamom, cloves, and Kashmiri chili, creating a flavorful and hearty curry.', 370.00),
(11, 'Kashmiri Fish Curry', 'https://www.archanaskitchen.com/images/archanaskitchen/1-Author/Shaheen_Ali/GAAD_T_TAMATAR__KASHMIRI_FISH_CURRY.jpg', 'A fragrant fish dish simmered in a tangy, spice-infused gravy with hints of sweetness from dried fruits, embodying the flavors of Kashmiri cuisine.', 280.00),
(12, 'Palak Dal', 'https://fullofplants.com/wp-content/uploads/2017/07/easy-dal-palak-vegan-spinach-with-chickpeas-thumb.jpg', 'A comforting Indian lentil dish where split yellow lentils are simmered with spinach (palak) and aromatic spices, creating a flavorful and nutritious combination of lentils and greens.', 180.00),
(13, 'Tandoori Chicken', 'https://www.cubesnjuliennes.com/wp-content/uploads/2022/12/Tandoori-Chicken-Recipe.jpg', 'A vibrant Indian dish marinated in yogurt and a blend of spices, traditionally cooked in a tandoor (clay oven), resulting in smoky, charred, and flavorful chicken with a beautiful red hue.', 250.00),
(14, 'Prawns Malai', 'https://www.easycookingwithmolly.com/wp-content/uploads/2015/09/Chingri-Malai-Curry-3.jpg', 'Creamy coastal dish with tender prawns cooked in a rich coconut milk gravy, brimming with flavor.', 300.00),
(15, 'Papdi Chawal', 'https://feeds.abplive.com/onecms/images/uploaded-images/2021/09/20/0cea6bef1baf0e6744e78233e1574c1d_original.jpg?impolicy=abp_cdn&imwidth=650', 'A simple yet flavorful North Indian dish made of crispy flour crackers (papdi) served with aromatic cumin-spiced rice, offering a delightful crunch and taste in every bite.', 120.00),
(16, 'Rajma Chawal', 'https://www.secondrecipe.com/wp-content/uploads/2017/08/rajma-chawal-1.jpg', 'A quintessential North Indian comfort food featuring red kidney bean curry (rajma) served with steamed rice (chawal), creating a hearty and satisfying meal.', 200.00),
(17, 'Biryani', 'https://j6e2i8c9.rocketcdn.me/wp-content/uploads/2020/09/Chicken-Biryani-Recipe-01-1.jpg', 'Fragrant rice dish layered with spiced meat or vegetables, bursting with rich flavors and aromas.', 275.00),
(18, 'Samosa', 'https://static.toiimg.com/thumb/61050397.cms?imgsize=246859&width=800&height=800', 'A popular Indian snack consisting of crispy, triangular pastry filled with spiced potatoes, peas, and sometimes meat, deep-fried to golden perfection, offering a flavorful and crunchy bite.', 20.00),
(19, 'Golgappa', 'https://www.archanaskitchen.com/images/archanaskitchen/1-Author/Aarti_Sharma/Gol_Gappa_Chaat.jpg', 'Bite-sized crispy shells filled with a zesty mix of flavored water, spices, and fillings for a burst of Indian street food delight.', 30.00),
(20, 'Chatpata', 'https://www.mygingergarlickitchen.com/wp-content/rich-markup-images/1x1/1x1-samosa-chaat.jpg', 'Crispy samosas topped with tangy chutneys, yogurt, and spices for a flavorful street snack.', 50.00),
(21, 'Lassi', 'https://www.cookwithmanali.com/wp-content/uploads/2021/06/Lassi-Recipe.jpg', 'Lassi is a traditional Indian drink made from blending yogurt with water, sometimes flavored with fruits or spices, offering a refreshing and creamy beverage enjoyed in various variations across India.', 60.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
