DROP DATABASE IF EXISTS himmat_portfolio;
CREATE DATABASE himmat_portfolio; 

USE himmat_portfolio;

DROP TABLE IF EXISTS About;
DROP TABLE IF EXISTS Contact;
DROP TABLE IF EXISTS Projects;
DROP TABLE IF EXISTS Certifications;
DROP TABLE IF EXISTS Blog;
DROP TABLE IF EXISTS Tags;
    

-- tables creation

CREATE TABLE About(
    AboutId INTEGER PRIMARY KEY,
    AboutContent TEXT NOT NULL
);


CREATE TABLE Contact(
  ContactId INTEGER PRIMARY KEY,
  Name TEXT NOT NULL,
  Email TEXT NOT NULL,
  Message TEXT
);


CREATE TABLE Projects(
  ProjectId INTEGER PRIMARY KEY,
  Title TEXT NOT NULL,
  Content TEXT NOT NULL,
  Image LONGBLOB,
  Url TEXT
);


CREATE TABLE Certifications(
  CertificateId INTEGER PRIMARY KEY,
  Title TEXT NOT NULL,
  Content TEXT NOT NULL,
  Image LONGBLOB,
  Url TEXT
);


CREATE TABLE Blog(
  BlogId INTEGER PRIMARY KEY,
  Title TEXT NOT NULL,
  Content TEXT NOT NULL,
  Image LONGBLOB NOT NULL,
  Tags TEXT
);


CREATE TABLE Tags(
  TagId INTEGER PRIMARY KEY,
  Title TEXT NOT NULL
);



-- inserting sample data into About table
INSERT INTO About (AboutId, AboutContent) VALUES
(1, 'I am Himmat Rai, a Computer Science student at De Montfort University with experience in Mobile Application Development. My expertise includes web technologies, and I am passionate about using Machine Learning to solve real-world problems. I combine technical skills with strong interpersonal abilities developed through customer service experience. Currently seeking internship opportunities to contribute and grow in an innovative environment.');

-- Insert sample data into Contact table
INSERT INTO Contact (ContactId, Name, Email, Message) VALUES
(1, 'John Smith', 'john.smith@example.com', 'I would like to discuss a potential collaboration on a web development project.'),
(2, 'Sarah Johnson', 'sarah.j@techcorp.com', 'We have an opening for an internship position that matches your skills. Please contact me for more details.'),
(3, 'Michael Brown', 'mbrown@devstudio.io', 'Impressed by your portfolio. Would you be interested in freelance work?'),
(4, 'Emily Davis', 'emily.davis@startupinc.com', 'Looking for a Flutter developer for our new mobile app. Are you available for a discussion?'),
(5, 'Robert Wilson', 'rwilson@academia.edu', 'I am a professor at DMU. Would you be interested in a research assistant position in ML?');

-- Insert sample data into Projects table
INSERT INTO Projects (ProjectId, Title, Content, Url) VALUES
(1, 'Real-time Chat Application', 'Developed a cross-platform chat application using Flutter and Firebase. Implemented real-time messaging, user authentication, and media sharing capabilities.', 'https://github.com/himmat12/chat-app'),
(2, 'E-commerce Web Platform', 'Created a responsive e-commerce website using Next.js with RESTful API integration. Features include user authentication, product browsing, cart management, and secure checkout.', 'https://github.com/himmat12/ecommerce-platform'),
(3, 'Student Management System', 'Built a comprehensive system for educational institutions using React and Node.js. Includes modules for attendance tracking, grade management, and parent communication.', 'https://github.com/himmat12/student-system'),
(4, 'Healthcare Monitoring App', 'Designed a mobile application for remote patient monitoring using Flutter. Integrated with IoT devices to track vital signs and medication schedules.', 'https://github.com/himmat12/health-monitor'),
(5, 'Machine Learning Stock Predictor', 'Implemented a predictive model using Python and TensorFlow to analyze historical stock data and forecast future trends with 75% accuracy.', 'https://github.com/himmat12/stock-predictor');

-- Insert sample data into Certifications table
INSERT INTO Certifications (CertificateId, Title, Content, Url) VALUES
(1, 'Google Flutter Development', 'Completed comprehensive course on Flutter mobile application development, covering state management, UI design, and API integration.', 'https://coursera.org/verify/FLUTTER-2023'),
(2, 'AWS Certified Solutions Architect', 'Attained certification demonstrating expertise in designing distributed systems on AWS, including security best practices and cost optimization.', 'https://aws.amazon.com/verification/AWS-SA-2024'),
(3, 'React Advanced Concepts', 'Mastered advanced React techniques including Hooks, Context API, Redux, and performance optimization strategies.', 'https://udemy-certificate.org/react-advanced-2023'),
(4, 'TensorFlow Developer Certificate', 'Earned certification validating skills in building, training, and deploying machine learning models using TensorFlow.', 'https://tensorflow.org/certificate/TF-DEV-2023'),
(5, 'Database Design and SQL Mastery', 'Completed intensive training on relational database design, optimization, and advanced SQL techniques.', 'https://datacamp.com/certificates/SQL-MASTER-2022');

-- Insert sample data into Tags table
INSERT INTO Tags (TagId, Title) VALUES
(1, 'Flutter'),
(2, 'React'),
(3, 'Machine Learning'),
(4, 'Next.js'),
(5, 'Web Development'),
(6, 'Mobile Development'),
(7, 'Database'),
(8, 'AWS'),
(9, 'TensorFlow'),
(10, 'JavaScript');

-- Insert sample data into Blog table
INSERT INTO Blog (BlogId, Title, Content, Image, Tags) VALUES
(1, 'Building Responsive UIs with Flutter', 'In this article, I explore techniques for creating responsive user interfaces in Flutter that adapt seamlessly across different screen sizes and orientations. I cover topics such as MediaQuery, LayoutBuilder, and custom responsive widgets to ensure your app looks great on any device.', '', '1,6'),
(2, 'My Journey with Next.js and SEO Optimization', 'Next.js has revolutionized how we build React applications with its server-side rendering capabilities. In this post, I share my experience implementing SEO best practices in Next.js projects, including metadata management, static generation, and image optimization.', '', '2,4,5,10'),
(3, 'Implementing Clean Architecture in Mobile Apps', 'Clean Architecture promotes separation of concerns and maintainability. This article demonstrates how I applied these principles in a Flutter project, resulting in more testable and extensible code with clear boundaries between business logic and UI.', '', '1,6'),
(4, 'Getting Started with TensorFlow for Predictive Analytics', 'Machine learning can seem intimidating, but TensorFlow makes it accessible. This beginner-friendly guide walks through the process of building your first predictive model using TensorFlow, from data preparation to model deployment.', '', '3,9'),
(5, 'Modern Database Solutions for Web Applications', 'Choosing the right database is crucial for application performance. This post compares various database options including SQL, NoSQL, and NewSQL solutions, with practical examples of when to use each based on my project experiences.', '', '5,7');