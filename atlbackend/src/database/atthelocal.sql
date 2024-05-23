CREATE DATABASE atthelocal;
use atthelocal;
CREATE TABLE country(
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255)
);
CREATE TABLE address(
  id INT AUTO_INCREMENT PRIMARY KEY,
  street VARCHAR(255),
  city VARCHAR(255),
  postcode VARCHAR(15),
  country_id INT NOT NULL,
  FOREIGN KEY (country_id) REFERENCES country(id)
);
CREATE TABLE gender(
  id INT  AUTO_INCREMENT NOT NULL PRIMARY KEY,
  name VARCHAR(100)
);
CREATE TABLE users(
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  password VARCHAR(255) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  mobile_number VARCHAR(15) UNIQUE NOT NULL,
  gender_id INT NOT NULL,
  location_id INT NOT NULL,
  email_verified BOOLEAN DEFAULT FALSE,
  mobile_number_verified BOOLEAN DEFAULT FALSE,
  multi_factor_auth BOOLEAN DEFAULT FALSE,
  date_of_birth DATE,
  profile_settings JSON,
  FOREIGN KEY (gender_id) REFERENCES gender(id),
  FOREIGN KEY (location_id) REFERENCES address(id)
);
CREATE TABLE job_type (
  id INT AUTO_INCREMENT PRIMARY KEY,
  type VARCHAR(50) NOT NULL
);
CREATE TABLE job_status(
  id INT AUTO_INCREMENT PRIMARY KEY,
  status VARCHAR(50) NOT NULL
);
CREATE TABLE salary_range (
  id INT AUTO_INCREMENT PRIMARY KEY,
  min_salary DECIMAL(10, 2) NOT NULL,
  max_salary DECIMAL(10, 2) NOT NULL
);
CREATE TABLE job_meta_data (
  id INT AUTO_INCREMENT PRIMARY KEY,
  job_posted_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  job_modified_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  job_expire_on DATE
);
CREATE TABLE job_post (
  id INT AUTO_INCREMENT PRIMARY KEY,
  posted_by INT NOT NULL,
  job_type_id INT NOT NULL,
  title VARCHAR(100) NOT NULL,
  description VARCHAR(2000) NOT NULL,
  location_id INT NOT NULL,
  job_status_id INT NOT NULL,
  salary_range_id INT NOT NULL,
  job_meta_data_id INT NOT NULL,
  FOREIGN KEY (posted_by) REFERENCES users(id),
  FOREIGN KEY (job_type_id) REFERENCES job_type(id),
  FOREIGN KEY (job_status_id) REFERENCES job_status(id),
  FOREIGN KEY (salary_range_id) REFERENCES salary_range(id),
  FOREIGN KEY (job_meta_data_id) REFERENCES job_meta_data(id),
  FOREIGN KEY (location_id) REFERENCES address(id)
);
CREATE TABLE job_post_views (
  id INT AUTO_INCREMENT PRIMARY KEY,
  job_id INT NOT NULL,
  viewer_id INT NOT NULL,
  view_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (job_id) REFERENCES job_post(id),
  FOREIGN KEY (viewer_id) REFERENCES users(id)
);

CREATE TABLE applied_jobs (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  job_id INT NOT NULL,
  applied_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (job_id) REFERENCES job_post(id)
);
CREATE TABLE shortlisted_jobs (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  job_id INT NOT NULL,
  shortlist_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (job_id) REFERENCES job_post(id)
);
CREATE TABLE product_categories (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL
);
CREATE TABLE listed_product(
  id INT AUTO_INCREMENT PRIMARY KEY,
  listed_by INT NOT NULL,
  title VARCHAR(100) NOT NULL,
  description TEXT,
  price DECIMAL(10, 2) NOT NULL,
  category_id INT NOT NULL,
  location_id INT NOT NULL,
  stock_quantity VARCHAR(100),
  FOREIGN KEY (listed_by) REFERENCES users(id),
  FOREIGN KEY (category_id) REFERENCES product_categories(id),
  FOREIGN KEY (location_id) REFERENCES address(id)
);
CREATE TABLE complaints (
  id INT AUTO_INCREMENT PRIMARY KEY,
  complaint_about VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  complained_by INT,
  anonymous BOOLEAN NOT NULL DEFAULT FALSE,
  job_post_id INT,
  product_id INT,
  FOREIGN KEY (complained_by) REFERENCES users(id),
  FOREIGN KEY (job_post_id) REFERENCES job_post(id),
  FOREIGN KEY (product_id) REFERENCES listed_product(id)
);

CREATE TABLE product_images (
  id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT NOT NULL,
  image_url VARCHAR(255) NOT NULL,
  uploaded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (product_id) REFERENCES listed_product(id)
);
CREATE TABLE product_image_relations (
  id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT NOT NULL,
  image_id INT NOT NULL,
  FOREIGN KEY (product_id) REFERENCES listed_product(id),
  FOREIGN KEY (image_id) REFERENCES product_images(id)
);

CREATE TABLE user_actions (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  action_type ENUM('interest', 'not_interest', 'save') NOT NULL,
  job_id INT,
  product_id INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (job_id) REFERENCES job_post(id),
  FOREIGN KEY (product_id) REFERENCES listed_product(id)
);
