CREATE DATABASE otp_auth;

USE otp_auth;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    encrypted_password TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

USE otp_auth;

SELECT * FROM users;

USE otp_auth;

ALTER TABLE users
ADD COLUMN secret_key TEXT;

DESCRIBE users;

USE otp_auth;
TRUNCATE TABLE users;

USE otp_auth;

SELECT id, email, encrypted_password, secret_key
FROM users;


USE otp_auth;

DESCRIBE users;

