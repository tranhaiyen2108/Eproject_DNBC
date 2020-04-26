CREATE TABLE DNBC_Categories(
	CategoryID int primary key identity(1,1),
	CategoryName Nvarchar(255) not null unique,
	ParentID int
);

CREATE TABLE DNBC_Posts(
	PostID int Primary key identity(1,1),
	PostTitle Nvarchar(255) not null unique,
	PostSummary text not null,
	PostWriter Nvarchar(255) not null,
	PostDateTime datetime not null,
	PostContent text not null,
	CategoryID int not null foreign key references DNBC_Categories(CategoryID)
);

CREATE TABLE DNBC_Comments(
	CommentID int primary key identity(1,1),
	UserName Nvarchar(255) not null,
	UserEmail varchar(200) not null,
	CommentContent text not null,
	PostID int not null foreign key references DNBC_Posts(PostID),
);

CREATE TABLE DNBC_Collections(
	CollectionID  int primary key identity(1,1),
	Link varchar(512) not null,
)

CREATE TABLE DNBC_PostCollection(
	Source Nvarchar(1000),
	Title Nvarchar(4000) not null,
	Summary text,
	CollectionID int foreign key references DNBC_Collections(CollectionID),
	PostID int foreign key references DNBC_Posts(PostID)
);


CREATE TABLE DNBC_Ads(
	AdID int primary key identity(1,1),
	Link varchar(512) not null,
	Logo varchar(512),
	AdContent text,
	PostID int not null foreign key references DNBC_Posts(PostID)
);


INSERT INTO DNBC_Categories(CategoryName,ParentID) values 
('Business',0),('Automobiles',1),('Energy',1),('Finance',1),
('Politics',0),('East Asia',5),('Southeast Asia',5),('Reast of the world',5),
('Sport',0),('Football',9),('Tennis',9),('Others',9);
