-- Database: Bookstore

-- --------------------------------------------------------

-- Structure for CART

CREATE TABLE IF NOT EXISTS CART (
	customer varchar(40) NOT NULL,
	product varchar(40) NOT NULL,
	quantity int(5) NOT NULL,
	PRIMARY KEY (customer),
	KEY product (product)
)

-- --------------------------------------------------------

-- Structure for PRODUCTS

CREATE TABLE IF NOT EXISTS PRODUCTS (
	PID varchar(25) NOT NULL,
	Title varchar(255) NOT NULL,
	Author varchar(255) NOT NULL,
	Price float NOT NULL,
	Publisher varchar(255),
	Category varchar(255),
	Description text,
	Page int(5),
	PRIMARY KEY (PID)
)

-- Data for PRODUCTS

INSERT INTO PRODUCTS (PID, Title, Author, Price, Publisher, Category, Description, page) VALUES
('F1', 'Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', 13.99, 'Bloomsbury Publishing', 'Fiction', 'Harry Potter has never even heard of Hogwarts when the letters start dropping on the doormat at number four, Privet Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly aunt and uncle. Then, on Harry''s eleventh birthday, a great beetle-eyed giant of a man called Rubeus Hagrid bursts in with some astonishing news: Harry Potter is a wizard, and he has a place at Hogwarts School of Witchcraft and Wizardry. An incredible adventure is about to begin!', 352)

('F2', 'Harry Potter and the Chamber of Secrets', 'J.K. Rowling', 11.99, 'Bloomsbury Publishing', 'Fiction', 'Harry Potter''s summer has included the worst birthday ever, doomy warnings from a house-elf called Dobby, and rescue from the Dursleys by his friend Ron Weasley in a magical flying car! Back at Hogwarts School of Witchcraft and Wizardry for his second year, Harry hears strange whispers echo through empty corridors - and then the attacks start. Students are found as though turned to stone ...Dobby''s sinister predictions seem to be coming true.', 384)

('F3', 'Harry Potter and the Prisoner of Azkaban', 'J.K. Rowling', 11.99, 'Bloomsbury Publishing', 'Fiction', 'When the Knight Bus crashes through the darkness and screeches to a halt in front of him, it''s the start of another far from ordinary year at Hogwarts for Harry Potter. Sirius Black, escaped mass-murderer and follower of Lord Voldemort, is on the run - and they say he is coming after Harry. In his first ever Divination class, Professor Trelawney sees an omen of death in Harry''s tea leaves ...But perhaps most terrifying of all are the Dementors patrolling the school grounds, with their soul-sucking kiss.', 480)

('F4', 'Harry Potter and the Goblet of Fire', 'J.K. Rowling', 14.99, 'Bloomsbury Publishing', 'Fiction', 'The Triwizard Tournament is to be held at Hogwarts. Only wizards who are over seventeen are allowed to enter - but that doesn''t stop Harry dreaming that he will win the competition. Then at Hallowe''en, when the Goblet of Fire makes its selection, Harry is amazed to find his name is one of those that the magical cup picks out. He will face death-defying tasks, dragons and Dark wizards, but with the help of his best friends, Ron and Hermione, he might just make it through - alive!', 640)

('F5', 'Harry Potter and the Order of the Pheonix', 'J.K. Rowling', 15.99, 'Bloomsbury Publishing', 'Fiction', 'Dark times have come to Hogwarts. After the Dementors'' attack on his cousin Dudley, Harry Potter knows that Voldemort will stop at nothing to find him. There are many who deny the Dark Lord''s return, but Harry is not alone: a secret order gathers at Grimmauld Place to fight against the Dark forces. Harry must allow Professor Snape to teach him how to protect himself from Voldemort''s savage assaults on his mind. But they are growing stronger by the day and Harry is running out of time.', 816)

('F6', 'Harry Potter and the Half-Blood Prince', 'J.K. Rowling', 16.50, 'Bloomsbury Publishing', 'Fiction', 'When Dumbledore arrives at Privet Drive one summer night to collect Harry Potter, his wand hand is blackened and shrivelled, but he does not reveal why. Secrets and suspicion are spreading through the wizarding world, and Hogwarts itself is not safe. Harry is convinced that Malfoy bears the Dark Mark: there is a Death Eater amongst them. Harry will need powerful magic and true friends as he explores Voldemort''s darkest secrets, and Dumbledore prepares him to face his destiny.', 560)

('F7', 'Harry Potter and the Deathly Hallows', 'J.K. Rowling', 16.99, 'Bloomsbury Publishing', 'Fiction', 'As he climbs into the sidecar of Hagrid''s motorbike and takes to the skies, leaving Privet Drive for the last time, Harry Potter knows that Lord Voldemort and the Death Eaters are not far behind. The protective charm that has kept Harry safe until now is now broken, but he cannot keep hiding. The Dark Lord is breathing fear into everything Harry loves, and to stop him Harry will have to find and destroy the remaining Horcruxes. The final battle must begin – Harry must stand and face his enemy.', 640)

