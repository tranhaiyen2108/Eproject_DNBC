﻿CREATE TABLE DNBC_Categories(
	CategoryID int primary key identity(1,1),
	CategoryName Nvarchar(255) not null unique,
	ParentID int
);

CREATE TABLE DNBC_Posts(
	PostID int Primary key,
	PostTitle Nvarchar(512) not null unique,
	PostSummary text not null,
	PostWriter Nvarchar(255) not null,
	PostDateTime date not null,
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
	Title text not null,
	CollectionID int foreign key references DNBC_Collections(CollectionID),
	PostID int foreign key references DNBC_Posts(PostID)
);


CREATE TABLE DNBC_Ads(
	AdID int primary key,
	Link varchar(512) not null,
	Logo varchar(512),
	AdContent text,
	PostID int not null foreign key references DNBC_Posts(PostID)
);
drop table DNBC_Ads;
drop table DNBC_PostCollection;
drop table DNBC_Comments;
drop table DNBC_Posts;

INSERT INTO DNBC_Categories(CategoryName,ParentID) values 
	('Business',0),('Automobiles',1),('Energy',1),('Finance',1),
	('Politics',0),('East Asia',5),('Southeast Asia',5),('Reast of the world',5),
	('Sport',0),('Football',9),('Tennis',9),('Others',9);
Insert into DNBC_Categories(CategoryName,ParentID) values ('About Us',0),('Contact Us',0);

