-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 15 mars 2021 à 22:50
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pet_shop`
--

-- --------------------------------------------------------

--
-- Structure de la table `category_tab_p`
--

DROP TABLE IF EXISTS `category_tab_p`;
CREATE TABLE IF NOT EXISTS `category_tab_p` (
  `category_id_p` int(11) NOT NULL,
  `category_name_p` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`category_id_p`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `category_tab_p`
--

INSERT INTO `category_tab_p` (`category_id_p`, `category_name_p`) VALUES
(1, 'Accesories'),
(2, 'Dogs'),
(3, 'Cats'),
(4, 'Food');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `nom` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_bin NOT NULL,
  `company` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `message` text COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`nom`, `email`, `phone`, `company`, `message`) VALUES
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('petshop', 'petshop@gmail.com', '0560628975', 'animalsshop', 'merci'),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id_order` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_p` int(11) NOT NULL,
  PRIMARY KEY (`id_order`),
  KEY `id_user` (`id_user`),
  KEY `id_p` (`id_p`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `order`
--

INSERT INTO `order` (`id_order`, `id_user`, `id_p`) VALUES
(1, 3, 2),
(2, 7, 24),
(3, 7, 24),
(4, 7, 24),
(12, 7, 30),
(22, 7, 29),
(25, 2, 1),
(47, 7, 1),
(48, 7, 29),
(111, 3, 22);

-- --------------------------------------------------------

--
-- Structure de la table `pet_tab`
--

DROP TABLE IF EXISTS `pet_tab`;
CREATE TABLE IF NOT EXISTS `pet_tab` (
  `id_p` int(11) NOT NULL,
  `description_p` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `category_id_p` int(11) NOT NULL,
  `imgs_p` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `status_p` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `price` double NOT NULL,
  `name_p` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id_p`),
  KEY `tbl_pet_ibfk_2` (`category_id_p`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `pet_tab`
--

INSERT INTO `pet_tab` (`id_p`, `description_p`, `category_id_p`, `imgs_p`, `status_p`, `price`, `name_p`) VALUES
(1, 'Ecuelle pour chiens et chats, inox antiroutille, avec caoutchouc antiderapant - 30cm\r\nCette ecuelle en inox allie esthetisme et commodite. Antiderapante, elle permettra a votre chien de manger en toute stabilite et tranquillite.', 1, 'acc1.png', 'promo', 59.99, 'Gamelle Inox '),
(2, 'Retro est une gamme de cages inspiree de l’histoire de Zolux, adaptee aux besoins de notre époque. Fabriquees en metal et fixees sur un plateau en bois, ces cages pour oiseaux adoptent un style vintage unique qui participera a la décoration de la maison.\r\n', 1, 'acc2.png', 'void', 66.99, 'ZOLUX CAGE RETRO'),
(4, 'Very attractive 2 stainless steel bowls with stand\r\nPowder coated black metal stand\r\nNon-slip due to rubber feet\r\nDishwasher safe feed bowls\r\nCapacity: 2.8 litre', 1, 'acc4.png', 'promo', 70.99, 'Gamelle Inox double'),
(12, 'The Afador is a mixed breed dog–a cross between the Afghan Hound and Labrador Retriever dog breeds. Loyal, energetic, and affectionate, these pups inherited some of the best qualities from both of their parents.', 2, 'dog7.png', 'new', 209.99, ' Afador '),
(17, '【MULTIPURPOSE】A great decoration to your pet cage or just a hand craft desk decoration.\r\n❤【SAFE】Made with pine, and containing no toxic additives. It is safe for your little friend.\r\n❤【A POPULAR SLEEPING SPOT】Your little friend can sleep in, play in and on, and pack their bedding around and inside this house.\r\n❤【FUN TO PLAY】Cottage is beautiful and attractive for your pet. Your small pets will have hours of fun exploring the way into and out of the house.', 1, 'acc6.png', 'new', 229.99, 'Hamster Wooden House'),
(32, 'The Himalayan Cat is a sweet and mild-tempered feline. She’s affectionate but selective. Although she loves lying in your lap and being pet, she may be reserved around guests. Serene, quiet environments with few day-to-day changes are best for the Himmie.', 3, 'dog7.png', 'spec', 600.9, 'Himalayan Cat Breed'),
(33, 'un fabricant français et fournisseur mondial de nourriture spécialisée pour chats et chiens appartenant au groupe agroalimentaire américain Mars Incorporated. Son siège social est à Aimargues en France.', 4, 'alim1.png', 'promo', 150.9, 'ROYAL CANIN'),
(37, '#1 Ingredient Is Organic, Free-Range Chicken\r\nCookie That Delivers The Taste Dogs Crave\r\nNo Artificial Preservatives, Added Growth Hormones Or Antibiotics\r\nNo Chemical Pesticides Or Synthetic Fertilizers\r\nCooked In An Organically Certified Usa Kitchen', 4, 'dog13.png', 'void', 280.9, 'Pollux Organic Dog Cookies'),
(38, 'This dry food recipe helps maintain a healthy lifestyle with antioxidants, vitamins, and minerals, in the delicious, meaty steak flavor dogs love\r\nProvides whole grains and helps support healthy digestion\r\nDelivers complete and balanced nutrition enriched with omega-6 fatty acids to help nourish your dog’s skin and coat', 4, 'dog12.png', 'void', 150.9, 'Pedigree Adult Dry Dog Food'),
(42, 'The Australian Stumpy Tail Cattle Dog, named for their characteristic short or sometimes non-existent tail, is a descendant of wild dingoes and domesticated herding dogs from the late 19th century. Although similar to the popular Australian Cattle Dog, the Australian Stumpy Tail Cattle Dog is leaner, tailless, and more alert when it comes to strangers and new situations', 2, 'dog4.png', 'spec', 150, 'Australian Stumpy Tail'),
(43, 'Hard sided pet carrier; Spree Pet Carrier is suitable as a small breed dog carrier or cat carrier and is perfect for quick trips to the Veterinarian, dog park, pet store, etc.\r\nPerfect pet carrier for small dog breeds with an adult length up to 20 inches & weight of 24 pounds. Pet carrier measurements are: Overall carrier 23.55L x 15.56W x 15.04H, Interior 22.55 x 15.2W x 14.9H, Doorway 9.75W x 11H inches', 1, 'dog8.png', 'new', 800.99, 'Midwest  Travel Pet Carrier'),
(44, 'La nutrition responsable des animaux domestiques\" est la devise de la marque Dr Clauder\'s. Dr Clauder\'s assume la responsabilité de l\'ensemble de ses produits et crée des aliments, des suppléments nutritionnels et des produits de soin de haute qualité pour vos animaux de compagnie.', 4, 'alim6.png', 'promo', 89.99, 'Dr Clauder\'s'),
(45, 'Prevent leash-burn - The soft comfortable padded traffic handle on this training dog leash makes it perfect for people with arthritis, or just someone that wants a comfortable grip for extra control for pulling dogs.\r\nGreat for strong dogs – this no pull dog leash with a solid handle is great for walking and training medium or large, powerful dogs that pull. Also works well with two dog leash couplers, as a service dog leash, when training dogs to walk in heel position or during vet visits.', 1, 'mm.png', 'promo', 70.99, 'Handle for Large Dogs'),
(46, 'Called “the dog beautiful” by admirers, the American Eskimo Dog, or “Eskie,” is a striking canine with their white coat, sweet expression, and black eyes. They’re a Nordic dog breed, a member of the Spitz family.\r\n\r\nEven though these are purebred dogs, you may find them in the care of shelters or rescue groups. Remember to adopt! Don’t shop if you want to bring a dog home\r\n', 2, 'dog5.png', 'spec', 600.9, 'American Eskimo Dog'),
(47, 'Glass terrarium for reptiles or amphibians\r\nPatented front window ventilation\r\nRaised bottom frame in order to fit a substrate heater and has a waterproof bottom\r\nEscape-proof dual doors lock to prevent escape)', 1, 'dog10.png', 'spec', 700.99, ' Glass Terrarium Reptiles '),
(48, 'A dog breed named for the Azawakh Valley in the Sahara desert where they originated, this is a lean and swift hunter with a regal presence. They’re proud but loyal and protective of their home and family.\r\n\r\nAlthough these are rare, purebred dogs, you may find them in the care of shelters or rescue groups. Remember to adopt! Don’t shop if you want to bring one of these dogs home.', 2, 'acc23.png', 'new', 59.99, 'Azawakh'),
(55, 'Fort d\'une expérience de plus de 30 années en nutrition, Mastery vous propose une gamme d\'aliments super premium pour toutes les races de chiens et chats.', 4, 'alim2.png', 'promo', 100.99, 'Mastery'),
(59, 'Spacious & Versatile Fun Center - No matter your kitten wants to overlook the world on the top perch, melt into the luxury deep hammock, or feel spoiled in the cozy cradle, this multi-purpose cat playground works perfectly as a recreation paradise! Your furry friends can play with the interactive hanging ball and loop, tour freely in their castle across the platforms, or just be lazy inside the warm condo - Exploration never ends!', 1, 'dog10.png', 'spec', 829.99, 'rabbitgoo Cat Tree'),
(64, 'Small, smart, and energetic, the Alaskan Klee Kai is a relatively new breed that looks like a smaller version of the Siberian Husky. Even the name “Klee Kai” comes from an Inuit term meaning “small dog.”', 2, 'dog6.png', 'promo', 909.99, 'Alaskan Klee Kai'),
(66, 'La recette du Menu a été élaborée avec les ingrédients de la nature comme la luzerne, riche en fibres, ou la pomme fruitée\r\nAnimaux : lapins\r\nPoids : 5 kg\r\nLes fibres alimentaires brutes stimulent la mastication et la combinaison de principes actifs contribue à limiter la formation d’odeurs désagréables', 4, 'alim8.png', 'promo', 109.99, 'VITAKRAFT Menu'),
(70, 'The Basset Retriever is a mixed breed dog–a cross between the Basset Hound and Golden Retriever dog breeds. Friendly, affectionate, and intelligent, these pups inherited some of the best qualities from both of their parents.\r\n\r\nYou can find these mixed breed dogs in shelters and breed specific rescues, so remember to always adopt! Don’t shop if you’re looking to add one of these pups to your home!', 2, 'acc21.png', 'new', 100.99, 'Basset Retriever'),
(77, 'Often called the smiling cat of France, the Chartreux has a sweet, smiling expression. This sturdy, powerful cat has a distinctive blue coat with a resilient wooly undercoat. Historically known as fine mousers with strong hunting instincts, the Chartreux enjoys toys that move. This is a slow-maturing breed that reaches adulthood in three to five years. A loving, gentle companion, the Chartreux forms a close bond with her family.', 3, 'dog1.png', 'spec', 800.99, 'Chartreux Cat Breed'),
(80, 'An extraordinarily social cat, the Devon Rex is a wonderful family pet who gets along well with cats and cat-friendly dogs. She loves being with her people and learning new tricks.\r\n\r\nHighly intelligent and active, this pixie-like breed is charmingly mischievous and playful. Devon Rex cats are also outstanding jumpers—so if you’re looking for her, look up!', 3, 'acc20.png', 'new', 200.99, 'Devon Rex Cat Breed'),
(84, 'The British Shorthair is an easygoing feline. She enjoys affection but isn’t needy and dislikes being carried. She’ll follow you from room to room, though, out of curiosity. British Shorthairs aren’t lap cats, but they do enjoy snuggling next to their people on the couch.', 3, 'dog2.png', 'new', 200.99, 'British Shorthair Cat Breed'),
(91, 'The Birman is a cat of distinction as well as legend. With their exotic ancestry, luxurious pointed coats, “white gloved” paws and mesmerizing blue eyes, this is a breed with undeniable charisma.The Birman’s sweet and gentle nature makes her an ideal companion and pet. Birmans are playful and love to be with people, and are also patient and social with children and other pets.', 3, 'dog3.png', 'spec', 600.9, 'Birman Cat Breed'),
(96, 'Ruddy, red, blue, fawn\r\nAbyssinians are highly intelligent and intensely inquisitive. They love to investigate and will leave no nook or cranny unexplored. They’re sometimes referred to as “Aby-grabbys” because they tend to take things that grab their interest. The playful Aby loves to jump and climb. Keep a variety of toys on hand to keep her occupied, including puzzle toys that challenge her intelligence', 3, 'cat7.png', 'new', 160.99, 'Abyssinian Cat'),
(98, 'Bengal Cats are curious and confident with the tameness of a domestic tabby and the beauty of an Asian Leopard Cat. Learn more about Bengals and their playful personality, plus information on their health and how to feed them.', 3, 'cat6.png', 'new', 590.99, 'Bengal Cat'),
(99, 'Convenient, compact design | durable sturdy construction, this cozy cat Cube is fast to assemble & collapses flat when not in use for easy storage & travel\r\nPeaceful & cozy hideout for your pet | CAT Cube provides a private den for your cat or small dog (entry-way measures 7. 3W x 10H inches) & includes a comfortable cushioned cat bed top to promote relaxation\r\nEngages your cat\'s playful nature | CAT Cube includes plush hanging ball with \"hide & seek\" Cut-outs to promote hours of curious play', 1, 'acc8.png', 'promo', 309.99, 'Cat Home');

-- --------------------------------------------------------

--
-- Structure de la table `user_tab`
--

DROP TABLE IF EXISTS `user_tab`;
CREATE TABLE IF NOT EXISTS `user_tab` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `company` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user_tab`
--

INSERT INTO `user_tab` (`id_user`, `username`, `password`, `email`, `phone`, `company`, `address`) VALUES
(5, 'BOUJRAF', 'hello', 'boujraf@gmail.com', '0622812281', 'SELF', 'hay almatar, nador'),
(8, 'HAMDAOUI', 'RAJAE', 'hamdaouirajae99@gmail.com', '0651801605', 'SELF', 'hay sedik,berkane'),
(9, 'bah', 'MADANY', 'BAHMADANY@gmail.com', '06895476521', 'SELF', 'DOHA,oujda'),
(10, 'abir', 'el asouti', 'elasoutiabir@gmail.com', '06895789625', 'SELF', 'hey zitoune,oujda'),
(11, 'youssra', 'jaadna', 'youssrajaadna@gmail.com', '0689745698', 'SELF', 'hey qods,oujda'),
(12, 'bah', 'abderahmane', 'bahabderahmane@gmail.com', '069874563', 'SELF', 'doha,oujda');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `pet_tab`
--
ALTER TABLE `pet_tab`
  ADD CONSTRAINT `pet_tab_ibfk_2` FOREIGN KEY (`category_id_p`) REFERENCES `category_tab_p` (`category_id_p`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
