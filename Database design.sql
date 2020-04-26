CREATE TABLE DNBC_Categories(
	CategoryID int primary key identity(1,1),
	CategoryName Nvarchar(255) not null unique,
	ParentID int
);

CREATE TABLE DNBC_Posts(
	PostID int Primary key identity(1,1),
	PostTitle Nvarchar(512) not null unique,
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
Insert into DNBC_Categories(CategoryName,ParentID) values ('About Us',0),('Contact Us',0);

INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,PostContent,CategoryID) values
	('Toyota extends North American plant shutdown; will stop paying 5,000 temp workers','Toyota Motor Corp said Wednesday it plans to reopen its North American auto plants on May 4, extending its current shutdown by two additional weeks.','David Shepardson','2020-04-09 01:11','WASHINGTON: Toyota Motor Corp said Wednesday it plans to reopen its North American auto plants on May 4, extending its current shutdown by two additional weeks. The Japanese automaker cited the ongoing COVID-19 pandemic and decline in vehicle demand to extend the halt of production at all of its automobile and components plants in Canada, Mexico and the United States. Toyota will not furlough its direct employees, but has asked its hourly plant employees to take two days out of the 10 day extension as paid time off or they can go without pay if they don’t have accrued leave. For Toyotas 5,000 workers provided by outside agencies, Toyota is releasing those workers back to their agencies. Toyota will continue to pay the benefits of those workers for the time being, and they may be eligible for unemployment. On Tuesday, Honda Motor Co and Nissan Motor Co on Tuesday said they had furloughed thousands of workers at their U.S. operations as the coronavirus pandemic slashes demand for cars in the country. A spokesman for Honda, which employs about 18,400 workers at plants in Alabama, Indiana and Ohio, said the Japanese automaker would guarantee salaries through Sunday, having suspended operations on March 23. The plants will be closed through May 1. Nissan said it was temporarily laying off about 10,000 U.S. hourly workers effective April 6. It has suspended operations at its U.S. manufacturing facilities through late April due to the impact of the outbreak. Automakers are facing a dramatic drop in sales in the United States, the world’s second-largest car market, after some states barred dealers from selling new cars while “stay-at-home” orders are in place. Fiat Chrysler Automobiles NV on Monday extended its shutdown of U.S. and Canadian plants until May 4.',2),
	('Coronavirus concerns delay restart of Fords North American production','Ford Motor Co said on Tuesday it was postponing its plan to restart production at its North America plants due to safety concerns for its workers amid the coronavirus pandemic.','Sanjana Shivdas','2020-03-31 21:00','Ford Motor Co said on Tuesday it was postponing its plan to restart production at its North America plants due to safety concerns for its workers amid the coronavirus pandemic. To generate cash, the No. 2 U.S. automaker had said last week it was poised to restart production at some plants in North America as early as April 6, bringing back such profitable vehicles as its top-selling F-150 full-sized pickup, the Transit commercial van and SUVs. But on Tuesday, Ford said that although it had been aiming to resume production at several key U.S. plants on April 14, it would now do so at dates to be announced later on. "The health and safety of our workforce, dealers, customers, partners and communities remains our highest priority, Kumar Galhotra president of Fords North American operations, said in a statement. Still, the automaker will open a plant in Ypsilanti, Michigan, during the week of April 20, that will make ventilators to treat patients afflicted by the coronavirus. Michigan, which is home to a large portion of the U.S. automotive industry, has also become a hot spot in the pandemic. Schools and all but essential businesses have been ordered closed through at least April 13 to slow the spread of the coronavirus. "Today decision by Ford is the right decision for our members, their families and our nation," UAW President Rory Gamble said in a statement. Rival Fiat Chrysler Automobiles NV said last week it plans to resume production in North America on April 13. A spokeswoman for FCA said the automaker was "continuing to monitor the situation."General Motors Co has shuttered its plants indefinitely and has not provided a date for vehicle production to restart. "Once it is safe to resume production, we will do so," a GM spokesman said.',2),
	('Honda extends Mexican plant shutdown, furloughs more US workers','Japanese automaker Honda Motor Co said Wednesday it will extend a shutdown of its Mexican plants through April 30 and plans to furlough most U.S. salaried workers for two weeks as a result of the coronavirus pandemic.','David Shepardson','2020-04-16 21:54','Japanese automaker Honda Motor Co said Wednesday it will extend a shutdown of its Mexican plants through April 30 and plans to furlough most U.S. salaried workers for two weeks as a result of the coronavirus pandemic. Honda began its suspension of operations in North America on March 23 and previously extended its shutdown in Canada and the United States through May 1. The company said the majority of its "salaried and support associates at Honda operations in the U.S. will be furloughed for a two-week period." Last week, Honda said it would furlough factory workers at its U.S. plants.',2),
	('Detroit automakers, UAW to continue talks over reopening US plants','The United Auto Workers (UAW) said late Wednesday (Apr 22) discussions are still underway with Detroit Big Three automakers to safely restart US production halted by the coronavirus pandemic.','Reuters','2020-04-23 12:03','The United Auto Workers (UAW) said late Wednesday (Apr 22) discussions are still underway with Detroits Big Three automakers to safely restart US production halted by the coronavirus pandemic.General Motors Co, Ford Motor Co and Fiat Chrysler Automobiles NV shut their plants last month as the virus rapidly spread through the United States, but aim to restart at least some US assembly plants by early May. "These talks are fluid and ongoing to ensure safe protocols are followed when the companies reopen," UAW President Rory Gamble said in a statement. Detroits automakers and the UAW have been engaged in talks since earlier this month, while local union leaders said on Monday that any worker who feels sick must be allowed to self-quarantine without losing pay. A General Motors spokesman said on Wednesday that the company has developed "screening, cleaning and social strategies" for all facilities in line with input from the UAW and guidance from the US Centers for Disease Control and Prevention (CDC). The safety practices and sick-leave policies the automakers and the UAW agree to would offer a template for auto suppliers and potentially other manufacturing industries.',2),
	('Coronavirus drives US March auto sales off a cliff','U.S. new vehicle sales likely drove off a cliff in March as the coronavirus pandemic pounded consumer confidence and shuttered dealerships across much of the country, and sales are likely to take a further beating in April as social distancing guidelines remain in place.','Nick Carey','2020-31-03 02:30','U.S. new vehicle sales likely drove off a cliff in March as the coronavirus pandemic pounded consumer confidence and shuttered dealerships across much of the country, and sales are likely to take a further beating in April as social distancing guidelines remain in place. "When you look at March, we basically lost half the month," said Eric Lyman, chief industry analyst at car-shopping website TrueCar.com . TrueCar has forecast a sales drop for March of 37 percent and Lyman said sales in April could also be off between 50 percent to 60 percent. A rebound for the sector will likely depend on how long the crisis lasts and what level of support the U.S. government provides for consumers in the meantime. Most major automakers, including General Motors Co and Toyota Motor Corp , are due to report quarterly U.S. sales on April 1. Ford Motor Co and Fiat Chrysler Automobiles NV will report sales on April 2. Tesla Inc also typically reports first quarter deliveries during the week after the quarter ends. Analysts had expected the company to deliver about 93,000 vehicles during the quarter, according to Refinitiv. Tesla Chief Executive Elon Musk on March 19 suspended production at the companys Fremont, California, assembly plant under pressure from local authorities. Just how bad March was is an open question. Cox Automotive did not release a monthly forecast, but said its data showed that on March 27, new vehicle sales to consumers fell 55 percent versus the same day in 2019. In U.S. states under "stay-at-home" orders, sales fell as much as 80 percent to 90 percent, Cox estimated. Those include states like California and New York, home to a large portion of the American car-buying population. "April will be just as dismal," said Cox analyst Michelle Krebs. IHS Markit estimates the coronavirus pandemic will cut full-year 2020 sales by 15.3 percent and globally sales will fall 12 percent - "considerably worse" than the fall in sales during the Great Recession in 2008-2009. More dealers are embracing online sales, which could help mitigate falling sales. But U.S. consumer confidence plunged in March to the lowest level since October 2016 as the coronavirus epidemic upended life for Americans. George Augustaitis, director of automotive industry analytics at CarGurus Inc , an online marketplace for new and used cars, said a rebound in new vehicle sales will depend on government support for workers laid off during the crisis. "If these consumers are taken care of, we should see the market rebound fairly quickly," Augustaitis said.',2);

INSERT INTO DNBC_Collections(Link) values ('imgs/PostID_01.webp'),('imgs/PostID_02.webp'),('imgs/PostID_03.webp'),('imgs/PostID_04.webp');

INSERT INTO DNBC_PostCollection(Source,Title,Summary,CollectionID,PostID) values
	('REUTERS/Jorge Duenes','A view shows the Toyota Motor Manufacturing plant in Tijuana, Mexico May 31, 2019. Picture taken May 31, 2019.',1,1),
	('REUTERS/Mike Blake','The front grill logo of a Ford pickup truck is seen in this photo taken in Carlsbad, California November 5, 2014',2,2),
	('REUTERS/Henry Romero','A production line is seen after the opening of Honda new automobile plant in a suburb of Celaya, Guanajuato February 21, 2014',3,3),
	('REUTERS/Rebecca Cook','An American flag flies in front of the United Auto Workers union logo on the front of the UAW Solidarity House in Detroit, Michigan, September 8, 2011.',4,4),
	();