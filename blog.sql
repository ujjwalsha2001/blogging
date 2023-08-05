-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2023 at 01:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'computer', '2023-07-09 16:43:54'),
(2, 'sports', '2023-07-09 16:43:54'),
(3, 'webseries', '2023-07-09 16:43:54'),
(4, 'tech', '2023-07-09 16:49:07');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` int(200) NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phoneNumber`, `message`, `created_at`) VALUES
(1, 'user 7', 0, 2147483647, 'wqdergtyugklijdfscX fdbgsk fgawies ydahsg fay', '2023-07-11 10:24:38');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `subtitle` varchar(200) NOT NULL,
  `body` text NOT NULL,
  `category_id` int(3) NOT NULL,
  `img` varchar(200) NOT NULL,
  `user_id` int(3) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `subtitle`, `body`, `category_id`, `img`, `user_id`, `user_name`, `created_at`) VALUES
(13, 'Artificial Intelligence', 'wikipedia', 'Artificial intelligence (AI) is intelligence demonstrated by computers, as opposed to human or animal intelligence. \"Intelligence\" encompasses the ability to learn and to reason, to generalize, and to infer meaning.[1][2] AI applications include advanced web search engines (e.g., Google Search), recommendation systems (used by YouTube, Amazon, and Netflix), understanding human speech (such as Siri and Alexa), self-driving cars (e.g., Waymo), generative or creative tools (ChatGPT and AI art), automated decision-making, and competing at the highest level in strategic game systems (such as chess and Go).[3]\r\n\r\nArtificial intelligence was founded as an academic discipline in 1956, and in the years since it has experienced several waves of optimism,[4][5] followed by disappointment and the loss of funding (known as an \"AI winter\"),[6][7] followed by new approaches, success, and renewed funding.[5][8] AI research has tried and discarded many different approaches, including simulating the brain, modeling human problem solving, formal logic, large databases of knowledge, and imitating animal behavior. In the first decades of the 21st century, highly mathematical and statistical machine learning has dominated the field, and this technique has proved highly successful, helping to solve many challenging problems throughout industry and academia.[8][9]\r\n\r\nThe various sub-fields of AI research are centered around particular goals and the use of particular tools. The traditional goals of AI research include reasoning, knowledge representation, planning, learning, natural language processing, perception, and the ability to move and manipulate objects.[a] General intelligence (the ability to solve an arbitrary problem) is among the field\'s long-term goals.[10][2] To solve these problems, AI researchers have adapted and integrated a wide range of problem-solving techniques, including search and mathematical optimization, formal logic, artificial neural networks, and methods based on statistics, probability, and economics. AI also draws upon computer science, psychology, linguistics, philosophy, and many other fields.\r\n\r\nThe field was founded on the assumption that human intelligence \"can be so precisely described that a machine can be made to simulate it\".[b] This raised philosophical arguments about the mind and the ethical consequences of creating artificial beings endowed with human-like intelligence; these issues have previously been explored by myth, fiction (science fiction), and philosophy since antiquity.[12] Computer scientists and philosophers have since suggested that AI may become an existential risk to humanity if its rational capacities are not steered towards goals beneficial to humankind.[c] Economists have frequently highlighted the risks of redundancies from AI, and speculated about unemployment if there is no adequate social policy for full employment.[13] The term artificial intelligence has also been criticized for overhyping AI\'s true technological capabilities.', 1, 'desktop-wallpaper-artificial-intelligence.jpg', 4, 'user 9 ', '2023-07-11 10:32:35'),
(14, 'Data science ', 'Amazon AWS', 'What is data science?\r\nData science is the study of data to extract meaningful insights for business. It is a multidisciplinary approach that combines principles and practices from the fields of mathematics, statistics, artificial intelligence, and computer engineering to analyze large amounts of data. This analysis helps data scientists to ask and answer questions like what happened, why it happened, what will happen, and what can be done with the results.\r\n\r\nWhy is data science important?\r\nData science is important because it combines tools, methods, and technology to generate meaning from data. Modern organizations are inundated with data; there is a proliferation of devices that can automatically collect and store information. Online systems and payment portals capture more data in the fields of e-commerce, medicine, finance, and every other aspect of human life. We have text, audio, video, and image data available in vast quantities.  \r\n\r\nHistory of data science\r\nWhile the term data science is not new, the meanings and connotations have changed over time. The word first appeared in the ’60s as an alternative name for statistics. In the late ’90s, computer science professionals formalized the term. A proposed definition for data science saw it as a separate field with three aspects: data design, collection, and analysis. It still took another decade for the term to be used outside of academia. \r\n\r\nFuture of data science\r\nArtificial intelligence and machine learning innovations have made data processing faster and more efficient. Industry demand has created an ecosystem of courses, degrees, and job positions within the field of data science. Because of the cross-functional skillset and expertise required, data science shows strong projected growth over the coming decades.\r\n\r\nWhat is data science used for?\r\nData science is used to study data in four main ways:\r\n\r\n1. Descriptive analysis\r\nDescriptive analysis examines data to gain insights into what happened or what is happening in the data environment. It is characterized by data visualizations such as pie charts, bar charts, line graphs, tables, or generated narratives. For example, a flight booking service may record data like the number of tickets booked each day. Descriptive analysis will reveal booking spikes, booking slumps, and high-performing months for this service.\r\n\r\n2. Diagnostic analysis\r\nDiagnostic analysis is a deep-dive or detailed data examination to understand why something happened. It is characterized by techniques such as drill-down, data discovery, data mining, and correlations. Multiple data operations and transformations may be performed on a given data set to discover unique patterns in each of these techniques.For example, the flight service might drill down on a particularly high-performing month to better understand the booking spike. This may lead to the discovery that many customers visit a particular city to attend a monthly sporting event.\r\n\r\n3. Predictive analysis\r\nPredictive analysis uses historical data to make accurate forecasts about data patterns that may occur in the future. It is characterized by techniques such as machine learning, forecasting, pattern matching, and predictive modeling. In each of these techniques, computers are trained to reverse engineer causality connections in the data.For example, the flight service team might use data science to predict flight booking patterns for the coming year at the start of each year. The computer program or algorithm may look at past data and predict booking spikes for certain destinations in May. Having anticipated their customer’s future travel requirements, the company could start targeted advertising for those cities from February.\r\n\r\n4. Prescriptive analysis\r\nPrescriptive analytics takes predictive data to the next level. It not only predicts what is likely to happen but also suggests an optimum response to that outcome. It can analyze the potential implications of different choices and recommend the best course of action. It uses graph analysis, simulation, complex event processing, neural networks, and recommendation engines from machine learning.         \r\n\r\nBack to the flight booking example, prescriptive analysis could look at historical marketing campaigns to maximize the advantage of the upcoming booking spike. A data scientist could project booking outcomes for different levels of marketing spend on various marketing channels. These data forecasts would give the flight booking company greater confidence in their marketing decisions.', 1, 'wp4748439.webp', 1, 'user 6', '2023-07-11 10:35:28'),
(15, 'History of Circket', 'Encyclopedia Britannica', 'The early years\r\nThe earliest reference to an 11-a-side match, played in Sussex for a stake of 50 guineas, dates from 1697. In 1709 Kent met Surrey in the first recorded intercounty match at Dartford, and it is probable that about this time a code of laws (rules) existed for the conduct of the game, although the earliest known version of such rules is dated 1744. Sources suggest that cricket was limited to the southern counties of England during the early 18th century, but its popularity grew and eventually spread to London, notably to the Artillery Ground, Finsbury, which saw a famous match between Kent and All-England in 1744. Heavy betting and disorderly crowds were common at matches.\r\n\r\nThe aforementioned Hambledon Club, playing in Hampshire on Broadhalfpenny Down, was the predominant cricket force in the second half of the 18th century before the rise of the Marylebone Cricket Club (MCC) in London. Formed from a cricket club that played at White Conduit Fields, the club moved to Lord’s Cricket Ground in St. Marylebone borough in 1787 and became the MCC and in the following year published its first revised code of laws. Lord’s, which was named after its founder, Thomas Lord, has had three locations over its history. Moving to the current ground in St. John’s Wood in 1814, Lord’s became the headquarters of world cricket.\r\n\r\nIn 1836 the first match of North counties versus South counties was played, providing clear evidence of the spread of cricket. In 1846 the All-England XI, founded by William Clarke of Nottingham, began touring the country, and from 1852, when some of the leading professionals (including John Wisden, who later compiled the first of the famous Wisden almanacs on cricketing) seceded to form the United All-England XI, these two teams monopolized the best cricket talent until the rise of county cricket. They supplied the players for the first English touring team overseas in 1859.', 2, 'istockphoto-518022060-170667a.webp', 2, 'user 7', '2023-07-11 10:39:10'),
(16, 'Games of Thrones', 'wikipedia', 'Game of Thrones is an American fantasy drama television series created by David Benioff and D. B. Weiss for HBO. It is an adaptation of A Song of Ice and Fire, a series of fantasy novels by George R. R. Martin, the first of which is A Game of Thrones. The show was shot in the United Kingdom, Canada, Croatia, Iceland, Malta, Morocco, and Spain. It premiered on HBO in the United States on April 17, 2011, and concluded on May 19, 2019, with 73 episodes broadcast over eight seasons.\r\n\r\nSet on the fictional continents of Westeros and Essos, Game of Thrones has a large ensemble cast and follows several story arcs throughout the course of the show. The first major arc concerns the Iron Throne of the Seven Kingdoms of Westeros through a web of political conflicts among the noble families either vying to claim the throne or fighting for independence from whoever sits on it. The second focuses on the last descendant of the realm\'s deposed ruling dynasty, who has been exiled to Essos and is plotting to return and reclaim the throne. The third follows the Night\'s Watch, a military order defending the realm against threats from beyond Westeros\'s northern border.\r\n\r\nGame of Thrones attracted a record viewership on HBO and has a broad, active, and international fan base. Critics have praised the series for its acting, complex characters, story, scope, and production values, although its frequent use of nudity and violence (including sexual violence) has been subject to criticism. The final season received significant critical backlash for its reduced length and creative decisions, with many considering it a disappointing conclusion. The series received 59 Primetime Emmy Awards, the most by a drama series, including Outstanding Drama Series in 2015, 2016, 2018 and 2019. Its other awards and nominations include three Hugo Awards for Best Dramatic Presentation, a Peabody Award, and five nominations for the Golden Globe Award for Best Television Series – Drama.\r\n\r\nA prequel series, House of the Dragon, premiered on HBO in 2022.', 3, 'wallpapersden.com_daenerys-and-dragon-got_2079x1125.jpg', 5, 'user 10', '2023-07-11 11:06:18'),
(17, 'Football', 'wikipedia', 'Football is a family of team sports that involve, to varying degrees, kicking a ball to score a goal. Unqualified, the word football normally means the form of football that is the most popular where the word is used. Sports commonly called football include association football (known as soccer in North America, Ireland and Australia); gridiron football (specifically American football or Canadian football); Australian rules football; rugby union and rugby league; and Gaelic football.[1] These various forms of football share to varying extents common origins and are known as \"football codes\".\r\n\r\nThere are a number of references to traditional, ancient, or prehistoric ball games played in many different parts of the world.[2][3][4] Contemporary codes of football can be traced back to the codification of these games at English public schools during the 19th century.[5][6] The expansion and cultural influence of the British Empire allowed these rules of football to spread to areas of British influence outside the directly controlled Empire.[7] By the end of the 19th century, distinct regional codes were already developing: Gaelic football, for example, deliberately incorporated the rules of local traditional football games in order to maintain their heritage.[8] In 1888, The Football League was founded in England, becoming the first of many professional football associations. During the 20th century, several of the various kinds of football grew to become some of the most popular team sports in the world.[9]\r\n\r\nCommon elements\r\n\r\n\r\n\r\n\r\nThe action of kicking in (clockwise from upper left) association, gridiron, rugby, and Australian football.\r\nThe various codes of football share certain common elements and can be grouped into two main classes of football: carrying codes like American football, Canadian football, Australian football, rugby union and rugby league, where the ball is moved about the field while being held in the hands or thrown, and kicking codes such as Association football and Gaelic football, where the ball is moved primarily with the feet, and where handling is strictly limited.[10]\r\n\r\nCommon rules among the sports include:[11]\r\n\r\nTwo teams of usually between 11 and 18 players; some variations that have fewer players (five or more per team) are also popular.\r\nA clearly defined area in which to play the game.\r\nScoring goals or points by moving the ball to an opposing team\'s end of the field and either into a goal area, or over a line.\r\nGoals or points resulting from players putting the ball between two goalposts.\r\nThe goal or line being defended by the opposing team.\r\nPlayers using only their body to move the ball, i.e. no additional equipment such as bats or sticks.\r\nIn all codes, common skills include passing, tackling, evasion of tackles, catching and kicking.[10] In most codes, there are rules restricting the movement of players offside, and players scoring a goal must put the ball either under or over a crossbar between the goalposts.', 2, '3d-background.avif', 5, 'user 10', '2023-07-11 11:08:48');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `mypassword` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `mypassword`, `created_at`) VALUES
(1, 'user6@user.com', 'user 6', '$2y$10$gLyZkOY3JVQYh4qvRxhD6eUktZAVywZfEeHNNk7/4BmU41Dc3S4Gy', '2023-07-07 07:21:16'),
(2, 'user7@user.com', 'user 7', '$2y$10$X9cr4LR2lrQo3XnP4vWPfOl6LWdMTU2kbu26K0SOSGLhF2.4mS8tu', '2023-07-07 07:30:02'),
(3, 'user8@user.com', 'user 8', '$2y$10$8D0uHKhRJ3CkTopW8TUr4OSbpMf5K2R2dUGBbhgHxSChFxt7qETUG', '2023-07-07 07:31:50'),
(4, 'user9@user.com', 'user 9 ', '$2y$10$YiB7bM/vDTKJWCYOpwyz0eGuwlWS9IS49BJcbCqCUjfztkjdcjN0i', '2023-07-07 07:32:44'),
(5, 'user10@user.com', 'user 10', '$2y$10$GeANfOG.jaw.4b00br/WZ.TpTAYP/6//z3wXpyEgVtPloIjTg7TVi', '2023-07-07 07:33:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