INSERT INTO DNBC_Posts(PostID,PostTitle,PostSummary,PostWriter,PostDateTime,PostContent,CategoryID) values
	(1,'Toyota extends North American plant shutdown; will stop paying 5,000 temp workers','Toyota Motor Corp said Wednesday it plans to reopen its North American auto plants on May 4, extending its current shutdown by two additional weeks.','David Shepardson','2020-04-09','WASHINGTON: Toyota Motor Corp said Wednesday it plans to reopen its North American auto plants on May 4, extending its current shutdown by two additional weeks. The Japanese automaker cited the ongoing COVID-19 pandemic and decline in vehicle demand to extend the halt of production at all of its automobile and components plants in Canada, Mexico and the United States. Toyota will not furlough its direct employees, but has asked its hourly plant employees to take two days out of the 10 day extension as paid time off or they can go without pay if they don’t have accrued leave. For Toyotas 5,000 workers provided by outside agencies, Toyota is releasing those workers back to their agencies. Toyota will continue to pay the benefits of those workers for the time being, and they may be eligible for unemployment. On Tuesday, Honda Motor Co and Nissan Motor Co on Tuesday said they had furloughed thousands of workers at their U.S. operations as the coronavirus pandemic slashes demand for cars in the country. A spokesman for Honda, which employs about 18,400 workers at plants in Alabama, Indiana and Ohio, said the Japanese automaker would guarantee salaries through Sunday, having suspended operations on March 23. The plants will be closed through May 1. Nissan said it was temporarily laying off about 10,000 U.S. hourly workers effective April 6. It has suspended operations at its U.S. manufacturing facilities through late April due to the impact of the outbreak. Automakers are facing a dramatic drop in sales in the United States, the world’s second-largest car market, after some states barred dealers from selling new cars while “stay-at-home” orders are in place. Fiat Chrysler Automobiles NV on Monday extended its shutdown of U.S. and Canadian plants until May 4.',2),
	(2,'Coronavirus concerns delay restart of Fords North American production','Ford Motor Co said on Tuesday it was postponing its plan to restart production at its North America plants due to safety concerns for its workers amid the coronavirus pandemic.','Sanjana Shivdas','2020-03-30','Ford Motor Co said on Tuesday it was postponing its plan to restart production at its North America plants due to safety concerns for its workers amid the coronavirus pandemic. To generate cash, the No. 2 U.S. automaker had said last week it was poised to restart production at some plants in North America as early as April 6, bringing back such profitable vehicles as its top-selling F-150 full-sized pickup, the Transit commercial van and SUVs. But on Tuesday, Ford said that although it had been aiming to resume production at several key U.S. plants on April 14, it would now do so at dates to be announced later on. "The health and safety of our workforce, dealers, customers, partners and communities remains our highest priority, Kumar Galhotra president of Fords North American operations, said in a statement. Still, the automaker will open a plant in Ypsilanti, Michigan, during the week of April 20, that will make ventilators to treat patients afflicted by the coronavirus. Michigan, which is home to a large portion of the U.S. automotive industry, has also become a hot spot in the pandemic. Schools and all but essential businesses have been ordered closed through at least April 13 to slow the spread of the coronavirus. "Today decision by Ford is the right decision for our members, their families and our nation," UAW President Rory Gamble said in a statement. Rival Fiat Chrysler Automobiles NV said last week it plans to resume production in North America on April 13. A spokeswoman for FCA said the automaker was "continuing to monitor the situation."General Motors Co has shuttered its plants indefinitely and has not provided a date for vehicle production to restart. "Once it is safe to resume production, we will do so," a GM spokesman said.',2),
	(3,'Honda extends Mexican plant shutdown, furloughs more US workers','Japanese automaker Honda Motor Co said Wednesday it will extend a shutdown of its Mexican plants through April 30 and plans to furlough most U.S. salaried workers for two weeks as a result of the coronavirus pandemic.','David Shepardson','2020-04-16','Japanese automaker Honda Motor Co said Wednesday it will extend a shutdown of its Mexican plants through April 30 and plans to furlough most U.S. salaried workers for two weeks as a result of the coronavirus pandemic. Honda began its suspension of operations in North America on March 23 and previously extended its shutdown in Canada and the United States through May 1. The company said the majority of its "salaried and support associates at Honda operations in the U.S. will be furloughed for a two-week period." Last week, Honda said it would furlough factory workers at its U.S. plants.',2),
	(4,'Detroit automakers, UAW to continue talks over reopening US plants','The United Auto Workers (UAW) said late Wednesday (Apr 22) discussions are still underway with Detroit Big Three automakers to safely restart US production halted by the coronavirus pandemic.','Reuters','2020-04-23','The United Auto Workers (UAW) said late Wednesday (Apr 22) discussions are still underway with Detroits Big Three automakers to safely restart US production halted by the coronavirus pandemic.General Motors Co, Ford Motor Co and Fiat Chrysler Automobiles NV shut their plants last month as the virus rapidly spread through the United States, but aim to restart at least some US assembly plants by early May. "These talks are fluid and ongoing to ensure safe protocols are followed when the companies reopen," UAW President Rory Gamble said in a statement. Detroits automakers and the UAW have been engaged in talks since earlier this month, while local union leaders said on Monday that any worker who feels sick must be allowed to self-quarantine without losing pay. A General Motors spokesman said on Wednesday that the company has developed "screening, cleaning and social strategies" for all facilities in line with input from the UAW and guidance from the US Centers for Disease Control and Prevention (CDC). The safety practices and sick-leave policies the automakers and the UAW agree to would offer a template for auto suppliers and potentially other manufacturing industries.',2),
	(5,'Coronavirus drives US March auto sales off a cliff','U.S. new vehicle sales likely drove off a cliff in March as the coronavirus pandemic pounded consumer confidence and shuttered dealerships across much of the country, and sales are likely to take a further beating in April as social distancing guidelines remain in place.','Nick Carey','2020-03-31','U.S. new vehicle sales likely drove off a cliff in March as the coronavirus pandemic pounded consumer confidence and shuttered dealerships across much of the country, and sales are likely to take a further beating in April as social distancing guidelines remain in place. "When you look at March, we basically lost half the month," said Eric Lyman, chief industry analyst at car-shopping website TrueCar.com . TrueCar has forecast a sales drop for March of 37 percent and Lyman said sales in April could also be off between 50 percent to 60 percent. A rebound for the sector will likely depend on how long the crisis lasts and what level of support the U.S. government provides for consumers in the meantime. Most major automakers, including General Motors Co and Toyota Motor Corp , are due to report quarterly U.S. sales on April 1. Ford Motor Co and Fiat Chrysler Automobiles NV will report sales on April 2. Tesla Inc also typically reports first quarter deliveries during the week after the quarter ends. Analysts had expected the company to deliver about 93,000 vehicles during the quarter, according to Refinitiv. Tesla Chief Executive Elon Musk on March 19 suspended production at the companys Fremont, California, assembly plant under pressure from local authorities. Just how bad March was is an open question. Cox Automotive did not release a monthly forecast, but said its data showed that on March 27, new vehicle sales to consumers fell 55 percent versus the same day in 2019. In U.S. states under "stay-at-home" orders, sales fell as much as 80 percent to 90 percent, Cox estimated. Those include states like California and New York, home to a large portion of the American car-buying population. "April will be just as dismal," said Cox analyst Michelle Krebs. IHS Markit estimates the coronavirus pandemic will cut full-year 2020 sales by 15.3 percent and globally sales will fall 12 percent - "considerably worse" than the fall in sales during the Great Recession in 2008-2009. More dealers are embracing online sales, which could help mitigate falling sales. But U.S. consumer confidence plunged in March to the lowest level since October 2016 as the coronavirus epidemic upended life for Americans. George Augustaitis, director of automotive industry analytics at CarGurus Inc , an online marketplace for new and used cars, said a rebound in new vehicle sales will depend on government support for workers laid off during the crisis. "If these consumers are taken care of, we should see the market rebound fairly quickly," Augustaitis said.',2),
	(6,'Ford to restart US truck plants in April to beat pandemic-linked cash squeeze','David Shepardson','Ford Motor Co announced plans on Thursday to shore up its finances amid the coronavirus pandemic, aiming to generate more cash by resuming production next month of its most profitable vehicles while saving money through further cost cuts.','2020-02-26','Ford Motor Co announced plans on Thursday to shore up its finances amid the coronavirus pandemic, aiming to generate more cash by resuming production next month of its most profitable vehicles while saving money through further cost cuts. To generate cash, the No. 2 U.S. automaker was poised to restart production at some plants in North America as early as April 6, bringing back such profitable vehicles as its top-selling F-150 full-sized pickup, the Transit commercial van and SUVs. To conserve cash, Ford announced belt-tightening moves, including temporarily cutting top executives salaries. This came a day after Standard & Poors downgraded the Dearborn, Michigan-based companys debt to "junk" status and warned more downgrades could be necessary."The actions we are taking now are wide-ranging and substantial," Chief Executive Jim Hackett told employees in an email early on Thursday. "We hope they will be enough to give Ford the financial flexibility to ride out the economic and business effects of the coronavirus."The coronavirus pandemic, which has killed more than 21,000 people globally, has forced the shutdown of auto plants around the world. The outbreak has put pressure on companies, including Ford, which previously drew down credit lines to build its cash position and suspended its dividend. The U.S. Senate on Wednesday passed a US$2 trillion economic rescue package to help unemployed workers and companies, including the auto industry, hit hard by the outbreak. U.S. President Donald Trump, concerned about the economic repercussions of an extended shutdown, has said he wants America to get back to business by Easter, or April 12. GENERATING CASH To get more cash coming in, Ford said Thursday it would restart key plants, while introducing additional safety measures to protect returning workers from the coronavirus. It said it would detail the additional measures later. Ford also took additional moves to conserve cash, announcing its top 300 executives would defer 20per cent to 50per cent of salaries for at least five months starting May 1, with the executive chairman deferring his entire salary. Hackett will defer half his salary. Hackett said Fords goal was to avoid layoffs during the crisis, but warned that could change if the impact of the outbreak is more severe than anticipated. Other actions Ford is taking to conserve cash include deferring salary increases more broadly, suspending overtime for salaried employees and freezing hiring in non-critical areas, Hackett said. However, Ford employees will continue to get healthcare coverage and those exposed to the virus and placed in quarantine will get paid time off, he added. General Motors Co and Fiat Chrysler Automobiles NV (FCA) previously said they would shut their North American operations through March 30 and then reassess after that. FCA on Thursday extended its shutdown through April 13, while its parts distribution centers will continue to operate with paid volunteers. Mexico status is subject to a separate announcement.GM on Thursday extended its shutdown indefinitely with no firm restart dates, but said it would evaluate the situation on a week-to-week basis. The automaker said near-term programs like its redesigned full-size SUVs, electric vehicles such as the Cruise Origin, and new Ultium battery "will continue as planned." But it will adjust timing and milestones of other future programs "as necessary" to conserve cash, it added. United Auto Workers President Rory Gamble said Thursday the union viewed announcements like Fords with concern, and any decision to restart production should be based on data and each state position with regards to the coronavirus outbreak."The only guideline in a boardroom should be management asking themselves, "Would I send my family - my own son or daughter - into that plant and be 100per cent certain they are safe?" he said in a statement. The UAW has said three union members who worked at FCA plants have died due to the coronavirus. Michigan Governor Gretchen Whitmer issued an order on Monday barring non-essential businesses from operating until April 13. Japanese automaker Honda Motor Co Ltd said on Thursday it would resume work at its U.S. and Canadian plants on April 7. Meanwhile, Japan Toyota Motor Corp said it would extend a shutdown of its North American plants for two weeks, through April 17. Ford plans to begin production on one shift at its Hermosillo, Mexico, assembly plant, where it builds the Ford Fusion and Lincoln MKZ sedans. It will restart production on April 14 at its Dearborn plant that builds the F-150 and a Kentucky plant that makes the Super Duty version of the pickup as well as the Ford Expedition and Lincoln Navigator SUVs. Other assembly and parts plants will restart then as well. Ford shares closed down 2.4per cent, while GM rose 4.8per cent.',2),
	(7,'Detroit automakers, UAW agree to curb production to contain coronavirus','The Detroit Three automakers and United Auto Workers agreed on Tuesday to curtail production at U.S. factories and limit the number of workers on the job at one time to prevent the spread of the coronavirus among roughly 150,000 factory employees.','Rachit Vats','2020-03-12','The Detroit Three automakers and United Auto Workers agreed on Tuesday to curtail production at U.S. factories and limit the number of workers on the job at one time to prevent the spread of the coronavirus among roughly 150,000 factory employees. The union and the automakers agreed to "rotating partial shutdown of facilities, extensive deep cleaning of facility and between shifts, extended periods between shifts, and extensive plans to avoid member contact," the union said in a statement. The agreement came hours after UAW President Rory Gamble went public with his dissatisfaction with how General Motors Co, Ford Motor Co and Fiat Chrysler Automobiles NV had responded to his proposal on Sunday that the companies stop production in the face of the coronavirus threat. Gamble warned he would take unilateral action if the automakers did not do more to secure hourly workers on factory floors. The tension between the UAW and the Detroit automakers highlighted a divide in the U.S. labor force that extends well beyond the auto industry. The automakers have allowed salaried employees whose tools are design software and spreadsheets to work from home to reduce their risks of exposure. But the companies had required factory workers whose hands assemble the vehicles to come work in buildings where thousands labor side by side, and congregate in break areas and cafeterias. Gamble had told the automakers on Sunday that they should shut U.S. factories for two weeks, and made that position public early Tuesday. The agreement reached after talks late Tuesday allows the automakers to keep building profitable models such as Fords F-150 pickup, Fiat Chryslers Jeep Wrangler and GMs Cadillac Escalade at a reduced pace. The compromise is less costly than a full shutdown that would have forced the automakers to forego billions in revenue during the current quarter. U.S. vehicle sales are likely to slow as consumers are urged, or forced, to stay home in many states. Slowing production could avoid building up inventories of vehicles that would have to be discounted later. Ford said on Tuesday it had to temporarily stop production of sport utility vehicles at a plant in Chicago because of parts shortages. The UAW said the automakers also agreed to "work with us in Washington, D.C., on behalf of our members as we manage the disruption in the industry." The unions statement did not elaborate on what it wants from the U.S. government, but a parade of industries is forming in the capital seeking assistance as coronavirus lockdowns threaten the economy. Separately, GM and Ford disclosed Tuesday that they each have had one employee, both working at U.S. engineering centers, test positive for coronavirus. They marked the first confirmed cases of coronavirus among the automakers U.S. employees. While GM said that its affected employee was based at its Michigan technical center, the UAW separately said the GM worker was a member of the union. GM said its medical team was working to speak with co-workers who may have had direct contact with the infected employee, and they will be told to self-quarantine for 14 days. GM officials learned the employee had tested positive for the highly contagious COVID-19 respiratory illness on Monday, after the company had issued an order that salaried employees should work from home. Access to the building where the employee worked was restricted, and the building was cleaned, GM spokesman Jim Cain said Tuesday. At Ford, the company said an employee working at a product development office in Dearborn, Michigan, was exposed to coronavirus after leaving work several days ago, and was diagnosed before returning to work. "This person was not at the workplace at that building or any other facility, " Ford spokesman T.R. Reid said Tuesday.',2),
	(8,'Fiat Chrysler plant resumes production after 24-hour halt over coronavirus fears','Fiat Chrysler Automobiles NV said production at its assembly plant in Windsor, Ontario, which was halted for 24 hours after an employee contracted the coronavirus, has resumed on Friday afternoon.','Ben Klayman','2020-03-14','Fiat Chrysler Automobiles NV said production at its assembly plant in Windsor, Ontario, which was halted for 24 hours after an employee contracted the coronavirus, has resumed on Friday afternoon. "There currently is one employee out on self-quarantine as a precaution because of possible secondary contact," the company said in a statement. Starting Thursday afternoon, employees at the plant had refused to work. The company said the Ministry of Labour found the environment to be safe after visiting the plant and there are no confirmed cases of coronavirus at the location. Fiat said on Thursday an employee had tested positive for COVID-19 at its Kokomo, Indiana transmission plant, but the location would remain open. The company will delay the reopening of two plants in southern Italy by two days until next Wednesday, having closed them this week to complete actions in response to the coronavirus outbreak. But other flights are to bring stranded people home. BA, Virgin Atlantic, EasyJet, Jet2 and Titan are among airlines that have agreed to fly Britons back to the UK. "We are doing everything we can to bring customers home, including critical workers," BA told the BBC. "Not all governments are allowing flights. We are working with the Foreign Office to open routes where we can." The UK government has also pledged £75m to help provide charter flights to bring UK nationals back from countries where commercial flights aren not available.',2),
	(9,'Coronavirus: Why are planes still flying?','Surprisingly, a number of global airlines are still running passenger flights, including British Airways (BA). That is despite aviation largely grinding to a halt as the coronavirus crisis hit passenger traffic numbers and governments banned flights.','Simon Read','2020-03-30','Surprisingly, a number of global airlines are still running passenger flights, including British Airways (BA).That is despite aviation largely grinding to a halt as the coronavirus crisis hit passenger traffic numbers and governments banned flights. But tens of thousands of Britons stranded abroad will be flown home under a new government agreement, while many planes carry essential cargo. Passenger flights are believed to have been cut by up to 95%, but that still means one in 20 are taking off. Airlines say they are keeping vital links open. "We are working with European Union (EU) governments to try to keep some minimum flight links open for emergency reasons, even though the passenger loads on these flights will be very low," said Ryanair. BA is already operating a number of repatriation flights chartered by the Foreign Office from Lima, Peru. Heathrow Airport said it is working closely with Public Health England officials "to facilitate their access to the airport so that they can implement their enhanced monitoring measures as a precaution. "In line with the latest Public Health England advice, we are encouraging passengers and colleagues to maintain good hand hygiene." Meanwhile, Ryanair said all its aircraft "are disinfected daily". "With low loads, social distancing will be optimised on-board," the airline said.',2),
	(10,'India’s ​Air Deccan eyes post-crisis relaunch with new aircraft','Air Deccan is in talks with an aircraft manufacturer as the Indian carrier prepares to restart operations once the coroanvirus crisis stabilises, chief executive Arun Kumar Singh has disclosed.','Citirum','2020-04-24','Air Deccan is in talks with an aircraft manufacturer as the Indian carrier prepares to restart operations once the coroanvirus crisis stabilises, chief executive Arun Kumar Singh has disclosed. The carrier is in the process of returning its two 18-year-old Beechcraft Beech 1900Ds to their lessor, having already served notice of lease termination, Singh tells Cirium. He declined to name the lessor. Singh adds the lockdown has made it difficult to return the aircraft. The airline’s Beechcrafts – which, according to Cirium fleets data, formerly flew with a now-defunct subsidiary of Air New Zealand – are described by Singh as “very old and very tired ”. “We have taken this as an opportunity for newer aircraft,” he adds. “We are talking to an OEM, but nothing has been signed yet so I can’t disclose anything.” Pressed on whether he is talking to Airbus or Boeing, Singh says he is not talking with either of them, and that the type he is looking at is a “smaller commuter aircraft”. On 5 April, Air Deccan – which has history dating back to 2003, and was once a part of ill-fated Kingfisher Airlines – announced that it was suspending operations until further notice. It was the first Indian carrier to cease operations amid the coronavirus pandemic. All employees were put on “sabbatical” without pay, though Singh says they will be given “right of first refusal” to rejoin the company once it starts operations again. “We took a very early call in doing that,” he says, referring to management’s decision to shutter the airline. “I sat down with shareholders and we knew which direction this was going to go. We sat down and took a conscious call and took a very quick decision that coronavirus was going to stay for the next three to six months. “The question we had to ask was could we sustain ourselves with no revenues coming in? If we could somehow subsidise the aviation business from my shareholder’s other businesses – but the problem is all other business have come to a halt. We can’t keep pumping in money when there is no light at the end of the tunnel. Look what happened to Virgin Australia. The situation compared to other Indian carriers is not anyway extra bad for us; it’s just we saw that coming quickly.” The airline got off to a rocky start in 2003, having to abandon its inaugural flight carrying Indian dignitaries due to an engine fire during taxi. Despite that, it managed to grow its fleet and route network, and in 2008 completed a merger with now-defunct Kingfisher Airlines. Under its new owner, Air Deccan was rechristened Kingfisher Red, but its high operating costs and low yields proved to be a drag on Kingfisher. In 2011 Kingfisher Airlines, which not long after went belly-up, decided to phase out Kingfisher Red. Air Deccan founder GR Gopinath, who has been dubbed “the man who got India’s middle class to fly”, managed to retain the airline’s name by registering for it soon after the rebranding, Forbes India reports. Air Deccan made a comeback in December 2017 when it was granted a flying permit from India’s civil aviation regulator to conduct flights under the country’s UDAN regional connectivity scheme, Business Standard reported at the time. The first three routes were from Mumbai to Nashik, Pune and Jalgaon, according to Forbes India. ',2),
