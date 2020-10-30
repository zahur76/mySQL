select count(*) from Track;
select count(*) from Artist;
select * from Album limit 5;
select Title, Name from Album
join Artist on Album.ArtistId = Artist.ArtistId
limit 5;
select Name from Genre where GenreId = 50;
select Name from Artist where ArtistId = 150;
Insert into Genre (Name) values ('Traditional');
insert into Album(Title, ArtistId) values ("Boy", "150");
select Name from Genre where GenreId = 26;
select Track.Name, Genre.Name from Genre inner join Track on Track.GenreId = Genre.GenreId limit 5;
select Track.Name, Genre.Name from Genre inner join Track on Track.GenreId = Genre.GenreId where Genre.name = "Jazz";
select Customer.FirstName, Customer.LastName, Invoice.InvoiceDate, Invoice.Total from Invoice inner join Customer on Customer.CustomerId = Invoice.CustomerId order by Invoice.Total desc, InvoiceDate desc limit 10;
select count(*) from Customer where SupportRepId = "4"
select count(*) from Customer where FirstName = "Frank";
select min(BirthDate) from Employee;
select max(LastName) from Customer;
select max(HireDate) from Employee;
select avg(Total) from Invoice;
select round(avg(Total) , 2) from Invoice;
select Total from Invoice where InvoiceId  = "2";
select sum(UnitPrice * Quantity) from InvoiceLine where InvoiceId = "2";
select count(*) from Track group by AlbumId;
INSERT INTO Track (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice) VALUES ("Twilight", 348, 2, 1, "U2", 210000, 1234, 0.99);
select InvoiceDate, BillingAddress, Total from Invoice order by  InvoiceDate desc;
select EmployeeId, LastName, Firstname, HireDate from Employee order by Hiredate desc limit 3;
select EmployeeId, LastName, Firstname, HireDate from Employee order by EmployeeId desc limit 3
select min(Birthdate) from Employee;
select count(*) from Customer where City= "Berlin";
select Album.Title, count(*) from Track inner join Album on Album.AlbumId = Track.AlbumId group by Track.AlbumId;
select City, count(*) from Customer group by City;
select Track.Name, sum(InvoiceLine.UnitPrice * InvoiceLine.Quantity) from Track inner join InvoiceLine on InvoiceLine.TrackId = Track.TrackId where Track.name = "The Woman King";
select City, count(*) from Customer group by City;