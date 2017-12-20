/*
Adharsh Ranganathan
5/22/17
CSE 414 - HW7
*/

CREATE TABLE Customer (
	id INTEGER PRIMARY KEY,
	name TEXT NOT NULL,
	handle VARCHAR(25) NOT NULL,
	password VARCHAR(25) NOT NULL,
	UNIQUE(handle)
);

CREATE TABLE Reservation (
	customer INTEGER REFERENCES Customer,
	fid INTEGER REFERENCES Flights NOT NULL,
	PRIMARY KEY(fid, customer)
);

INSERT INTO Customer VALUES(12, 'adharsh', 'aranga', '1234');