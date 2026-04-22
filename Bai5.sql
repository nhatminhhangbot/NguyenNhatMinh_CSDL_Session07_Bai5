SELECT title AS 'Tên khóa học',
		price AS 'Giá khóa học',
        (SELECT AVG(price) FROM Courses) AS 'Giá trung bình sàn',
        price - (SELECT AVG(price) FROM Courses) AS 'Mức chênh lệch'
FROM Courses;