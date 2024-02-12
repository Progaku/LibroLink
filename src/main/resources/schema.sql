-- 既存のテーブルが存在する場合に削除
DROP TABLE IF EXISTS review, users_books, books, users;

-- users テーブルの作成
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30) NOT NULL,
    nickname VARCHAR(30),
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- books テーブルの作成
CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    cover_image_url VARCHAR(255),
    publish_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    author VARCHAR(100),
    page_count INT DEFAULT 0,
    description VARCHAR(255),
    create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- users_books テーブルの作成
CREATE TABLE users_books (
    user_id INT NOT NULL,
    book_id INT NOT NULL,
    favorite INT DEFAULT 0,
    current_page INT DEFAULT 0,
    complete_flg TINYINT DEFAULT 0,
    delete_flg INT DEFAULT 0,
    create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id, book_id),
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (book_id) REFERENCES books (id)
);

-- review テーブルの作成
CREATE TABLE review (
    user_id INT NOT NULL,
    book_id INT NOT NULL,
    review VARCHAR(255),
    rating INT DEFAULT 0,
    delete_flg TINYINT(1) DEFAULT 0,
    create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id, book_id),
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (book_id) REFERENCES books (id)
);