('F8', 'The Fellowship of the Ring', 'J. R. R. Tolkein', 9.99, 'Allen & Unwin', 'Fiction', 'Sauron, the Dark Lord, has gathered to him all the Rings of Power – the means by which he intends to rule Middle-earth. All he lacks in his plans for dominion is the One Ring – the ring that rules them all – which has fallen into the hands of the hobbit, Bilbo Baggins. In a sleepy village in the Shire, young Frodo Baggins finds himself faced with an immense task, as his elderly cousin Bilbo entrusts the Ring to his care. Frodo must leave his home and make a perilous journey across Middle-earth to the Cracks of Doom, there to destroy the Ring and foil the Dark Lord in his evil purpose.', 448)

('F9', 'The Two Towers', 'J. R. R. Tolkein', 9.99, 'Allen & Unwin', 'Fiction', 'Frodo and the Companions of the Ring have been beset by danger during their quest to prevent the Ruling Ring from falling into the hands of the Dark Lord by destroying it in the Cracks of Doom. They have lost the wizard, Gandalf, in the battle with an evil spirit in the Mines of Moria; and at the Falls of Rauros, Boromir, seduced by the power of the Ring, tried to seize it by force. While Frodo and Sam made their escape the rest of the company were attacked by Orcs. Now they continue their journey alone down the great River Anduin – alone, that is, save for the mysterious creeping figure that follows wherever they go.', 464)

('F10', 'The Fellowship of the Ring', 'J. R. R. Tolkein', 9.99, 'Allen & Unwin', 'Fiction', 'The armies of the Dark Lord Sauron are massing as his evil shadow spreads even wider. Men, Dwarves, Elves and Ents unite forces to do battle against the Dark. Meanwhile, Frodo and Sam struggle further into Mordor, guided by the treacherous creature Gollum, in their heroic quest to destroy the One Ring...', 464)

INSERT INTO PRODUCTS (PID, Title, Author, Price, Publisher, Category, Description, page) VALUES
('N1', 'Walt Disney: An American Original', 'Bob Thomas', 17.99, 'Disney Editions', 'Non-Fiction', 'Walt Disney is an American hero--the creator of Mickey Mouse, and a man who changed the face of American culture. After years of research, with the full cooperation of the Disney family and access to private papers and letters, Bob Thomas produced the definitive biography of the man behind the legend--the unschooled cartoonist from Kansas City who went bankrupt on his first movie venture but became the genius who produced unmatched works of animation. Complete with a rare collection of photographs, Bob Thomas'' biography is a fascinating and inspirational work that captures the spirit of Walt Disney.', 384)

