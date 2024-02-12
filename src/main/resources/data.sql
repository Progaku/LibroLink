-- users テーブルにサンプルデータを挿入
INSERT INTO users (username, nickname, email, password, create_date, update_date)
VALUES
('user1', 'User One', 'user1@example.com', 'password123', NOW(), NOW()),
('user2', 'User Two', 'user2@example.com', 'password123', NOW(), NOW());

-- books テーブルにサンプルデータを挿入
INSERT INTO books (title, cover_image_url, publish_date, author, page_count, description, create_date, update_date)
VALUES
('Sample Book 1', 'http://example.com/cover1.jpg', '2021-01-01', 'Author One', 200, 'Description of Sample Book 1', NOW(), NOW()),
('Sample Book 2', 'http://example.com/cover2.jpg', '2021-02-01', 'Author Two', 150, 'Description of Sample Book 2', NOW(), NOW());

-- users_books テーブルにサンプルデータを挿入
-- user_id と book_id は、実際に users と books テーブルに挿入されたレコードのIDに置き換えてください。
INSERT INTO users_books (user_id, book_id, favorite, current_page, complete_flg, create_date, update_date)
VALUES
(1, 1, 1, 50, 0, NOW(), NOW()),
(1, 2, 0, 150, 1, NOW(), NOW()),
(2, 1, 1, 100, 0, NOW(), NOW());

-- review テーブルにサンプルデータを挿入
-- こちらも user_id と book_id を適切な値に置き換えてください。
INSERT INTO review (user_id, book_id, review, rating, create_date, update_date)
VALUES
(1, 1, 'Great book!', 5, NOW(), NOW()),
(2, 1, 'Interesting read.', 4, NOW(), NOW());
