-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2017 at 07:41 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kf01-03`
--

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Battle of Mortimer\'s Cross', '2017-09-27 02:33:17', '2017-09-27 02:38:00'),
(2, 'Battle of Towton', '2017-09-27 02:33:17', '2017-09-27 02:38:15'),
(3, 'Battle of Northampton', '2017-09-27 02:33:17', '2017-09-27 02:37:09'),
(4, 'Battle Hedgeley Moor', '2017-09-27 02:33:17', '2017-09-27 02:38:41'),
(5, 'Battle of Ludford Bridge', '2017-09-27 02:33:17', '2017-09-27 02:36:39'),
(6, '2nd Battle of St. Albans', '2017-09-27 02:33:17', '2017-09-27 02:37:38'),
(7, '1st Battle of St. Albans', '2017-09-27 02:33:17', '2017-09-27 02:36:09'),
(8, 'Battle of Blore Heath', '2017-09-27 02:33:17', '2017-09-27 02:36:45'),
(9, 'Battle of Wakefield', '2017-09-27 02:33:18', '2017-09-27 02:37:23'),
(10, 'Battle of Hexam', '2017-09-27 02:39:02', '2017-09-27 02:39:02'),
(11, 'Battle Edgecote Moor', '2017-09-27 02:39:16', '2017-09-27 02:39:16'),
(12, 'Battle of Losecote field', '2017-09-27 02:39:37', '2017-09-27 02:39:37'),
(13, 'Battle of Barnet', '2017-09-27 02:39:48', '2017-09-27 02:39:48'),
(14, 'Battle of Tewkesbury', '2017-09-27 02:40:13', '2017-09-27 02:40:13'),
(15, 'Battle of Bosworth Field', '2017-09-27 02:40:24', '2017-09-27 17:34:42');

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

CREATE TABLE `discussions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discussions`
--

INSERT INTO `discussions` (`id`, `user_id`, `channel_id`, `title`, `slug`, `content`, `closed`, `created_at`, `updated_at`) VALUES
(1, 42, 3, 'Molestias vero iure voluptas corrupti est vel aliquid fugit', 'molestias-vero-iure-voluptas-corrupti-est-vel-aliquid-fugit', 'Unde sit accusantium est corrupti. Molestiae veniam ipsum illum qui iure possimus maxime. Ut doloribus et quia eius. Laudantium alias et mollitia eum nam.\n\nAutem modi tempore error est qui. Quidem qui sunt iste tempora et. Dolores quaerat accusamus enim ipsam qui. Quam incidunt ea adipisci earum praesentium sunt.\n\nEx atque iusto dolores in dolor voluptatem et. Enim aliquid nostrum sint vel. Aut mollitia ab omnis ad quia enim asperiores sed. Modi rem sed nesciunt quis facilis rerum repellat.', 0, '2017-09-27 02:33:18', '2017-09-27 02:33:18'),
(2, 14, 6, 'Saepe provident harum accusamus quo', 'saepe-provident-harum-accusamus-quo', 'Sint non maiores modi dolor et. Nemo neque sint enim temporibus optio. Ut consectetur et error quis maxime iure ullam cumque. Ut beatae blanditiis recusandae exercitationem minus nisi.\n\nAut ea fuga et quo soluta qui inventore cum. Distinctio qui dolorem qui aliquam sequi eum unde. Numquam omnis eius consequuntur esse delectus natus.\n\nSint similique est eos fuga. Cupiditate fugit quibusdam esse accusamus.', 0, '2017-09-27 02:33:18', '2017-09-27 02:33:18'),
(3, 1, 5, 'Tempora saepe delectus velit laborum dolor', 'tempora-saepe-delectus-velit-laborum-dolor', 'Ut iusto sunt voluptas. Animi sunt hic aut dicta molestiae voluptatem possimus. Odio odio aut explicabo quasi.\n\nDolor repudiandae et saepe officia consequatur aspernatur dolorem. Praesentium ipsam atque animi et deserunt. Occaecati laboriosam amet nisi magnam asperiores optio voluptas debitis.\n\nRepellendus facere nam possimus sit et amet ut. Iure nam officiis consequatur enim nostrum. Minima quos ea ut facilis perspiciatis nobis dolor ut. Doloribus dolorem nihil itaque labore maxime soluta deleniti.', 0, '2017-09-27 02:33:18', '2017-09-27 02:33:18'),
(4, 29, 6, 'Totam quia quasi dolores quam adipisci dolorem', 'totam-quia-quasi-dolores-quam-adipisci-dolorem', 'Molestiae assumenda molestiae magni dolores molestiae. Omnis ut quo et.\n\nAut facere et a. Dolorum dolor nesciunt sit neque facere. Nostrum illo sunt illo libero sit praesentium.\n\nIllum dicta voluptas suscipit quod. Adipisci voluptas earum quibusdam. Earum sunt earum esse quis.', 0, '2017-09-27 02:33:18', '2017-09-27 02:33:18'),
(5, 8, 7, 'Accusamus natus pariatur odit quas provident et nisi', 'accusamus-natus-pariatur-odit-quas-provident-et-nisi', 'Sit tenetur sed voluptas nihil incidunt voluptates. Praesentium distinctio quia eius qui. Rerum architecto et quaerat saepe ut nisi est.\n\nQuam dignissimos velit facere cumque aut. Minima quia unde maxime non est cum dolor. Non rem quasi dolor aut quidem.\n\nNihil soluta perferendis quisquam. Eius natus sunt eius quae nisi. Et fugiat et ut illum exercitationem sed.', 0, '2017-09-27 02:33:18', '2017-09-27 02:33:18'),
(6, 36, 3, 'Accusamus ut veritatis illo repellat repudiandae dolorum vero', 'accusamus-ut-veritatis-illo-repellat-repudiandae-dolorum-vero', 'Quo deserunt laudantium sit odio aperiam suscipit. Occaecati accusamus quas dolor ratione possimus facere. Alias asperiores reprehenderit quas repellat enim.\n\nPossimus nobis minima itaque qui quia. Perferendis est doloribus minus neque autem aut. Rerum velit at et vel eos accusantium. Voluptatum tenetur at quisquam et voluptatem a.\n\nLaudantium dolorem omnis nobis dolorem aut quia. Quas ut quas et fugit ad dicta cumque. Dolores vel possimus debitis eaque doloremque. Est delectus vero reiciendis reprehenderit deserunt.', 0, '2017-09-27 02:33:18', '2017-09-27 02:33:18'),
(7, 42, 5, 'Possimus qui commodi et dolores atque omnis', 'possimus-qui-commodi-et-dolores-atque-omnis', 'Exercitationem eveniet sit quisquam qui vel et velit. Totam voluptate voluptates temporibus enim consequatur nemo delectus. Aperiam dolores voluptas quos consequuntur et maiores quas nemo.\n\nMolestiae est accusantium beatae dolorum. In aliquid pariatur fugit voluptatem laboriosam quis eos. Minima aliquid illo et eveniet non. Voluptatibus vero pariatur repellat.\n\nNulla ut quam delectus. Quibusdam sed id aut. Est necessitatibus voluptas quos soluta exercitationem. Beatae consequatur ipsum et perferendis.', 0, '2017-09-27 02:33:18', '2017-09-27 02:33:18'),
(8, 36, 9, 'Explicabo dolore qui non rerum quam officia', 'explicabo-dolore-qui-non-rerum-quam-officia', 'Numquam debitis qui sit consequuntur est. Adipisci consequuntur reprehenderit qui sunt autem sit. Doloremque qui vitae ea voluptas.\n\nPerspiciatis eum amet quidem excepturi assumenda sint. Optio et iusto at inventore qui.\n\nVoluptate sed aut occaecati molestias nemo assumenda autem. Aspernatur velit dolore nisi repudiandae. Quis exercitationem non in voluptatem et quasi accusamus. Repellendus aut nobis quos omnis.', 0, '2017-09-27 02:33:18', '2017-09-27 02:33:18'),
(9, 9, 5, 'Tempore enim quia dolor voluptatibus', 'tempore-enim-quia-dolor-voluptatibus', 'Sint qui assumenda placeat quis molestiae quos dolore. Quibusdam architecto sint aspernatur veritatis tenetur optio dolorem. Iusto voluptatem quibusdam nobis.\n\nIure sint nihil aut voluptas consequatur sunt fugiat. Corrupti rem explicabo asperiores natus molestiae vero ducimus. Doloribus voluptatibus quo fugit pariatur hic.\n\nLaudantium harum non sit. Explicabo autem reiciendis soluta a facere eveniet quod. Quo similique inventore accusamus et.', 0, '2017-09-27 02:33:18', '2017-09-27 02:33:18'),
(10, 24, 5, 'Ut suscipit rerum omnis aut illo aliquam sed', 'ut-suscipit-rerum-omnis-aut-illo-aliquam-sed', 'Quis eos possimus debitis sapiente non. Accusantium quidem voluptate dicta est. Adipisci sunt optio quia est adipisci. Nulla perferendis nihil facilis magni.\n\nConsequuntur dolor velit dolor blanditiis amet quam. Necessitatibus consectetur sapiente architecto.\n\nQui quibusdam voluptatem est. Eum ipsa qui itaque quidem accusamus ea. Beatae adipisci quidem error rerum. Eligendi autem ab architecto placeat.', 0, '2017-09-27 02:33:18', '2017-09-27 02:33:18'),
(11, 43, 3, 'Architecto unde repellendus accusantium minima', 'architecto-unde-repellendus-accusantium-minima', 'Error minus et iusto voluptates eos autem ad. Veniam deserunt nam consequatur dolore. Et et fuga provident impedit.\n\nEt sit dolorem voluptatem molestias distinctio. Fugiat quia aut veritatis rem nulla cupiditate. Voluptatem quo unde officia quas qui. Enim voluptatem nobis repudiandae at debitis.\n\nAnimi quia et et ut repellendus omnis. Possimus in porro qui sed. Qui quo hic eligendi consequuntur id. Enim facilis qui laudantium ipsa.', 0, '2017-09-27 02:33:18', '2017-09-27 02:33:18'),
(12, 27, 3, 'Nam eum qui officia sapiente quos labore blanditiis', 'nam-eum-qui-officia-sapiente-quos-labore-blanditiis', 'Iure porro et fuga tempore architecto. Provident id sed aut consequuntur. Exercitationem voluptatem illum dolores facilis sint.\n\nVelit possimus ducimus voluptate laborum. Omnis qui aut voluptas veniam. Aut inventore eligendi consequatur at velit. Quidem quo aliquam officia explicabo optio.\n\nReiciendis assumenda omnis aut nihil natus praesentium voluptate. Quo aspernatur eum et non. Consectetur qui doloribus qui placeat voluptatem dolor ut. Dolores quia nobis cum harum.', 0, '2017-09-27 02:33:18', '2017-09-27 02:33:18'),
(13, 20, 3, 'Maiores odit aut dolorum ratione itaque maiores', 'maiores-odit-aut-dolorum-ratione-itaque-maiores', 'Itaque sint voluptatibus maxime iure dignissimos nihil libero. Consectetur quia perspiciatis voluptatem voluptatem ipsa ipsum tempore. Temporibus quod delectus velit et repudiandae illo. Aliquam illo tempora sit voluptatem.\n\nEt atque ea voluptates omnis in occaecati. Fugiat beatae doloribus omnis quia rerum non optio perferendis. Ipsam eos voluptates voluptas iusto ad facere aliquid et.\n\nSed enim facilis porro asperiores. Autem aut ea et aut. Ut iste numquam id aliquam magnam.', 0, '2017-09-27 02:33:18', '2017-09-27 02:33:18'),
(14, 26, 5, 'Aut ut cupiditate magnam', 'aut-ut-cupiditate-magnam', 'Ut maiores et et facere. Commodi sunt reiciendis esse qui tenetur modi distinctio. Numquam nisi ipsum porro placeat consectetur quis debitis. Iure natus reiciendis non inventore necessitatibus.\n\nPorro nisi corporis non numquam atque. Exercitationem omnis voluptatem beatae.\n\nAperiam dolorem sit ut. Deserunt totam reiciendis sit vel voluptatem distinctio. Molestiae libero accusamus voluptas veniam aliquam ratione numquam excepturi.', 0, '2017-09-27 02:33:18', '2017-09-27 02:33:18'),
(15, 1, 6, 'Maiores quae labore eos earum nam', 'maiores-quae-labore-eos-earum-nam', 'Et qui quia qui fugiat. Debitis reprehenderit distinctio quod voluptas sed dignissimos sit magni. Atque accusamus esse et assumenda excepturi. Ipsa repellendus molestiae voluptas quia sint perspiciatis fugit.\n\nIusto impedit exercitationem ipsa. Et aut voluptatem hic cumque id aliquam dolorem. Sit et repellendus officiis aliquam laboriosam libero autem. Fugit est cupiditate quisquam explicabo consequatur est modi ab.\n\nEst voluptatem temporibus voluptate deserunt ullam eos est. Atque quo incidunt aut ut. Delectus unde nulla est fuga tempore perspiciatis ut.', 1, '2017-09-27 02:33:18', '2017-09-28 02:15:31'),
(16, 11, 4, 'Excepturi ut temporibus asperiores qui ut', 'excepturi-ut-temporibus-asperiores-qui-ut', 'Nostrum consequatur praesentium dolorem quas. Ut consequuntur eligendi excepturi. Quibusdam voluptatem accusamus corrupti hic.\n\nNihil ipsa consectetur et dolores. Asperiores illo voluptatem maiores dicta provident vel alias. Voluptas quia sequi voluptatum libero et sint et.\n\nNostrum cum quae veniam molestiae facere. Eligendi beatae ipsum non nisi voluptate. Labore repellendus asperiores numquam in.', 0, '2017-09-27 02:33:18', '2017-09-27 02:33:18'),
(17, 19, 6, 'Et repellat quidem repellat et rerum dolor', 'et-repellat-quidem-repellat-et-rerum-dolor', 'Cum totam sed aut quis. Architecto voluptates inventore ipsam sapiente in voluptatem saepe. Quasi hic rem dolores doloremque quos aspernatur et. Sit quos corporis cumque voluptatum hic.\n\nEligendi eius enim culpa similique. Ullam et animi est. Et sed ut excepturi aspernatur.\n\nMinima a et quidem nihil in ullam. Deserunt eum quibusdam fugit nihil architecto officiis magnam quibusdam. Eum voluptatem deserunt fugiat aut esse molestiae ratione. Et et et esse fugiat nesciunt.', 0, '2017-09-27 02:33:18', '2017-09-27 02:33:18'),
(18, 20, 4, 'Est consequatur consectetur non nisi iusto id magnam', 'est-consequatur-consectetur-non-nisi-iusto-id-magnam', 'Tenetur veniam sequi qui vel aut natus. Laboriosam libero molestiae non blanditiis debitis. Repellat sint corrupti quis earum aut autem modi. Aut est consectetur eum aspernatur dignissimos.\n\nEnim quam sit praesentium rerum sed deserunt. Velit itaque qui laboriosam esse dolor. Impedit ad dolore voluptas eveniet veritatis vel eum.\n\nSed nam molestiae incidunt animi ducimus repellat. Provident quaerat a sequi excepturi nostrum aut. Minima ipsa laborum possimus autem. Voluptas ut et quis saepe ratione et quo.', 0, '2017-09-27 02:33:18', '2017-09-27 02:33:18'),
(19, 46, 7, 'Temporibus magni aliquid voluptatum veritatis ut harum nisi', 'temporibus-magni-aliquid-voluptatum-veritatis-ut-harum-nisi', 'Ut ipsa reiciendis numquam deleniti ut. Dolores et dolor voluptates reprehenderit ut numquam. Eum eum quidem fuga minus nobis accusamus harum. Omnis nemo saepe sapiente a.\n\nLibero fugit quam natus autem ullam. Doloremque explicabo ullam tempore odit. Ipsam odio doloremque dolorem. Sit dolorem vel quia id ab. Nisi distinctio alias voluptatum possimus minus.\n\nNemo distinctio enim repellat qui. Quis rerum sint a consequatur natus itaque commodi dolor. Assumenda inventore autem consequuntur non.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(20, 16, 2, 'Unde aut qui dolor quidem vero doloremque officia', 'unde-aut-qui-dolor-quidem-vero-doloremque-officia', 'Sit amet molestiae distinctio dignissimos molestias quia. Non est ea tempore expedita quas ratione quia. Sunt et consequatur repudiandae reiciendis. Voluptas quis quod totam odit minus.\n\nMagnam blanditiis eos dicta aliquam est repellat laudantium. Libero nihil quia sit. Libero saepe molestiae excepturi animi omnis animi nesciunt omnis. Perspiciatis blanditiis consequatur eos facilis nam magni.\n\nVoluptatem cum iste ducimus accusantium earum neque et. Excepturi dolorem suscipit veniam consectetur suscipit. Ex dicta nobis nisi quisquam magni repellendus.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(21, 17, 7, 'Rem fugit saepe sequi excepturi in consequatur', 'rem-fugit-saepe-sequi-excepturi-in-consequatur', 'Aliquid velit doloribus sed. Architecto omnis rerum nostrum molestias sunt sed. Nihil ut ut ut aut perferendis expedita.\n\nEligendi qui magni voluptatem nisi doloribus. Eum neque voluptatem ut nesciunt non quia nostrum. Illum nihil quia odit voluptatem laboriosam. Architecto sed sed temporibus voluptas quia eos.\n\nQuia quidem pariatur aspernatur incidunt. Est qui est veritatis molestiae aut earum totam. Neque eos iusto quis sit at ut aut.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(22, 38, 7, 'Atque dolorum omnis ut doloribus sint dolorum aliquid', 'atque-dolorum-omnis-ut-doloribus-sint-dolorum-aliquid', 'Quo tenetur cumque explicabo et et id. Veritatis maxime aut rerum sint aut ducimus. Et ea non qui aut non laudantium sunt.\n\nHarum omnis atque et autem quam fugit id debitis. Quasi nemo quasi reprehenderit nostrum voluptas. Nulla necessitatibus molestias modi omnis consequatur quisquam. Eum sit quibusdam quis et totam totam.\n\nVero nihil sit aut nobis itaque. At est eum dolor iste. Minima molestias reprehenderit cum.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(23, 17, 2, 'Dolores omnis unde illo assumenda quia repellat', 'dolores-omnis-unde-illo-assumenda-quia-repellat', 'Reprehenderit et amet voluptas voluptate. Quia error dolores enim ipsum omnis. Ratione dolor aperiam quibusdam tempora ut natus. Rerum quam qui magni ducimus corrupti a fuga reiciendis.\n\nFuga sunt laboriosam et consequatur minima possimus omnis est. Deserunt sed et id eligendi et debitis vel. Dolorem sed cum dicta sint laudantium reprehenderit enim.\n\nPlaceat corporis ab quia rerum accusantium velit dicta. Eum mollitia rem facilis doloremque aliquid quis qui sit. Occaecati a quidem vero quas. Laborum aspernatur iste expedita aspernatur molestias fugiat.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(24, 46, 6, 'Vero deleniti corporis quisquam deserunt alias', 'vero-deleniti-corporis-quisquam-deserunt-alias', 'Tenetur consequatur dolorum qui reiciendis nihil ut. Neque eaque illum nisi ut. Corporis eveniet quam architecto qui quas eum sed. Sit aliquid dolorem earum reiciendis sit minus omnis et. Soluta harum quasi quidem et.\n\nNon aut est vero quod libero dolores impedit magnam. Consectetur dignissimos praesentium non laudantium amet. Explicabo omnis beatae vitae non sapiente eos architecto. Necessitatibus quae qui architecto.\n\nQuis et ut est. Perferendis labore dolorum delectus velit. Consectetur reprehenderit distinctio enim ea et ducimus magni. Occaecati rem officiis ab et. Doloribus distinctio sequi illum consectetur quo.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(25, 42, 9, 'Aut qui quae laborum consectetur quia', 'aut-qui-quae-laborum-consectetur-quia', 'Esse veritatis maiores ex voluptas. Voluptates qui omnis explicabo quas ut dolor. Enim libero quia voluptatibus quia voluptatem consequatur amet. Repellat sunt dolore autem excepturi vel rem aut.\n\nConsequatur et et repellat libero sint consequuntur necessitatibus. Accusamus illo eum similique autem molestiae. Nesciunt est fugiat reprehenderit fugiat rem eum ullam. Labore magnam asperiores velit debitis.\n\nPlaceat ut nostrum repellat quaerat. Expedita consequatur aut dolor consectetur quam quis natus. Pariatur repudiandae iure qui vel inventore quo error. Dolores earum voluptates esse aliquam.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(26, 21, 3, 'Sunt cum tenetur quod', 'sunt-cum-tenetur-quod', 'Et et omnis molestiae quia. Velit voluptate eum et fuga expedita quia.\n\nUllam et explicabo consectetur minus dolorem. Vitae omnis qui mollitia qui odit et quia. Molestiae velit quia voluptatem iure facere libero esse.\n\nTemporibus libero ea voluptas accusantium rem aspernatur molestiae voluptatem. Nihil ea nihil voluptas architecto aliquid et odit. Et impedit laudantium quia ipsum est aperiam.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(27, 2, 6, 'Id id id veniam facere', 'id-id-id-veniam-facere', 'Blanditiis rerum aperiam exercitationem ullam consequatur. Laboriosam alias iste ut et odit inventore nemo. Aut libero repellat vel ducimus omnis. Commodi qui architecto consequatur saepe modi non aut rerum.\n\nNihil perspiciatis quia architecto similique maiores. Ut et quibusdam consequuntur aut harum modi et. Nemo non corporis dolorem perferendis rem exercitationem unde et. Deleniti ut consequatur placeat ea doloremque vero. Vel molestias consequuntur ad quo id amet voluptas.\n\nRem atque ullam ad architecto. Eligendi eum sunt sequi. Iure nihil tempora rem qui consequatur autem at. Iure id expedita quidem est ut occaecati.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(28, 13, 7, 'Perferendis vel voluptas distinctio nostrum et', 'perferendis-vel-voluptas-distinctio-nostrum-et', 'Aut quidem enim fugit rerum dignissimos. Deserunt rerum soluta voluptatem necessitatibus quo. Non voluptatem aut velit porro quaerat occaecati. Distinctio et odit labore consequatur eaque.\n\nVel sint eveniet quia culpa non rem facere. Quo optio cum qui hic. Et non quia eum iste perferendis eum dolor.\n\nAtque necessitatibus est sit nihil atque. Modi tempore molestiae unde.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(29, 27, 4, 'Eligendi consequuntur necessitatibus unde ut placeat', 'eligendi-consequuntur-necessitatibus-unde-ut-placeat', 'Ducimus ex fugit voluptate perspiciatis quibusdam. Explicabo ea qui in rerum ducimus aut. Nisi in sed reprehenderit inventore magnam.\n\nMagnam tempore voluptas soluta occaecati perferendis ut modi. Id sunt culpa modi voluptatum. Debitis et aut qui ullam voluptatibus laudantium.\n\nVitae pariatur eum illo animi voluptas et. Fugit quo veritatis dolor non non tempora aut. Voluptates doloremque ipsa voluptatum nihil a sint eum.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(30, 43, 9, 'Atque animi accusamus voluptate totam', 'atque-animi-accusamus-voluptate-totam', 'Modi neque saepe sint ut. Facilis facere excepturi dolor sit neque quia libero. Qui suscipit autem ab omnis voluptatem. Dolor blanditiis aut omnis qui quia asperiores quae.\n\nAlias illum ducimus omnis quod est modi. Vitae ea molestiae et et dolores repellat. Quia necessitatibus quisquam non suscipit ut.\n\nIllo non distinctio pariatur rem veritatis dolore. Molestiae consequatur vel cum pariatur cupiditate quas. Est debitis aliquam dolore quae laboriosam sunt quaerat. Quo dolore veniam tempore.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(31, 7, 2, 'Iure ea eum beatae quae voluptates amet quisquam', 'iure-ea-eum-beatae-quae-voluptates-amet-quisquam', 'Eum quia ut ea odit. Rem vero nobis quisquam rerum sit qui. Distinctio sed asperiores nesciunt laboriosam est quisquam quis.\n\nQuae numquam voluptatibus rerum facere dolor iure. Ut earum et architecto ratione. Eius nisi autem tenetur.\n\nLaborum distinctio rem minus et reprehenderit aliquid. Autem similique recusandae assumenda voluptas debitis voluptatem atque. Saepe voluptatem possimus quod magnam ut et et. Vitae in earum consectetur pariatur non voluptatem.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(32, 40, 2, 'Iure in commodi blanditiis', 'iure-in-commodi-blanditiis', 'Accusantium sapiente est consectetur eos ut. Saepe reiciendis nisi culpa blanditiis.\n\nNatus numquam cumque laudantium sapiente laudantium labore. Dolor repellendus eos et neque modi labore. A esse earum eaque et.\n\nOmnis quia totam aspernatur sed nisi sint eligendi facilis. Itaque ut ut laborum nihil. Exercitationem modi id cumque qui quidem mollitia totam.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(33, 18, 3, 'Perspiciatis voluptas laboriosam iure non tempore', 'perspiciatis-voluptas-laboriosam-iure-non-tempore', 'Enim accusantium aut in officia sapiente provident impedit. Dolore et reiciendis eum vero cumque sunt sed quidem.\n\nAut inventore mollitia sunt enim reprehenderit. Non assumenda quisquam enim adipisci architecto. Et accusamus id impedit voluptatem natus voluptas fugiat voluptatem. Consectetur consectetur vitae voluptatem aliquid iure quia quaerat. Voluptatem perspiciatis non saepe commodi aut doloribus est.\n\nEum omnis nihil vitae ducimus. Et enim rem repellendus ea itaque magni odio nisi. Nostrum temporibus pariatur iure ut optio.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(34, 9, 5, 'Enim distinctio nam voluptatem corporis veritatis', 'enim-distinctio-nam-voluptatem-corporis-veritatis', 'Beatae error expedita fugiat dolores sint hic quidem suscipit. Eveniet ut saepe in modi aut dignissimos nisi. Necessitatibus ut aspernatur ipsum accusantium velit et expedita. Soluta consequatur assumenda perspiciatis tenetur et itaque id.\n\nTempora omnis nostrum suscipit aut. Vitae quis perspiciatis quibusdam sint laboriosam. Reiciendis eum et quisquam quae odio et. Rerum labore facere tempore odio voluptatem.\n\nAdipisci qui officia quibusdam id ea consequatur corporis. Repellendus est praesentium neque in quis sed. Placeat dolorum earum fugiat consectetur quo quisquam corporis. Est sit non sit quidem at dolores.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(35, 28, 2, 'Commodi consequatur enim facilis', 'commodi-consequatur-enim-facilis', 'Totam sit in nisi autem expedita. Vel nesciunt sed rerum ut omnis tempora nihil in.\n\nAnimi nisi ut dolorum reiciendis repellat asperiores. Quam sit deserunt est eligendi sed voluptas. Dolorem illum aut necessitatibus rem eos. Asperiores eveniet neque ex possimus qui. Tempora ducimus aspernatur ea natus.\n\nDistinctio eum voluptas debitis voluptate dolor ut. Odit soluta error officiis cumque. Doloremque illum voluptas est culpa mollitia perspiciatis porro. Iure quia at temporibus quidem rem ea.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(36, 30, 9, 'Nostrum dolorum placeat omnis vitae enim', 'nostrum-dolorum-placeat-omnis-vitae-enim', 'Ratione est ut laboriosam autem nihil. Fuga exercitationem quia itaque doloribus. Et libero laboriosam nobis voluptas excepturi. Perspiciatis accusamus et fuga earum quidem repudiandae iure.\n\nLibero ex magni illo perspiciatis nostrum. Ducimus deleniti id vitae occaecati non. Voluptatum magnam vitae eveniet repellendus cum nihil.\n\nQuidem non adipisci aliquam assumenda rerum. Officiis exercitationem ut fugiat aut aliquid quis. Eos vero quod qui tempora culpa.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(37, 48, 8, 'Cupiditate nesciunt nihil corporis voluptatum nesciunt', 'cupiditate-nesciunt-nihil-corporis-voluptatum-nesciunt', 'Autem alias deleniti error quae ut non. Recusandae reiciendis et qui ullam. Omnis porro doloribus ipsum consequatur.\n\nVitae qui nisi natus ut eligendi dolores. Voluptates amet aperiam aspernatur. Aut eaque consequuntur sed veritatis ab. Commodi molestias excepturi atque enim.\n\nDolores voluptas laborum molestiae aut repellat et ea. Autem occaecati eos tenetur aliquid excepturi ullam debitis. Nihil vel eaque quia quia iure rem. Qui dolorem mollitia quibusdam atque incidunt magnam.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(38, 24, 3, 'Accusamus placeat id maxime laborum minus ut hic', 'accusamus-placeat-id-maxime-laborum-minus-ut-hic', 'Est consequatur et eos voluptatem neque dolorem. Enim aut et dolorem in molestiae atque. Enim et odio sit.\n\nNostrum in voluptas quidem qui ad laborum accusamus. Dolorum atque quisquam enim ea qui eius omnis. Est voluptatibus sed non ducimus sit sed aut excepturi. Et alias qui qui.\n\nEst ea fugiat corrupti eius soluta quia. Explicabo quod incidunt fuga. Maiores iure hic tempora perspiciatis repudiandae nostrum. Ex quisquam est ut excepturi quae dolor magni.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(39, 34, 3, 'Non consequatur suscipit incidunt et qui', 'non-consequatur-suscipit-incidunt-et-qui', 'Possimus labore quis numquam vitae. Pariatur non reprehenderit ipsam sint. Dolore in nostrum hic pariatur excepturi asperiores hic. Cumque vero quisquam at nemo quisquam aut dolore.\n\nAut dicta rerum quae dolorum esse doloremque hic. In tempora quisquam modi perferendis totam atque voluptatum. Nihil animi excepturi nesciunt libero consequatur quia est ea. Cum consequatur eveniet qui praesentium et inventore repudiandae aut.\n\nSaepe totam commodi sed voluptates maiores. Aut vitae amet aut minima.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(40, 50, 3, 'Est ut incidunt nulla dolores iste consequatur facere', 'est-ut-incidunt-nulla-dolores-iste-consequatur-facere', 'Quis placeat rerum et velit aut excepturi molestias. Perspiciatis non saepe in omnis sint et rem. Nihil assumenda nihil unde laudantium voluptas neque. Quia enim enim facere. Quibusdam doloribus earum ad eaque.\n\nMollitia non voluptatem velit doloribus cum at nesciunt quae. At animi voluptatem ut ullam sint. Quaerat rerum molestiae qui officiis deleniti vel.\n\nIpsum consequatur voluptatibus temporibus at saepe. Voluptatibus architecto esse corrupti. Consequuntur sunt et laborum enim reprehenderit. Repellendus incidunt saepe suscipit quia dolorum est maxime facilis.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(41, 33, 9, 'Illo rerum enim magnam quidem provident', 'illo-rerum-enim-magnam-quidem-provident', 'A quia aut quas numquam rerum aut asperiores voluptatum. Ullam dolores aut id porro aspernatur autem doloribus. Delectus deserunt dolore praesentium corporis. Necessitatibus similique dolore et aut ex qui alias.\n\nSuscipit incidunt nesciunt impedit maiores totam est. Id est aperiam consectetur quia magnam. Dolor reiciendis illum deleniti quidem.\n\nNobis accusamus libero maiores nam quae natus. Quasi aut dolor est voluptas vel ipsa. Neque deserunt impedit accusantium. Maxime ipsam aperiam perferendis est sit aut.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(42, 41, 9, 'Culpa nostrum dignissimos error', 'culpa-nostrum-dignissimos-error', 'In dolorem rerum illum mollitia et est et. Dolor repudiandae aperiam nihil illum autem consequatur aliquid.\n\nQuas non quam nisi amet tempora temporibus. Tempora maxime sit nemo aut voluptas. Eaque numquam nobis quis iure ut.\n\nVoluptatum blanditiis et repellendus. Itaque est reiciendis reprehenderit. Autem soluta iste inventore ut.', 0, '2017-09-27 02:33:19', '2017-09-27 02:33:19'),
(43, 49, 8, 'At facere dolores aspernatur totam voluptatem', 'at-facere-dolores-aspernatur-totam-voluptatem', 'In deleniti voluptatibus vero ipsum ipsam non. Dolorem quasi consequuntur et natus dolor consequatur voluptatibus dolores. Cumque repellendus eos suscipit explicabo. Deserunt quas porro quibusdam.\n\nSunt dicta nisi adipisci ut accusantium sed. Porro odit occaecati at numquam et voluptatibus. Sed libero provident nulla quaerat exercitationem magnam. Voluptatem omnis hic fugit sed ea non quos.\n\nVoluptatem et aut nobis minus natus quas praesentium. Voluptas aspernatur illo aut nihil aperiam sequi ad. Reiciendis et distinctio libero et eum qui ratione.', 0, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(44, 17, 1, 'Praesentium rem corrupti maxime iusto consequatur', 'praesentium-rem-corrupti-maxime-iusto-consequatur', 'Non quaerat sint esse. Deserunt facilis corrupti laborum et vel enim temporibus qui. Temporibus eos doloribus ut eveniet.\n\nIusto rerum rem et voluptatibus est voluptas ipsum. Saepe vel repellendus minima dicta assumenda ducimus aut. Voluptatum nam laborum quibusdam dolorem sit in exercitationem.\n\nMinima veniam nam in officia reprehenderit molestiae qui. Architecto modi pariatur rem est dolorum nihil quod. Labore quis ipsum architecto adipisci. Sit maxime nihil fuga aspernatur.', 0, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(45, 4, 5, 'Quia tenetur ullam qui quia numquam', 'quia-tenetur-ullam-qui-quia-numquam', 'Laborum qui possimus at et. Eum veritatis sed voluptas quidem magni temporibus magni adipisci. Voluptatem nobis illum eos fugiat. Ut sint culpa sint dolore eos.\n\nDeleniti nam maiores consequuntur ad excepturi sunt temporibus totam. Veritatis neque eveniet adipisci iste est tempora eos. Quia totam voluptates sit qui ad odio sed.\n\nRerum doloremque blanditiis qui aspernatur veniam ducimus. Animi nulla modi impedit ea numquam quod. Qui ratione corporis facilis totam quia voluptates.', 0, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(46, 13, 4, 'Sint ad dolor voluptatem iste exercitationem exercitationem dolores', 'sint-ad-dolor-voluptatem-iste-exercitationem-exercitationem-dolores', 'Totam dolorem odit eius illo labore quis. Quae et excepturi enim a repellat. Eos voluptas nobis dolor voluptatem qui blanditiis rem.\n\nIn doloribus ducimus cumque fuga. Quia odit maiores voluptate ratione. Ut dolor quibusdam a veritatis dignissimos.\n\nQuis quod et dolorum et. Facere temporibus quia est provident dolorem veritatis illum. Dolorem eum ad quidem vitae ut velit aliquid. Distinctio est voluptatem consequatur nam sed. Accusantium doloribus aspernatur ad fuga.', 1, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(47, 50, 2, 'Animi dicta eos voluptatem qui ipsum accusamus nihil', 'animi-dicta-eos-voluptatem-qui-ipsum-accusamus-nihil', 'Animi non inventore error. Consequuntur quo aut soluta.\n\nOdio dolorum amet sunt illo. Aut totam facere necessitatibus est aut neque. Itaque quia dolor explicabo et ut provident.\n\nConsequatur assumenda similique a neque similique. Qui est nisi corrupti nulla numquam sit illum. Maiores quas voluptatem ab deleniti et.', 0, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(48, 14, 1, 'Praesentium inventore corrupti excepturi id dolores velit voluptas', 'praesentium-inventore-corrupti-excepturi-id-dolores-velit-voluptas', 'Odio et error sunt officia explicabo est architecto. Vero et omnis sunt enim iste ea a eos. Sint non quisquam in delectus autem sunt magni.\n\nMaiores itaque at maxime velit nisi impedit in. Repellendus ab maiores aliquam et accusantium aut sunt harum. Eaque fugit nemo molestias dolorum. Quam eos nemo delectus ea fugiat ut non.\n\nQui qui natus qui a eum sunt. Assumenda sed tenetur temporibus qui. Et consequatur eaque ut eligendi et ad. Ut asperiores dignissimos non nobis.', 0, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(49, 27, 9, 'Velit quo modi sint qui quia', 'velit-quo-modi-sint-qui-quia', 'Laborum libero occaecati et et sequi. Rerum non soluta facilis suscipit itaque similique. Aut et consectetur nobis est voluptatibus dolore.\n\nMagnam fugiat sunt deleniti ea magnam et voluptatum. Doloremque quia quisquam vel. Est velit qui recusandae omnis.\n\nQuo ut necessitatibus occaecati hic sequi. Architecto mollitia dolor qui in rerum dolores. Sint facere consequatur sequi molestiae iure mollitia. Aperiam et est voluptates rerum atque veritatis. Commodi beatae laborum culpa voluptas quis.', 0, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(50, 31, 4, 'Et cupiditate consectetur odio quia eaque', 'et-cupiditate-consectetur-odio-quia-eaque', 'Voluptatibus et est enim itaque consequuntur quo unde qui. A dolores quia omnis quibusdam. Labore nulla deleniti culpa omnis unde inventore expedita.\n\nQuo consectetur eveniet molestiae vel. Odit repellat vitae vero quis pariatur mollitia qui. Sed qui cupiditate animi rerum dolorem. Corporis quia ullam ullam.\n\nEa cum aut voluptatem earum ab dolores eligendi. Occaecati dolore ipsa porro omnis voluptas quaerat sunt. Est numquam quae alias facere.', 0, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(51, 1, 15, 'Most significant battle', 'most-significant-battle', 'The Battle of Bosworth was fought on August 22nd, 1485. One of the most significant battles ever to be fought on English soil, it sounded the death knell of the House of Plantagenet. The battle was fought between the armies of the last Yorkist king, Richard III and his Tudor challenger for the throne, Henry, Earl of Richmond, later to become King Henry VII, who represented the claims of the rival House of Lancaster.', 1, '2017-09-27 17:34:18', '2017-09-28 20:55:32'),
(52, 1, 11, 'Defection of Earl of Warwick', 'defection-of-earl-of-warwick', 'The Earl of Warwick came to be in open rebellion against Edward by 1469. Eight years after the great Yorkists\' victory in battle of **Towton** in which The Kingmaker took crucial part, he and Edward IV fell out.\r\n\r\n### Date: July 26, 1469\r\n- Danes Moor, Northamptonshire, England\r\n- Rebel victory', 0, '2017-09-28 03:08:42', '2017-09-28 03:15:08'),
(53, 1, 11, 'Testing \"highlight.js\"', 'testing', '```\r\n<?php\r\npublic function update(Request $request, Discussion $discussion)\r\n  {\r\n    $this->validate($request, [\r\n      \'channel_id\' => \'required\',\r\n      \'title\'      => \'required|min:3|max:100\',\r\n      \'content\'    => \'required\'\r\n    ]);\r\n\r\n    $discussion->channel_id = $request->channel_id;\r\n    $discussion->title      = $request->title;\r\n    $discussion->content    = $request->content;\r\n\r\n    $discussion->save();\r\n\r\n    return redirect()->route(\'discussions.show\', $discussion)\r\n                     ->with([\'success\'=>\'Discussion successfully updated.\']);\r\n  }\r\n```', 0, '2017-09-28 03:24:02', '2017-09-28 03:40:42');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reply_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `reply_id`, `created_at`, `updated_at`) VALUES
(3, 2, 26, NULL, NULL),
(4, 2, 27, NULL, NULL),
(11, 1, 31, '2017-09-27 07:20:55', '2017-09-27 07:20:55'),
(12, 1, 33, '2017-09-27 17:20:04', '2017-09-27 17:20:04'),
(14, 1, 34, '2017-09-27 20:19:13', '2017-09-27 20:19:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2017_09_26_094131_create_oauth_identities_table', 1),
(19, '2017_09_26_101720_create_channels_table', 1),
(20, '2017_09_26_101829_create_discussions_table', 1),
(21, '2017_09_26_101841_create_replies_table', 1),
(22, '2017_09_26_225243_create_likes_table', 2),
(23, '2017_09_27_114918_create_watchers_table', 3),
(25, '2017_09_27_135725_add_best_to_replies', 4),
(26, '2017_09_27_185604_add_closed_to_discussions', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_identities`
--

CREATE TABLE `oauth_identities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_identities`
--

INSERT INTO `oauth_identities` (`id`, `user_id`, `provider_user_id`, `provider`, `access_token`, `created_at`, `updated_at`) VALUES
(1, 51, '12766761', 'github', '748115cfb89a1671d60b0e1b1b33c876e2f9a8b1', '2017-09-28 04:47:41', '2017-10-04 05:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('abbie@example.com', '$2y$10$/7RrEaS1Kmf8QrGkT3ANgu0phz977Y3QN4S3VBVJE4QYvAZzDzsui', '2017-09-28 22:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `best` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `discussion_id`, `content`, `best`, `created_at`, `updated_at`) VALUES
(1, 36, 18, 'Id laudantium eaque voluptas aut ut et occaecati. Provident nobis dolorem cupiditate temporibus nam. Qui suscipit quia accusantium quae pariatur. Accusamus omnis itaque in quos commodi quos. Laborum quidem itaque excepturi illo minus accusamus.', NULL, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(2, 39, 44, 'Consequuntur incidunt delectus doloremque amet repellendus aut officia omnis. Beatae aliquid vel ipsam maxime quae. Neque et sed animi voluptatem laboriosam. Minima et sed illum accusantium.', NULL, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(3, 19, 21, 'Eos distinctio rerum ad ea deserunt corporis. In recusandae atque numquam pariatur et. Molestias voluptas ut ducimus quis quasi qui mollitia. Aperiam nam repudiandae officiis harum.', NULL, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(4, 18, 42, 'Quia dolorem dolor aliquid eum consequuntur aut. Quam ab nihil deleniti eum sunt. Voluptate aut ea quibusdam.', NULL, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(5, 12, 14, 'Possimus itaque voluptatem porro sed voluptatem ut. Molestiae at voluptatem molestiae autem. Voluptas voluptas ut quia dolor in ut. Sed eum nam commodi velit.', NULL, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(6, 31, 20, 'Suscipit tenetur et officia laborum magni. Ut harum tenetur illum soluta. Consequatur asperiores nostrum iste quia consequatur. Optio perspiciatis nostrum est nisi et aut assumenda.', NULL, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(7, 15, 1, 'Dolorem id et enim eum numquam quos cupiditate. Corporis est ipsam pariatur et id. Nisi aliquam veniam culpa autem. Dolores et et eaque quia voluptas enim sint omnis.', NULL, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(8, 50, 5, 'Omnis pariatur assumenda ipsam provident praesentium quos. Saepe expedita alias ut. Et molestiae nam corrupti cum aut fugiat. Veniam ut officiis aliquam quo aut consequatur facere.', NULL, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(9, 38, 11, 'Odio impedit voluptatum voluptatibus et veniam laboriosam. Iste nisi sed consequuntur enim similique natus eveniet ipsa. Rerum quibusdam quae quaerat. Temporibus quidem optio voluptas repellendus.', NULL, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(10, 22, 44, 'Similique similique voluptatem et dolorem et. Veniam sint quas qui dolorem expedita omnis. Quia impedit ipsum beatae.', NULL, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(11, 16, 48, 'Qui et minima consequatur qui qui. Qui deleniti quo corporis sed et aspernatur molestiae explicabo.', NULL, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(12, 50, 4, 'Qui culpa dolorem excepturi harum velit fugiat. Reprehenderit amet inventore aut et dolorem quo. Qui laudantium aut dolorem ut ab. Molestiae occaecati ipsam voluptas odio fugit.', NULL, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(13, 29, 31, 'Iste eum hic voluptas cumque sint dolor voluptatum. Voluptate placeat dicta est facere nostrum minima. Itaque laudantium rem voluptas maiores.', NULL, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(14, 25, 10, 'Reiciendis necessitatibus pariatur consectetur quasi at eius. Ea iste dolorem est corrupti molestias alias voluptas animi. Aliquam fugiat laborum quia nisi possimus velit vero ipsum.', NULL, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(15, 8, 32, 'Et nihil ipsum voluptas culpa aut est. Rerum in ipsam perferendis tempore officia quam. Rem non suscipit eum reprehenderit doloremque cumque. Velit corporis fuga aut et.', NULL, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(16, 23, 38, 'Rem eos qui ipsum voluptatem soluta aspernatur. Hic atque omnis amet laboriosam. Sequi atque dolores dolore qui. Possimus quasi qui nihil ipsa. Dignissimos ea ipsa suscipit facere amet ex rerum.', NULL, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(17, 47, 42, 'Dignissimos tempore sit facere reprehenderit impedit non aspernatur. Maxime commodi et autem tenetur consequatur dolorum. Itaque nulla alias sit beatae possimus. Quia sit sed ea.', NULL, '2017-09-27 02:33:20', '2017-09-27 02:33:20'),
(18, 27, 31, 'Consequatur ut sint blanditiis et iure et dignissimos praesentium. Et expedita et recusandae quidem et magnam. Laudantium libero architecto voluptatibus suscipit.', NULL, '2017-09-27 02:33:21', '2017-09-27 02:33:21'),
(19, 24, 33, 'Et laborum provident quam. Neque et odio aliquam eum. Maxime dolores est dolor qui ea rerum.', NULL, '2017-09-27 02:33:21', '2017-09-27 02:33:21'),
(20, 49, 44, 'Consequatur quaerat laboriosam sint autem facilis excepturi hic. Et rem dolorem deleniti voluptas eos fugit eius. Aut necessitatibus qui illo iure omnis ut. Vitae adipisci minus est est ut. Et id animi beatae a adipisci ullam.', NULL, '2017-09-27 02:33:21', '2017-09-27 02:33:21'),
(21, 10, 44, 'Qui ratione ut dolore soluta est. Possimus rerum ad quibusdam eius omnis eum et dolores. Earum eos fugiat ad dignissimos aut quidem.', NULL, '2017-09-27 02:33:21', '2017-09-27 02:33:21'),
(22, 29, 16, 'Quo dolore est perspiciatis culpa omnis laborum debitis. Qui inventore magnam et illo dolorem.', NULL, '2017-09-27 02:33:21', '2017-09-27 02:33:21'),
(23, 1, 47, 'Reiciendis minus quia ea necessitatibus ea exercitationem. Veritatis consectetur cupiditate dolorem neque illum dolor id minus. Totam doloribus ullam quisquam rerum. Incidunt maxime rerum quo aut voluptatum.', NULL, '2017-09-27 02:33:21', '2017-09-27 02:33:21'),
(24, 45, 49, 'Aspernatur repellendus quidem deserunt voluptatem dolorum rerum voluptates. Esse assumenda ea laboriosam earum fugit et explicabo id. Cumque dolores distinctio distinctio eum quaerat aut et sunt. Ut provident ullam et eius occaecati nostrum.', NULL, '2017-09-27 02:33:21', '2017-09-27 02:33:21'),
(25, 9, 37, 'Earum consequatur quas velit animi porro quis consequatur. Aut expedita eius est quo. Veniam aut id repellendus vel. Nemo rerum culpa et corrupti.', NULL, '2017-09-27 02:33:21', '2017-09-27 02:33:21'),
(26, 51, 49, 'Et consequuntur et omnis repellendus. Aut necessitatibus consequatur itaque a praesentium a. Est impedit sint itaque a suscipit eos quis.', NULL, '2017-09-27 02:33:21', '2017-09-27 02:33:21'),
(27, 29, 7, 'Reiciendis ut quia ut et. Nobis totam molestiae tempora. Illo doloremque in unde doloremque.', NULL, '2017-09-27 02:33:21', '2017-09-27 02:33:21'),
(28, 5, 32, 'Similique a molestiae tenetur ipsum atque repellendus. Maxime eos voluptas incidunt aut id eum fugiat. Et quia iusto hic illo aut.', NULL, '2017-09-27 02:33:21', '2017-09-27 02:33:21'),
(29, 26, 31, 'Est a nisi aut excepturi aut repudiandae assumenda. Excepturi vitae quam ipsum laboriosam.', NULL, '2017-09-27 02:33:21', '2017-09-27 02:33:21'),
(30, 50, 40, 'Sed aut saepe occaecati illo. Magni aut porro impedit dolores quae et. Blanditiis in aspernatur eligendi odio dolor. Necessitatibus voluptas ut perferendis voluptas officiis.', NULL, '2017-09-27 02:33:21', '2017-09-27 02:33:21'),
(31, 1, 44, 'The Battle of Mortimer\'s Cross was fought by the River Lugg near Wigmore in Herefordshire', NULL, '2017-09-27 05:29:06', '2017-09-27 05:29:06'),
(33, 1, 43, 'The advantage gained by the Yorkists was short-lived as but three weeks later York deserted his army at Ludford Bridge and fled to Ireland.', NULL, '2017-09-27 16:56:02', '2017-09-27 16:56:02'),
(34, 13, 51, 'A horse, a horse, my kingdom for a horse!', 0, '2017-09-27 17:35:35', '2017-09-28 01:30:36'),
(37, 1, 51, 'Henry Tudor landed at Milford Haven, in South Wales on the 7th August, accompanied by a few die hard Lancastrian lords and with about 2,000 French mercenaries.', NULL, '2017-09-27 20:19:33', '2017-09-27 20:19:33'),
(38, 1, 51, 'He marched through Wales, gathering reinforcements en route. The town of Shrewsbury opened its gates to him on 15 August and from there he advanced through Lichfield.', NULL, '2017-09-27 20:20:33', '2017-09-27 20:20:33'),
(39, 1, 51, 'He was expecting to be joined by the forces of his step-father, Lord Stanley.', NULL, '2017-09-27 20:22:40', '2017-09-27 20:22:40'),
(43, 1, 51, 'But he received the disquieting news that Lord Stanley could not openly declare his support for the invaders, since Richard held his son, Lord Strange, hostage for his loyalty.', 0, '2017-09-27 20:40:25', '2017-09-28 06:14:35'),
(44, 1, 51, 'King Richard was stationed at Nottingham, and moved from there to to Leicester on 19 August.', NULL, '2017-09-27 20:47:49', '2017-09-27 20:47:49'),
(45, 1, 46, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vehicula quam vel auctor interdum. Nam luctus orci at mauris vehicula laoreet sed in ante.', 1, '2017-09-28 00:58:20', '2017-09-28 00:58:53'),
(46, 13, 15, 'York\'s eldest son, Edward Earl of March and Salisbury\'s son, Richard, Earl of Warwick, eager to avenge their father\'s deaths, attempted to prevent the Lancastrian army reaching the capitol.', 1, '2017-09-28 02:14:27', '2017-09-28 02:15:31'),
(47, 13, 15, 'While Edward was occupied in the Marches, Warwick, accompanied his brother, John Neville, Lord Montagu and the Duke of Norfolk, marched north from London, taking King Henry VI with him and clashed with the Lancastrian forces at St. Albans.', NULL, '2017-09-28 02:14:54', '2017-09-28 02:14:54'),
(48, 51, 51, 'The two armies finally faced each other about two and a half miles south of Market Bosworth in Leicestershire were Richard probably camped on Ambion Hill.', 1, '2017-09-28 06:16:04', '2017-09-28 20:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `admin`, `email`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 1, 'abbie@example.com', '$2y$10$z5MfLAwaSjYYBZJh5EjygegPe6oyLK7xnG2m9xfnbPBrnY1On22gi', 'http://kf01-03-forum.test/avatars/default_avatar.png', 'T5zwMGsdC6W3oE16cywKuG6PoV5tXTNv7yKtfspCOsFifhvH9fDSKWKaoEkv', '2017-09-27 02:33:15', '2017-09-27 02:33:15'),
(2, 'Mrs. Retha Towne DVM', 0, 'ceasar.luettgen@example.org', '$2y$10$baNXq.tbYvr/NDV7leeZWuPKbYFTraxSxKW0jvE0m1if3ZIBVwxHG', 'http://kf01-03-forum.test/avatars/f1.png', NULL, '2017-09-27 02:33:15', '2017-09-27 02:33:15'),
(3, 'Dr. Dovie Rutherford PhD', 0, 'alverta43@example.org', '$2y$10$XFZ7d4tNxNbKV5yokVRrKel7zW6IgP/c6NxJehYFgr6A3NsuQdWWa', 'http://kf01-03-forum.test/avatars/f2.png', NULL, '2017-09-27 02:33:15', '2017-09-27 02:33:15'),
(4, 'Etha Keeling', 0, 'njones@example.com', '$2y$10$CpBeIJtysFwK/quWoyl/zOzDAEm4ow7lVsJ4zyqFyMh64ujgn0p7W', 'http://kf01-03-forum.test/avatars/f3.png', NULL, '2017-09-27 02:33:15', '2017-09-27 02:33:15'),
(5, 'Myrl O\'Reilly II', 0, 'hermann82@example.org', '$2y$10$qEWIeGltRKJiGusQgcapveFT0kbdGdJijwGfGgwpYRWWNM1TkMwOe', 'http://kf01-03-forum.test/avatars/f4.png', NULL, '2017-09-27 02:33:15', '2017-09-27 02:33:15'),
(6, 'Mariam Pollich', 0, 'wendy.bogan@example.org', '$2y$10$rgBv2RvRjNMmcUzK0k6CHu.dXxLBdPRkDc2vl.VJBDiRvHWzQQ/f6', 'http://kf01-03-forum.test/avatars/f5.png', NULL, '2017-09-27 02:33:15', '2017-09-27 02:33:15'),
(7, 'Lindsey Howe III', 0, 'mcrona@example.net', '$2y$10$NOHiphZAqlmj1o1LF3WhiuFJmPOcG5.DDYMRp4geZBYd4ZIp7zQFK', 'http://kf01-03-forum.test/avatars/f6.png', NULL, '2017-09-27 02:33:15', '2017-09-27 02:33:15'),
(8, 'Dr. Eunice Cummerata DDS', 0, 'morissette.hulda@example.org', '$2y$10$Xr6tQ0YcjJW5lWfVh8Nc2OPp/g1Y4L9LqJNqFCkqau7JvdCZm6pBa', 'http://kf01-03-forum.test/avatars/f7.png', NULL, '2017-09-27 02:33:15', '2017-09-27 02:33:15'),
(9, 'Dylan Corwin IV', 0, 'rafael.skiles@example.org', '$2y$10$flsJTV10E1mUYqCHQ1CacuNZ7Uk8iEYP.HVeqxymDG58qxctyejea', 'http://kf01-03-forum.test/avatars/m1.png', NULL, '2017-09-27 02:33:15', '2017-09-27 02:33:15'),
(10, 'Prof. Charlene Runolfsdottir', 0, 'mrempel@example.org', '$2y$10$/bb.s4OUhQNsBMgTLJoX8uTdyMb.j7DvC.IJ20TgpbABhI8MkqrrW', 'http://kf01-03-forum.test/avatars/f8.png', NULL, '2017-09-27 02:33:15', '2017-09-27 02:33:15'),
(11, 'Roberto Wiza DDS', 0, 'fern36@example.org', '$2y$10$SakII.eXot.OHJRemNk2CO.Y5uMyHyjSoCAF9RLKLun5GjIbwU7gC', 'http://kf01-03-forum.test/avatars/m2.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(12, 'Halle Hamill', 0, 'bria.vonrueden@example.com', '$2y$10$s.jSW56svikcjwUgLR/iaeOc/G2OC7JRQ41y.MU9giFYQ1MYqiHpe', 'http://kf01-03-forum.test/avatars/f9.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(13, 'Lura Gutmann', 0, 'elisa55@example.com', '$2y$10$IZIXOk6Kd9IKs1Qzd3CZsuFTOCZaPY6gr7YhUsRZ.nPAU.r8PosSS', 'http://kf01-03-forum.test/avatars/f9.png', 'HZGFjRVPeFDrowY0A67VeVjLdAlIjHhdiriEiqXDqeb60Hh9BV4pDEvHgNkz', '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(14, 'Claire Greenholt', 0, 'darien.batz@example.org', '$2y$10$NTqZ5UoXwBEtzkBR0TZnu.LVkoGYZ6LpHf56j7Fj4fUaXexl8mCPC', 'http://kf01-03-forum.test/avatars/f10.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(15, 'Emmanuel Wyman', 0, 'vvolkman@example.com', '$2y$10$e8ZTjfpfZfnp8NaOfxzS/eCR79Xd.BHCX3eQ/Bfoz55YwcCKGZkR2', 'http://kf01-03-forum.test/avatars/m3.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(16, 'Dr. Faustino Waelchi MD', 0, 'terry.jamil@example.com', '$2y$10$kMLNDjIaanRjsCfX7Kj6ieTCHOVOt4ChcvL7aqoes2aZ.2LUN4k1a', 'http://kf01-03-forum.test/avatars/default_avatar.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(17, 'Adriel Renner', 0, 'xlindgren@example.org', '$2y$10$7k/k4a1E8ZgpxC6ZSUX4xuLyZRgLKUUUkDmIe2NKmXuDsMKDS77i.', 'http://kf01-03-forum.test/avatars/default_avatar.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(18, 'Prof. Stella Walsh IV', 0, 'kemmer.river@example.org', '$2y$10$k0GPFLBX/ZAkoMRnDjnRh.Xn2ZAsgMUUJGVhqTnto.s4VNDNbxlUS', 'http://kf01-03-forum.test/avatars/f10.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(19, 'Dr. Miller Olson', 0, 'larson.tre@example.com', '$2y$10$SN4QydaoFOfegpfsYvE.5ewa15su7kF9v8jNxMU4RaLsmo7oCao0y', 'http://kf01-03-forum.test/avatars/m4.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(20, 'Fausto Cartwright', 0, 'arnoldo99@example.net', '$2y$10$IiYrchdqv8p.m4uvwd6RYOIdDy.Hgah5H5wsRw.1qvFXTNv97Wt4e', 'http://kf01-03-forum.test/avatars/default_avatar.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(21, 'Dr. Ashton Will V', 0, 'kboyle@example.com', '$2y$10$Cn2G.4Pd966eec/YD1dgFu34Z5BgWe8bcPzuJhS.lY2HCXhAxhgGO', 'http://kf01-03-forum.test/avatars/m5.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(22, 'Dr. Jimmy Durgan', 0, 'gleason.orville@example.net', '$2y$10$/LzlV5/sQ.QulPpBYKxfmO2hcnJFY9U/cS27prEacX7vYQz0uDPoK', 'http://kf01-03-forum.test/avatars/m6.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(23, 'Cody Bosco', 0, 'green.kiel@example.com', '$2y$10$NhmFcfpBpRJrMFlTVKjCqu2uR/lIrilK6946Emk4uDn6vpbodBFaa', 'http://kf01-03-forum.test/avatars/m7.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(24, 'Bo McGlynn', 0, 'davion80@example.com', '$2y$10$66GbGIL6q4zcvPxwmn94SOACtA93Jo5gR5Smy9aR46Q/KCy4pw0TO', 'http://kf01-03-forum.test/avatars/m8.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(25, 'Lelia Price', 0, 'stanton.shad@example.net', '$2y$10$Axmxpcow81pZPdiAhKl4f.2MosY7h3IQLN57PIKHI8atv.z2HS8Wa', 'http://kf01-03-forum.test/avatars/default_avatar.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(26, 'Jordon McDermott', 0, 'jweissnat@example.net', '$2y$10$W.uTP6wZCVLbcp8akxLaiez3hjoc.iErSubCGBuvIN.4ONGHBETki', 'http://kf01-03-forum.test/avatars/m9.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(27, 'Jaiden Wyman', 0, 'hintz.keshaun@example.com', '$2y$10$AiRnf80y9paTXCoilL9QHusYn3uJQvQOPU88BX0xWsQoFBMiunoy6', 'http://kf01-03-forum.test/avatars/default_avatar.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(28, 'Gaetano Denesik', 0, 'linwood99@example.org', '$2y$10$Qa8C.KE4OFiSFqLh1sCpK.jAbKmZp9qx3shhwFLp.D3J6dKUPSuIW', 'http://kf01-03-forum.test/avatars/m10.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(29, 'Aileen Rosenbaum', 0, 'arnoldo37@example.org', '$2y$10$r57Mq8BNP6qRl1HRliUiru14Lwiry4vQ8M99d4L/vp47F6fAVR1dW', 'http://kf01-03-forum.test/avatars/f1.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(30, 'Isai O\'Reilly PhD', 0, 'sonya.luettgen@example.org', '$2y$10$9HaK3THjJTuuO62.kxMGReccZJKUcQcHiTqnnGKPmyIRjv05o2/q2', 'http://kf01-03-forum.test/avatars/default_avatar.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(31, 'Prof. Noelia Turcotte', 0, 'howe.otilia@example.net', '$2y$10$c.oNOm5jdPjV/v6DFvhJf.BmSo5UXTy6LjTrz9HehOvYF5FLC3BS6', 'http://kf01-03-forum.test/avatars/f2.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(32, 'Ronaldo Harber', 0, 'amely.wunsch@example.org', '$2y$10$2k4nKsCUWi2njyhTswIgrO9yOmzxBDwBFBdcr8qu8Bpiu4t36b1C.', 'http://kf01-03-forum.test/avatars/m1.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(33, 'Khalid Ernser', 0, 'arthur58@example.net', '$2y$10$EdusX7ekucWguWZAyc4uju2DJsHJAMw4oVsIxJBTp9kZb0iSVZmAi', 'http://kf01-03-forum.test/avatars/m2.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(34, 'Yasmin Volkman', 0, 'lauren50@example.org', '$2y$10$1Eh0vtI1Bg0JQoJbKpVGJuaNRwXjSquMw5fcEjAafW5lrLWnO0hZy', 'http://kf01-03-forum.test/avatars/f3.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(35, 'Patsy Fadel', 0, 'richard74@example.net', '$2y$10$1cWDngC7AkoXgTZB1bkJJOCuV1AvDSFICxD6oU6qxIYTLTg82Yl9O', 'http://kf01-03-forum.test/avatars/f4.png', NULL, '2017-09-27 02:33:16', '2017-09-27 02:33:16'),
(36, 'Heath Durgan', 0, 'fschimmel@example.com', '$2y$10$V1ntIA4Q8CBO9OHmhzuZ5OsjvDICxPsdsENFoyzd5WJPONdipL4Ge', 'http://kf01-03-forum.test/avatars/m3.png', NULL, '2017-09-27 02:33:17', '2017-09-27 02:33:17'),
(37, 'Fletcher Casper', 0, 'erin.stroman@example.com', '$2y$10$EkVxLlGUEh09eSL/5/PGYujLhqlkG1kci7oWQ7lebjxkR/PrViFgW', 'http://kf01-03-forum.test/avatars/m4.png', NULL, '2017-09-27 02:33:17', '2017-09-27 02:33:17'),
(38, 'Tracy Effertz Sr.', 0, 'olen.satterfield@example.net', '$2y$10$uzwbtQFEs2gBy0uk4B6kqerrZ/GC303A7KkRYHQdgVqqP5i61Cxcy', 'http://kf01-03-forum.test/avatars/f5.png', NULL, '2017-09-27 02:33:17', '2017-09-27 02:33:17'),
(39, 'Pietro Breitenberg', 0, 'ally.zboncak@example.org', '$2y$10$MhuMZyOmTgUAGeSxXtXXLu7MCI33tBAEcZOs0W1LNcVSomj/b/gFe', 'http://kf01-03-forum.test/avatars/m5.png', NULL, '2017-09-27 02:33:17', '2017-09-27 02:33:17'),
(40, 'Pat Johns', 0, 'klein.modesto@example.com', '$2y$10$5z2U9Q5YthAGo77yBslWcepja808shyokJzAmVCqNZX/Nb9GDn9lO', 'http://kf01-03-forum.test/avatars/default_avatar.png', NULL, '2017-09-27 02:33:17', '2017-09-27 02:33:17'),
(41, 'Xavier Shanahan Jr.', 0, 'donnelly.emmie@example.net', '$2y$10$QUEROLVPxJOetnvwUO35o.XqMzOHGfuN8KZFamn58bLzGYmo8iu/m', 'http://kf01-03-forum.test/avatars/m6.png', NULL, '2017-09-27 02:33:17', '2017-09-27 02:33:17'),
(42, 'Dayton Swift', 0, 'abshire.jamir@example.net', '$2y$10$KK80T3lQQZ891lAYnvFwZuuKPj36XKyK9I0ewHZvoOLpU7QQANAbe', 'http://kf01-03-forum.test/avatars/m7.png', NULL, '2017-09-27 02:33:17', '2017-09-27 02:33:17'),
(43, 'Carter Botsford', 0, 'ubrakus@example.com', '$2y$10$/PkohVvHoPXI8lpmXJMDTuSGpqEhSDCQQQ1PjkmmZhKapqqxhUFZi', 'http://kf01-03-forum.test/avatars/m8.png', NULL, '2017-09-27 02:33:17', '2017-09-27 02:33:17'),
(44, 'Dr. Sherwood O\'Hara', 0, 'considine.freeman@example.net', '$2y$10$AhyS1OAp7MUopleLDtNtwOMJljJHJl3qpO0Pw3qtbvM7Rs.psuX3a', 'http://kf01-03-forum.test/avatars/default_avatar.png', NULL, '2017-09-27 02:33:17', '2017-09-27 02:33:17'),
(45, 'Kaelyn Gutmann IV', 0, 'osmitham@example.com', '$2y$10$cTSJu/Du6xF/9v70Lntnx.lLpgoAat6ecFCq17K3abTRt1t7L.osi', 'http://kf01-03-forum.test/avatars/f6.png', NULL, '2017-09-27 02:33:17', '2017-09-27 02:33:17'),
(46, 'Georgianna Murray', 0, 'white.elias@example.net', '$2y$10$1htjxxdVCPADegITrUSL4.D1lyZVM.qwFNX3DAEU.6N6wt5gFMlqa', 'http://kf01-03-forum.test/avatars/f7.png', NULL, '2017-09-27 02:33:17', '2017-09-27 02:33:17'),
(47, 'Adaline Conroy', 0, 'julien80@example.org', '$2y$10$VhQX0ct9MR/rKHpAxVln5OBYp24s2HaAjDChIDuhO6WsKFIh.C17O', 'http://kf01-03-forum.test/avatars/f8.png', NULL, '2017-09-27 02:33:17', '2017-09-27 02:33:17'),
(48, 'Harvey Gutmann', 0, 'edwin57@example.org', '$2y$10$Ft.vQr6367qWe/H4IIWafefgNQdFnreRrO2UiHncpdf.9Y8FVqJEK', 'http://kf01-03-forum.test/avatars/m9.png', NULL, '2017-09-27 02:33:17', '2017-09-27 02:33:17'),
(49, 'Mr. Alvis Mills', 0, 'moen.greg@example.com', '$2y$10$GwyYbGfVaArU0qQS82OdT.wTWQoaTXIYvy9IcRl9D8ge/pLblmGa6', 'http://kf01-03-forum.test/avatars/m10.png', NULL, '2017-09-27 02:33:17', '2017-09-27 02:33:17'),
(50, 'John D\'Amore', 0, 'colton76@example.org', '$2y$10$FV467ZQZOzkixxptKaohVOJr/5/nhm3GLso9CxmZmPLxD4aXKJprS', 'http://kf01-03-forum.test/avatars/default_avatar.png', NULL, '2017-09-27 02:33:17', '2017-09-27 02:33:17'),
(51, 'Chi Lin', 0, 'chi@saharadb.com', '$2y$10$oGWibfRW9EoCQ/A35VTgOuaKK.3nLSpnqDFuwhRP742H05MNe0Mx6', 'https://avatars1.githubusercontent.com/u/12766761?v=4', 'HUipOKnaiifsZQDEqcciiXiksb4GAZYDEsc9mzGYgE3oJxg3s0A2Vfdxw30I', '2017-09-28 04:47:41', '2017-10-04 05:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `watchers`
--

CREATE TABLE `watchers` (
  `id` int(10) UNSIGNED NOT NULL,
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `watchers`
--

INSERT INTO `watchers` (`id`, `discussion_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 51, 13, '2017-09-27 19:49:45', '2017-09-27 19:49:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_identities`
--
ALTER TABLE `oauth_identities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `watchers`
--
ALTER TABLE `watchers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `oauth_identities`
--
ALTER TABLE `oauth_identities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `watchers`
--
ALTER TABLE `watchers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