(11,'‘Scary,’ ‘visceral,’ ‘unprecedented’: Traders describe oil’s wild week and fall to negative prices','“Scary,” “unbelievable,” “so dramatic,” “unprecedented,” “very visceral”: These are among the choice words Wall Street veterans used to describe what was, for the oil market, a week for the history books.','Pippa Stevens','2020-04-25','“Scary,” “unbelievable,” “so dramatic,” “unprecedented,” “very visceral”: These are among the choice words Wall Street veterans used to describe what was, for the oil market, a week for the history books. On Monday, for the first time on record, West Texas Intermediate (WTI), the U.S. oil benchmark, plunged below zero and into negative territory. Before Monday, many thought this was impossible. Maybe, just maybe, it could drop to zero, effectively erasing all value. But negative territory seemed unimaginable, not least because it’s hard even to wrap one’s mind around it. Pay someone to take your oil? Yet that’s exactly what happened. “It was a take-your-breath-away kind of scary moment,” said Rebecca Babin, managing director at CIBC Private Wealth Management. “It truly was like watching … a full speed train wreck. But you couldn’t stop watching.” The coronavirus pandemic has sapped as much as a third of worldwide demand for oil, according to some estimates. Producers have continued to pump, but with air travel halted and people staying home there’s simply nowhere for this oil to go. Refiners certainly don’t want it. And worldwide storage — both onshore and offshore — is quickly filling up. Analysts warn that we could reach tank tops, or maximum capacity, in a matter of weeks. Everything came to a head on Monday. WTI has a physical settlement, meaning that as the monthly contract reaches expiration, whoever holds the contract is due a physical barrel of oil. Traders, in an effort to profit from the differential, buy and sell contracts without any intention of holding them at expiration, while refiners and airlines are among those on the other side who actually want the oil. The contract that plunged into negative territory was for May delivery. Demand isn’t expected to rebound any time soon. And with nowhere to put the oil, people were left scrambling and ultimately would do anything — in this case, even pay — to have it taken off their hands. There are nuances, of course. For one, the May contract expired on Tuesday, meaning that trading volume was thin as it plunged into negative territory. By that point the contract for June delivery was much more actively traded and thus a better indication of where the Street viewed oil prices. Negative prices themselves are also not completely without precedent. Natural gas, for instance, has traded below zero in the past, and in the physical market certain regional grades of crude were already trading in negative territory prior to Monday. And there were some traders who warned that, as storage filled, prices would continue to decline dramatically. But it was still shocking, nonetheless, to watch the downward descent on Monday of the world’s most actively traded oil contract. “This is an industry that I’ve been a part of for a long time now, and when it gets broken like that, or you get a really bad situation like that, it draws all kinds of unwanted attention and people getting hurt,” said Again Capital founding partner John Kilduff. A slow and then sudden unwind When the futures market opened at 6 p.m. ET on Sunday night, the WTI contract for May delivery traded at $17.73, or about 3% below its Friday settle price of $18.27. Oil was coming off its sixth straight day of losses, and its seventh negative week in eight. The nearly 20% decline for the week was especially notable since, only days before, OPEC and its oil-producing allies had agreed to a historic production cut that would take 9.7 million barrels per day — roughly 10% of global supply — offline. It wasn’t enough to assuage investor fears.',3);

