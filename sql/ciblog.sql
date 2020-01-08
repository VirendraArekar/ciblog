-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2017 at 08:19 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `created_at`) VALUES
(2, 2, 'Technology', '2017-09-28 05:47:45'),
(6, 1, 'Health', '2017-10-01 08:05:19'),
(7, 1, 'Love', '2017-10-01 08:05:30'),
(8, 1, 'Education', '2017-10-01 08:05:41'),
(9, 1, 'Sports', '2017-10-01 08:06:06'),
(10, 1, 'Fashion', '2017-10-01 08:06:23'),
(11, 1, 'Sex', '2017-10-01 08:06:34');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(4, 9, 'Virendra Arekar', 'virendra.arekar@gmail.com', 'Greate Post..!', '2017-09-28 21:12:27'),
(5, 9, 'Suraj Dubey', 'Suraj.Dubey@gmail.com', 'Owesome Lallantop.....', '2017-09-28 21:25:19'),
(6, 22, 'Virendra Arekar', 'virendra.arekar@gmail.com', 'Awesome Design with try of ckeditor....', '2017-09-28 21:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(1, 8, 1, 'My First Post', 'My-First-Post', '<p><s>Lorem ipsum</s> dolor sit amet,sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, Stet clita kasd gubergren, sed diam voluptua. no sea takimata sanctus est Lorem ipsum dolor sit amet. sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, Lorem ipsum dolor sit amet,no sea takimata sanctus est Lorem ipsum dolor sit amet. Stet clita kasd gubergren, sed diam voluptua. no sea takimata sanctus est Lorem ipsum dolor sit amet. sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,</p>\r\n', 'df.jpg', '2017-10-01 08:08:30'),
(2, 7, 0, 'Test Post', 'Test-Post', '<p>Lorem ipsum dolor sit amet,sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, Stet clita kasd gubergren, sed diam voluptua. no sea takimata sanctus est Lorem ipsum dolor sit amet. sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, Lorem ipsum dolor sit amet,no sea takimata sanctus est Lorem ipsum dolor sit amet. Stet clita kasd gubergren, sed diam voluptua. no sea takimata sanctus est Lorem ipsum dolor sit amet. sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,</p>\r\n', 'tr.jpg', '2017-10-01 08:07:30'),
(4, 6, 0, 'Love You ', 'Love-You', '<p>&nbsp;i Love u so much. Lorem ipsum dolor sit amet,sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, At vero eos et accusam et justo duo dolores et ea rebum. Lorem ipsum dolor sit amet, no sea takimata sanctus est Lorem ipsum dolor sit amet. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. no sea takimata sanctus est Lorem ipsum dolor sit amet. no sea takimata sanctus est Lorem ipsum dolor sit amet. sed diam voluptua.</p>\r\n', 'dfgs.jpg', '2017-10-01 08:07:36'),
(7, 2, 1, 'Tejali Tai', 'Tejali-Tai', '<p><strong>Lorem ipsum dolor </strong><strong>sit</strong><strong> </strong><strong>amet</strong><strong>,</strong><strong>consetetur</strong><strong> </strong><strong>sadipscing</strong><strong> </strong><strong>elitr</strong>, &nbsp;At vero eos et accusam et justo duo dolores et ea rebum. &nbsp;sed diam voluptua. &nbsp;sed diam voluptua. &nbsp;no sea takimata sanctus est Lorem ipsum dolor sit amet. &nbsp;Lorem ipsum dolor sit amet, &nbsp;consetetur sadipscing elitr, &nbsp;sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, &nbsp;consetetur sadipscing elitr, &nbsp;consetetur sadipscing elitr, &nbsp;sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, &nbsp;Lorem ipsum dolor sit amet, &nbsp;sed diam voluptua. &nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet,consetetur sadipscing elitr, &nbsp;sed diam <a href=\"http://www.vishwas4php.com\">nonumy</a><a href=\"http://www.vishwas4php.com\"> </a>eirmod tempor invidunt ut labore et dolore magna aliquyam erat, &nbsp;consetetur sadipscing elitr, &nbsp;At vero eos et accusam et justo duo dolores et ea rebum. &nbsp;no sea takimata sanctus est Lorem ipsum dolor sit amet. &nbsp;sed diam voluptua. &nbsp;no sea takimata sanctus est Lorem ipsum dolor sit amet. &nbsp;Lorem ipsum dolor sit amet, &nbsp;sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, &nbsp;sed diam voluptua. &nbsp;consetetur sadipscing elitr, &nbsp;Lorem ipsum dolor sit amet, &nbsp;At vero eos et accusam et justo duo dolores et ea rebum. &nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, &nbsp;consetetur sadipscing elitr, &nbsp;Stet clita kasd gubergren, &nbsp;consetetur sadipscing elitr, &nbsp;sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, &nbsp;consetetur sadipscing elitr, &nbsp;Lorem ipsum dolor sit amet, &nbsp;sed diam voluptua. &nbsp;no sea takimata sanctus est Lorem ipsum dolor sit amet. &nbsp;consetetur sadipscing elitr, &nbsp;sed diam voluptua. &nbsp;consetetur sadipscing elitr, &nbsp;sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, &nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet,Stet clita kasd gubergren, &nbsp;Lorem ipsum dolor sit amet, &nbsp;sed diam voluptua. &nbsp;sed diam voluptua. &nbsp;sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, &nbsp;Stet clita kasd gubergren, &nbsp;Lorem ipsum dolor sit amet, &nbsp;At vero eos et accusam et justo duo dolores et ea rebum. &nbsp;sed diam voluptua. &nbsp;At vero eos et accusam et justo duo dolores et ea rebum. &nbsp;sed diam voluptua. &nbsp;sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, &nbsp;no sea takimata sanctus est Lorem ipsum dolor sit amet. &nbsp;<img alt=\"heart\" src=\"http://cdn.ckeditor.com/4.7.3/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /></p>\r\n', 'tr.jpg', '2017-09-30 08:39:12'),
(9, 2, 0, 'Php Devloper', 'Php-Devloper', '<p><strong>Whether you write&nbsp;<a href=\"https://codex.wordpress.org/Plugins\" title=\"Plugins\">plugins</a>&nbsp;or&nbsp;<a href=\"https://codex.wordpress.org/Glossary#Hack\" title=\"Glossary\">hacks</a>&nbsp;for WordPress, or you want to add bits and pieces of code about your own WordPress site or other&nbsp;<a href=\"http://en.wikipedia.org/wiki/Code_%28computer_programming%29\" rel=\"nofollow\">programming code</a>&nbsp;like&nbsp;<a href=\"https://codex.wordpress.org/Glossary#HTML\" title=\"Glossary\">HTML</a>,&nbsp;<a href=\"https://codex.wordpress.org/Glossary#CSS\" title=\"Glossary\">CSS</a>,&nbsp;<a href=\"https://codex.wordpress.org/Glossary#PHP\" title=\"Glossary\">PHP</a>&nbsp;or&nbsp;<a href=\"https://codex.wordpress.org/Glossary#JavaScript\" title=\"Glossary\">JavaScript</a>, putting code in your&nbsp;<a href=\"https://codex.wordpress.org/Writing_Posts\" title=\"Writing Posts\">post</a>&nbsp;that actually&nbsp;<em>looks</em>&nbsp;like code, but&nbsp;<em>doesn&#39;t behave</em>&nbsp;like code, is a frequent challenge for bloggers.</strong></p>\r\n\r\n<p>By default, the way a piece of code written or pasted to WordPress&nbsp;<a href=\"https://codex.wordpress.org/Writing_Posts\" title=\"Writing Posts\">post editor</a>&nbsp;is interpreted depends on whether you use visual or HTML post editor. Visual editor will consider the code to be an ordinary text, converting (encoding) the &lt; and &gt; characters into their&nbsp;<tt>&amp;lt;</tt>&nbsp;and&nbsp;<tt>&amp;gt;</tt>&nbsp;<a href=\"https://codex.wordpress.org/Glossary#Character_Entity\" title=\"Glossary\">character entity</a>&nbsp;equivalents, so that the code is not interpreted by a web browser. Quotes are converted too, but remember that by default, WordPress also applies&nbsp;<a href=\"https://codex.wordpress.org/Writing_Code_in_Your_Posts#Quotes_Auto-correction\">auto-correction</a>&nbsp;so that the text is quoted properly according to your language specifics. HTML editor does not convert any of these characters, so be aware that HTML and CSS markup you use in your code examples will be recognized by a web browser and you may end up with a funky looking text and a messed up layout.</p>\r\n\r\n<p>Note that this behavior may differ with respect to the WordPress version, post editor and other plugins used. In some older versions of WordPress, unrecognized uses of the &lt; and &gt; characters were converted into the&nbsp;<tt>&amp;lt;</tt>&nbsp;and&nbsp;<tt>&amp;gt;</tt>&nbsp;character entities, and when an&nbsp;<a href=\"http://en.wikipedia.org/wiki/HTML_element\" rel=\"nofollow\">HTML tag</a>&nbsp;was found within the post, the tag was left as it was, allowing for its interpretation in a web browser.</p>\r\n\r\n<p>In general, there are two uses of code within a web page. There is&nbsp;<tt>code found within a paragraph</tt>&nbsp;to make a point about the&nbsp;<tt>code</tt>&nbsp;that is being discussed, and then there is code that is highlighted&hellip;</p>\r\n', 'dfgs.jpg', '2017-09-28 12:12:15'),
(22, 10, 1, 'Romance', 'Romance', '<p><strong>Love, Love, Love</strong>,<img alt=\"devil\" src=\"http://cdn.ckeditor.com/4.7.3/full/plugins/smiley/images/devil_smile.png\" style=\"height:23px; width:23px\" title=\"devil\" /><img alt=\"crying\" src=\"http://cdn.ckeditor.com/4.7.3/full/plugins/smiley/images/cry_smile.png\" style=\"height:23px; width:23px\" title=\"crying\" /><img alt=\"angry\" src=\"http://cdn.ckeditor.com/4.7.3/full/plugins/smiley/images/angry_smile.png\" style=\"height:23px; width:23px\" title=\"angry\" />&nbsp;Lorem ipsum dolor sit amet,sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, &nbsp;no sea takimata sanctus est Lorem ipsum <em>dolor sit </em><em>amet</em><em>. &nbsp;At </em><em>vero</em><em> </em><em>eos</em><em> et </em><em>accusam</em><em> et </em><em>justo</em><em> duo </em><em>dolores</em><em> et ea </em><em>rebum</em><em>. &nbsp;sed diam </em><em>nonumy</em><em> </em><em>eirmod</em><em> </em><em>tempor</em><em> </em><em>invidunt</em><em> ut </em><em>labore</em><em> et </em><em>dolore</em><em> </em><em>magna</em><em> </em><em>aliquyam</em><em> </em><em>erat</em><em>, &nbsp;Stet </em><em>clita</em><em> </em><em>kasd</em><em> </em><em>gubergren</em><em>, &nbsp;At </em><em>vero</em><em> </em><em>eos</em><em> et </em><em>accusam</em><em> et </em><em>justo</em><em> duo </em><em>dolores</em><em> et ea </em><em>rebum</em><em>. &nbsp;no sea </em><em>takimata</em><em> </em><em>sanctus</em><em> est Lorem ipsum dolor sit </em><em>amet</em><em>. &nbsp;</em><em>consetetur</em><em> </em><em>sadipscing</em><em> </em><em>elitr</em><em>, &nbsp;Lorem ipsum dolor sit </em><em>amet</em><em>, &nbsp;</em></p>\r\n\r\n<p>Lorem ipsum dolor sit amet,Stet clita kasd gubergren, &nbsp;consetetur sadipscing elitr, <a href=\"http://www.google.com\">&nbsp;Lorem ipsum dolor sit </a><a href=\"http://www.google.com\">amet</a><a href=\"http://www.google.com\">,</a> &nbsp;consetetur sadipscing elitr, &nbsp;Lorem ipsum dolor sit amet, &nbsp;no sea takimata sanctus est Lorem ipsum dolor sit amet. &nbsp;Lorem ipsum dolor sit amet, &nbsp;no sea takimata sanctus est Lorem ipsum dolor sit amet. &nbsp;At vero eos et accusam et justo duo dolores et ea rebum. &nbsp;</p>\r\n\r\n<p><em>Lorem ipsum dolor </em><em>sit</em><em> </em><em>amet</em><em>,sed</em><em> diam </em><em>nonumy</em><em> </em><em>eirmod</em><em> </em><em>tempor</em><em> </em><em>invidunt</em><em> ut </em><em>labore</em><em> et </em><em>dolore</em><em> </em><em>magna</em><em> </em><em>aliquyam</em><em> </em><em>erat</em><em>, &nbsp;sed diam </em><em>nonumy</em><em> </em><em>eirmod</em><em> </em><em>tempor</em><em> </em><em>invidunt</em><em> ut </em><em>labore</em><em> et </em><em>dolore</em><em> </em><em>magna</em><em> </em><em>aliquyam</em><em> </em><em>erat</em><em>, &nbsp;no sea </em><em>takimata</em><em> </em><em>sanctus</em><em> est Lorem ipsum dolor sit </em><em>amet</em><em>. &nbsp;At </em><em>vero</em><em> </em><em>eos</em><em> et </em><em>accusam</em><em> et </em><em>justo</em><em> duo </em><em>dolores</em><em> et ea </em><em>rebum</em><em>. &nbsp;sed diam </em><em>voluptua</em><em>. &nbsp;sed diam </em><em>nonumy</em><em> </em><em>eirmod</em><em> </em><em>tempor</em><em> </em><em>invidunt</em><em> ut </em><em>labore</em><em> et </em><em>dolore</em><em> </em><em>magna</em><em> </em><em>aliquyam</em><em> </em><em>erat</em><em>, &nbsp;Lorem ipsum dolor sit </em><em>amet</em><em>, &nbsp;</em><em>consetetur</em><em> </em><em>sadipscing</em><em> </em><em>elitr</em><em>, &nbsp;Lorem ipsum dolor sit </em><em>amet</em><em>, &nbsp;</em></p>\r\n', 'df.jpg', '2017-10-01 08:07:45'),
(23, 11, 1, 'Easy PHP MVC', 'Easy-PHP-MVC', '<p><strong>Lorem ipsum dolor </strong><strong>sit</strong><strong> </strong><strong>amet</strong><strong>,Stet</strong><strong> </strong><strong>clita</strong><strong> </strong><strong>kasd</strong><strong> </strong><strong>gubergren</strong><strong>, &nbsp;no sea </strong><strong>takimata</strong><strong> </strong><strong>sanctus</strong><strong> est Lorem ipsum dolor sit </strong><strong>amet</strong><strong>. &nbsp;sed diam </strong><strong>nonumy</strong><strong> </strong><strong>eirmod</strong><strong> </strong><strong>tempor</strong><strong> </strong><strong>invidunt</strong><strong> ut </strong><strong>labore</strong><strong> et </strong><strong>dolore</strong><strong> </strong><strong>magna</strong><strong> </strong><strong>aliquyam</strong><strong> </strong><strong>erat</strong><strong>, &nbsp;</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet,At vero eos et accusam et justo duo dolores et ea rebum. &nbsp;consetetur sadipscing elitr, &nbsp;sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, &nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet,Stet clita kasd gubergren, &nbsp;sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, &nbsp;sed diam voluptua. &nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet,At vero eos et accusam et justo duo dolores et ea rebum. &nbsp;At vero eos et accusam et justo duo dolores et ea rebum. &nbsp;consetetur sadipscing elitr, &nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet,Stet clita kasd gubergren, &nbsp;sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, &nbsp;Stet clita kasd gubergren, &nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet,no sea takimata sanctus est Lorem ipsum dolor sit amet. &nbsp;consetetur sadipscing elitr, &nbsp;At vero eos et accusam et justo duo dolores et ea rebum. &nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet,consetetur sadipscing elitr, &nbsp;At vero eos et accusam et justo duo dolores et ea rebum. &nbsp;At vero eos et accusam et justo duo dolores et ea rebum. &nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet,consetetur sadipscing elitr, &nbsp;At vero eos et accusam et justo duo dolores et ea rebum. &nbsp;consetetur sadipscing elitr, &nbsp;<img alt=\"heart\" src=\"http://cdn.ckeditor.com/4.7.3/full/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"frown\" src=\"http://cdn.ckeditor.com/4.7.3/full/plugins/smiley/images/confused_smile.png\" style=\"height:23px; width:23px\" title=\"frown\" /><img alt=\"crying\" src=\"http://cdn.ckeditor.com/4.7.3/full/plugins/smiley/images/cry_smile.png\" style=\"height:23px; width:23px\" title=\"crying\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet,At vero eos et accusam et justo duo dolores et ea rebum. &nbsp;At vero eos et accusam et justo duo dolores et ea rebum. &nbsp;sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, &nbsp;</p>\r\n', 'tr.jpg', '2017-10-01 08:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
(1, 'Virendra Arekar', '401501', 'virendra.arekar@gmail.com', 'viren', 'f9e8b8892a816d2347d425e2d23646f0', '2017-09-30 04:25:53'),
(2, 'Tejali Arekar', '401503', 'tejali.arekar@gmail.com', 'tejali', '0e1aebd2fc4ce43a897f09821847f264', '2017-09-30 05:03:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
