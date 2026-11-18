CREATE TABLE Iris (
    ID INT,
    SepalLength FLOAT,
    SepalWidth FLOAT,
    PetalLength FLOAT,
    PetalWidth FLOAT,
    Species VARCHAR(30)
);
INSERT INTO Iris VALUES
(1, 5.1, 3.5, 1.4, 0.2, 'Setosa'),
(2, 4.9, 3.0, 1.4, 0.2, 'Setosa'),
(3, 4.7, 3.2, 1.3, 0.2, 'Setosa'),
(4, 6.4, 3.2, 4.5, 1.5, 'Versicolor'),
(5, 6.9, 3.1, 4.9, 1.5, 'Versicolor'),
(6, 5.5, 2.3, 4.0, 1.3, 'Versicolor'),
(7, 6.5, 3.0, 5.2, 2.0, 'Virginica'),
(8, 7.1, 3.0, 5.9, 2.1, 'Virginica'),
(9, 6.3, 2.9, 5.6, 1.8, 'Virginica');
SELECT * FROM Iris;

SELECT COUNT(*) AS Total_Flowers
FROM Iris;

SELECT 
    AVG(SepalLength) AS Avg_Sepal_Length,
    AVG(SepalWidth) AS Avg_Sepal_Width,
    AVG(PetalLength) AS Avg_Petal_Length,
    AVG(PetalWidth) AS Avg_Petal_Width
FROM Iris;

SELECT 
    MAX(PetalLength) AS Maximum_Petal_Length,
    MIN(PetalLength) AS Minimum_Petal_Length
FROM Iris;

SELECT Species, COUNT(*) AS Total
FROM Iris
GROUP BY Species;


SELECT *
FROM Iris
WHERE PetalLength > 4;

SELECT *
FROM Iris
ORDER BY SepalLength DESC;

SELECT *
FROM Iris
ORDER BY PetalLength DESC;




