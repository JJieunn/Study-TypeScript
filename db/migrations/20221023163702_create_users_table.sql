-- migrate:up
CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(30) NOT NULL UNIQUE,
  password VARCHAR(20) NOT NULL,
  nickname VARCHAR(15) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);

-- migrate:down
DROP TABLE users;
