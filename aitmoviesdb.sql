-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2024 at 01:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aitmoviesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `actorid` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `description` text NOT NULL,
  `movie1` varchar(255) NOT NULL,
  `movie2` varchar(255) NOT NULL,
  `movie3` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`actorid`, `fname`, `lname`, `gender`, `description`, `movie1`, `movie2`, `movie3`, `photo`) VALUES
(1, 'Leonardo', 'DiCaprio', 'Male', 'Leonardo Wilhelm DiCaprio (born November 11, 1974) is an American actor and film producer. Known for his work in biopics and period films, DiCaprio is the recipient of numerous accolades, including an Academy Award, a British Academy Film Award, and three Golden Globe Awards. As of 2019, his films have grossed over $7.2 billion worldwide, and he has been placed eight times in annual rankings of the world\'s highest-paid actors.\r\n\r\nBorn in Los Angeles, DiCaprio began his career in the late 1980s by appearing in television commercials. In the early 1990s, he had recurring roles in various television shows, such as the sitcom Parenthood, and had his first major film part as author Tobias Wolff in This Boy\'s Life (1993). At age 19, he received critical acclaim and his first Academy Award and Golden Globe Award nominations for his performance as a developmentally disabled boy in What\'s Eating Gilbert Grape (1993). He achieved international stardom with the star-crossed romances Romeo + Juliet (1996) and Titanic (1997).\r\n\r\nAfter the latter became the highest-grossing film at the time, he reduced his workload for a few years. In an attempt to shed his image of a romantic hero, DiCaprio sought roles in other genres, including crime drama in Catch Me If You Can (2002) and Gangs of New York (2002); the latter marked the first of his many successful collaborations with director Martin Scorsese. DiCaprio portrayed Howard Hughes in The Aviator (2004) and received acclaim for his performances in the political thriller Blood Diamond (2006), the crime drama The Departed (2006), and the romantic drama Revolutionary Road (2008).\r\n\r\nIn the following decade, DiCaprio starred in several high-profile directors\' projects, including the science fiction thriller Inception (2010), the western Django Unchained (2012), the biopic The Wolf of Wall Street (2013), the survival drama The Revenant (2015), for which he won an Academy Award and a BAFTA Award for Best Actor in a Leading Role, and the comedy-drama Once Upon a Time in Hollywood (2019), all of which were critical and commercial successes.\r\n\r\nDiCaprio is the founder of Appian Way Productions, a production company that has produced some of his films and the documentary series Greensburg (2008–2010), and the Leonardo DiCaprio Foundation, a nonprofit organization devoted to promoting environmental awareness. He regularly supports charitable causes and has produced several documentaries on the environment. In 2005, he was named a Commander of the Ordre des Arts et des Lettres for his contributions to the arts, and in 2016, he appeared in Time magazine\'s 100 most influential people in the world.', 'The Wolf of Wall Street', 'Inception', 'The Departed', 'uploads/leonardodicaprio.webp'),
(3, 'Margot', 'Robbie', 'Female', 'Margot Elise Robbie (born July 2, 1990) is an Australian actress and producer. Known for her work in both blockbuster and independent films, she has received several accolades, including nominations for two Academy Awards, four Golden Globe Awards, and five British Academy Film Awards. Time magazine named her one of the 100 most influential people in the world in 2017 and she was ranked as one of the world\'s highest-paid actresses by Forbes in 2019. Born and raised in Queensland, Robbie began her career in 2008 on the television series Neighbours, on which she was a regular until 2011. After moving to America, she led the television series Pan Am (2011–2012), and had her breakthrough in 2013 with the black comedy film The Wolf of Wall Street. She achieved wider recognition with starring roles as Jane Porter in The Legend of Tarzan (2016), Harley Quinn in the DC superhero films Suicide Squad (2016), Birds of Prey (2020) and The Suicide Squad (2021). Robbie also starred in Amsterdam (2022), Babylon (2022), Asteroid City (2023) and the titular role of Barbie in Barbie (2023). Robbie received critical acclaim and a nomination for the Academy Award for Best Actress for her portrayal of disgraced figure skater Tonya Harding in the biopic I, Tonya (2017). This acclaim continued with her roles as Queen Elizabeth I in the period drama Mary Queen of Scots (2018), Sharon Tate in the comedy-drama Once Upon a Time in Hollywood (2019), and a fictional Fox News employee in the drama Bombshell (2019); she received BAFTA Award nominations for all three and a nomination for the Academy Award for Best Supporting Actress for the lattermost. Robbie is married to filmmaker Tom Ackerley. They are co-founders of the production company LuckyChap Entertainment, under which they have produced several films, including I, Tonya and Promising Young Woman (2020), as well as the television series Dollface (2019–2022) and the miniseries Maid (2021).', 'The Wolf of Wall Street', 'Barbie', 'Suicide Squad', 'uploads/margotrobbie.webp'),
(4, 'Kevin', 'Hart', 'Male', 'Kevin Darnell Hart (born July 6, 1979) is an American stand-up comedian, actor, and producer. Born and raised in Philadelphia, Pennsylvania, Hart began his career by winning several amateur comedy competitions at clubs throughout New England, culminating in his first real break in 2001 when he was cast by Judd Apatow for a recurring role on the TV series Undeclared. The series lasted only one season, but he soon landed other roles in films such as Paper Soldiers (2002), Scary Movie 3 (2003), Soul Plane (2004), In the Mix (2005), and Little Fockers (2010).\r\n\r\nHart\'s comedic reputation continued to grow with the release of his first stand-up album, I\'m a Grown Little Man (2008), and performances in the films Think Like a Man (2012), Grudge Match (2013), Ride Along (2014) and its sequel Ride Along 2 (2016), About Last Night (2014), Get Hard (2015), Central Intelligence (2016), The Secret Life of Pets (2016), Captain Underpants: The First Epic Movie (2017), Jumanji: Welcome to the Jungle (2017), and Night School (2018).\r\n\r\nHe also released four more comedy albums, Seriously Funny in 2010, Laugh at My Pain in 2011, Let Me Explain in 2013, and What Now? in 2016. In 2015, Time Magazine named Hart one of the 100 most influential people in the world on the annual Time 100 list. He starred as himself in the lead role of Real Husbands of Hollywood.\r\n\r\nIn 2017, Hart launched the Laugh Out Loud Network, a subscription video streaming service in partnership with Lionsgate.', 'The Secret Life of Pets', 'Lift', 'Jumanji: Welcome to the Jungle', 'uploads/kevinhart.webp'),
(5, 'Keanu', 'Reeves', 'Male', 'Keanu Charles Reeves is a Canadian actor. Reeves is known for his roles in Bill & Ted\'s Excellent Adventure, Speed, Point Break, and The Matrix franchise as Neo.\r\n\r\nHe has collaborated with major directors such as Stephen Frears (in the 1988 period drama Dangerous Liaisons); Gus Van Sant (in the 1991 independent film My Own Private Idaho); and Bernardo Bertolucci (in the 1993 film Little Buddha). Referring to his 1991 film releases, The New York Times\' critic, Janet Maslin, praised Reeves\' versatility, saying that he \"displays considerable discipline and range. He moves easily between the buttoned-down demeanor that suits a police procedural story and the loose-jointed manner of his comic roles.\" A repeated theme in roles he has portrayed is that of saving the world, including the characters of Ted Logan, Buddha, Neo, Johnny Mnemonic, John Constantine and Klaatu.\r\n\r\nKeanu Charles Reeves is a Canadian actor. Reeves is known for his roles in Bill & Ted\'s Excellent Adventure, Speed, Point Break, and The Matrix franchise as Neo.\r\n\r\nHe has collaborated with major directors such as Stephen Frears (in the 1988 period drama Dangerous Liaisons); Gus Van Sant (in the 1991 independent film My Own Private Idaho); and Bernardo Bertolucci (in the 1993 film Little Buddha). Referring to his 1991 film releases, The New York Times\' critic, Janet Maslin, praised Reeves\' versatility, saying that he \"displays considerable discipline and range. He moves easily between the buttoned-down demeanor that suits a police procedural story and the loose-jointed manner of his comic roles.\" A repeated theme in roles he has portrayed is that of saving the world, including the characters of Ted Logan, Buddha, Neo, Johnny Mnemonic, John Constantine and Klaatu.', 'John Wick: Chapter 4', 'The Matrix', 'Constantine', 'uploads/keanureeves.webp'),
(6, 'Dwayne', 'Johnson', 'Male', 'An American and Canadian actor, producer and semi-retired professional wrestler, signed with WWE. Johnson is half-Black and half-Samoan. His father, Rocky Johnson, is a Black Canadian, from Nova Scotia, and part of the first Black tag team champions in WWE history back when it was known as the WWF along with Tony Atlas. His mother is Samoan and the daughter of Peter Maivia, who was also a pro wrestler. Maivia\'s wife, Lia Maivia, was one of wrestling\'s few female promoters, taking over Polynesian Pacific Pro Wrestling after her husband\'s death in 1982, until 1988. Through his mother, he is considered a non-blood relative of the Anoa\'i wrestling family. On March 29, 2008, The Rock inducted his father and his grandfather into the WWE Hall of Fame.\r\n\r\nAs of 2014, Johnson has a home in Southwest Ranches, Florida as well as Los Angeles, California. He also owns a farm in Virginia. In 2009, Johnson gained citizenship in Canada in honor of his father\'s background. Though Johnson was previously registered as a Republican, he voted for Barack Obama in the 2008 and 2012 United States presidential elections and is now an independent voter. He stated he did not vote in the 2016 U.S. election.\r\n\r\nIn recognition of his service to the Samoan people, and because he is a descendant of Samoan chiefs, Johnson had the noble title of Seiuli bestowed upon him by Malietoa Tanumafili II during his visit there in July 2004. He received a partial Samoan pe\'a tattoo on his left side in 2003,and, in 2017, had the small \"Brahma bull\" tattoo on his right arm covered with a larger half-sleeve tattoo of a bull\'s skull.\r\n\r\nJohnson married Dany Garcia on May 3, 1997. Their only child together, a daughter named Simone, was born in August 2001. On June 1, 2007, they announced they were splitting up amicably. Johnson then began dating Lauren Hashian, daughter of Boston drummer Sib Hashian. They first met in 2006 while Johnson was filming The Game Plan. Their first child together, a daughter, was born in December 2015. Their second child, another daughter, was born in April 2018.\r\n\r\nJohnson attended the 2000 Democratic National Convention as part of WWE\'s non-partisan \"Smackdown Your Vote\" campaign, which aimed to influence young people to vote. He also had a speaking role at the 2000 Republican National Convention that same year.\r\n\r\nIn 2006, Johnson founded the Dwayne Johnson Rock Foundation, a charity working with at-risk and terminally ill children. On October 2, 2007, he and his ex-wife donated $1 million to the University of Miami to support the renovation of its football facilities; it was noted as the largest donation ever given to the university\'s athletics department by former students. The University of Miami renamed the Hurricanes\' locker room in Johnson\'s honor. In 2015, Johnson donated $1,500 to a GoFundMe to pay for an abandoned dog\'s surgery. In 2017, he donated $25,000 to Hurricane Harvey relief efforts. In 2018, Johnson donated a gym to a military base in Oahu, Hawaii. After the 2018 Hawaii floods, he worked with Malama Kauai, a nonprofit organization, to help repair damages caused by the floods.\r\n\r\nAn American and Canadian actor, producer and semi-retired professional wrestler, signed with WWE. Johnson is half-Black and half-Samoan. His father, Rocky Johnson, is a Black Canadian, from Nova Scotia, and part of the first Black tag team champions in WWE history back when it was known as the WWF along with Tony Atlas. His mother is Samoan and the daughter of Peter Maivia, who was also a pro wrestler. Maivia\'s wife, Lia Maivia, was one of wrestling\'s few female promoters, taking over Polynesian Pacific Pro Wrestling after her husband\'s death in 1982, until 1988. Through his mother, he is considered a non-blood relative of the Anoa\'i wrestling family. On March 29, 2008, The Rock inducted his father and his grandfather into the WWE Hall of Fame.\r\n\r\nAs of 2014, Johnson has a home in Southwest Ranches, Florida as well as Los Angeles, California. He also owns a farm in Virginia. In 2009, Johnson gained citizenship in Canada in honor of his father\'s background. Though Johnson was previously registered as a Republican, he voted for Barack Obama in the 2008 and 2012 United States presidential elections and is now an independent voter. He stated he did not vote in the 2016 U.S. election.\r\n\r\nIn recognition of his service to the Samoan people, and because he is a descendant of Samoan chiefs, Johnson had the noble title of Seiuli bestowed upon him by Malietoa Tanumafili II during his visit there in July 2004. He received a partial Samoan pe\'a tattoo on his left side in 2003,and, in 2017, had the small \"Brahma bull\" tattoo on his right arm covered with a larger half-sleeve tattoo of a bull\'s skull.\r\n\r\nJohnson married Dany Garcia on May 3, 1997. Their only child together, a daughter named Simone, was born in August 2001. On June 1, 2007, they announced they were splitting up amicably. Johnson then began dating Lauren Hashian, daughter of Boston drummer Sib Hashian. They first met in 2006 while Johnson was filming The Game Plan. Their first child together, a daughter, was born in December 2015. Their second child, another daughter, was born in April 2018.\r\n\r\nJohnson attended the 2000 Democratic National Convention as part of WWE\'s non-partisan \"Smackdown Your Vote\" campaign, which aimed to influence young people to vote. He also had a speaking role at the 2000 Republican National Convention that same year.\r\n\r\nIn 2006, Johnson founded the Dwayne Johnson Rock Foundation, a charity working with at-risk and terminally ill children. On October 2, 2007, he and his ex-wife donated $1 million to the University of Miami to support the renovation of its football facilities; it was noted as the largest donation ever given to the university\'s athletics department by former students. The University of Miami renamed the Hurricanes\' locker room in Johnson\'s honor. In 2015, Johnson donated $1,500 to a GoFundMe to pay for an abandoned dog\'s surgery. In 2017, he donated $25,000 to Hurricane Harvey relief efforts. In 2018, Johnson donated a gym to a military base in Oahu, Hawaii. After the 2018 Hawaii floods, he worked with Malama Kauai, a nonprofit organization, to help repair damages caused by the floods.', 'Jumanji: Welcome to the Jungle', 'Jumanji: The Next Level', 'Baywatch', 'uploads/dwaynejohnson.webp'),
(7, 'Jack', 'Black', 'Male', 'Thomas Jacob \"Jack\" Black (born August 28, 1969) is an American actor, comedian, musician, and songwriter. Black is known for his roles in the films High Fidelity (2000), Shallow Hal (2001), Orange County (2002), School of Rock (2003), Envy (2004), Gulliver\'s Travels (2010), Bernie (2011) and The House with a Clock in Its Walls (2018), in addition to his role in the Jumanji franchise. He also voices the giant panda named Po from DreamWorks Animation\'s Kung Fu Panda films. He gained Golden Globe nominations for his work in School of Rock and Bernie, and he was given a star on Hollywood\'s Walk of Fame in 2018.', 'The Super Mario Bros. Movie', 'Jumanji: The Next Level', 'Jumanji: Welcome to the Jungle', 'uploads/jackblack.webp'),
(8, 'Awkwafina', '.', 'Female', 'Nora Lum (born June 2, 1988), known professionally as Awkwafina, is an American actress, rapper, and comedian who rose to prominence in 2012 when her rap song \"My Vag\" became popular on YouTube. She then released her debut album, Yellow Ranger (2014), and appeared on the MTV comedy series Girl Code (2014–2015). Her second album, In Fina We Trust, was released in 2018. She played supporting roles in the comedy films Neighbors 2: Sorority Rising (2016), Ocean\'s 8 (2018), Crazy Rich Asians (2018), and Jumanji: The Next Level (2019).', 'Jumanji: Welcome to the Jungle', 'Jumanji: The Next Level', 'Migration', 'uploads/Awkwafina.webp'),
(9, 'Jason', 'Statham', 'Male', 'Jason Statham (born July 26, 1967) is an English actor. He is known for portraying characters in various action-thriller films who are typically tough, hardboiled, gritty, or violent.\r\n\r\nStatham began practicing Chinese martial arts, kickboxing, and karate recreationally in his youth while working at local market stalls. An avid footballer and diver, he was a member of Britain\'s national diving team and competed for England in the 1990 Commonwealth Games. Shortly after, he was asked to model for French Connection, Tommy Hilfiger, and Levi\'s in various advertising campaigns. His past history working at market stalls inspired his casting in the Guy Ritchie crime films Lock, Stock and Two Smoking Barrels (1998) and Snatch (2000).\r\n\r\nThe commercial success of these films led Statham to star as Frank Martin in the Transporter trilogy (2002–2008). After starring in a variety of heist and action-thriller films such as The Italian Job (2003), Crank (2006), War (2007), The Bank Job (2008), The Mechanic (2011), Spy (2015), and Mechanic: Resurrection (2016), he established himself as a Hollywood leading man. However, he has also starred in commercially and critically unsuccessful films such as Revolver (2005), Chaos (2005), In the Name of the King (2007), 13 (2010), Blitz (2011), Killer Elite (2011), Hummingbird (2013), and Wild Card (2015). He regained commercial success as a part of the ensemble action series The Expendables (2010–2014) and the Fast & Furious franchise. In the latter, he has played Deckard Shaw in Fast & Furious 6 (2013), Furious 7 (2015), The Fate of the Furious (2017), F9 (2021) and the spin-off Fast & Furious Presents: Hobbs & Shaw (2019). He was credited as a co-producer on Hobbs & Shaw, receiving his first production credit.\r\n\r\nHis acting has been criticized for lacking depth and variety, but he has also been praised for leading the resurgence of action films during the 2000s and 2010s. According to a BBC News report, his film career from 2002 to 2017 generated an estimated $1.5 billion (£1.1 billion) in ticket sales, making him one of the film industry\'s most bankable stars.\r\n\r\nJason Statham (born July 26, 1967) is an English actor. He is known for portraying characters in various action-thriller films who are typically tough, hardboiled, gritty, or violent.\r\n\r\nStatham began practicing Chinese martial arts, kickboxing, and karate recreationally in his youth while working at local market stalls. An avid footballer and diver, he was a member of Britain\'s national diving team and competed for England in the 1990 Commonwealth Games. Shortly after, he was asked to model for French Connection, Tommy Hilfiger, and Levi\'s in various advertising campaigns. His past history working at market stalls inspired his casting in the Guy Ritchie crime films Lock, Stock and Two Smoking Barrels (1998) and Snatch (2000).\r\n\r\nThe commercial success of these films led Statham to star as Frank Martin in the Transporter trilogy (2002–2008). After starring in a variety of heist and action-thriller films such as The Italian Job (2003), Crank (2006), War (2007), The Bank Job (2008), The Mechanic (2011), Spy (2015), and Mechanic: Resurrection (2016), he established himself as a Hollywood leading man. However, he has also starred in commercially and critically unsuccessful films such as Revolver (2005), Chaos (2005), In the Name of the King (2007), 13 (2010), Blitz (2011), Killer Elite (2011), Hummingbird (2013), and Wild Card (2015). He regained commercial success as a part of the ensemble action series The Expendables (2010–2014) and the Fast & Furious franchise. In the latter, he has played Deckard Shaw in Fast & Furious 6 (2013), Furious 7 (2015), The Fate of the Furious (2017), F9 (2021) and the spin-off Fast & Furious Presents: Hobbs & Shaw (2019). He was credited as a co-producer on Hobbs & Shaw, receiving his first production credit.\r\n\r\nHis acting has been criticized for lacking depth and variety, but he has also been praised for leading the resurgence of action films during the 2000s and 2010s. According to a BBC News report, his film career from 2002 to 2017 generated an estimated $1.5 billion (£1.1 billion) in ticket sales, making him one of the film industry\'s most bankable stars.', 'The Beekeeper', 'Fast X', 'The Fate of the Furious', 'uploads/jasonstatham.webp'),
(10, 'Brie', 'Larson', 'Female', 'Brie Larson (born Brianne Sidonie Desaulniers; October 1, 1989), is an American actress and filmmaker. She\'s best known for her role as Carol Danvers / Captain Marvel in Captain Marvel (2019) and reprise her role in other MCU films and series. She\'s also known for her roles as Elizabeth Zott in the miniseries Lessons in Chemistry (which she also executive produced), Tess in Fast X, Eva Ansley in Just Mercy, Jeannette Walls in The Glass Castle, Mason Weaver in Kong: Skull Island, Joy \"Ma\" Newsome in Room, Kim Townsend in Trainwreck, Amy Phillips in The Gambler, Monica Martello in Don Jon, Cassidy Roy in The Spectacular Now, Molly Tracey in 21 Jump Street, Helen in Rampart, Envy Adams in Scott Pilgrim vs. the World, Kate Gregson on Showtime\'s United States of Tara, Beatrice \"The Bear\" Leep in Hoot, and Emily Stewart on WB\'s sitcom Raising Dad.\r\n\r\nShe appeared as a regular in the 2001 sitcom Raising Dad and briefly dabbled with a music career, releasing the album Finally Out of P.E. in 2005. She played supporting roles in the comedy films 13 Going on 30 (2004), Hoot (2006), Scott Pilgrim vs. the World (2010), and 21 Jump Street (2012), and appeared as a sardonic teenager in the television series United States of Tara (2009–2011).\r\n\r\nHer breakthrough came with a leading role in the acclaimed independent drama Short Term 12 (2013), and she continued to take on supporting parts in the romance The Spectacular Now (2013) and the comedy Trainwreck (2015). For playing a kidnapping victim in the drama Room (2015), she won the Academy Award for Best Actress.\r\n\r\nThe 2017 adventure film Kong: Skull Island marked her first big-budget release, followed by Free Fire, The Glass Castle, Unicorn Store, and Basmati Blues, the same year. She then starred as Carol Danvers / Captain Marvel in the 2019 Marvel Cinematic Universe superhero film Captain Marvel. She reprised her role in other MCU films including Avengers: Endgame, Shang-Chi and the Legend of the Ten Rings, Avengers: Quantum Encounter, and The Marvels, as well as in the series Ms. Marvel. She then starred in and executive produced the comedy-drama Apple TV+ miniseries Lessons in Chemistry (2023). She also starred in Fast X (2023).\r\n\r\nShe has co-written and co-directed two short films, and made her feature film directorial debut with the independent comedy-drama Unicorn Store (2017). For producing the virtual reality series The Messy Truth VR Experience (2020), she won a Primetime Emmy Award.\r\n\r\nBrie Larson (born Brianne Sidonie Desaulniers; October 1, 1989), is an American actress and filmmaker. She\'s best known for her role as Carol Danvers / Captain Marvel in Captain Marvel (2019) and reprise her role in other MCU films and series. She\'s also known for her roles as Elizabeth Zott in the miniseries Lessons in Chemistry (which she also executive produced), Tess in Fast X, Eva Ansley in Just Mercy, Jeannette Walls in The Glass Castle, Mason Weaver in Kong: Skull Island, Joy \"Ma\" Newsome in Room, Kim Townsend in Trainwreck, Amy Phillips in The Gambler, Monica Martello in Don Jon, Cassidy Roy in The Spectacular Now, Molly Tracey in 21 Jump Street, Helen in Rampart, Envy Adams in Scott Pilgrim vs. the World, Kate Gregson on Showtime\'s United States of Tara, Beatrice \"The Bear\" Leep in Hoot, and Emily Stewart on WB\'s sitcom Raising Dad.\r\n\r\nShe appeared as a regular in the 2001 sitcom Raising Dad and briefly dabbled with a music career, releasing the album Finally Out of P.E. in 2005. She played supporting roles in the comedy films 13 Going on 30 (2004), Hoot (2006), Scott Pilgrim vs. the World (2010), and 21 Jump Street (2012), and appeared as a sardonic teenager in the television series United States of Tara (2009–2011).\r\n\r\nHer breakthrough came with a leading role in the acclaimed independent drama Short Term 12 (2013), and she continued to take on supporting parts in the romance The Spectacular Now (2013) and the comedy Trainwreck (2015). For playing a kidnapping victim in the drama Room (2015), she won the Academy Award for Best Actress.\r\n\r\nThe 2017 adventure film Kong: Skull Island marked her first big-budget release, followed by Free Fire, The Glass Castle, Unicorn Store, and Basmati Blues, the same year. She then starred as Carol Danvers / Captain Marvel in the 2019 Marvel Cinematic Universe superhero film Captain Marvel. She reprised her role in other MCU films including Avengers: Endgame, Shang-Chi and the Legend of the Ten Rings, Avengers: Quantum Encounter, and The Marvels, as well as in the series Ms. Marvel. She then starred in and executive produced the comedy-drama Apple TV+ miniseries Lessons in Chemistry (2023). She also starred in Fast X (2023).\r\n\r\nShe has co-written and co-directed two short films, and made her feature film directorial debut with the independent comedy-drama Unicorn Store (2017). For producing the virtual reality series The Messy Truth VR Experience (2020), she won a Primetime Emmy Award.', 'The Marvels', 'Avengers: Endgame', 'Captain Marvel', 'uploads/brielarson.webp'),
(11, 'Teyonah', 'Parris', 'Female', 'Teyonah Parris (born September 22, 1987) is an American actress. She began her career playing a recurring role as Dawn Chambers in the AMC drama series, Mad Men, before landing her breakthrough role in the 2014 independent film Dear White People. In 2015, Parris starred in the satirical drama film Chi-Raq directed by Spike Lee.\r\n\r\nParris gained further recognition for her role as Monica Rambeau / Photon in WandaVision (2021) and The Marvels (2023). Other notable film credits include If Beale Street Could Talk (2018), Candyman (2021) and They Cloned Tyrone (2023).', 'The Marvels', 'WandaVision', 'Point Blank', 'uploads/tenoyahparris.webp'),
(12, 'Jason', 'Momoa', 'Male', 'Joseph Jason Namakaeha Momoa (born August 1, 1979) is an American actor and filmmaker. He made his acting debut as Jason Ioane on the syndicated action drama series Baywatch: Hawaii (1999–2001), which was followed by his portrayal of Ronon Dex on the Syfy science fiction series Stargate Atlantis (2005–2009), Khal Drogo in the first two seasons of the HBO fantasy drama series Game of Thrones (2011–2012), Declan Harp on the Discovery Channel historical drama series Frontier (2016–2018), and Baba Voss on the Apple TV+ science fiction series See (2019–present). Momoa was featured as the lead of the two lattermost series.', 'Fast X', 'Aquaman and the Lost Kingdom', 'Aquaman', 'uploads/jasonmomoa.webp'),
(13, 'Benedict', 'Cumberbatch', 'Male', 'Benedict Timothy Carlton Cumberbatch (born 19 July 1976) is an English actor. Known for his roles on the screen and stage, he has received various accolades throughout his career, including a Primetime Emmy Award, a British Academy Television Award, and a Laurence Olivier Award. Cumberbatch won the Laurence Olivier Award for Best Actor in a Leading Role in a Play for Frankenstein and a Primetime Emmy Award for Outstanding Lead Actor in a Miniseries or Movie for Sherlock. His performances in the dramas The Imitation Game (2014) and The Power of the Dog (2021) earned him nominations for an Academy Award, a BAFTA Award, a Screen Actors Guild Award, and a Golden Globe Award, all for Best Actor in a Leading Role. For playing the title role in five-part drama miniseries Patrick Melrose, he won a BAFTA TV Award for Best Actor in a Leading Role.', 'Spider-Man: No Way Home', 'Doctor Strange', 'Doctor Strange in the Multiverse of Madness', 'uploads/BenedictCumberbatch.webp'),
(14, 'Tom', 'Holland', 'Male', 'Thomas \"Tom\" Stanley Holland is an English actor and dancer.\r\n\r\nHe is best known for playing Peter Parker / Spider-Man in the Marvel Cinematic Universe and has appeared as the character in six films: Captain America: Civil War (2016), Spider-Man: Homecoming (2017), Avengers: Infinity War (2018), Avengers: Endgame (2019), Spider-Man: Far From Home (2019), and Spider-Man: No Way Home (2021).', 'Spider-Man: No Way Home', 'Uncharted', 'Onward', 'uploads/tomholland.webp'),
(15, 'Zendaya', '.', 'Female', 'Zendaya Maree Stoermer Coleman (born September 1, 1996) is an American actress and singer. She began her career as a child model and backup dancer. She rose to mainstream prominence for her role as Rocky Blue on the Disney Channel sitcom Shake It Up (2010–2013).\r\n\r\nIn 2013, Zendaya was a contestant on the 16th season of the dance competition series Dancing with the Stars. She produced and starred as the titular spy, K.C. Cooper, in the sitcom K.C. Undercover (2015–2018). Her film roles include the musical drama The Greatest Showman (2017), the superhero film Spider-Man: Homecoming (2017) and its sequels, the computer-animated musical comedy Smallfoot (2018), the romantic drama Malcolm & Marie (2021), the live-action/animation hybrid sports comedy Space Jam: A New Legacy (2021), and the science fiction epic Dune (2021).', 'Spider-Man: No Way Home', 'Spider-Man: Homecoming', 'Spider-Man: Far From Home', 'uploads/zendaya.webp'),
(16, 'Ryan', 'Reynolds', 'Male', 'Ryan Rodney Reynolds (born October 23, 1976) is a Canadian actor and film producer. He began his career starring in the Canadian teen soap opera Hillside (1991–1993), and had minor roles before landing the lead role on the sitcom Two Guys and a Girl between 1998 and 2001. Reynolds then starred in a range of films, including comedies such as National Lampoon\'s Van Wilder (2002), Waiting... (2005), and The Proposal (2009). He also performed in dramatic roles in Buried (2010), Woman in Gold (2015), and Life (2017), starred in action films such as Blade: Trinity (2004), Green Lantern (2011), 6 Underground (2019) and Free Guy (2021), and provided voice acting in the animated features The Croods (2013), Turbo (2013), Pokémon: Detective Pikachu (2019) and The Croods: A New Age (2020).\r\n\r\nReynolds\' biggest commercial success came with the superhero films Deadpool (2016) and Deadpool 2 (2018), in which he played the title character. The former set numerous records at the time of its release for an R-rated comedy and his performance earned him nominations at the Critics\' Choice Movie Awards and the Golden Globe Awards.', 'Deadpool', 'Deadpool 2', 'Free Guy', 'uploads/ryanreynolds.webp'),
(17, 'Morena', 'Baccarin', 'Female', 'Morena Baccarin (born June 2, 1979) is a Brazilian-born American actress most widely known for roles in several American science fiction television shows: as Inara Serra in the series Firefly; as Adria in the series Stargate SG-1; and as Anna in the 2009 version of the series V.\r\n\r\nBaccarin was born in Rio de Janeiro, Brazil. Her mother is Brazilian stage and TV actress Vera Setta, and her father is Italian journalist Fernando Baccarin. When she was 7, Baccarin moved with her family to Greenwich Village, New York, as her father was transferred to Globo TV\'s headquarters in the United States, working as editor. Baccarin attended Public School 41 and New York City Lab School for Collaborative Studies, where she and Claire Danes were classmates. She later attended the Fiorello H. LaGuardia High School of Music & Art and Performing Arts before she entered the theater program at Juilliard. Baccarin landed her first movie role in the improvised fashion world comedy Perfume (2001).', 'Deadpool 2', 'Deadpool', 'Spy', 'uploads/MorenaBaccarin.webp'),
(18, 'Karan', 'Soni', 'Male', 'Born in India, Karan Soni moved to the United States to study business at the University of Southern California. A career in acting instead followed, with Soni achieving prominence for his turn as unstable cab driver Dopinder in the superhero film Deadpool (2016) and its 2018 sequel. He has frequently appeared in comedic roles, including the films Goosebumps (2015), Ghostbusters (2016), Office Christmas Party (2016), Rough Night (2017), Pokémon Detective Pikachu (2019) and Trolls World Tour (2020). On television, he portrayed the lead in Betas and (2013) and Other Space (2015) and currently stars on the anthology series Miracle Workers (2019–present).', 'Deadpool 2', 'Deadpool', 'Spy', 'uploads/KaranSoni.webp'),
(19, 'Brianna', 'Hildebrand', 'Female', 'Brianna Caitlin Hildebrand is an American actress. She is known for appearing in the web series Annie Undocumented, and as Negasonic Teenage Warhead in the films Deadpool and Deadpool 2 where she reprised the role, during which her character was confirmed to be the first openly gay superhero in the X-Men cinematic universe. She was also cast as Sasha in First Girl I Loved, starring opposite Dylan Gelula and Mateo Arias. She is also known as Elodie Davis in the show Trinkets on Netflix. In July 2017, Hildebrand was added to the main cast for season two of The Exorcist.', 'Deadpool 2', 'Deadpool', 'Lucifer', 'uploads/BriannaHildebrand.webp'),
(20, 'Chris', 'Pratt', 'Male', 'Christopher Michael Pratt (born 21 June 1979) is an American actor, known for starring in both television and action films. He rose to prominence for his television roles, particularly in the NBC sitcom Parks and Recreation (2009–2015), for which he received critical acclaim and was nominated for the Critics\' Choice Television Award for Best Supporting Actor in a Comedy Series in 2013. He also starred earlier in his career as Bright Abbott in The WB drama series Everwood (2002–2006) and had roles in Wanted (2008), Jennifer\'s Body (2009), Moneyball (2011), The Five-Year Engagement (2012), Zero Dark Thirty (2013), Delivery Man (2013), and Her (2013).', 'The Super Mario Bros. Movie', 'Guardians of the Galaxy', 'Guardians of the Galaxy Vol. 2', 'uploads/ChrisPratt.webp'),
(21, 'Anya', 'Taylor-Joy', 'Female', 'Anya-Josephine Marie Taylor-Joy (born 16 April 1996) is a British-American actress and model. She left school at age sixteen and began to pursue an acting career. After small television roles, she made her film debut with the lead role of Thomasin in the horror film The Witch (2015). She went on to star in the horror film Split and the black comedy Thoroughbreds (both 2017). She also appeared in the drama miniseries The Miniaturist (2017), the fifth and sixth series of Peaky Blinders (2019–2022) and The Dark Crystal: Age of Resistance (2019), and the superhero film Glass (2019), reprising her role from Split. Taylor-Joy will voice Princess Peach in the upcoming Mario film (2022) and portray the title character in Furiosa (2024).', 'The Super Mario Bros. Movie', 'Split', 'The Menu', 'uploads/AnyaTaylor-Joy.webp'),
(22, 'Charlie', 'Day', 'Male', 'Charlie Day is an American television and film actor, from Middletown, Rhode Island, best known for playing Charlie Kelly on It\'s Always Sunny in Philadelphia.\r\n\r\nBesides playing Charlie Kelly on the hit FX television series It\'s Always Sunny in Philadelphia, he is also the show\'s executive producer and one of its writers. He has also appeared on several other television shows such as Third Watch, Law & Order, and Reno 911!.\r\n\r\nHe appeared in New Line Cinema\'s Horrible Bosses in July 2011, opposite Jason Bateman, Jason Sudeikis, Kevin Spacey, Jennifer Aniston, Colin Farrell, and Jamie Foxx. He also had a role in the 2010 film Going the Distance, alongside Justin Long, Jason Sudeikis, and Drew Barrymore. In 2013, he voiced a character named Art in the Pixar animated film Monsters University and appeared in Guillermo del Toro\'s film Pacific Rim.', 'The Super Mario Bros. Movie', 'Fist Fight', 'Horrible Bosses', 'uploads/CharlieDay.webp');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `directorid` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `description` text NOT NULL,
  `movie1` varchar(255) NOT NULL,
  `movie2` varchar(255) NOT NULL,
  `movie3` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`directorid`, `fname`, `lname`, `gender`, `description`, `movie1`, `movie2`, `movie3`, `photo`) VALUES