('N2', 'Victoria: The Queen: An Intimate Biography of the Woman Who Ruled an Empire', 'Julia Baird', 24.99, 'Random House', 'Non-Fiction', '
Drawing on sources that include fresh revelations about Victoria’s relationship with John Brown, Julia Baird brings vividly to life the fascinating story of a woman who struggled with so many of the things we do today: balancing work and family, raising children, navigating marital strife, losing parents, combating anxiety and self-doubt, finding an identity, searching for meaning.', 752)

('N3', 'Alexander the Great', 'Robin Lane Fox', 18.99, 'Penguin UK', 'Non-Fiction', 'From award-winning historian Robin Lane Fox, Alexander the Great searches through the mass of conflicting evidence and legend to focus on Alexander as a man of his own time. Tough, resolute, fearless, Alexander was a born warrior and ruler of passionate ambition who understood the intense adventure of conquest and of the unknown. When he died in 323 BC aged thirty-two, his vast empire comprised more than two million square miles, spanning from Greece to India. His achievements were unparalleled - he had excelled as leader to his men, founded eighteen new cities and stamped the face of Greek culture on the ancient East. The myth he created is as potent today as it was in the ancient world. Combining historical scholarship and acute psychological insight, Alexander the Great brings this colossal figure vividly to life.', 576)

('N4', 'Augustus: The Life of Rome''s First Emperor', 'Anthony Everitt', 20.99, 'Random House', 'Non-Fiction', 'At a time when many consider America an empire, this stunning portrait of the greatest emperor who ever lived makes for enlightening and engrossing reading. Everitt brings to life the world of a giant, rendered faithfully and sympathetically in human scale. A study of power and political genius, Augustus is a vivid, compelling biography of one of the most important rulers in history.', 432)

('N5', 'My Life and Work: An Autobiography of Henry Ford', 'Henry Ford', 10.99, 'Bnpulishing.com', 'Non-Fiction', 'This book is the original autobiographical work by Henry Ford, founder of the Ford Motor Company. In this book, Ford details how he got into business, the strategies that he used to become a wealthy and successful businessman, and what others can do by learning from the examples he has outlined. This book should be read by small business owners, business students and those interested in the history of the automobile. Henry Ford will take you through a journey of history, business and lessons to be learned from which he used to develop his financial empire.', 188)

('N6', 'The Autobiography of Benjamin Franklin', 'Benjamin Franklin', 5.99, 'Dover Publications', 'Non-Fiction', 'Blessed with enormous talents and the energy and ambition to go with them, Franklin was a statesman, author, inventor, printer, and scientist. He helped draft the Declaration of Independence and later was involved in negotiating the peace treaty with Britain that ended the Revolutionary War. He also invented bifocals, a stove that is still manufactured, a water-harmonica, and the lightning rod.
Franklin''s extraordinary range of interests and accomplishments are brilliantly recorded in his Autobiography, considered one of the classics of the genre. Covering his life up to his prewar stay in London as representative of the Pennsylvania Assembly, this charming self-portrait recalls Franklin''s boyhood, his determination to achieve high moral standards, his work as a printer, experiments with electricity, political career, experiences during the French and Indian War, and more. Related in an honest, open, unaffected style, this highly readable account offers a wonderfully intimate glimpse of the Founding Father sometimes called "the wisest American."', 144)

('N7', 'The First Tycoon: The Epic Life of Cornelius Vanderbilt', 'T.J. Stiles', 21.99, 'Vintage', 'Non-Fiction', '
In this groundbreaking biography, T.J. Stiles tells the dramatic story of Cornelius “Commodore” Vanderbilt, the combative man and American icon who, through his genius and force of will, did more than perhaps any other individual to create modern capitalism. Meticulously researched and elegantly written, The First Tycoon describes an improbable life, from Vanderbilt’s humble birth during the presidency of George Washington to his death as one of the richest men in American history. In between we see how the Commodore helped to launch the transportation revolution, propel the Gold Rush, reshape Manhattan, and invent the modern corporation. Epic in its scope and success, the life of Vanderbilt is also the story of the rise of America itself.', 736)

('N8', 'Martin Luther King, Jr.: A Life', 'Marshall Frady', 13.99, 'Penguin Books', 'Non-Fiction', 'Marshall Frady, the reporter who became the unofficial chronicler of the civil rights movement, here re-creates the life and turbulent times of its inspirational leader. Deftly interweaving the story of King’s quest with a history of the African American struggle for equality, Frady offers fascinating insights into his subject’s magnetic character, with its mixture of piety and ambition. He explores the complexities of King’s relationships with other civil rights leaders, the Kennedy and Johnson administrations, and the FBI’s J. Edgar Hoover, who conducted a relentless vendetta against him. The result is a biography that conveys not just the facts of King’s life but the power of his legacy.', 224)

('N9', 'The Diary of a Young Girl', 'Anne Frank', 8.99, 'Bantam', 'Non-Fiction', 'Discovered in the attic in which she spent the last years of her life, Anne Frank''s remarkable diary has since become a world classic—a powerful reminder of the horrors of war and an eloquent testament to the human spirit. In 1942, with Nazis occupying Holland, a thirteen-year-old Jewish girl and her family fled their home in Amsterdam and went into hiding. For the next two years, until their whereabouts were betrayed to the Gestapo, they and another family lived cloistered in the "Secret Annex" of an old office building. Cut off from the outside world, they faced hunger, boredom, the constant cruelties of living in confined quarters, and the ever-present threat of discovery and death. In her diary Anne Frank recorded vivid impressions of her experiences during this period. By turns thoughtful, moving, and amusing, her account offers a fascinating commentary on human courage and frailty and a compelling self-portrait of a sensitive and spirited young woman whose promise was tragically cut short.', 304)

('N10', 'Charlemagne', 'Johannes Fried', 45.99, 'Harvard University Press', 'Non-Fiction', 'Though devout, Charlemagne was not saintly. He was a warrior-king, intimately familiar with violence and bloodshed. And he enjoyed worldly pleasures, including physical love. Though there are aspects of his personality we can never know with certainty, Fried paints a compelling portrait of a ruler, a time, and a kingdom that deepens our understanding of the man often called “the father of Europe.”', 688)

-- --------------------------------------------------------

-- Structure for USERS

CREATE TABLE IF NOT EXISTS USERS (
  Username varchar(40) NOT NULL,
  Password varchar(40) NOT NULL,
  PRIMARY KEY (UserName)
)

-- Data for USERS

INSERT INTO USERS (Username, Password) VALUES
('User1', 'pass1'),
('a', 'a');