INSERT INTO DNBC_Collections(Link) values ('imgs/PostID_01.webp'),('imgs/PostID_02.webp'),('imgs/PostID_03.webp'),('imgs/PostID_04.webp'),('imgs/PostID_05.webp'), 
('imgs/PostID_06.webp'),('imgs/PostID_07.webp'),('imgs/PostID_08.webp'),('imgs/PostID_09.jpeg'),('imgs/PostID_10.jpeg');
Insert into DNBC_Collections(Link) values ('imgs/PostID_11.png');

INSERT INTO DNBC_PostCollection(Source,Title,CollectionID,PostID) values
	('REUTERS/Jorge Duenes','A view shows the Toyota Motor Manufacturing plant in Tijuana, Mexico May 31, 2019. Picture taken May 31, 2019.',1,1),
	('REUTERS/Mike Blake','The front grill logo of a Ford pickup truck is seen in this photo taken in Carlsbad, California November 5, 2014',2,2),
	('REUTERS/Henry Romero','A production line is seen after the opening of Honda new automobile plant in a suburb of Celaya, Guanajuato February 21, 2014',3,3),
	('REUTERS/Rebecca Cook','An American flag flies in front of the United Auto Workers union logo on the front of the UAW Solidarity House in Detroit, Michigan, September 8, 2011.',4,4),
	('REUTERS/Mike Blake','Automobiles are shown for sale at a car dealership in Carlsbad, California, U.S. May 2, 2016.',5,5),
	('REUTERS/Anushree Fadnavis','The logo is seen on the bonnet of a new Ford Aspire car during its launch in New Delhi, India, October 4, 2018. Picture taken October 4, 2018',6,6),
	('REUTERS/Rebecca Cook','The GM logo is seen at the General Motors Warren Transmission Operations Plant in Warren, Michigan October 26, 2015',7,7),
	('REUTERS/Alessandro Bianchi','Employees of Fiat SpA work on new car "Panda" at the Fiat plant in Pomigliano DArco, near Naples, Italy, December 14, 2011.',8,8),
	('Harry Porters','The coronavirus outbreak has had a severe impact on demand for air travel',9,9),
	('Wikimedia Commons','An Air Deccan Beecraft 1900D. The original incarnation of Air Deccan was India’s largest low-cost carrier.',10,10);

	INSERT INTO DNBC_PostCollection(Source,Title,CollectionID,PostID) values
	('Fact Set CNBC data','Oil future Crash',11,11);