
create table tblPostOffice (
	id varchar(100) not null primary key,
    name varchar(100) not null,
    address varchar(100) not null,
    phone varchar(100) not null
);

create table tblUser (
	id varchar(100) not null primary key,
    username varchar(100) not null,
    password varchar(100) not null,
    address varchar(100) not null,
    phone varchar(100) not null,
    position varchar(100) not null,
    salary float not null,
    postOfficeId varchar(100) not null,
    foreign key (postOfficeId) references tblPostOffice (id)
);

create table tblShipper (
	id varchar(100) not null primary key,
    name varchar(100) not null,
    phone varchar(100) not null,
    salary float not null,
    postOfficeId varchar(100) not null,
    foreign key (postOfficeId) references tblPostOffice (id)
);

create table tblSender (
	id varchar(100) not null primary key,
    name varchar(100) not null,
    address varchar(100) not null,
    phone varchar(100) not null
);

create table tblReceiver (
	id varchar(100) not null primary key,
    name varchar(100) not null,
    address varchar(100) not null,
    phone varchar(100) not null
);

create table tblDistribute(
	id varchar(100) not null primary key,
	postOfficeId varchar(100) not null,
    foreign key (postOfficeId) references tblPostOffice (id)
);


create table tblOrder(
	id varchar(100) not null primary key,
	senderId varchar(100) not null,
	receiverId varchar(100) not null,
	distributeId varchar(100) not null,
	foreign key (senderId) references tblSender (id),
	foreign key (receiverId) references tblReceiver (id),
	foreign key (distributeId) references tblDistribute (id),
);

create table tblBill (
	id varchar(100) not null primary key,
    description varchar(100) not null,
    orderAt date not null,
    receivedAt date not null,
    shipperId varchar(100) not null,
    userId varchar(100) not null,
	orderId varchar(100) not null,
    foreign key (orderId) references tblOrder (id),
    foreign key (shipperId) references tblShipper (id),
    foreign key (userId) references tblUser (id)
);

create table tblProduct (
	id varchar(100) not null primary key,
    name varchar(100) not null,
    note varchar(100) not null,
    price float not null,
    orderId varchar(100) not null,
    foreign key (orderId) references tblOrder (id)
);