(1, 'Martin', 'Scorsese', 'Male', 'Martin Charles Scorsese (born November 17, 1942) is an American film director, producer, screenwriter, and actor. One of the major figures of the New Hollywood era, he is widely regarded as one of the greatest and most influential directors in film history. Scorsese\'s body of work explores themes such as Italian-American identity, Catholic concepts of guilt and redemption, faith, machismo, nihilism, crime and sectarianism. Many of his films are known for their depiction of violence and the liberal use of profanity. Scorsese has also dedicated his life to film preservation and film restoration by founding the nonprofit organization The Film Foundation in 1990, as well as the World Cinema Foundation in 2007 and the African Film Heritage Project in 2017.\r\n\r\nScorsese studied at New York University (NYU), where he received a bachelor\'s degree in English literature in 1964, and received a master\'s degree in fine arts in film from NYU\'s Tisch School of the Arts in 1968. In 1967 Scorsese\'s first feature film Who\'s That Knocking at My Door was released and was accepted into the Chicago Film Festival, where critic Roger Ebert saw it and called it \"a marvelous evocation of American city life, announcing the arrival of an important new director\".\r\n\r\nHe has established a filmmaking history involving repeat collaborations with actors and film technicians, including nine films made with Robert De Niro. His films with De Niro are the psychological thriller Taxi Driver (1976), the biographical sports drama Raging Bull (1980), the satirical black comedy The King of Comedy (1982), the musical drama New York, New York (1977), the psychological thriller Cape Fear (1991), and the crime films Mean Streets (1973), Goodfellas (1990), Casino (1995) and The Irishman (2019). Scorsese has also been noted for his collaborations with actor Leonardo DiCaprio, having directed him in five films: the historical epic Gangs of New York (2002), the Howard Hughes biography The Aviator (2004), the crime thriller The Departed (2006), the psychological thriller Shutter Island (2010), and the Wall Street black comedy The Wolf of Wall Street (2013). The Departed won Scorsese an Academy Award for Best Director, and for Best Picture. Scorsese is also known for his long-time collaboration with film editor Thelma Schoonmaker, who has edited every Scorsese film beginning with Raging Bull. Scorsese\'s other film work includes the black comedy After Hours (1985), the romantic drama The Age of Innocence (1993), the children\'s adventure drama Hugo (2011), and the religious epics The Last Temptation of Christ (1988), Kundun (1997) and Silence (2016).', 'The Wolf of Wall Street', 'The Departed', 'GoodFellas', 'uploads/martinscorsese.webp');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `fname`, `lname`, `email`, `address`, `admin`) VALUES
(1, 'testlogin', '$2y$10$w3CIVW3eEtivSOSptcaCxeCtMFV3XwlEE2k.snTwA7hoVFojRo3xe', 'Test', 'Login', 'test@login.com', '123 noel street', 1),
(2, 'emmarivera', '$2y$10$NCvdlT3ZwOmkQ/A8ig/CouxeTrD0a8DtDhK48aJkPYfH9CP88DZM.', 'emma', 'rivera', 'emma@rivera.com', '1234 nostreet', 0),
(5, 'ariverapaniza1', '$2y$10$.fyOTvFjwNPvRK..cD4CZOPe/P/DxSl1MwN5AJP7t3OlREVO1CS3e', 'ariverapaniza', 'ariverapaniza', 'asiesmiemal@nomail.com', '423423 dgfkljdfg', 0),
(6, 'ariverapaniza', '$2y$10$lioeJ.z69HUC9yUpc01Sj.9WTw1gAXRAyn9NlaPxrYfneUlZ4zhCC', 'Arturo', 'Rivera', 'ariverapaniza@gmail.com', '1 Physical Address', 1),
(7, 'evelynadmin', '$2y$10$4HtmoWTwV48dFa5APHJL6.T/ilfYJaJhzRn8O4JkAFa0x3f8/14G2', 'evelyn', 'hernandez', 'evelyn@hernandez.com', '123 fake address', 1),
(8, 'evelyn', '$2y$10$lxd/pKfX2ZUyyn1bqeunSecQ2JlgwU8elACliap3SzpYvzLxCqWJO', 'evelyn', 'hernandez', 'evelyn@hernandez.com', '123 fake address', 0);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `moviesid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `length` varchar(150) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `classification` varchar(15) NOT NULL,
  `releaseyear` date NOT NULL,
  `language` varchar(255) NOT NULL,
  `productioncompany` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `trailer` varchar(255) NOT NULL,
  `poster` varchar(255) NOT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`moviesid`, `title`, `length`, `genre`, `classification`, `releaseyear`, `language`, `productioncompany`, `description`, `trailer`, `poster`, `image1`, `image2`, `image3`, `image4`) VALUES
(3, 'Star Wars: The Bad Batch', '3 Seasons', 'Animation', 'PG', '2022-06-10', 'English', 'Disney', 'The \'Bad Batch\' of elite and experimental clones make their way through an ever-changing galaxy in the immediate aftermath of the Clone Wars.', 'Oa5zeHdSwdQ', 'uploads/poster_UY2500_.jpg', 'uploads/MV5BNmJlOTc4ZWUtOGI0YS00NzhiLTk3YzMtZmQ5YWU3OWZlNWNlXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_FMjpg_UX1920_.jpg', 'uploads/MV5BYWM5NmVkMTEtMDQ2MS00MjdiLWFkZmEtMGMwMWNhZTEyYWNlXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_FMjpg_UX2160_.jpg', 'uploads/MV5BZDg1ZjMyZTMtZWI4My00Y2I0LTlkODctNGFiMDcwMjU3Y2QwXkEyXkFqcGdeQXVyODUwOTE1NTI@._V1_FMjpg_UX1920_.jpg', 'uploads/MV5BMzU4YjZlN2QtZGQxMC00OGQ0LWExOTktYzgzMmFiZjYzNWVhXkEyXkFqcGdeQXVyODUwOTE1NTI@._V1_FMjpg_UX1920_.jpg'),
(6, 'Jumanji: Welcome to the Jungle', '119', 'Action', 'PG-13', '2017-12-26', 'English', 'Universal Studios', 'Four teenagers in detention discover an old video game console with a game they’ve never heard of. When they decide to play, they are immediately sucked into the jungle world of Jumanji in the bodies of their avatars. They’ll have to complete the adventure of their lives filled with fun, thrills and danger or be stuck in the game forever!', '2QKg5SZ_35I', 'uploads/pSgXKPU5h6U89ipF7HBYajvYt7j.jpg', 'uploads/r3pJ884C2cJ6F64X5Yd5sARuNZ6.jpg', 'uploads/yqMXhCCyZhqvnMWNRYkDuphHmGX.jpg', 'uploads/zJDMuXQDraHjtF53wikmyBQIcYe.jpg', 'uploads/b9vToxewllJMVa9fkQmpqzZBuAB.jpg'),
(7, 'The Wolf of Wall Street', '180', 'Drama', 'NC-17', '2014-01-22', 'English', 'Paramount Pictures', 'A New York stockbroker refuses to cooperate in a large securities fraud case involving corruption on Wall Street, corporate banking world and mob infiltration. Based on Jordan Belfort\'s autobiography.', 'iszwuX1AK6A', 'uploads/wolfposter.jpg', 'uploads/wolf1.jpg', 'uploads/wolf2.jpg', 'uploads/wolf3.jpg', 'uploads/wolf4.jpg'),
(8, 'Dune', '165', 'Fantasy', 'PG-13', '2021-02-12', 'English', 'Universal Studios', 'Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, must travel to the most dangerous planet in the universe to ensure the future of his family and his people. As malevolent forces explode into conflict over the planet\'s exclusive supply of the most precious resource in existence-a commodity capable of unlocking humanity\'s greatest potential-only those who can conquer their fear will survive.', 'n9xhJrPXop4', 'uploads/duneposter.jpg', 'uploads/dune1.jpg', 'uploads/dune2.jpg', 'uploads/dune3.jpg', 'uploads/dune4.jpg'),
(9, 'Migration', '83', 'Animation', 'G', '2023-12-22', 'English', 'Illumination', 'After a migrating duck family alights on their pond with thrilling tales of far-flung places, the Mallard family embarks on a family road trip, from New England, to New York City, to tropical Jamaica.', 'cQfo0HJhCnE', 'uploads/migrationposter.jpg', 'uploads/migration1.jpg', 'uploads/migration2.jpg', 'uploads/migration3.jpg', 'uploads/migration4.jpg'),
(10, 'The Marvels', '105', 'Science-Fiction', 'PG-13', '2023-09-11', 'English', 'Disney', 'Carol Danvers, aka Captain Marvel, has reclaimed her identity from the tyrannical Kree and taken revenge on the Supreme Intelligence. But unintended consequences see Carol shouldering the burden of a destabilized universe. When her duties send her to an anomalous wormhole linked to a Kree revolutionary, her powers become entangled with that of Jersey City super-fan Kamala Khan, aka Ms. Marvel, and Carol’s estranged niece, now S.A.B.E.R. astronaut Captain Monica Rambeau. Together, this unlikely trio must team up and learn to work in concert to save the universe.', 'wS_qbDztgVY', 'uploads/marvelsposter.jpg', 'uploads/marvels1.jpg', 'uploads/marvels2.jpg', 'uploads/marvels3.jpg', 'uploads/marvels4.jpg'),
(11, 'The Beekeeper', '105', 'Action', 'PG-13', '2023-11-01', 'English', 'Miramax', 'One man’s campaign for vengeance takes on national stakes after he is revealed to be a former operative of a powerful and clandestine organization known as Beekeepers.', 'dE0KFHYiQ4s', 'uploads/beekeeperposter.jpg', 'uploads/beekeeper1.jpg', 'uploads/beekeeper2.jpg', 'uploads/beekeeper3.jpg', 'uploads/beekeeper4.jpg'),
(12, 'Aquaman and the Lost Kingdom', '124', 'Science-Fiction', 'PG-13', '2023-12-26', 'English', 'Warner Bros.', 'Black Manta seeks revenge on Aquaman for his father\'s death. Wielding the Black Trident\'s power, he becomes a formidable foe. To defend Atlantis, Aquaman forges an alliance with his imprisoned brother. They must protect the kingdom.', 'UGc5Tzz19UY', 'uploads/aquamanposter.jpg', 'uploads/aquaman1.jpg', 'uploads/aquaman2.jpg', 'uploads/aquaman3.jpg', 'uploads/aquaman4.jpg'),
(13, 'Deadpool', '128', 'Science-Fiction', 'R', '2016-11-02', 'English', '20 Century Studios', 'The origin story of former Special Forces operative turned mercenary Wade Wilson, who, after being subjected to a rogue experiment that leaves him with accelerated healing powers, adopts the alter ego Deadpool. Armed with his new abilities and a dark, twisted sense of humor, Deadpool hunts down the man who nearly destroyed his life.', 'ONHBaC-pfsk', 'uploads/Deadpoolposter.jpg', 'uploads/Deadpool1.jpg', 'uploads/Deadpool2.jpg', 'uploads/Deadpool3.jpg', 'uploads/Deadpool4.jpg'),
(14, 'Deadpool 2', '120', 'Science-Fiction', 'R', '2018-05-16', 'English', '20 Century Studios', 'Wisecracking mercenary Deadpool battles the evil and powerful Cable and other bad guys to save a boy\'s life.', 'D86RtevtfrA', 'uploads/Deadpool_2-poster.jpg', 'uploads/Deadpool_2-1.jpg', 'uploads/Deadpool_2-2.jpg', 'uploads/Deadpool_2-3.jpg', 'uploads/Deadpool_2-4.jpg'),
(15, 'Fast X', '142', 'Action', 'R', '2023-05-18', 'English', 'Universal Studios', 'Over many missions and against impossible odds, Dom Toretto and his family have outsmarted, out-nerved and outdriven every foe in their path. Now, they confront the most lethal opponent they\'ve ever faced: A terrifying threat emerging from the shadows of the past who\'s fueled by blood revenge, and who is determined to shatter this family and destroy everything—and everyone—that Dom loves, forever.', 'eoOaKN4qCKw', 'uploads/Fast_X-poster.jpg', 'uploads/Fast_X-1.jpg', 'uploads/Fast_X-2.jpg', 'uploads/Fast_X-3.jpg', 'uploads/Fast_X-4.jpg'),
(16, 'The Super Mario Bros. Movie', '93', 'Animation', 'G', '2023-04-05', 'English', 'Illumination', 'While working underground to fix a water main, Brooklyn plumbers—and brothers—Mario and Luigi are transported down a mysterious pipe and wander into a magical new world. But when the brothers are separated, Mario embarks on an epic quest to find Luigi.', 'TnGl01FkMMo', 'uploads/mario-poster.jpg', 'uploads/mario-1.jpg', 'uploads/mario-2.jpg', 'uploads/mario-3.jpg', 'uploads/mario-4.jpg'),
(17, 'Transformers: Rise of the Beasts', '127', 'Science-Fiction', 'PG-13', '2023-06-22', 'English', 'Universal Studios', 'When a new threat capable of destroying the entire planet emerges, Optimus Prime and the Autobots must team up with a powerful faction known as the Maximals. With the fate of humanity hanging in the balance, humans Noah and Elena will do whatever it takes to help the Transformers as they engage in the ultimate battle to save Earth.', 'WWWDskI46Js', 'uploads/transformersposter.jpg', 'uploads/transformers-1.jpg', 'uploads/transformers-2.jpg', 'uploads/transformers-3.jpg', 'uploads/transformers-4.jpg'),
(18, 'Spider-Man: Across the Spider-Verse', '140', 'Animation', 'PG-13', '2023-06-01', 'English', 'Sony Pictures Animation', 'After reuniting with Gwen Stacy, Brooklyn’s full-time, friendly neighborhood Spider-Man is catapulted across the Multiverse, where he encounters the Spider Society, a team of Spider-People charged with protecting the Multiverse’s very existence. But when the heroes clash on how to handle a new threat, Miles finds himself pitted against the other Spiders and must set out on his own to save those he loves most.', 'cqGjhVJWtEg', 'uploads/spiderman-poster.jpg', 'uploads/spiderman-1.jpg', 'uploads/spiderman-2.jpg', 'uploads/spiderman-3.jpg', 'uploads/spiderman-4.jpg'),
(19, 'Spider-Man: No Way Home', '148', 'Action', 'PG-13', '2021-12-16', 'English', 'Disney', 'Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.', 'JfVOs4VSpmA', 'uploads/spiderman_nwh-poster.jpg', 'uploads/spiderman_nwh-1.jpg', 'uploads/spiderman_nwh-2.jpg', 'uploads/spiderman_nwh-3.jpg', 'uploads/spiderman_nwh-4.jpg'),
(20, 'Mission: Impossible - Dead Reckoning Part One', '184', 'Action', 'PG-13', '2023-08-07', 'English', 'Paramount Pictures', 'Ethan Hunt and his IMF team embark on their most dangerous mission yet: To track down a terrifying new weapon that threatens all of humanity before it falls into the wrong hands. With control of the future and the world\'s fate at stake and dark forces from Ethan\'s past closing in, a deadly race around the globe begins. Confronted by a mysterious, all-powerful enemy, Ethan must consider that nothing can matter more than his mission—not even the lives of those he cares about most.', 'avz06PDqDbM', 'uploads/mission-poster.jpg', 'uploads/mission-1.jpg', 'uploads/mission-2.jpg', 'uploads/mission-3.jpg', 'uploads/mission-4.jpg'),
(21, 'John Wick: Chapter 4', '170', 'Action', 'NC-17', '2023-03-23', 'English', 'Lionsgate', 'With the price on his head ever increasing, John Wick uncovers a path to defeating The High Table. But before he can earn his freedom, Wick must face off against a new enemy with powerful alliances across the globe and forces that turn old friends into foes.', 'qEVUtrk8_B4', 'uploads/johnwick4-poster.jpg', 'uploads/johnwick4-1.jpg', 'uploads/johnwick4-2.jpg', 'uploads/johnwick4-3.jpg', 'uploads/johnwick4-4.jpg'),
(22, 'Lift', '107', 'Thriller', 'PG-13', '2024-01-10', 'English', 'Netflix', 'An international heist crew, led by Cyrus Whitaker, race to lift $500 million in gold from a passenger plane at 40,000 feet.', 'm2L-Sa_6MU0', 'uploads/lift-poster.jpg', 'uploads/lift-1.jpg', 'uploads/lift-2.jpg', 'uploads/lift-3.jpg', 'uploads/lift-4.jpg'),
(23, 'The Secret Life of Pets', '86', 'Animation', 'G', '2016-09-07', 'English', 'Illumination', 'The quiet life of a terrier named Max is upended when his owner takes in Duke, a stray whom Max instantly dislikes.', 'i-80SGWfEjM', 'uploads/secretlifeofpetsPoster.jpg', 'uploads/secretlifeofpets1.jpg', 'uploads/secretlifeofpets2.jpg', 'uploads/secretlifeofpets3.jpg', 'uploads/secretlifeofpets4.jpg'),
(24, 'The Matrix', '136', 'Science-Fiction', 'PG-13', '1999-08-04', 'English', 'Universal Studios', 'Set in the 22nd century, The Matrix tells the story of a computer hacker who joins a group of underground insurgents fighting the vast and powerful computers who now rule the earth.', 'vKQi3bBA1y8', 'uploads/matrixposter.jpg', 'uploads/matrix1.jpg', 'uploads/matrix2.jpg', 'uploads/matrix3.jpg', 'uploads/matrix4.jpg'),
(25, 'Constantine', '121', 'Thriller', 'NC-17', '2005-04-24', 'English', '20 Century Fox', 'John Constantine has literally been to Hell and back. When he teams up with a policewoman to solve the mysterious suicide of her twin sister, their investigation takes them through the world of demons and angels that exists beneath the landscape of contemporary Los Angeles.', 'DEa508Xmmio', 'uploads/constantineposter.jpg', 'uploads/constantine1.jpg', 'uploads/constantine2.jpg', 'uploads/constantine3.jpg', 'uploads/constantine4.jpg'),
(26, 'Jumanji: The Next Level', '123', 'Comedy', 'PG', '2019-12-26', 'English', 'Universal Studios', 'As the gang return to Jumanji to rescue one of their own, they discover that nothing is as they expect. The players will have to brave parts unknown and unexplored in order to escape the world’s most dangerous game.', 'rBxcF-r9Ibs', 'uploads/jumanjithenextlevelposter.jpg', 'uploads/jumanjithenextlevel1.jpg', 'uploads/jumanjithenextlevel2.jpg', 'uploads/jumanjithenextlevel3.jpg', 'uploads/jumanjithenextlevel4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `rusername` varchar(255) NOT NULL,
  `rmovie` varchar(255) NOT NULL,
  `rtitle` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `rusername`, `rmovie`, `rtitle`, `rating`, `review`) VALUES
(1, 'testlogin', 'Star Wars: The Bad Batch', 'First Review', 5, 'This is my first review.'),
(2, 'testlogin', 'Star Wars: The Bad Batch', 'Second Review', 4, 'This is my second review.'),
(3, 'testlogin', 'Star Wars: The Bad Batch', 'Third Review', 3, 'This is my third review.'),
(4, 'testlogin', 'Star Wars: The Bad Batch', 'Fourth Review', 2, 'This is my fourth review.'),
(5, 'testlogin', 'Jumanji: Welcome to the Jungle', 'Fifth Review', 1, 'This is my fifth review.'),
(6, 'testlogin', 'Jumanji: Welcome to the Jungle', 'Sixth Review', 5, 'This is my sixth review.'),
(9, 'testlogin', 'Jumanji: Welcome to the Jungle', 'Jumanji Review', 5, 'This is a Jumanji review!'),
(10, 'testlogin', 'Jumanji: Welcome to the Jungle', 'Another Jumanji Review', 5, 'This is another Jumanji: Welcome to the Jungle review'),
(11, 'evelyn', 'Jumanji: Welcome to the Jungle', 'The 90\'s Game is back and got even more adventurous !!', 5, 'When four teenagers in detention discover an old video game console with a game they\'ve never heard of, they are immediately thrust into the game\'s jungle setting, into the bodies of their avatars, played by Dwayne Johnson, Jack Black, Kevin Hart, and Karen Gillan. What they discover is that you don\'t just play Jumanji -Jumanji plays you. They\'ll have to go on the most dangerous adventure of their lives, or they\'ll be stuck in the game forever.'),
(12, 'evelyn', 'Mission: Impossible - Dead Reckoning Part One', 'Amazing', 5, 'An absolute masterclass in producing an enjoyable action movie. Cinematography was great, the story was paced extremely well, and the casting of ALL roles was absolutely perfect.\r\n\r\nCruise, Pegg and Rhames were awesome as always, Whigham and Davis were great additions, but the power quartet of Ferguson, Atwell, Klementieff and Kirby, really went above and beyond in making this movie perfect. Not to mention the chilling confidence of Morales as Gabriel, who practically oozed tangible danger.'),
(13, 'evelyn', 'Lift', 'A good Movie', 4, 'It was a good movie for all the family'),
(14, 'evelyn', 'The Wolf of Wall Street', 'A Masterclass Movie', 5, 'An amazing bio pic of Jordan Belfort that has everything you\'ll ever want: comedy, drama, romance, heart and the list goes on. This movie was an absolute joy. The acting was superb in this movie all around. Leonardo DiCaprio gives one of his best performances of his career. Jonah Hill and Margo Robbie were fantastic! For a movie that was almost three hours, it flew by and was incredibly engaging. I can not believe it took me this long to see it.'),
(15, 'evelyn', 'Deadpool', 'Funny Movie', 5, 'I actually enjoyed the movie so much that i\'ll recommend it to all my friends, at first i didn\'t really want to watch it because i\'m not into super hero movies at all, but i did anyway, i mean people were talking so much about it i had to see it myself and what an awesome choice i made. The good thing about this movie is that Deadpool is a hero but in a very comedic way, you don\'t usually expect comedy from a superhero film but this one was full of comedy and the way they treated the plot was amazing, it was there, humor was there in every scene, even when there was fighting or romance'),
(16, 'evelyn', 'Dune', 'Dune Review', 4, 'Paul Atreides : \" Fear is the mind-killer. Fear is the little death that brings total obliteration. I will face my fear, and I will permit it to pass over me. When the fear has gone, there will be nothing. Only I will remain \".'),
(17, 'evelyn', 'Spider-Man: No Way Home', 'Great Movie', 5, 'Life for Peter Parker (Tom Holland) is complicated thanks to his dual life as Spider-Man and the challenges of being in High School. Unfortunately for him; his best intentions are about to make things much worse in “Spider-Man: No Way Home”.\r\n\r\nTaking place where “Spider-Man: Far From Home” ended; Peter must deal with his secret identity being leaked by Tabloid Journalist J. Jonah Jameson (J.K. Simmons); and the throngs of people, helicopters, and protestors who follow his every move and camp outside his home.'),
(18, 'evelyn', 'The Marvels', 'A good Movie for all the family', 4, '\"The Marvels is a film that showcases some of the well-known strengths and weaknesses of the MCU. It struggles with script and editing issues that hinder its narrative cohesion and character depth, besides an unnecessarily short runtime that doesn’t help its villain.\r\n\r\nFortunately, it excels in its ensemble cast and their chemistry - Iman Vellani is the clear MVP - creative action set pieces, impressive visual effects, stunning costumes, and well-timed humor'),
(19, 'evelyn', 'John Wick: Chapter 4', 'An Instant Classic!', 5, 'John Wick: Chapter 4 might be a little long, but when it is fun, there are few films that can compete with its magnetism. Reeves shows why he’s one of the best genre actors in the world and pours his heart and soul into a soft-spoken performance. Combined with Stahelski’s fight sequences, this is sure to become a highly rewatched, often quoted classic.'),
(20, 'evelyn', 'Migration', 'Fun for all the family', 5, 'It was a really cute and entertaining movie. Great for date night or a night in with your family.'),
(21, 'evelyn', 'The Beekeeper', 'Full of Action!', 5, '\"Clay\" (Jason Statham) has worked for an off-the-books US government programme designed to provide the ultimate security to the democratic process by providing unlimited training and resources to a group of people whose job it is is to objectively protect the system. These folks are called \"beekeepers\" which is lucky because our Jason has decided to spend his well earned retirement doing precisely that. He rents some space in the barn of \"Eloise\" (Phylicia Rashad) and one evening she invites him round for supper. '),
(22, 'testlogin', 'The Super Mario Bros. Movie', 'Funny Family Movie', 5, 'All my three kids used to play Super Mario Bros games and two of them played them a lot when they were younger so this movie was kind of a must-see movie for us.\r\n\r\nFor myself , this felt very much like a movie made for Super Mario Bros fans and less for the general audience.\r\n\r\nThe characters, the completely illogical platform jumping everywhere and the rather childish story are certain to appeal to younger people still playing the game or those that grew up with the Mario Bros games.');

-- --------------------------------------------------------

--
-- Table structure for table `watchlist`
--

CREATE TABLE `watchlist` (
  `id` int(11) NOT NULL,
  `watchlist` tinyint(4) NOT NULL,
  `wusername` varchar(255) NOT NULL,
  `wmovie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `watchlist`
