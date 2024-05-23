-- Dummy data for country table
INSERT INTO country (name) VALUES
('India'),
('United States'),
('United Kingdom'),
('Australia'),
('Canada');

-- Dummy data for address table
INSERT INTO address (street, city, postcode, country_id) VALUES
('123 Main Street', 'Mumbai', '400001', 1),
('456 Oak Avenue', 'New York', '10001', 2),
('789 High Street', 'London', 'SW1A 1AA', 3),
('1010 Bay Street', 'Sydney', '2000', 4),
('111 Maple Drive', 'Toronto', 'M5H 2N2', 5);

-- Dummy data for gender table
INSERT INTO gender (name) VALUES
('Male'),
('Female'),
('Other');

-- Dummy data for users table
INSERT INTO users (first_name, last_name, password, email, mobile_number, gender_id, location_id, date_of_birth) VALUES
('Ramesh', 'Kumar', 'password123', 'ramesh@example.com', '9876543210', 1, 1, '1990-05-15'),
('Priya', 'Patel', 'pass123', 'priya@example.com', '9876543211', 2, 2, '1988-09-25'),
('Amit', 'Sharma', 'securepass', 'amit@example.com', '9876543212', 1, 3, '1995-03-10'),
('Neha', 'Verma', 'mypassword', 'neha@example.com', '9876543213', 2, 4, '1992-11-20'),
('Suresh', 'Singh', 'password1234', 'suresh@example.com', '9876543214', 1, 5, '1985-07-08');

-- Dummy data for job_type table
INSERT INTO job_type (type) VALUES
('Full-time'),
('Part-time'),
('Contract'),
('Freelance'),
('Internship');

-- Dummy data for job_status table
INSERT INTO job_status (status) VALUES
('Active'),
('Inactive'),
('Closed'),
('Pending'),
('Filled');

-- Dummy data for salary_range table
INSERT INTO salary_range (min_salary, max_salary) VALUES
(30000, 50000),
(60000, 80000),
(40000, 60000),
(70000, 90000),
(50000, 70000);

-- Dummy data for job_meta_data table
INSERT INTO job_meta_data (job_posted_on, job_modified_on, job_expire_on) VALUES
('2024-03-01 09:00:00', '2024-03-05 12:00:00', '2024-04-30'),
('2024-03-02 10:00:00', '2024-03-06 11:00:00', '2024-05-15'),
('2024-03-03 11:00:00', '2024-03-07 10:00:00', '2024-06-30'),
('2024-03-04 12:00:00', '2024-03-08 09:00:00', '2024-07-15'),
('2024-03-05 13:00:00', '2024-03-09 08:00:00', '2024-08-31');

-- Dummy data for job_post table
INSERT INTO job_post (posted_by, job_type_id, title, description, location_id, job_status_id, salary_range_id, job_meta_data_id) VALUES
(1, 1, 'Software Engineer', 'We are looking for a skilled software engineer to join our team.', 1, 1, 1, 1),
(2, 2, 'Marketing Specialist', 'We need a marketing specialist to help promote our products.', 2, 1, 2, 2),
(3, 3, 'Project Manager', 'Experienced project manager needed to oversee multiple projects.', 3, 1, 3, 3),
(4, 4, 'Graphic Designer', 'Talented graphic designer required to create stunning visuals.', 4, 1, 4, 4),
(5, 5, 'Data Analyst Intern', 'Seeking a data analyst intern for a summer internship.', 5, 1, 5, 5);

-- Dummy data for job_post_views table
INSERT INTO job_post_views (job_id, viewer_id, view_time) VALUES
(1, 2, '2024-03-01 10:00:00'),
(1, 3, '2024-03-01 11:00:00'),
(2, 4, '2024-03-02 10:00:00'),
(3, 5, '2024-03-03 09:00:00'),
(4, 1, '2024-03-04 08:00:00');

-- Dummy data for applied_jobs table
INSERT INTO applied_jobs (user_id, job_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Dummy data for shortlisted_jobs table
INSERT INTO shortlisted_jobs (user_id, job_id) VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 1);

-- Dummy data for product_categories table
INSERT INTO product_categories (name) VALUES
('Electronics'),
('Clothing'),
('Books'),
('Home & Garden'),
('Toys');

-- Dummy data for listed_product table
INSERT INTO listed_product (listed_by, title, description, price, category_id, location_id, stock_quantity) VALUES
(1, 'Smartphone', 'Latest smartphone with advanced features.', 500.00, 1, 1, '10'),
(2, 'T-shirt', 'Comfortable cotton T-shirt in assorted colors.', 20.00, 2, 2, '50'),
(3, 'Java Programming Book', 'Comprehensive guide to Java programming language.', 30.00, 3, 3, '20'),
(4, 'Garden Hose', 'Durable garden hose for watering plants.', 15.00, 4, 4, '30'),
(5, 'LEGO Set', 'Build and play with this fun LEGO set.', 50.00, 5, 5, '15');

-- Dummy data for complaints table
INSERT INTO complaints (complaint_about, description, complained_by, anonymous, job_post_id, product_id) VALUES
('Product', 'Received damaged product.', 1, 0, NULL, 5),
('Job Post', 'Misleading job description.', 2, 1, 1, NULL),
('Product', 'Product did not match description.', 3, 0, NULL, 2),
('Job Post', 'No response after applying for the job.', 4, 0, 2, NULL),
('Product', 'Received wrong size.', 5, 0, NULL, 1);

-- Dummy data for user_actions table
INSERT INTO user_actions (user_id, action_type, job_id, product_id) VALUES
(1, 'interest', 1, NULL),
(2, 'not_interest', NULL, 2),
(3, 'save', 3, NULL),
(4, 'interest', 4, NULL),
(5, 'save', NULL, 5);

-- Dummy data for product_images table
INSERT INTO product_images (product_id, image_url) VALUES
(1, 'https://example.com/image1.jpg'),
(1, 'https://example.com/image2.jpg'),
(2, 'https://example.com/image3.jpg'),
(3, 'https://example.com/image4.jpg'),
(4, 'https://example.com/image5.jpg');

-- Dummy data for product_image_relations table
INSERT INTO product_image_relations (product_id, image_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5);
