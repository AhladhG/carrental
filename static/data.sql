CREATE TABLE cars(id INT PRIMARY KEY NOT NULL, owner CHAR(50) NOT NULL, brand CHAR(100) NOT NULL, YOM INT NOT NULL, RNO CHAR(50) NOT NULL);

select * from cars;

CREATE TABLE customers(id INT PRIMARY KEY NOT NULL, name CHAR(50) NOT NULL, email CHAR(50), phone CHAR(12), gender CHAR(10), address CHAR(300));

select * from customers;

CREATE TABLE bookings(id INT PRIMARY KEY NOT NULL, booking_date CHAR(50) NOT NULL, car_id INT, customer_id INT, CONSTRAINT fk_cars FOREIGN KEY(car_id) REFERENCES cars(id), CONSTRAINT fk_customers FOREIGN KEY(customer_id) REFERENCES customers(id) );

select * from bookings;

insert into cars(id, owner, brand, YOM, rno) values(3, 'ahladh2', 'Maruthi suzuki', '2016', ' AP32AU5478');

insert into bookings values(1, '07-12-2020', 2, 1);

select c.name, cars.owner,cars.brand,b.booking_date from bookings as b INNER join cars on b.car_id=cars.id INNER JOIN customers c ON b.car_id=c.id