--

INSERT INTO `watchlist` (`id`, `watchlist`, `wusername`, `wmovie`) VALUES
(1, 1, 'testlogin', 'John Wick: Chapter 4'),
(2, 1, 'testlogin', 'Jumanji: Welcome to the Jungle'),
(3, 1, 'testlogin', 'Star Wars: The Bad Batch'),
(4, 1, 'testlogin', 'The Marvels'),
(5, 1, 'testlogin', 'The Beekeeper'),
(6, 1, 'testlogin', 'The Wolf of Wall Street'),
(7, 1, 'testlogin', 'The Secret Life of Pets'),
(8, 1, 'evelyn', 'Lift'),
(9, 1, 'evelyn', 'Constantine'),
(10, 1, 'evelyn', 'Migration'),
(11, 1, 'evelyn', 'The Beekeeper'),
(12, 1, 'testlogin', 'The Beekeeper'),
(13, 1, 'testlogin', 'Lift'),
(14, 1, 'testlogin', 'Jumanji: The Next Level'),
(15, 1, 'testlogin', 'Spider-Man: Across the Spider-Verse'),
(16, 1, 'testlogin', 'Dune'),
(17, 1, 'testlogin', 'The Matrix'),
(18, 1, 'testlogin', 'Migration'),
(19, 1, 'testlogin', 'Spider-Man: No Way Home'),
(20, 1, 'testlogin', 'Constantine'),
(21, 1, 'testlogin', 'The Super Mario Bros. Movie'),
(22, 1, 'testlogin', 'The Secret Life of Pets');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`actorid`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`directorid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`moviesid`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `actorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `directorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `moviesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `watchlist`
--
ALTER TABLE `watchlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
