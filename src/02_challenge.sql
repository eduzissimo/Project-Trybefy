CREATE TABLE plans(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  price DECIMAL(5,2) NOT NULL
);

ALTER TABLE plans MODIFY COLUMN price FLOAT(5,2) NOT NULL;
INSERT INTO plans(name, price)
  VALUES
    ('Anual', '39.90'),
    ('Mensal', '5.90'),
    ('Trimestral', '19.90');

SELECT * FROM plans;

CREATE TABLE users(
  id INT PRIMARY KEY AUTO_INCREMENT,
  full_name VARCHAR(50) NOT NULL,
  email VARCHAR(50) UNIQUE NOT NULL,
  birthday DATE NOT NULL,
  active BOOLEAN NOT NULL DEFAULT TRUE,
  plan_id INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES plans(id)
);

SELECT * FROM users;

INSERT INTO users(full_name, email, birthday, active, plan_id)
  VALUES
    ('Pedro', 'pedro@trybefy.com', '1990-01-01', true, 1),
    ('Camila', 'camila@trybefy.com', '1988-12-01', true, 1),
    ('Guilherme', 'guilherme@trybefy.com', '1988-12-01', true, 2),
    ('Andressa', 'andressa@trybefy.com', '1984-07-20', false, 3),
    ('Luís', 'luis@trybefy.com', '2000-01-01', true, 2),
    ('Cássia', 'cassia@trybefy.com', '1995-12-01', true, 1),
    ('Simone', 'simone@trybefy.com', '1988-12-01', true, 1),
    ('Rogério', 'rogerio@trybefy.com', '1979-12-01', true, 3),
    ('Júlio', 'julio@trybefy.com', '1994-06-20', false, 2),
    ('Melissa', 'melissa@trybefy.com', '1997-04-11', true, 2);