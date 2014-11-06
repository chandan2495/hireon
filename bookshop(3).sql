-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 03, 2014 at 11:34 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bookshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
`bookid` int(50) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `upvote` int(50) NOT NULL,
  `aboutbook` varchar(5000) NOT NULL,
  `aboutauthor` varchar(5000) NOT NULL,
  `catid` int(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `pages` int(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookid`, `book_name`, `author_name`, `price`, `upvote`, `aboutbook`, `aboutauthor`, `catid`, `image`, `isbn`, `pages`) VALUES
(1, 'American Military History', 'William Thomas Allison', 4497, 0, 'American Military History is uniquely tailored to American military history courses. Organized chronologically, the text begins at the point of European conflict with Native Americans and concludes with military affairs in the early 21st century. ', 'William Thomas Allison is Professor of History Georgia Southern University. He earned his Ph.D. in history at Bowling Green State University in 1995, and has taught as Visiting Professor at the Air War College and the School for Advanced Air and Space Studies.  He is author of Military Justice in Vietnam: The Rule of Law in an American War (Kansas, 2007), The Tet Offensive (Routledge, 2008), My Lai: An American Tragedy (Johns Hopkins, 2012), and The Gulf War, 1991 (Palgrave, 2012), among other w', 1, 'images/history/his1.jpg', '978-0205898503', 416),
(2, 'Africa in World', 'Erik Gilbert', 4148, 0, 'This comprehensive survey is the first to provide a view of African history in the wider context of World History. The text illustrates how Africans have influenced regions beyond the continent''s borders, how they have been influenced from outside, and how internal African developments can be compared and contrasted to those elsewhere in the world.', 'The authors show that Africans not only have shaped their own destiny but also have played a central role in a number of grand narratives of global history. In doing so, the text encourages readers to reconsider many popular or oversimplified myths regarding Africa and Africans and to explore the many issues, controversies, and debate within the field of African study.', 1, 'images/history/his2.jpg', '4849645694', 678),
(3, 'History of Australia', 'Manning Clark', 6626, 0, 'Whilst having nothing of the sweeping grandeur or personal analysis of character of the original, thyis is a useful potted summary of Clark''s view of history as the drama of a transfer of a civilisation into a silent land. ', 'Clark gives a fairly exhausive account of the arguments which built and tore down Australia. His flowering prose elaborates the rather furious divisions of religious sects, political parties, classes and races: ', 1, 'images/history/his3.jpg', '54877891231', 372),
(4, 'Python Programming', 'John Zelle', 3215, 0, 'This book is designed to be used as the primary textbook in a college-level first course in computing. It takes a fairly traditional approach, emphasizing problem solving, design, and programming as the core skills of computer science. ', ' The examples are illustrative and convincing: his is one of the few books that manages to avoid the trap of silly and unreal examples that therefore provide no context for a student. His writing is crystal clear and very well organized', 2, 'images/computer/cs1.png', '54465168451', 484),
(5, 'Einstein', 'Walter Isaacson', 500, 0, 'Einstein is the great icon of our age: the kindly refugee from oppression whose wild halo of hair, twinkling eyes, engaging humanity and extraordinary brilliance made his face a symbol and his name a synonym for genius.', 'Walter Isaacson is president of the Aspen Institute. He has been chairman and CEO of CNN and managing editor of TIME magazine. He is the author of several books including the US bestseller BENJAMIN FRANKLIN: AN AMERICAN LIFE.', 3, 'images/biography/bio1.jpg', '64849684652', 300),
(6, 'Superman', 'DC comics', 662, 0, 'This title is written by Jerry Siegel, Edmond Hamilton, Leo Dorfman and others. It includes art by Curt Swan, George Klein, Al Plastino and others. It features a cover by Swan and Klein. Collecting stories from "Action Comics" numbered 293-310 and "Superman" numbered 157-167.', 'After four volumes, Superman continues to be my favorite of all the SHOWCASE PRESENTS collections! These stories, chronologically reprinted from 1962-1964, are right in the middle of what has become my favorite era of Superman comics', 4, 'images/comics/comic1.jpg', '21155151454', 455),
(7, 'The Price of Politics', 'Bob Woodward', 920, 0, 'Bob Woodward’s freshly reported, thirty-five-page Afterword to his national bestseller, The Price of Politics, provides a detailed, often verbatim account of what happened in the dramatic “fiscal cliff” face-off at the end of 2012 between President Obama and the Republicans.', 'Bob Woodward is an associate editor at The Washington Post, where he has worked for forty-one years. He has shared in two Pulitzer Prizes, first for The Washington Post’s coverage of the Watergate scandal, and later for coverage of the 9/11 terrorist attacks. He has authored or coauthored twelve #1 national nonfiction bestsellers. He has two daughters, Tali and Diana, and lives in Washington, DC, with his wife, writer Elsa Walsh. ', 5, 'images/politics/pol1.jpg', '16416464', 250),
(8, 'Liberal History', 'Joseph Priestley ', 2579, 0, 'Lectures on History, and General Policy; To Which Is Prefixed, an Essay on a Course of Liberal Education for Civil and Active Life (English)', 'The publisher of this book utilises modern printing technologies as well as photocopying processes for reprinting and preserving rare works of literature that are out-of-print or on the verge of becoming lost. This book is one such reprint.', 1, 'images/history/his4.jpg', '9781178223828 ', 536),
(10, 'Deep History: The Architecture of Past and Present', 'Andrew Shryock, Daniel Lord Smail', 3304, 0, 'Humans have always been interested in their origins, but historians have been reluctant to write about the long stretches of time before the invention of writing. This book maps events, cultures, and eras across millions of years to present a scale for understanding the human body, energy and ecosystems, language, food, kinship, and more.', 'N/A', 1, 'images/history/his5.jpg', '780520270282', 342),
(11, 'The History of the Ancient World', ' Bauer', 2154, 0, 'A lively and engaging narrative history showing the common threads in the cultures that gave birth to our own. This is the first volume in a bold new series that tells the stories of all peoples, connecting historical events from Europe to the Middle East to the far coast of China, while still giving weight to the characteristics of each country. Susan Wise Bauer provides both sweeping scope and vivid attention to the individual lives that give flesh to abstract assertions about human.', 'Dozens of maps provide a clear geography of great events, while timelines give the reader an ongoing sense of the passage of years and cultural interconnection. This narrative history employs the methods of ?history from beneath??literature, epic traditions, private letters and accounts?', 1, 'images/history/his6.jpg', '9781178223547', 868),
(12, 'INTRODUCTION TO ALGORITHMS (English) 3rd Edition\r\n', 'Al. Cormen', 750, 0, ' Introduction To Algorithms is one of the most commonly referred texts when it comes to algorithms, and is used as a textbook in several colleges.\r\n\r\nSummary Of The Book\r\n\r\nThe contemporary study of all computer algorithms can be understood clearly by perusing the contents of Introduction To Algorithms. Although this covers most of the important aspects of algorithms, the concepts have been detailed in a lucid manner, so as to be palatable to readers at all levels of skill.\r\n\r\nIntroduction To Algorithms has a number of chapters, each of which is self-contained, as it contains an algorithm, followed by a design technique. There is also an area of application or a related topic, so that students can find out the practical implications of the algorithm in question.', ' Thomas H. Cormen is the Professor and Chair in the department of Computer Science at Dartmouth.\r\n\r\nHe completed his Ph.D from Massachusetts Institute of Technology in 1992, and has been teaching ever since. His research interests include parallel computing and algorithm engineering.', 2, 'images/computer/cs2.jpg', '9788120340077 ', 1310),
(13, 'Java Software Solutions with MyProgrammingLab', 'John Lewis, William Loftus', 5480, 0, 'N/A', 'N/A', 2, 'images/computer/cs3.jpg', '0273760181 ', 1158),
(14, 'The JavaScript Programming Language', ' Toal Dionisio', 3244, 0, 'he JavaScript Programming Language provides a brief introduction to the JavaScript language that is now an important component of every programmer''s tool box. It offers an overview of JavaScript to students interested in pursuing advanced programming skills. Clear and concise, ', 'The JavaScript Programming Language is an excellent primer to this popular dynamic language and is ideal for use on its own or when coupled with one of Jones and Bartlett''s outstanding introductory computer science texts.', 2, 'images/computer/cs4.jpg', '0763766585 ', 96),
(15, 'C Programming : A Modern Approach\r\n', 'K.N.King', 779, 0, 'Byron Gottfried’s Programming with C is a comprehensive book on the C programming language for undergraduates and programming enthusiasts. The book has extensive coverage of the theory of programming and includes separate sections on algorithms and pseudo-codes. In addition the book focuses on ANSI C standards, bringing beginners to the world of C. This new edition adds a new chapter exclusively about strings.', ' Byron Gottfried is Professor Emeritus at the Swanson School of Engineering, Pittsburg. He is the author of eleven books, including several in the Schaum’s Outline Series on programming.\r\n\r\nProfessor Gottfried obtained his PhD. in Chemical Engineering from the Case Western-Reserve University. His professional interests include Simulation Modeling, Computer Graphics, Programming Languages and Energy Utilization.', 2, 'images/computer/cs5.jpg', '9780070145900 ', 679),
(16, 'Mandela A Biography', 'Martin Meredith', 455, 0, 'Born in a country torn by racial discrimination, Nelson Mandela dedicated his entire life fighting against apartheid and trying to achieve racial equality for his people. In Long Walk To Freedom, he tells the story of his life and struggles, a long and difficult journey to achieve liberation.', 'Martin Meredith is a journalist, biographer and historian who has written extensively on Africa and its recent history. He is the author of many books including The State of Africa: A History of the Continent Since Independence; Mugabe: Power, Plunder, and the Struggle for Zimbabwe, and Mandela: A Biography. He lives near Oxford. ', 3, 'images/biography/bio2.jpg', '780520270', 782),
(17, 'Steve Jobs: A man who makes it a better place', 'Walter Isaacson', 419, 0, 'The books talks about a man who is one of the greatest innovators of our time. Walter Isaacson had to collect information on Steve Jobs through forty interviews that were done within the span of two years. He also had to interview over a hundred people who knew Jobs like: family, friends, competitors, colleagues and adversaries. All of these people were encouraged to speak honestly and give their genuine opinions by Steve Jobs himself. The exclusive biography of the founder of Apple is a must read for anyone who admired Jobs and his work. The book was a best-seller across the world.', 'Walter Isaacson is an American writer and biographer. His biographies include that of Steve Jobs, Benjamin Franklin, Albert Einstein and Henry Kissinger. He is the CEO of the Aspen institute, and the Managing Editor at Time.', 3, 'images/biography/bio3.jpg', '9780349139593 ', 590),
(18, 'Steve Jobs The Man Who Thought Different ', 'Karen Blumenthal', 300, 0, 'Inventor. Visionary. Genius. Dropout. Adopted. Steve Jobs was the founder of Apple and he was all of these things. Steve Jobs has been described as a showman, artist, tyrant, genius, jerk. Through his life he was loved, hated, admired and dismissed, yet he was a living legend; the genius who founded Apple in his parent''s garage when he was just 21 years-old, revolutionising the music world.', 'He single-handedly introduced the first computer that could sit on your desk and founded and nurtured a company called Pixar bringing to life Oscar wining animations Toy Story and Finding Nemo. So how did the man, who was neither engineer nor computer geek change the world we live in, making us want every product he touched?', 3, 'images/biography/bio4.jpg', '9781408853306 ', 320),
(19, 'Morgan Freeman: A Biography ', 'Kathleen Tracy', 1621, 0, 'Just one look into Morgan Freeman''s eyes and it is apparent that this is a man who has lived a full, sometimes hard, life. To better appreciate his achievements and successes, this book will equally show the triumphs and the struggles and failures he has overcome in his colorful life through an assortment of personal accounts and entertaining anecdotes.', 'Just one look into Morgan Freeman''s eyes and it is apparent that this is a man who has lived a full, sometimes hard, life. To better appreciate his achievements and successes.', 3, 'images/biography/bio5.jpg', '78052027', 432),
(20, 'Popeye', 'Various authors', 60, 0, '14 pages of colouring and activity on laminated pages. Children can use oil pastels, wax crayons and non-permanent markers on the pages. Once the activity/colouring is done, all they have to do is use a wet cloth to wipe it clean and then re- do the activity/colouring. Therefore, they can do it again and again and again.', 'N/A', 4, 'images/comics/comic2.jpg', '788128629297 ', 140),
(21, 'Captain America', 'Remender Romita', 1100, 0, 'Thrust into a bizarre, inhospitable world far from home, the all-new, high-adventure, mind-melting, tough-as-nails, sci-fi , pulp-fantasy era of Captain America starts NOW! Arnim Zola''s ambitions leave Captain America stranded in the upside-down territory known as Dimension Z', 'Zola''s son! Steve has saved the boy''s life, but can he keep him alive against the savage barbarians of Phrox - with the fate of a world hinging on his victory? And when Zola''s terrible experiments on the indigenous creatures give birth to a terrible new foe, the Odd War of Dimension Z begins! ', 4, 'images/comics/comic3.jpg', '78052027043', 336),
(22, 'Catwoman', 'Judd Winick', 822, 0, 'As a part of the acclaimed DC Comics—The New 52 event of September 2011, meet Selina Kyle, also known as Catwoman. She''s addicted to the night. Addicted to shiny objects. Addicted to Batman. Most of all, Catwoman is addicted to danger. She can''t help herself, and the truth is–she doesn''t want to. She''s good at being bad, and very bad at being good.', 'Selina steals from the wrong man, and now he''s got her. He wants his stuff back, he wants answers and he wants blood. Writer Judd Winick begins a new chapter for CATWOMAN–hopefully she makes it out alive!', 4, 'images/comics/comic4.jpg', '78052027045', 144),
(23, 'The Incredible Hulk', ' Steve Moore John Marshall Dave Gibbons Paul Neary John', 2090, 0, 'In 1979, Marvel UK launched Hulk Comic, a weekly magazine published across the pond that featured all-new stories starring the green goliath, produced by a host of up-and-coming British talent including Dave Gibbons (Watchmen), David Lloyd (V for Vendetta), Steve Dillon (Preacher, WOLVERINE: ORIGINS), ', 'John Bolton (CLASSIC X-MEN) and Paul Neary (ULTIMATES)! Bolstered by the popularity of the live action TV show, the Hulk was a hot property on both shores, spawning years of all-original UK-created comic and text stories! COLLECTING: Smash ! 38; material from Marvel Storybook Annual 1968; material from Hulk Comic 1-6, 9-20, 26-28; Incredible Hulk Annual: Authorised Edition 1980; Hulk Annual 1981-1985; The Super Heroes Annual 1991', 4, 'images/comics/comic5.jpg', '07637665', 235),
(24, 'Between Religion and Politics', 'Amr Hamzawy, Nathan J. Brown', 1320, 0, 'In recent decades, Islamist political movements in many Arab countries have strategically invested in a political process that was stacked heavily against them. And, to the surprise of many, they have actually succeeded by gaining more seats in parliaments and demonstrating their position as the only opposition movements with a popular base.', 'The book focuses on those movements that have cast themselves, at least in part, as electorally oriented political parties. It probes the environment in which the movements operate, the checkered relationship between Islamists and national rulers, the Islamists\\'' political platforms.', 5, 'images/politics/pol2.jpg', '0870032550 ', 220),
(25, 'Politics and the Occult: The Left, the Right, and the Radically Unseen', 'Gary Lachman', 855, 0, 'he gritty business of politics is not something we usually associate with the occult. But esoteric beliefs have influenced the destiny of nations since the time of ancient Egypt and China, when decisions of state were based on portents and astrology, to today, when presidents and prime ministers privately consult self-proclaimed seers.', 'Author and cultural pundit Gary Lachman provocativly questions whether the separation of church and state so dear to modern political philosophy should be maintained.', 5, 'images/politics/pol3.jpg', '9780835630085 ', 379),
(26, 'Indira Gandhi : Child of Politics ', 'Sreelata Menon', 183, 0, 'The story of Indias first woman prime minister is no ordinary story. It is the story of a girl for whom sacrifice and loss came early. For whom growing up meant seeing her father drift in and out of jail and a mother in and out of hospital. Wearing khadi and organizing her own band of troops. Combating loneliness and giving up the things she loved for a bigger cause.', 'A widely travelled freelance writer who enjoys writing on all kinds of topics, Sreelata Menon is a history buff who especially enjoys introducing children to the lives and times of great personalities. Author of Freelance Writing for the Newbie Writer, this is her second biography after Guru Nanak: The Enlightened Master in the Puffin Lives series.', 5, ' images/politics/pol4.jpg', '9780143332237 ', 144),
(27, 'Dirty Politics', 'Nicky Hager', 186, 0, 'Cam Kenyon has come home a different woman than the one who left. Always the sensible one, she''s now a competent and respected psychologist. Now, if she could only apply that confidence to Noah Denton, her old high school crush, and the current candidate for District Attorney.', 'It seems not everything has changed.\r\nWhen his political opponents resort to dirty politics, Cam can''t stand idly by. Throwing her support behind Noah resurrects an old nemesis, though, and puts both her and Noah in danger.', 5, 'images/politics/pol5.png', '781458163868 ', 226),
(28, 'Principles of criminal law', 'abcd', 300, 0, 'N/A', 'N/A', 6, 'images/law/law1.jpg', '65689545875', 68),
(29, 'The Law', 'Frederic Bastiat', 358, 0, 'N/A', 'N/A', 6, 'images/law/law2.jpg', '9781603864824 ', 104),
(30, 'Dictionary of Law ', 'Timber Pr ', 1360, 0, 'A convenient, comprehensive guide to the language of law for everyone from the homeowner to the legal professional.\r\n', 'N/A', 6, 'images/law/law3.jpg', '9780877797197 ', 635),
(31, 'CONTRACT LAW IN INDIA', 'AKHILESHWAR PATHAK', 336, 0, 'Avoiding the standard manual style of exposition of law, this book thoroughyl analyses the fundamental concepts and principles of contract law.', 'It uses cases and illustrations to clarify not just the law, but also the conceptual basis of the law.', 6, 'images/law/law4.jpg', '9780198072225 ', 406),
(32, 'Law Dictionary', 'Steven H. Gifis', 1263, 0, 'N/A', 'N/A', 6, 'images/law/law5.jpg', ' 9780764143588 ', 595),
(33, '2 States: The Story of My Marriage', 'CHETAN BHAGAT', 120, 0, 'Loosely based on his real life, 2 States: The Story Of My Marriage charts the love story between a Tamil Brahmin girl and a Punjabi boy who find their relationship jeopardized by this very ethnic disconnect.', 'Chetan Bhagat is a bestselling author, speaker and columnist. His other books include What Young India Wants, Five Point Someone, One Night @ The Call Center, Revolution 2020 and The 3 Mistakes Of My Life.', 7, 'images/novels/nov1.jpg', '9788129115300 ', 268),
(34, 'The Three Mistakes Of My Life', 'Chetan Bhagat', 105, 0, 'The third novel by best selling Indian author Chetan Bhagat, The Three Mistakes Of My Life (Hindi) is set in Ahmedabad, and follows the story of three friends, as narrated by the protagonist, Govind, who recounts certain events that he considers mistakes in his life, and how they affect the lives of all those around him.', 'Once named one of the 100 Most Influential People in the World by TIME magazine, best selling Indian author, speaker, and columnist Chetan Bhagat left a lucrative career in investment banking to follow his passion for writing.', 7, 'images/novels/nov2.jpg', ' 9798184193847 ', 232),
(35, 'Five Point Someone: What Not To Do At IIT ', 'Chetan Bhagat', 150, 0, ' Five Point Someone: What Not To Do At IIT is a book about three friends who mess up their personal and educational life because of the measly five- point something GPAs in their IITs.', ' Chetan Bhagat is an award-winning bestselling Indian author, speaker, and columnist.\r\n\r\nBhagat has also published other novels including 2 States, What Young India Wants, The 3 Mistakes Of My Life, Revolution 2020, and One Night @ The Call Center.', 7, 'images/novels/nov3.jpg', ' 9788129104595 ', 267),
(36, 'Half Girlfriend', 'Chetan Bhagat', 134, 0, 'Half Girlfriend is the much-awaited novel by the famous Indian novelist, Chetan Bhagat. It delves into new and different dimensions that relationships have in today’s world.', 'Chetan Bhagat is a famous contemporary Indian writer, speaker, columnist and novelist. He was born in New Delhi in 1974. Considered one of India''s most popular writers of fiction, Chetan Bhagat is an alumnus of the Indian Institute of Technology,', 7, 'images/novels/nov4.jpg', ' 8129135728 ', 268),
(37, 'REVOLUTION 2020', 'Chetan Bhagat', 165, 0, 'Revolution 2020 is an engaging tale of two best friends who fall in love with the same girl. The novel is set against the backdrop of rampant corruption, which one friend yields to, but the other fights.', 'Chetan Bhagat is an ex-student of the Indian Institute of Technology, Delhi, and the Indian Institute of Management, Ahmedabad.\r\nChetan Bhagat has many bestselling novels to his credit such as One Night @ The Call Center, 2 States, Five Point Someone and The 3 Mistakes Of My Life. His writing style is simple and informal.', 7, 'images/novels/nov5.jpg', ' 9788129118806 ', 296),
(38, 'The phenomenon of religion', 'Moojan Momen', 68, 0, 'N/A', 'N/A', 8, 'images/religious/rel1.jpg', '45667987687', 56),
(39, 'Key Thinkers in the Sociology of Religion', 'Richard K. Fenn', 2187, 0, '"Key Thinkers in the Sociology of Religion" takes a focused look at the foremost figures in the development of the field. From the groundbreaking work of Max Weber, right up to that of contemporary writers such as Peter Berger and Niklas Luhmann, this volume is an essential companion for the student of sociology of religion.Charting the development of theory in this area, each chapter looks at the life and work of an individual theorist, building to a picture of the field as it is today.', 'Richard Fenn''s book provides a route to a rounded understanding of the field, through the thought that defined it.', 8, 'images/religious/rel2.jpg', '9780826499424 ', 250),
(40, 'HOW GANESH GOT HIS ELEPHANT HEAD', 'HARISH JOHRI, VATSALA', 138, 0, 'N/A', 'N/A', 8, 'images/religious/rel3.jpg', ' 9781620553572 ', 67),
(41, 'GANESH PURAN\r\n', 'RichaPrakashan ', 166, 0, 'Puran of Lord Ganesha.', 'No Author', 8, 'images/religious/rel4.jpg', ' 9788187062493 ', 136),
(42, 'AGNI PURANA', 'B. K. CHATURVEDI', 86, 0, 'The Agni Purana was instructed to the sage Vasishthaby Agnideva. There are several references in this to Shivalinga and Durgadevi.The incarnations of Rama and Krishna are also dealt with in this. Distinct fromother Puranas, this book deals with arts and science likeKavyalankaranatakas (poems, dramas, figures of speech), Jyotish shastra(Astronomy) and Shilpakala (architecture). This Purana is capable ofimparting knowledge on all arts and sciences. ', 'N/A', 8, 'images/religious/rel5.jpg', '648998898755', 157);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
`cartid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `bookid` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `userid`, `quantity`, `bookid`) VALUES
(14, 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
`orderid` int(11) NOT NULL,
  `orderuserid` int(11) NOT NULL,
  `orderamount` double NOT NULL,
  `ordershipname` varchar(50) NOT NULL,
  `orderaddress` varchar(200) NOT NULL,
  `ordercity` varchar(100) NOT NULL,
  `orderstate` varchar(100) NOT NULL,
  `orderzip` varchar(100) NOT NULL,
  `orderphone` varchar(20) NOT NULL,
  `orderemail` varchar(100) NOT NULL,
  `orderstatus` varchar(500) NOT NULL,
  `orderdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ordershipped` tinyint(1) NOT NULL,
  `ordertrackingnumber` varchar(100) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`orderid`, `orderuserid`, `orderamount`, `ordershipname`, `orderaddress`, `ordercity`, `orderstate`, `orderzip`, `orderphone`, `orderemail`, `orderstatus`, `orderdate`, `ordershipped`, `ordertrackingnumber`) VALUES
(29, 3, 8708, 'Prince', 'PG Hostel MNNIT', 'Allahabad', 'UP', '211004', '9868754869', 'prince@gmail.com', 'Confirm', '2014-11-03 08:39:15', 1, 'ekart29');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE IF NOT EXISTS `orderdetails` (
`detailid` int(11) NOT NULL,
  `detailorderid` int(11) NOT NULL,
  `detailbookid` int(11) NOT NULL,
  `bookname` varchar(200) NOT NULL,
  `detailprice` double NOT NULL,
  `detailquantity` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`detailid`, `detailorderid`, `detailbookid`, `bookname`, `detailprice`, `detailquantity`) VALUES
(3, 29, 3, 'History of Australia', 6626, 1),
(4, 29, 5, 'Einstein', 500, 1),
(5, 29, 7, 'The Price of Politics', 920, 1),
(6, 29, 6, 'Superman', 662, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`userid` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `emailid` varchar(100) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobileno` int(50) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `name`, `username`, `password`, `emailid`, `address`, `mobileno`) VALUES
(1, 'Chandan', 'killer2495', '2495', 'chandan2495@gmail.com', NULL, NULL),
(2, 'a', 'a', 'a', 'a', NULL, NULL),
(3, 'prince', 'prince', 'prince', 'prince@gmail.com', NULL, NULL),
(5, 't', 't', 't', 't@gmail.com', NULL, NULL),
(6, 'chandra', 'chandra', 'chandra', '', NULL, NULL),
(7, 'asvanee', 'ash', 'ash', 'ashvanee@gmail.com', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
 ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
 ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
 ADD PRIMARY KEY (`detailid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
MODIFY `bookid` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
MODIFY `detailid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `userid` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
