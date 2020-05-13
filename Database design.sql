CREATE TABLE DNBC_Categories(
	CategoryID int primary key identity(1,1),
	CategoryName Nvarchar(255) not null unique,
	ParentID int
);

CREATE TABLE DNBC_Posts(
	PostID varchar(10) Primary key,
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
	PostID varchar(10) not null foreign key references DNBC_Posts(PostID),
);

CREATE TABLE DNBC_Collections(
	CollectionID  varchar(10) primary key,
	Link varchar(512) not null,
)

CREATE TABLE DNBC_PostCollection(
	Source Nvarchar(1000),
	Title text not null,
	CollectionID varchar(10) foreign key references DNBC_Collections(CollectionID),
	PostID varchar(10) foreign key references DNBC_Posts(PostID)
);


CREATE TABLE DNBC_Ads(
	AdID int primary key identity(1,1),
	Link varchar(512) not null,
);

drop table DNBC_Ads;
drop table DNBC_PostCollection;
drop table DNBC_Comments;
drop table DNBC_Posts;
drop table DNBC_Collections;

INSERT INTO DNBC_Categories(CategoryName,ParentID) values 
	('Business',0),('Automobiles',1),('Energy',1),('Finance',1),
	('Politics',0),('East Asia',5),('Southeast Asia',5),('Reast of the world',5),
	('Sport',0),('Football',9),('Tennis',9),('Others',9),('About Us',0),('Contact Us',0);


INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values
	('Toyota extends North American plant shutdown; will stop paying 5,000 temporary workers',
	'Toyota Motor Corp said Wednesday it plans to reopen its North American auto plants on May 4, extending its current shutdown by two additional weeks','David Shepardson',
    '2020-04-09',2,'<p>To generate cash, the No. 2 U.S. automaker had said last week it was poised to restart production at some plants in North America as early as April 6, bringing back such profitable vehicles as its top-selling F-150 full-sized pickup, the Transit commercial van and SUVs.</p>
                <div class="ArticleMedia">
                    <div class="ArticleMedia_container">
                        <figure class="Image">
                            <img src="imgs/PostID_01.webp" alt="none">
                        </figure>
                        <figcaption>
                            <div class="Image_caption"><h4>A view shows the Toyota Motor Manufacturing plant in Tijuana, Mexico May 31, 2019</h4></div>
                            <div class="Image_caption "><h6>REUTERS/Jorge Duenes</h6></div>
                        </figcaption>
                    </div>
                </div>
                <p>WASHINGTON (Reuters) - Toyota Motor Corp said Wednesday it plans to reopen its North American auto plants on May 4, extending its current shutdown by two additional weeks.</p>
                <p>The Japanese automaker cited the ongoing COVID-19 pandemic and decline in vehicle demand to extend the halt of production at all of its automobile and components plants in Canada, Mexico and the United States.</p>
                <p>Toyota will not furlough its direct employees, but has asked its hourly plant employees to take two days out of the 10 day extension as paid time off or they can go without pay if they don’t have accrued leave.</p>
                <p>For Toyota’s 5,000 workers provided by outside agencies, Toyota is releasing those workers back to their agencies. Toyota will continue to pay the benefits of those workers for the time being, and they may be eligible for unemployment.</p>
                <p>On Tuesday, Honda Motor Co and Nissan Motor Co on Tuesday said they had furloughed thousands of workers at their U.S. operations as the coronavirus pandemic slashes demand for cars in the country.</p>
                <p>A spokesman for Honda, which employs about 18,400 workers at plants in Alabama, Indiana and Ohio, said the Japanese automaker would guarantee salaries through Sunday, having suspended operations on March 23. The plants will be closed through May 1.</p>
                <p>Nissan said it was temporarily laying off about 10,000 U.S. hourly workers effective April 6. It has suspended operations at its U.S. manufacturing facilities through late April due to the impact of the outbreak.</p>
                <p>Automakers are facing a dramatic drop in sales in the United States, the world’s second-largest car market, after some states barred dealers from selling new cars while “stay-at-home” orders are in place. Fiat Chrysler Automobiles NV on Monday extended its shutdown of U.S. and Canadian plants until May 4.</p>');

INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values
	('Coronavirus concerns delay restart of Fords North American production',
	'Ford Motor Co said on Tuesday it was postponing its plan to restart production at its North America plants due to safety concerns for its workers amid the coronavirus pandemic.','Sanjana Shivdas','2020-03-30',2,
	'<p>To generate cash, the No. 2 U.S. automaker had said last week it was poised to restart production at some plants in North America as early as April 6, bringing back such profitable vehicles as its top-selling F-150 full-sized pickup, the Transit commercial van and SUVs.</p>
                <div class="ArticleMedia">
                    <div class="ArticleMedia_container">
                        <figure class="Image">
                            <img src="imgs/PostID_02.webp" alt="none">
                        </figure>
                        <figcaption>
                            <div class="Image_caption"><h4>The front grill logo of a Ford pickup truck is seen in this photo taken in Carlsbad, California November 5, 2014</h4></div>
                            <div class="Image_caption "><h6>REUTERS| Mike Blake</h6></div>
                        </figcaption>
                    </div>
                </div>
                <p>But on Tuesday, Ford said that although it had been aiming to resume production at several key U.S. plants on April 14, it would now do so at dates to be announced later on.</p>
                <p>But on Tuesday, Ford said that although it had been aiming to resume production at several key U.S. plants on April 14, it would now do so at dates to be announced later on.</p>
                <p>Still, the automaker will open a plant in Ypsilanti, Michigan, during the week of April 20, that will make ventilators to treat patients afflicted by the coronavirus.</p>
                <p>Michigan, which is home to a large portion of the U.S. automotive industry, has also become a hot spot in the pandemic. Schools and all but essential businesses have been ordered closed through at least April 13 to slow the spread of the coronavirus.</p>
                <p>Galhotra said Ford was working closely with the United Auto Workers union to “develop additional health and safety procedures” to help keep hourly workers healthy.</p>
                <p>“Today’s decision by Ford is the right decision for our members, their families and our nation,” UAW President Rory Gamble said in a statement.</p>
                <p>A spokeswoman for FCA said the automaker was “continuing to monitor the situation.”</p>
                <p>General Motors Co (GM.N) has shuttered its plants indefinitely and has not provided a date for vehicle production to restart.</p>
                <p>“Once it is safe to resume production, we will do so,” a GM spokesman said.</p>');

INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values
	('Honda extends Mexican plant shutdown, furloughs more US workers','Japanese automaker Honda Motor Co said Wednesday it will extend a shutdown of its Mexican plants through April 30 and plans to furlough most U.S. salaried workers for two weeks as a result of the coronavirus pandemic.','David Shepardson','2020-04-16',2,
	'<p>WASHINGTON (Reuters) - Japanese automaker Honda Motor Co (7267.T) said Wednesday it will extend a shutdown of its Mexican plants through April 30 and plans to furlough most U.S. salaried workers for two weeks as a result of the coronavirus pandemic.</p>
                <div class="ArticleMedia">
                    <div class="ArticleMedia_container">
                        <figure class="Image">
                            <img src="imgs/PostID_03.webp" alt="none">
                        </figure>
                        <figcaption>
                            <div class="Image_caption"><h4>A production line is seen after the opening of Honda’s new automobile plant in a suburb of Celaya, Guanajuato February 21, 2014</h4></div>
                            <div class="Image_caption "><h6>REUTERS/Henry Romero</h6></div>
                        </figcaption>
                    </div>
                </div>
                <p>WASHINGTON (Reuters) - Japanese automaker Honda Motor Co (7267.T) said Wednesday it will extend a shutdown of its Mexican plants through April 30 and plans to furlough most U.S. salaried workers for two weeks as a result of the coronavirus pandemic.</p>
                <p>Honda began its suspension of operations in North America on March 23 and previously extended its shutdown in Canada and the United States through May 1. The company said the majority of its “salaried and support associates at Honda operations in the U.S. will be furloughed for a two-week period.” Last week, Honda said it would furlough factory workers at its U.S. plants.</p>');

INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values	
	('Detroit automakers, UAW to continue talks over reopening US plants','The United Auto Workers (UAW) said late Wednesday (Apr 22) discussions are still underway with Detroit Big Three automakers to safely restart US production halted by the coronavirus pandemic.','Reuters','2020-04-23',2,
	'<p>(Reuters) - The United Auto Workers (UAW) said late Wednesday discussions are still underway with Detroit’s Big Three automakers to safely restart U.S. production halted by the coronavirus pandemic.</p>
                <div class="ArticleMedia">
                    <div class="ArticleMedia_container">
                        <figure class="Image">
                            <img src="imgs/PostID_04.webp" alt="none">
                        </figure>
                        <figcaption>
                            <div class="Image_caption"><h4>An American flag flies in front of the United Auto Workers union logo on the front of the UAW Solidarity House in Detroit, Michigan, September 8, 2011</h4></div>
                            <div class="Image_caption "><h6>REUTERS/Rebecca Cook</h6></div>
                        </figcaption>
                    </div>
                </div>
                <p>General Motors Co (GM.N), Ford Motor Co (F.N) and Fiat Chrysler Automobiles NV (FCAU.N) (FCHA.MI) shut their plants last month as the virus rapidly spread through the United States, but aim to restart at least some U.S. assembly plants by early May.</p>
                <p>“These talks are fluid and ongoing to ensure safe protocols are followed when the companies reopen,” UAW President Rory Gamble said in a statement.</p>
                <p>Detroit’s automakers and the UAW have been engaged in talks since earlier this month, while local union leaders said on Monday that any worker who feels sick must be allowed to self-quarantine without losing pay.</p>
                <p>A General Motors spokesman said on Wednesday that the company has developed “screening, cleaning and social strategies” for all facilities in line with input from the UAW and guidance from the U.S. Centers for Disease Control and Prevention (CDC).</p>
                <p>The safety practices and sick-leave policies the automakers and the UAW agree to would offer a template for auto suppliers and potentially other manufacturing industries.</p>');

INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values	
	('Coronavirus drives US March auto sales off a cliff','U.S. new vehicle sales likely drove off a cliff in March as the coronavirus pandemic pounded consumer confidence and shuttered dealerships across much of the country, and sales are likely to take a further beating in April as social distancing guidelines remain in place.','Nick Carey','2020-03-31',2,
	'<p>DETROIT: U.S. new vehicle sales likely drove off a cliff in March as the coronavirus pandemic pounded consumer confidence and shuttered dealerships across much of the country, and sales are likely to take a further beating in April as social distancing guidelines remain in place.</p>
                <div class="ArticleMedia">
                    <div class="ArticleMedia_container">
                        <figure class="Image">
                            <img src="imgs/PostID_05.webp" alt="none">
                        </figure>
                        <figcaption>
                            <div class="Image_caption"><h4>Automobiles are shown for sale at a car dealership in Carlsbad, California, U.S. May 2, 2016</h4></div>
                            <div class="Image_caption "><h6>REUTERS/Mike Blake</h6></div>
                        </figcaption>
                    </div>
                </div>
                <p>When you look at March, we basically lost half the month," said Eric Lyman, chief industry analyst at car-shopping website TrueCar.com.</p>
                <p>TrueCar has forecast a sales drop for March of 37 percent and Lyman said sales in April could also be off between 50 percent to 60 percent.</p>
                <p>A rebound for the sector will likely depend on how long the crisis lasts and what level of support the U.S. government provides for consumers in the meantime.</p>
                <p>Most major automakers, including General Motors Co and Toyota Motor Corp, are due to report quarterly U.S. sales on April 1. Ford Motor Co and Fiat Chrysler Automobiles NV will report sales on April 2.</p>
                <p>Tesla Inc also typically reports first quarter deliveries during the week after the quarter ends. Analysts had expected the company to deliver about 93,000 vehicles during the quarter, according to Refinitiv. Tesla Chief Executive Elon Musk on March 19 suspended production at the company’s Fremont, California, assembly plant under pressure from local authorities.</p>
                <p>Just how bad March was is an open question. Cox Automotive did not release a monthly forecast, but said its data showed that on March 27, new vehicle sales to consumers fell 55 percent versus the same day in 2019.</p>
                <p>In U.S. states under "stay-at-home" orders, sales fell as much as 80 percent to 90 percent, Cox estimated. Those include states like California and New York, home to a large portion of the American car-buying population.</p>
                <p>IHS Markit estimates the coronavirus pandemic will cut full-year 2020 sales by 15.3 percent and globally sales will fall 12 percent - "considerably worse" than the fall in sales during the Great Recession in 2008-2009.</p>
                <p>More dealers are embracing online sales, which could help mitigate falling sales.</p>
                <p>But U.S. consumer confidence plunged in March to the lowest level since October 2016 as the coronavirus epidemic upended life for Americans.</p>
                <p>George Augustaitis, director of automotive industry analytics at CarGurus Inc, an online marketplace for new and used cars, said a rebound in new vehicle sales will depend on government support for workers laid off during the crisis.</p>
                <p>"If these consumers are taken care of, we should see the market rebound fairly quickly," Augustaitis said.</p>');

INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values		
	('Ford to restart US truck plants in April to beat pandemic-linked cash squeeze','Ford Motor Co announced plans on Thursday to shore up its finances amid the coronavirus pandemic, aiming to generate more cash by resuming production next month of its most profitable vehicles while saving money through further cost cuts.','David Shepardson','2020-02-26',2,
	'<p>DETROIT (Reuters) - Ford Motor Co (F.N) announced plans on Thursday to shore up its finances amid the coronavirus pandemic, aiming to generate more cash by resuming production next month of its most profitable vehicles while saving money through further cost cuts.</p>
                <div class="ArticleMedia">
                    <div class="ArticleMedia_container">
                        <figure class="Image">
                            <img src="imgs/PostID_06.webp" alt="none">
                        </figure>
                        <figcaption>
                            <div class="Image_caption"><h4>The logo is seen on the bonnet of a new Ford Aspire car during its launch in New Delhi, India, October 4, 2018.</h4></div>
                            <div class="Image_caption "><h6>REUTERS/Anushree Fadnavis</h6></div>
                        </figcaption>
                    </div>
                </div>
                <p>To generate cash, the No. 2 U.S. automaker was poised to restart production at some plants in North America as early as April 6, bringing back such profitable vehicles as its top-selling F-150 full-sized pickup, the Transit commercial van and SUVs.</p>
                <p>To conserve cash, Ford announced belt-tightening moves, including temporarily cutting top executives’ salaries. This came a day after Standard & Poor’s downgraded the Dearborn, Michigan-based company’s debt to “junk” status and warned more downgrades could be necessary.</p><p>“The actions we’re taking now are wide-ranging and substantial,” Chief Executive Jim Hackett told employees in an email early on Thursday. “We hope they will be enough to give Ford the financial flexibility to ride out the economic and business effects of the coronavirus.”
                <p>The coronavirus pandemic, which has killed more than 21,000 people globally, has forced the shutdown of auto plants around the world.</p>
                <p>The outbreak has put pressure on companies, including Ford, which previously drew down credit lines to build its cash position and suspended its dividend.</p>
                <p>The U.S. Senate on Wednesday passed a $2 trillion economic rescue package to help unemployed workers and companies, including the auto industry, hit hard by the outbreak.</p>
                <p>U.S. President Donald Trump, concerned about the economic repercussions of an extended shutdown, has said he wants America to get back to business by Easter, or April 12.</p>
                <h3>GENERATING CASH</h3>
                <p>To get more cash coming in, Ford said Thursday it would restart key plants, while introducing additional safety measures to protect returning workers from the coronavirus. It said it would detail the additional measures later.</p>
                <p>Ford also took additional moves to conserve cash, announcing its top 300 executives would defer 20% to 50% of salaries for at least five months starting May 1, with the executive chairman deferring his entire salary. Hackett will defer half his salary.</p>
                <p>Hackett said Ford’s goal was to avoid layoffs during the crisis, but warned that could change if the impact of the outbreak is more severe than anticipated.</p>
                <p>Other actions Ford is taking to conserve cash include deferring salary increases more broadly, suspending overtime for salaried employees and freezing hiring in non-critical areas, Hackett said.</p>
                <p>However, Ford employees will continue to get healthcare coverage and those exposed to the virus and placed in quarantine will get paid time off, he added.</p>
                <p>General Motors Co (GM.N) and Fiat Chrysler Automobiles NV (FCA)(FCHA.MI) (FCAU.N) previously said they would shut their North American operations through March 30 and then reassess after that.</p>
                <p>FCA on Thursday extended its shutdown through April 13, while its parts distribution centers will continue to operate with paid volunteers. Mexico’s status is subject to a separate announcement.</p>
                <p>GM on Thursday extended its shutdown indefinitely with no firm restart dates, but said it would evaluate the situation on a week-to-week basis.</p>
                <p>The automaker said near-term programs like its redesigned full-size SUVs, electric vehicles such as the Cruise Origin, and new Ultium battery “will continue as planned.” But it will adjust timing and milestones of other future programs “as necessary” to conserve cash, it added.</p>
                <p>United Auto Workers President Rory Gamble said Thursday the union viewed announcements like Ford’s with concern, and any decision to restart production should be based on data and each state’s position with regards to the coronavirus outbreak.</p>
                <p>“The only guideline in a boardroom should be management asking themselves, ‘Would I send my family - my own son or daughter - into that plant and be 100% certain they are safe?’” he said in a statement.</p>
                <p>The UAW has said three union members who worked at FCA plants have died due to the coronavirus.</p>
                <p>Michigan Governor Gretchen Whitmer issued an order on Monday barring non-essential businesses from operating until April 13.</p>
                <p>Japanese automaker Honda Motor Co Ltd (7267.T) said on Thursday it would resume work at its U.S. and Canadian plants on April 7.</p>
                <p>Meanwhile, Japan’s Toyota Motor Corp (7203.T) said it would extend a shutdown of its North American plants for two weeks, through April 17.</p>
                <p>Ford plans to begin production on one shift at its Hermosillo, Mexico, assembly plant, where it builds the Ford Fusion and Lincoln MKZ sedans.</p>
                <p>It will restart production on April 14 at its Dearborn plant that builds the F-150 and a Kentucky plant that makes the Super Duty version of the pickup as well as the Ford Expedition and Lincoln Navigator SUVs. Other assembly and parts plants will restart then as well.</p>
                <p>Ford shares closed down 2.4%, while GM rose 4.8%.</p>');
	
	INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values	
	('Detroit automakers, UAW agree to curb production to contain coronavirus','The Detroit Three automakers and United Auto Workers agreed on Tuesday to curtail production at U.S. factories and limit the number of workers on the job at one time to prevent the spread of the coronavirus among roughly 150,000 factory employees.','Rachit Vats','2020-03-12',2,
	'<p>(Reuters) - The Detroit Three automakers and United Auto Workers agreed on Tuesday to curtail production at U.S. factories and limit the number of workers on the job at one time to prevent the spread of the coronavirus among roughly 150,000 factory employees.</p>
                <div class="ArticleMedia">
                    <div class="ArticleMedia_container">
                        <figure class="Image">
                            <img src="imgs/PostID_07.webp" alt="none">
                        </figure>
                        <figcaption>
                            <div class="Image_caption"><h4>The GM logo is seen at the General Motors Warren Transmission Operations Plant in Warren, Michigan October 26, 2015.</h4></div>
                            <div class="Image_caption "><h6>REUTERS/Rebecca Cook</h6></div>
                        </figcaption>
                    </div>
                </div>
                <p>The union and the automakers agreed to “rotating partial shutdown of facilities, extensive deep cleaning of facility and between shifts, extended periods between shifts, and extensive plans to avoid member contact,” the union said in a statement.</p>
                <p>The agreement came hours after UAW President Rory Gamble went public with his dissatisfaction with how General Motors Co(GM.N), Ford Motor Co (F.N) and Fiat Chrysler Automobiles NV (FCHA.MI) had responded to his proposal on Sunday that the companies stop production in the face of the coronavirus threat.</p>
                <p>Gamble warned he would take unilateral action if the automakers did not do more to secure hourly workers on factory floors.</p>
                <p>The tension between the UAW and the Detroit automakers highlighted a divide in the U.S. labor force that extends well beyond the auto industry.</p>
                <p>The automakers have allowed salaried employees whose tools are design software and spreadsheets to work from home to reduce their risks of exposure. But the companies had required factory workers whose hands assemble the vehicles to come work in buildings where thousands labor side by side, and congregate in break areas and cafeterias.</p>
                <p>Gamble had told the automakers on Sunday that they should shut U.S. factories for two weeks, and made that position public early Tuesday.</p>
                <p>The agreement reached after talks late Tuesday allows the automakers to keep building profitable models such as Ford’s F-150 pickup, Fiat Chrysler’s Jeep Wrangler and GM’s Cadillac Escalade at a reduced pace.</p>
                <p>The compromise is less costly than a full shutdown that would have forced the automakers to forego billions in revenue during the current quarter.</p>
                <p>U.S. vehicle sales are likely to slow as consumers are urged, or forced, to stay home in many states. Slowing production could avoid building up inventories of vehicles that would have to be discounted later.</p>
                <p>Ford said on Tuesday it had to temporarily stop production of sport utility vehicles at a plant in Chicago because of parts shortages.</p>
                <p>The UAW said the automakers also agreed to “work with us in Washington, D.C., on behalf of our members as we manage the disruption in the industry.”</p>
                <p>The union’s statement did not elaborate on what it wants from the U.S. government, but a parade of industries is forming in the capital seeking assistance as coronavirus lockdowns threaten the economy.</p>
                <p>Separately, GM and Ford disclosed Tuesday that they each have had one employee, both working at U.S. engineering centers, test positive for coronavirus. They marked the first confirmed cases of coronavirus among the automakers’ U.S. employees.</p>
                <p>While GM said that its affected employee was based at its Michigan technical center, the UAW separately said the GM worker was a member of the union.</p>
                <p>GM said its medical team was working to speak with co-workers who may have had direct contact with the infected employee, and they will be told to self-quarantine for 14 days.</p>
                <p>GM officials learned the employee had tested positive for the highly contagious COVID-19 respiratory illness on Monday, after the company had issued an order that salaried employees should work from home. Access to the building where the employee worked was restricted, and the building was cleaned, GM spokesman Jim Cain said Tuesday.</p>');
	
	INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values	
	('Fiat Chrysler plant resumes production after 24-hour halt over coronavirus fears','Fiat Chrysler Automobiles NV said production at its assembly plant in Windsor, Ontario, which was halted for 24 hours after an employee contracted the coronavirus, has resumed on Friday afternoon.','Ben Klayman','2020-03-14',2,
	'<p>(Reuters) - Fiat Chrysler Automobiles NV (FCHA.MI) (FCAU.N) said production at its assembly plant in Windsor, Ontario, which was halted for 24 hours over fears of an employee being possibly exposed to the coronavirus, has resumed on Friday afternoon.</p>
                <div class="ArticleMedia">
                    <div class="ArticleMedia_container">
                        <figure class="Image">
                            <img src="imgs/PostID_08.webp" alt="none">
                        </figure>
                        <figcaption>
                            <div class="Image_caption"><h4>Employees of Fiat SpA work on new car "Panda" at the Fiat plant in Pomigliano DArco, near Naples, Italy, December 14, 2011.</h4></div>
                            <div class="Image_caption "><h6>REUTERS/Alessandro Bianchi</h6></div>
                        </figcaption>
                    </div>
                </div>
                <p>(Reuters) - Fiat Chrysler Automobiles NV (FCHA.MI) (FCAU.N) said production at its assembly plant in Windsor, Ontario, which was halted for 24 hours over fears of an employee being possibly exposed to the coronavirus, has resumed on Friday afternoon.</p>
                <p>“There currently is one employee out on self-quarantine as a precaution because of possible secondary contact,” the company said in a statement.</p>
                <p>Starting Thursday afternoon, employees at the plant had refused to work. The company said the Ministry of Labour found the environment to be safe after visiting the plant and there are no confirmed cases of coronavirus at the location.</p>
                <p>Fiat said on Thursday an employee had tested positive for COVID-19 at its Kokomo, Indiana transmission plant, but the location would remain open.</p>
                <p>The company will delay the reopening of two plants in southern Italy by two days until next Wednesday, having closed them this week to complete actions in response to the coronavirus outbreak.</p>');
	
	INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values	
	
	('Coronavirus: Why are planes still flying?','Surprisingly, a number of global airlines are still running passenger flights, including British Airways (BA). That is despite aviation largely grinding to a halt as the coronavirus crisis hit passenger traffic numbers and governments banned flights.','Simon Read','2020-03-30',2,
	'<p>London’s Heathrow airport normally has about 600 flights landing on an average day, but in lockdown Britain, about 60 arrive daily.</p>
                                            <div class="ArticleMedia">
                                                <div class="ArticleMedia_container">
                                                    <figure class="Image">
                                                        <img src="imgs/PostID_09.jpg" width= "803" alt="none">
                                                    </figure>
                                                    <figcaption>
                                                        <div class="Image_caption"><h5>The coronavirus outbreak has had a severe impact on demand for air travel.</h5></div>
                                                            <div class="Image_caption"><h6>SOURCE: Taken by Harry Porters</h6></div>
                                                    </figcaption>
                                                </div>
                                            </div>
                                            <div class="col-xs-12">
                                                <p>Air Deccan is in talks with an aircraft manufacturer as the Indian carrier prepares to restart operations once the coroanvirus crisis stabilises, chief executive Arun Kumar Singh has disclosed.</p>
                                                <p>The carrier is in the process of returning its two 18-year-old Beechcraft Beech 1900Ds to their lessor, having already served notice of lease termination, Singh tells Cirium. He declined to name the lessor.</p>
                                                <p>Singh adds the lockdown has made it difficult to return the aircraft.</p>
                                                <p>The airline’s Beechcrafts – which, according to Cirium fleets data, formerly flew with a now-defunct subsidiary of Air New Zealand – are described by Singh as “very old and very tired ”.</p>
                                                <p>“We have taken this as an opportunity for newer aircraft,” he adds. “We are talking to an OEM, but nothing has been signed yet so I can’t disclose anything.”</p>
                                                <p>Pressed on whether he is talking to Airbus or Boeing, Singh says he is not talking with either of them, and that the type he is looking at is a “smaller commuter aircraft”.</p>
                                                <p>On 5 April, Air Deccan – which has history dating back to 2003, and was once a part of ill-fated Kingfisher Airlines – announced that it was suspending operations until further notice. It was the first Indian carrier to cease operations amid the coronavirus pandemic. All employees were put on “sabbatical” without pay, though Singh says they will be given “right of first refusal” to rejoin the company once it starts operations again.</p>
                                                <p>“We took a very early call in doing that,” he says, referring to management’s decision to shutter the airline.</p>
                                            </div>
                                            <div class="ArticleMedia col-xs-12">
                                                <div class="ArticleMedia_container col-xs-12">
                                                    <iframe width="800" height="540" frameborder="0" src="https://www.bbc.com/news/av/embed/p089st6l/52319575"></iframe>
                                                </div>
                                            </div>
                                            <div class="col-xs-12">
                                                <p>“I sat down with shareholders and we knew which direction this was going to go. We sat down and took a conscious call and took a very quick decision that coronavirus was going to stay for the next three to six months.</p>
                                                <p>“The question we had to ask was could we sustain ourselves with no revenues coming in? If we could somehow subsidise the aviation business from my shareholder’s other businesses – but the problem is all other business have come to a halt. We can’t keep pumping in money when there is no light at the end of the tunnel. Look what happened to Virgin Australia. The situation compared to other Indian carriers is not anyway extra bad for us; it’s just we saw that coming quickly.”</p>
                                                <p>The airline got off to a rocky start in 2003, having to abandon its inaugural flight carrying Indian dignitaries due to an engine fire during taxi. Despite that, it managed to grow its fleet and route network, and in 2008 completed a merger with now-defunct Kingfisher Airlines.</p>
                                                <p>Under its new owner, Air Deccan was rechristened Kingfisher Red, but its high operating costs and low yields proved to be a drag on Kingfisher. In 2011 Kingfisher Airlines, which not long after went belly-up, decided to phase out Kingfisher Red.</p>
                                                <p>Air Deccan founder GR Gopinath, who has been dubbed “the man who got India’s middle class to fly”, managed to retain the airline’s name by registering for it soon after the rebranding, Forbes India reports.</p>
                                                <p>Air Deccan made a comeback in December 2017 when it was granted a flying permit from India’s civil aviation regulator to conduct flights under the country’s UDAN regional connectivity scheme, Business Standard reported at the time. The first three routes were from Mumbai to Nashik, Pune and Jalgaon, according to Forbes India.</p>
                                            </div>');
	
	INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values	
	('India’s ​Air Deccan eyes post-crisis relaunch with new aircraft','Air Deccan is in talks with an aircraft manufacturer as the Indian carrier prepares to restart operations once the coroanvirus crisis stabilises, chief executive Arun Kumar Singh has disclosed.','Citirum','2020-04-24',2,
	'<p>Air Deccan is in talks with an aircraft manufacturer as the Indian carrier prepares to restart operations once the coroanvirus crisis stabilises, chief executive Arun Kumar Singh has disclosed.</p>
                <div class="ArticleMedia">
                    <div class="ArticleMedia_container">
                        <figure class="Image">
                            <img src="imgs/PostID_10.jpg" alt="none">
                        </figure>
                        <figcaption>
                            <div class="Image_caption"><h5>An Air Deccan Beecraft 1900D. The original incarnation of Air Deccan was India’s largest low-cost carrier.</h5></div>
                            <div class="Image_caption "><h6>SOURCE: Wikimedia Commons</h6></div>
                        </figcaption>
                    </div>
                </div>
                <p>Air Deccan is in talks with an aircraft manufacturer as the Indian carrier prepares to restart operations once the coroanvirus crisis stabilises, chief executive Arun Kumar Singh has disclosed.</p>
                <p>The carrier is in the process of returning its two 18-year-old Beechcraft Beech 1900Ds to their lessor, having already served notice of lease termination, Singh tells Cirium. He declined to name the lessor.</p>
                <p>Singh adds the lockdown has made it difficult to return the aircraft.</p>
                <p>The airline’s Beechcrafts – which, according to Cirium fleets data, formerly flew with a now-defunct subsidiary of Air New Zealand – are described by Singh as “very old and very tired ”.</p>
                <p>“We have taken this as an opportunity for newer aircraft,” he adds. “We are talking to an OEM, but nothing has been signed yet so I can’t disclose anything.”</p>
                <p>Pressed on whether he is talking to Airbus or Boeing, Singh says he is not talking with either of them, and that the type he is looking at is a “smaller commuter aircraft”.</p>
                <p>On 5 April, Air Deccan – which has history dating back to 2003, and was once a part of ill-fated Kingfisher Airlines – announced that it was suspending operations until further notice. It was the first Indian carrier to cease operations amid the coronavirus pandemic. All employees were put on “sabbatical” without pay, though Singh says they will be given “right of first refusal” to rejoin the company once it starts operations again.</p>');
	
	INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values	
	('‘Scary,’ ‘visceral,’ ‘unprecedented’: Traders describe oil’s wild week and fall to negative prices','“Scary,” “unbelievable,” “so dramatic,” “unprecedented,” “very visceral”: These are among the choice words Wall Street veterans used to describe what was, for the oil market, a week for the history books.','Pippa Stevens','2020-04-25',
	3,	'<p>Oil prices have tumbled as the coronavirus pandemic saps worldwide demand for crude, and storage is quickly filling. Monday’s drop was exacerbated by a futures contract that was expiring.</p>
            <div class="ArticleMedia">
                <div class="ArticleMedia_container">
                    <figure class="Image">
                        <img src="imgs/PostID_11.png" alt="none">
                    </figure>
                    <figcaption>
                        <div class="Image_caption"><h4>Oil future Crash</h4></div>
                        <div class="Image_caption "><h6>Source: Fact Set CNBC data</h6></div>
                    </figcaption>
                </div>
            </div>
            <p>“Scary,” “unbelievable,” “so dramatic,” “unprecedented,” “very visceral”: These are among the choice words Wall Street veterans used to describe what was, for the oil market, a week for the history books</p>
            <p>On Monday, for the first time on record, West Texas Intermediate (WTI), the U.S. oil benchmark, plunged below zero and into negative territory. Before Monday, many thought this was impossible. Maybe, just maybe, it could drop to zero, effectively erasing all value. But negative territory seemed unimaginable, not least because it’s hard even to wrap one’s mind around it. Pay someone to take your oil?</p>
            <p>Yet that’s exactly what happened. “It was a take-your-breath-away kind of scary moment,” said Rebecca Babin, managing director at CIBC Private Wealth Management. “It truly was like watching … a full speed train wreck. But you couldn’t stop watching.”</p>
            <p>The coronavirus pandemic has sapped as much as a third of worldwide demand for oil, according to some estimates. Producers have continued to pump, but with air travel halted and people staying home there’s simply nowhere for this oil to go. Refiners certainly don’t want it. And worldwide storage — both onshore and offshore — is quickly filling up. Analysts warn that we could reach tank tops, or maximum capacity, in a matter of weeks.</p>
            <p>Everything came to a head on Monday. WTI has a physical settlement, meaning that as the monthly contract reaches expiration, whoever holds the contract is due a physical barrel of oil. Traders, in an effort to profit from the differential, buy and sell contracts without any intention of holding them at expiration, while refiners and airlines are among those on the other side who actually want the oil.</p>
            <p>The contract that plunged into negative territory was for May delivery. Demand isn’t expected to rebound any time soon. And with nowhere to put the oil, people were left scrambling and ultimately would do anything — in this case, even pay — to have it taken off their hands.</p>
            <p>There are nuances, of course. For one, the May contract expired on Tuesday, meaning that trading volume was thin as it plunged into negative territory. By that point the contract for June delivery was much more actively traded and thus a better indication of where the Street viewed oil prices.</p>
            <p>Negative prices themselves are also not completely without precedent. Natural gas, for instance, has traded below zero in the past, and in the physical market certain regional grades of crude were already trading in negative territory prior to Monday. And there were some traders who warned that, as storage filled, prices would continue to decline dramatically.</p>
            <p>But it was still shocking, nonetheless, to watch the downward descent on Monday of the world’s most actively traded oil contract.</p>
            <p>“This is an industry that I’ve been a part of for a long time now, and when it gets broken like that, or you get a really bad situation like that, it draws all kinds of unwanted attention and people getting hurt,” said Again Capital founding partner John Kilduff.</p>
            <h3><b>A slow and then sudden unwind</b></h3>
            <p>When the futures market opened at 6 p.m. ET on Sunday night, the WTI contract for May delivery traded at $17.73, or about 3% below its Friday settle price of $18.27. Oil was coming off its sixth straight day of losses, and its seventh negative week in eight. The nearly 20% decline for the week was especially notable since, only days before, OPEC and its oil-producing allies had agreed to a historic production cut that would take 9.7 million barrels per day — roughly 10% of global supply — offline. It wasn’t enough to assuage investor fears.</p>
            <p>It turned out that $17.73 would be just a few cents shy of Monday’s high. By midnight eastern time WTI was trading in the $15 range. Selling continued in overnight trading, and at 8 a.m. prices had slipped to $11. Just after noon, prices dropped into the single digits.</p>
            <p>“It was like watching a really bad traffic accident unfold right in front of you,” said Kilduff, who’s been in the energy industry for more than 25 years. “You knew there was going to be damage, even if it was thinly traded. … You knew somebody was on the other side of those trades, and you kind of got a little bit of a sick feeling.”</p>
            <p>After prices entered the single digits, there would be no going back. At 1:51 p.m., WTI broke below $1, and at 2:08 p.m., less than a half hour before the settle, it fell into negative territory. Kilduff called it a “crossing the Rubicon moment.”</p>
            <p>The selling didn’t stop there. Ultimately, the contract settled at negative $37.63.</p>
            <p>That prices kept falling deeper into negative territory after crossing zero is what most surprised RBN Energy CEO Rusty Braziel.</p>
            <p>“That’s what freaked everybody, was the fact that these guys were in such dire circumstances,” he said. “There was not a single soul that I have talked to that came anywhere close to predicting what happened.”</p>
            <p>Braziel has been in the energy industry for decades, first as a trader and now as a consultant. While trading, he experienced his fair share of volatility — including the 1986 crash that sent oil prices tumbling below $10.</p>
            <p>The heavy selling on Monday, rather than Tuesday when the contract was set to expire, was also notable, he said.</p>
            <div class="ArticleMedia">
                <div class="ArticleMedia_container">
                   <iframe class="Video col-xs-10" loop preload="none" width=700 height=400 src="https://player.cnbc.com/p/gZWlPC/cnbc_global?playertype=synd&byGuid=7000132534" frameborder=0 scrolling=no allowfullscreen webkitallowfullscreen mozallowfullscreen oallowfullscreen msallowfullscreen ></iframe>
                </div>
            </div>
            <p>By Tuesday’s opening bell the May contract was back in positive territory, and steadily climbed higher to settle at $10.01. But it was the lowest settle on record — apart from Monday’s plunge — since the contract’s inception in 1983. For context, the previous “lowest ever” title was held by the $10.42 settle on March 31, 1986.</p>
            <p>“The fact that there wasn’t going to be enough storage and that things could get really hairy around expiration was not a surprise,” said Babin. “But to the degree that it happened, and the speed that it happened, it was actually kind of scary.”</p>
            <h3><b>Trouble brewing</b></h3>
            <p>Part of Monday’s historic fall was certainly technical, as the financial and physical worlds collided. The volume was thin, and the majority of professional traders and funds that hold these contracts had likely already rolled their positions into later contracts. On Monday the June contract held steady above $20.</p>
            <p>Despite that, the drop into negative prices cannot be dismissed as merely a glitch. For one, it shows the depths of the imbalance between supply and demand wrought by the coronavirus outbreak. “To put a fine point on the horrible economic situation we’re in right now with this pandemic, it was Monday’s trading,” Kilduff said.</p>
            <p>It also shines light on the fact that zero doesn’t necessarily provide a floor for prices. Losses can be limitless in futures.</p>
            <p><a href="https://www.cnbc.com/quotes/?symbol=@LCO.1">Brent crude</a>, the international benchmark, has held up slightly better than WTI, since it prices in the North Sea — which affords it easier access to storage — as opposed to landlocked Cushing, Oklahoma, where WTI prices. “Slightly” is the operative word here, however, since Brent is hovering around a more than 20-year low. And WTI’s Friday settle price of $16.94 is hardly something to celebrate. At the beginning of the year it traded above $60. Less than six years ago it topped $100.</p>
            <p>With prices this low, at a certain point producers will be forced to turn off the taps. A number of companies including
                <a href="https://www.cnbc.com/quotes/?symbol=XOM">Exxon</a>, <a href="https://www.cnbc.com/quotes/?symbol=CVX">Chevron</a> and
                <a href="https://www.cnbc.com/quotes/?symbol=COP">ConocoPhillips</a> have already announced <a href="https://www.cnbc.com/2020/04/07/exxon-cuts-capital-spending-by-30percent-but-ceo-says-its-committed-to-maintaining-dividend.html">production cuts</a>, and additional cuts are expected.</p>');

INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values	
	('Billionaire investor Howard Marks calls the oil crash ‘completely rational’','While a plunge in U.S. crude oil prices this week reverberated across global financial markets and fueled renewed worries over the beleaguered shale oil industry, billionaire investor Howard Marks told CNBC that the price action “is completely rational.”','Tanvir Gill','2020-04-22',3,
	'<p>While a plunge in U.S. crude oil prices this week reverberated across global financial markets and fueled renewed worries over the beleaguered shale oil industry, billionaire investor Howard Marks told CNBC that the price action “is completely rational.”</p>
                <div class="ArticleMedia">
                    <div class="ArticleMedia_container">
                        <figure class="Image">
                            <img src="imgs/PostID_12.jpeg" alt="none">
                        </figure>
                        <figcaption>
                            <div class="Image_caption"><h4>An offshore oil platform is seen with a tanker in the distance on April 20, 2020 in Huntington Beach, California.</h4></div>
                            <div class="Image_caption "><h6>Michael Heiman | Getty Images</h6></div>
                        </figcaption>
                    </div>
                </div>
                <p>A plunge in U.S. crude oil prices this week reverberated across global financial markets and fueled renewed worries over the beleaguered shale oil industry. Yet billionaire investor Howard Marks isn’t panicking.</p>
                <p>Marks, who co-founded Oaktree Capital Management, told CNBC in an email interview that the weakness in crude oil prices was steeped in fundamentals as energy demand has cratered due to the coronavirus pandemic and buyers are scrambling to stockpile crude oil due to
                    <a href="https://www.cnbc.com/2020/04/22/oil-prices-heres-how-oil-storage-works-and-why-capacity-matters.html">storage space becoming scarce</a>.</p>
                <p>“It’s not a panic. The move is completely rational,” Marks told CNBC in an emailed statement.</p>
                <p> “The ultimate complication is that storing oil costs money, and storage facilities aren’t unlimited.  Right now storage is scarce and thus expensive, so it’s not worth it to buy oil today and store it.  The cost of storing exceeds the value today; thus the price is negative,” Marks said.</p>
                <p>The comments from Marks come after <a href="https://www.cnbc.com/quotes/?symbol=@CL.1">West Texas Intermediate</a> crude for May delivery fell more than 100% to settle at negative $37.63 per barrel on Monday, which meant that traders were effectively having to pay to get oil taken off their hands. That marked the first time that the price of an oil futures contract had turned negative.</p>
                <p>The May WTI contract, which expired on Tuesday, settled at $10.01 a barrel. Futures contracts trade by the month. </p>
                <p>The June contract is currently trading around $11 per barrel. Meanwhile, international benchmark <a
                        href="https://www.cnbc.com/quotes/?symbol=@LCO.1">Bren</a>t crude stood at $17.01, nearly 12% lower.</p>
                <p>The coronavirus pandemic has dealt a severe blow to economic activity around the globe and sapped demand for oil. While OPEC and its oil-producing allies finalized a historic agreement earlier this month to cut production by 9.7 million barrels per day beginning May 1, experts reckon that the reduction in supply won’t be enough to offset the diminution in demand.</p>
                <p>The International Energy Agency, for instance, warned in its closely-watched monthly report, that demand in April could be 29 million barrels per day lower than a year ago, hitting a level last seen in 1995.</p>
                <p>“Oil production can’t just be turned off, because for production some wells depend on pressure that a shut-off complicates. So, oil is coming out of the ground that exceeds the amount needed for consumption,” Marks said.</p>
                <p>The gloominess in the oil market has also put the spotlight on US shale oil producers that are grappling with feeble demand on one hand and a lack of storage on the other, a conundrum that is making desperate oil companies “pay” traders for taking oil off them.</p>
                <p>However, there are potential signs of relief. Some far-dated contracts this year are showing average oil prices of $20 a barrel and above while contracts expiring in 2021 are reflecting a modest bounce in demand taking prices to near $30 per barrel. Marks spotted a semblance of rationality in those prices.</p>
                <p>“Oil can be bought for delivery by month. The negative price for oil reflects the excess of supply over demand, plus the cost of storage.  The price for oil in future months (when consumption may have rebounded) is at more normal levels,” he said.</p>');
	
	INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values	
	('OPEC and allies finalize record oil production cut after days of discussion','OPEC and its oil producing allies finalized an agreement to cut production by 9.7 million barrels per day — the single largest output cut in history.','Pippa Stevens','2020-04-12',3,
	'<p>OPEC and its oil producing allies on Sunday finalized a historic agreement to cut production by 9.7 million barrels per day, following days of discussions among the world’s largest energy producers.</p>
            <div class="ArticleMedia">
                <div class="ArticleMedia_container">
                    <figure class="Image">
                        <img src="imgs/PostID_13.jpg" alt="none">
                    </figure>
                    <figcaption>
                        <div class="Image_caption"><h4>An Iraqi labourer works at an oil refinery in the southern town Nasiriyah.</h4></div>
                        <div class="Image_caption "><h6>Haidar Mohammed Ali | AFP | Getty Images</h6></div>
                    </figcaption>
                </div>
            </div>
                <p>It’s the single largest output cut in history.</p>
                <p>West Texas Intermediate crude, the U.S. benchmark, fell 1.54% on Monday to settle at $22.41 per barrel. Brent crude traded 34 cents higher at $31.82.</p>
                <p>Sunday’s emergency meeting — the second in four days — came as oil-producing nations scrambled to reach an agreement in an effort to prop up falling prices as the coronavirus outbreak hammers demand. The agreement ends a Saudi Arabian-Russian price war that broke out at the beginning of March and had pressured oil prices as each sought to gain market share.</p>
                <p>On Thursday, OPEC+ proposed cutting production by 10 million barrels per day — amounting to some 10% of global oil supply — but Mexico opposed the amount it was being asked to cut, holding up the final deal. </p>
                <p>Talks continued on Friday when energy ministers from the Group of 20 major economies met, and while all agreed that stabilization in the market is needed, the group stopped short of discussing specific production numbers.</p>
                <p>Under OPEC+’s new agreement, Mexico will cut 100,000 bpd, a quarter of what it had been asked to cut on Thursday.</p>
                <p>The 9.7 million bpd cut will begin on May 1 and will extend through the end of June. The cuts will then taper to 7.7 million bpd from July through the end of 2020, and 5.8 million bpd from January 2021 through April 2022. The 23-nation group will meet again on June 10 to determine if further action is needed.</p>
                <p>“This is at least a temporary relief for the energy industry and for the global economy,” Rystad Energy’s head of analysis Per Magnus Nysveen told CNBC in an email. “Even though the production cuts are smaller than what the market needed and only postpone the stock building constraints problem, the worst is for now avoided.”</p>
                <p>President Donald Trump, who has been heavily involved in brokering a Saudi Arabian-Russian price war, said in a tweet that it’s a “great deal for all” that “will save hundreds of thousands of energy jobs in the United States.”</p>
                <div class="ArticleMedia_container">
                    <blockquote class="twitter-tweet"><p lang="en" dir="ltr">The big Oil Deal with OPEC Plus is done. This will save hundreds of thousands of energy jobs in the United States. I would like to thank and congratulate President Putin of Russia and King Salman of Saudi Arabia. I just spoke to them from the Oval Office. Great deal for all!</p>&mdash; Donald J. Trump (@realDonaldTrump) <a href="https://twitter.com/realDonaldTrump/status/1249422044564992001?ref_src=twsrc%5Etfw">April 12, 2020</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
                </div>
                <p>On Friday, when the deal was in jeopardy, Trump said the U.S. would cut production in an effort to get Mexico “over the barrel.”</p>
                <p>At a White House press briefing, Trump said he spoke to Mexico’s President Andres Manuel Lopez Obrador and had agreed to “pick up some of the slack” by cutting production on behalf of Mexico. He did not elaborate on how the cuts would be enacted, and said Mexico would reimburse the U.S. at a later date.</p>
                <p>OPEC+ is hoping that nations outside of the group, including the U.S., Canada and Norway, will also cut production to shore up prices. While Trump previously stopped short of saying the U.S. would scale back production, he has noted that market forces would naturally curb output.</p>
                <p>U.S. Energy Secretary Dan Brouillette reiterated this point on Friday, saying that about 2 million bpd and perhaps 3 million bpd of U.S. production would have been taken offline by the end of the year.</p>
                <p>“Today’s crisis transcends the interests of any one nation and requires a swift and decisive response from us all. Failure to act has far reaching consequences to each of our economies,” he said Friday at the G-20 meeting. “This is a time for all nations to seriously examine what each can do to correct the supply/demand imbalance,” he added.</p>
                <p>“Unprecedented measures for unprecedented times,” Ed Morse, Citi’s global head of commodities, wrote in a note to clients Sunday. “Unprecedented in historical discussions of production cuts, the US played a critical role in brokering between Saudi Arabia and Russia to induce them to negotiate the new OPEC+ accord.” </p>
                <p>Despite the record size of the cut, some fear it’s still not large enough to combat the drop in demand. On Thursday,
                    <a href="https://www.cnbc.com/quotes/?symbol=@CL.1">West Texas Intermediate</a> crude dropped more than 9%. The market was closed on Friday.</p>
                <p>Both Brent and WTI futures are in bear market territory, down 53% and 63% respectively since climbing to a January peak.</p>
                <p>Chris Midgley, S&P Global Platts’ global head of analytics, said that the cut isn’t enough “to plug the 15- to 20-million b/d near-term imbalance in the marketplace and avoid tank tops in May.” The cut “won’t be enough to bring sustainable, restorative support to oil prices, not unless OPEC goes further,” he added.</p>
                <p>But Ann-Louise Hittle, vice president of macro oils at Wood Mackenzie, noted that the deal “will make a difference to the market,” even if “poorly implemented.”</p>');
	
	INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values	
	('America’s ‘clean energy’ workforce projected to fall by 15% in months ahead',
	'This year looks set to pose a number of challenges for the renewables sector, many of them connected to Covid-19. The coronavirus pandemic has caused issues with supply chains and forced some factories to shut.','Anmar Frangoul','2020-04-15',3,
	'<p>Over 106,000 people working in the U.S. “clean energy” sector lost their jobs in March as the industry struggled to soften the impact of the coronavirus pandemic, it was claimed Wednesday.  </p>
                <p>The analysis of Department of Labor data, released by Environmental Entrepreneurs (E2), the American Council on Renewable Energy, E4TheFuture and BW Research Partnership, paints a challenging picture for the industry. For the purposes of the analysis, the term “clean energy” encompasses a range of areas including: renewables such as solar and wind; energy storage; energy efficiency; and “clean fuels.”  </p>
            <div class="ArticleMedia">
                <div class="ArticleMedia_container">
                    <figure class="Image">
                        <img src="imgs/PostID_14.jpeg" alt="none">
                    </figure>
                    <figcaption>
                        <div class="Image_caption"><h4>Will Lester</h4></div>
                        <div class="Image_caption "><h6>Inland Valley Daily Bulletin</h6></div>
                    </figcaption>
                </div>
            </div>
                <p>It shows that, last month, 106,472 people working in clean energy roles filed for unemployment benefits. Looking further ahead, the analysis projects that over 500,000 people working in clean energy — 15% of the sector’s workforce — will lose their jobs in the following months unless “quick and substantive action” is taken by both the administration of President Donald Trump and Congress.</p>
                <p>“The economic fallout from COVID-19 is historic in both size and speed,” Phil Jordan, vice president and principal at BW Research Partnership, said in a statement issued alongside the analysis.</p>
                <p>Jordan explained that activities, from the manufacture of electric vehicles to the installation of solar panels, were being impacted. “And the data pretty clearly indicate that this is just the beginning,” he added.</p>
                <p>Wednesday’s figures are a heavy blow for an industry that added over 70,000 jobs in 2019. The clean energy workforce in the U.S. grew to almost 3.4 million people at the end of last year, according to E2′s Clean Jobs America 2020 report, which was also released on Wednesday. </p>
                <p>This year looks set to pose a number of challenges for the renewables sector, many of them connected to the coronavirus pandemic, which has caused issues with supply chains and forced some factories to shut.</p>
                <p>In a blog post toward the end of March, Abigail Ross-Hopper, the president and CEO of the U.S.-based Solar Energy Industries Association (SEIA), wrote that the solar industry was “at risk.”</p>
                <p>Citing a survey carried out with the SEIA’s member companies, Ross-Hopper said data showed that “solar companies and workers are losing business and being put out of work by COVID-19.”</p>
                <p>Last week, research and consultancy firm Wood Mackenzie said global solar installations for 2020 had been revised down from 129.5 gigawatts (GW) to 106.4 GW, which represents an 18% drop compared to pre-coronavirus levels.</p>
                <p>In the wind energy sector, last week also saw Danish wind turbine manufacturer Vestas suspend guidance for 2020, noting that the global spread of Covid-19 and national measures taken to contain it had caused disruptions to installations, manufacturing and its supply chain.</p>
                <p>“Unfortunately, the pandemic continues to spread and with no clear prognosis on when key wind markets such as the USA, Brazil and India will recover, we are suspending our guidance due to the poor visibility for the remainder of the year.”</p>');

INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values
	('No more hamburgers? How ‘clean meat’ could transform our diets',
	'Some consumers are now trying to move away from meat, choosing plant-based alternatives instead.',
	'Anmar Frangoul','2020-03-27',3,
	'<p>For many, the hamburger’s combination of bun, meat and salad is the perfect marriage of simplicity, flavor and familiarity. Whether it’s a gourmet patty with shavings of truffle, or a cheap and cheerful offering from a fast food outlet, today’s diners are spoilt for choice.  </p>
                <div class="ArticleMedia">
                    <div class="ArticleMedia_container">
                        <iframe width=700 height=400 src="https://player.cnbc.com/p/gZWlPC/cnbc_global?playertype=synd&byGuid=7000126277" frameborder=0 scrolling=no allowfullscreen webkitallowfullscreen mozallowfullscreen oallowfullscreen msallowfullscreen ></iframe>
                    </div>
                </div>
			<div class = col-xs-12>
            <p>The Food and Agriculture Organization of the United Nations (FAO) has previously said that emissions from global livestock amount to an estimated 7.1 gigatons of carbon dioxide equivalent each year.</p>
            <p>Breaking things down, cattle — reared for beef, milk and manure, among other things — represent roughly 65% of emissions from the livestock sector.  </p>
             <p>Olivier De Schutter, co-chair of the Brussels-based International Panel of Experts on Sustainable Food Systems (IPES-Food), said meat production has a major impact on climate change through three channels.</p>
                <p>“First of all, livestock ruminates, and large amounts of methane gas is the result,” he told CNBC.</p>
                <p>“Secondly, we need to produce feedstock for the animals — maize, soy beans in particular — and for this we need to clear large forest areas, so deforestation is driven by livestock production,” he added.</p>
                <p>“And thirdly, we need to produce fertilizers to grow the soy beans, the maize from which this feedstock shall be made, and that too is a source of greenhouse gas emissions.”</p>
                <h3><b>Plant-based patties</b></h3>
                <p>Given the above, it’s perhaps unsurprising that some consumers are now trying to move away from meat, choosing plant-based alternatives instead.</p>
                <p>Brands are making changes, too. Burger King, for example, now offers customers an Impossible Whopper made using a plant-based meat substitute from Impossible Foods. Elsewhere, fried-chicken giant KFC has used a plant based chicken substitute from Beyond Meat. Back in 2014,
                    <a href="https://www.cnbc.com/quotes/?symbol=BYND">Beyond Meat</a> CEO Ethan Brown spoke to CNBC. </p>
                <p>“Meat, as we understand it today, is from cows, pigs, chicken and such,” he explained.</p>
                <p>“But if you look at what meat is, in terms of its constituent parts, and you break it down into amino acids, fats, water...trace minerals and carbohydrates, those things are not exclusive to animal protein, they’re not exclusive to animal muscle,” he added. “The aim is to collect those from the plant kingdom and assemble them in exactly the way that muscle assembles them.”</p>
                <h3><b>Meat without a farm?</b></h3>
                <p>While plant-based meat substitutes have become an intriguing menu option, lab-cultivated produce could also provide a way of giving people their “meat fix” without having to worry about the environment.</p>
                <p>“We can take a biopsy from an animal… a few cells from an animal (and) bathe those cells in nutrients,” Bruce Friedrich told CNBC. He’s executive director of The Good Food Institute, a non-profit focused on plant-based alternatives to animal products and so-called “clean meat.”  </p>
                <p>“Those cells will multiply and grow, we’ll end up with exactly the same meat but produced in a much more efficient way,” he added. “Far less climate change; no contribution to antibiotic resistance.”</p>
                <h3><b>A shift in attitudes</b></h3>
                <p>Looking to the future, there are legitimate questions about whether meat-based diets will eventually become a thing of the past. Could a more sustainable, less intensive approach be the key to keeping steak and chicken on the menu?</p>
                <p>“We need to reduce meat consumption for sure, but the meat that we produce can be produced in a way that is very sustainable,” IPES-Food’s De Schutter explained, adding that animals were needed to fertilize soils.</p>
                <p>“If we produce meat according to agro-ecological techniques, without resorting to industrialized production, we could have less meat perhaps, but better meat,” he added. “One that is far more sustainable in the way it’s produced.”</p>
                <h3><b>Plant-based savior?</b></h3>
                <p>It is unclear whether our diets will eventually exclude meat altogether, and be heavily reliant on plant-based produce; the answer may lie somewhere in the middle. For his part, De Schutter offered a note of caution when it came to alternative options.</p>
                <p>“Because of the impacts of livestock production and the amount of land required to produce feedstock for animals, many people promote the idea of artificial meat,” he said.</p>
                <p>“I believe we should be aware that these are extremely energy intensive processes, especially if they are developed on (a) large scale.”</p>
			</div>' );

	INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values
	('Some gig workers are getting $0 in unemployment benefits','Independent contractors and other self-employed workers have been confused and frustrated by a challenging and confusing process of applying for unemployment benefits.','Greg Iacurci','2020-04-24',4,
	'<p>Some gig workers may be scratching their heads at what, for many, has become a roundabout process to get unemployment benefits.</p>
                <p>In yet another wrinkle, California is issuing letters to gig workers who applied for unemployment benefits indicating that they are entitled to $0.</p>
                <p>For some, like Ismael Perez, who made about $60,000 last year as a full-time Uber and Lyft driver, the letter was confusing.</p>
                <p>“When I got the [unemployment] award letter, all it said was ‘zero’ everywhere,” said Perez, 42, who lives in La Habra Heights, California, a city in Los Angeles County.</p>
                <div class="ArticleMedia">
                    <div class="ArticleMedia_container">
                        <figure class="Image">
                            <img src="imgs/PostID_16.jng" alt="none">
                        </figure>
                    </div>
                </div>
				<div class= col-xs-12>
                <p>The same happened to Dexter Eng, 45, a full-time Uber driver from Campbell, California, in the San Francisco Bay Area. His award statement from the state said he was entitled to $0 in benefits.</p>
                <p>Perez, for his part, was baffled by his letter. “I thought, ‘Is this actually accurate?’” he said.</p>
                <p>The short answer, in many circumstances, is yes.   </p>
                <p>“Receiving a $0 award notice doesn’t necessarily mean someone is ineligible for regular [unemployment insurance] benefits,” California’s Employment Development Department, or EDD, said in an e-mail.</p>
                <p>The situation seems to apply to a broad swath of workers in the state, encompassing full-time gig workers, self-employed individuals, independent contractors and others.</p>
                <p>Such workers living in other states may be experiencing similar confusion, based on their state’s administration of unemployment benefits.</p>
                <p>Self-employed workers, independent contractors and others are <a href="https://www.cnbc.com/2020/04/23/independent-contractors-may-find-less-money-in-unemployment-checks.html">newly eligible to collect unemployment benefits</a> as a result of the $2.2 trillion federal coronavirus relief law enacted last month.</p>
                <p>The federal government is funding unemployment benefits for these newly eligible Americans as part of a new program — called Pandemic Unemployment Assistance — that’s separate from states’ traditional unemployment insurance framework.</p>
                <p>Perhaps counterintuitively, gig workers and other self-employed individuals in many states must apply for a state’s traditional unemployment insurance benefits and be denied in order to be eligible to receive Pandemic Unemployment Assistance, according to employment experts.</p>
                <p>California’s $0 award notices are a way of denying traditional unemployment benefits to workers, according to Bill Sokol, a Bay Area-based labor attorney for Weinberg Roger & Rosenfeld.</p>
                <p>It means the workers didn’t have wages from traditional W-2 employment, which is typically what states use to determine benefits eligibility and size.</p>
                <p>These workers will be eligible to apply for Pandemic Unemployment Assistance on April 28 when applications open online in California, Sokol said.</p>
                </div>
				<div class="ArticleMedia">
                    <div class="ArticleMedia_container">
                        <iframe width=700 height=400 src=https://player.cnbc.com/p/gZWlPC/cnbc_global?playertype=synd&byGuid=7000133026 frameborder=0 scrolling=no allowfullscreen webkitallowfullscreen mozallowfullscreen oallowfullscreen msallowfullscreen ></iframe>
                    </div>
                </div>
				<div class= col-xs-12>
                <p>In California, these workers will be eligible for a minimum $167 a week (for up to 39 weeks) plus an additional $600 a week through July 25.</p>
                <p>In a sign of how many workers are expected to flood the new program, California’s unemployment office said it “will likely rival the size of the regular UI program the EDD already administers.”</p>
                <p>Roughly 26 million Americans filed for <a href="https://www.cnbc.com/2020/04/23/an-unemployment-rate-of-23percent-the-real-jobless-picture-is-coming-together.html">unemployment benefits</a> in the five weeks through April 18, erasing all the jobs created in the decade since the Great Recession.</p>
                <p>Of course, receiving an award letter for $0 doesn’t mean workers will necessarily be eligible to collect unemployment through the new PUA framework.</p>
                <p>Such a letter could apply to workers in different circumstances, according to California’s Employment Development Department.</p>
                <p>It may mean the state needs to verify your identity for the wages reported. If so, the state will mail a request to verify your identity.</p>
				</div>');
	INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values
	('PMorgan tells small business customers to apply with other banks on fear that funds will run out',
	'JPMorgan Chase is warning some customers that even if fresh funds for the federal small business relief program are approved, the money won’t last and they might be better off applying elsewhere. JPMorgan on late Wednesday e','Hugh Son','2020-04-23',4,
	'<p>JPMorgan Chase is warning some customers that even if fresh funds for the federal small business relief program are approved, the money won’t last and they might be better off applying elsewhere.</p>
                <p>JPMorgan on late Wednesday emailed thousands of customers who have applied to the Paycheck Protection Program to say that while Congress is headed towards replenishing the effort, the bank is concerned “that funds could run out again quickly,” according to a copy obtained by CNBC.</p>
                <div class="ArticleMedia">
                    <div class="ArticleMedia_container">
                        <figure class="Image">
                            <img src="imgs/PostID_17.jpeg" alt="none">
                        </figure>
                        <figcaption>
                            <div class="Image_caption"><h4>A pedestrian wearing a protective mask stands outside a JPMorgan Chase & Co. bank branch in New York, U.S., on Friday, April 10, 2020.</h4></div>
                            <div class="Image_caption "><h6>Mark Kauzlarich | Bloomberg</h6></div>
                        </figcaption>
                    </div>
                </div>
                <p>The bank, which has been inundated with requests for more than $40 billion in loans since April 3, has placed customers in one of four categories indicating the progress of applications. Those furthest back in line are in Stage 1, and they received the starkest language:</p>
                <p>“Your application is still in Stage 1, with an extremely large volume of applications ahead yours,”  the bank said. “We wanted to give you this information, so that you can decide if you would like to try applying with another lender.”</p>
                <p>Small business customers have complained that banks, including JPMorgan, have been slow to process applications for a program that Treasury Secretary Steve Mnuchin said would result in same-day funding of loans. The furor grew after the initial $350 billion earmarked for PPP was quickly depleted and it was revealed that bigger clients, including publicly traded companies with access to capital markets, had greater success in securing loans.</p>
                <p>Even before the second round of $310 billion in PPP funding is approved by lawmakers, which is expected to happen Thursday, industry experts have said the funding could last mere days. Banks have been building an ever-growing backlog of completed applications that can be sent through the Small Business Administration’s loan portal when the program reopens.</p>
                <p>Still, business owners may face long odds if they apply at other banks, because many lenders have prioritized their own customers and new applicants would be at the end of the line. There is no guarantee that lawmakers will approve more money for the program after the second round.</p>
                <p>Last week, JPMorgan said that it had $26 billion worth of loans from hundreds of thousands of customers that needed to be funded. </p>');


	INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values
	('Coronavirus offers Manchester Uniteds Glazer family a huge opportunity','The coronavirus pandemic has ravaged football’s finances brutally, and the worldwide implications on other economies could cause upset amongst the Glazers, or offer them a huge opportunity.','Alexander Netherton','2020-04-26',10,
	'<p>The coronavirus pandemic has ravaged football’s finances brutally, and the worldwide implications on other economies could cause upset amongst the Glazers, or offer them a huge opportunity.</p>
                <p>United’s current owners, before the spread of the virus, were believed to have been split 50-50 between wanting to sell the club if an appropriate offer came in, while Joel and Avi - at least - wanted to maintain control of the club.</p>
                <div class="ArticleMedia">
                    <div class="ArticleMedia_container">
                        <figure class="Image">
                            <img src="imgs/PostID_p01.jpg" alt="none">
                        </figure>
                        <figcaption>
                            <div class="Image_caption"><h5>Manchester United co-chairman Avram Glazer (right) pictured at a match at Old Trafford</h5></div>
                            <div class="Image_caption "><h6>Source: PA Sport</h6></div>
                        </figcaption>
                    </div>
                </div>
                <div class="col-xs-12">
                <p>That tension might have explained the stop-start nature of the club’s management. On the one hand, they would throw out £85 million for Harry Maguire, £45 million for Aaron Wan-Bissaka and £15 million on Daniel James in the summer, and suddenly rush to secure Bruno Fernandes in the winter transfer window when it looked like their position in the top half of the league was under threat.</p>
                <p>But on the other, they would leave Jose Mourinho baffled as his reward for second place was Diogo Dalot, Lee Grant and Fred.</p>
                <p>A lack of long term strategy might also have been betrayed out by the upkeep of Old Trafford. A string of journalists complained about the poor wifi provision to those in attendance on matchday. There were leaks in some parts of the roof, and the ground has an altogether more ‘classic’ look to it compared to the modern stadia used by Marseille, Tottenham Hotspur and West Ham. The size of the stadium means it remains one of the biggest in the world, but it is unable to properly accommodate supporters with disabilities, as an example of its problems. It does not need to be overhauled, but its appearance does not match the club reputation.</p>
                <p>Old Trafford, like United, was ready for new owners. There was a palpable lack of ambition and of direction since Ed Woodward abandoned his own Galactico strategy. Instead, the club moved from one mistake to the next, each trying to correct the past.</p>
                </div>
                <div class="ArticleMedia col-xs-12">
                    <div class="ArticleMedia_container col-xs-12">
                        <iframe src="https://www.eurosport.co.uk/football/football-transfer-news-juventus-prepared-to-offer-several-players-for-arthur-euro-papers_vid1311516/embed-video.shtml" width="701.79" height="394" allowfullscreen frameborder=0></iframe>
                    </div>
                </div>
                <div class="col-xs-12">
                    <p>Saudi Arabian state owners would of course have been a miserable experience due to their wretched human rights abuses, but they presumably would have been more ambitious regarding on-the-pitch achievements.</p>
                    <p>That no longer looks like a concern for either the fans, or a get-out plan for reluctant owners. Newcastle United appear to be selling to Saudi Arabia and Amanda Staveley, and unless the Glazers are willing to sell at a distressed price - which they don’t need to - there are few suitors liquid or brave enough to swoop in to buy the club now. However, coronavirus has given the family a rare chance to take advantage of their competition, should they wish to take the lead.</p>
                    <div class="ArticleMedia">
                        <div class="ArticleMedia_container">
                            <figure class="Image">
                                <img src="imgs/PostID_18.jpg" alt="none">
                            </figure>
                            <figcaption>
                                <div class="Image_caption"><h5>Matt Richie</h5></div>
                                <div class="Image_caption "><h6>Source: Getty Images</h6></div>
                            </figcaption>
                        </div>
                    </div>
                    <p>United have around $200 million in a revolver facility - a business overdraft, essentially - that holds just a 2% interest rate. Their next debt maturity is in 2027, at which point if United cannot roll that over or repay it, it will mean the rest of the world has dropped into a cocked hat of ruin, so is largely not a concern for now. What it means is that other clubs will struggle for credit, while United already have it.</p>
                    <p>Given Manchester City’s troubles with UEFA and an upcoming European ban, it means that United look increasingly likely to salvage a Champions League spot next season. That broadcast money is handy, but perhaps more importantly it means that United’s sponsorship deals avoid an obligatory cut for their lack of European involvement. The club have always been relatively financially strong, but it now looks as if their competition are going to be hit far harder, beyond just local rivals City.</p>
                    <p>Liverpool are well run, of course, but John Henry runs a tight ship, as proven by their initial uptake of the government furlough scheme. Stan Kroenke’s pursuit of pay cuts at Arsenal suggests they too will hunker down as best they can. Chelsea are organised and disciplined now, without the largesse of Roman Abramovich to help them dominate. Across the continent, Barcelona are in potentially dire straits. This means that the Glazers can strike out to their advantage.</p>
                    <div class="ArticleMedia">
                        <div class="ArticleMedia_container">
                            <figure class="Image">
                                <img src="imgs/PostID_18_1.jpg" alt="none">
                            </figure>
                            <figcaption>
                                <div class="Image_caption"><h5>Jadon Sancho with Borussia Dortmund</h5></div>
                                <div class="Image_caption "><h6>Source: Getty Images</h6></div>
                            </figcaption>
                        </div>
                    </div>
                    <p>While others might withdraw from signing Jadon Sancho, Jack Grealish or James Maddison, perhaps only Real Madrid have the confidence in their transfer strategy for the next one or two transfer windows. United will need more than just another attacking midfielder, but tying Paul Pogba down to a new contract, with Juventus unlikely to splash out during Italy’s desperate time, he could even be re-energised by a successful team around him.</p>
                    <p>It is not simple, and there are other transfers needed and problems to negotiate, but the Glazers are now stuck with United whether they like it or not. Thanks to the horrors of coronavirus, they now have a chance to turn the situation to their advantage.</p>
                </div>');


INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values
	('Pardew rubbishes ADO Den Haag bonus payment claims','ADO Den Haag manager Alan Pardew has denied reports stating he will receive a bonus for avoiding relegation after the Dutch season was terminated this week because of the COVID-19 pandemic.','Martyn Herman','2020-04-26',10,
	'<p>(Reuters) - ADO Den Haag manager Alan Pardew has denied reports stating he will receive a bonus for avoiding relegation after the Dutch season was terminated this week because of the COVID-19 pandemic.</p>
                                            <div class="ArticleMedia">
                                                <div class="ArticleMedia_container">
                                                    <figure class="Image">
                                                        <img src="imgs/PostID_p02.jpg" width="803" alt="none">
                                                    </figure>
                                                    <figcaption>
                                                        <div class="Image_caption"><h5>Soccer Football - Premier League - West Bromwich Albion vs Burnley - The Hawthorns,</h5></div>
                                                            <div class="Image_caption"><h6>SOURCE: Reuters/Ed Syke</h6></div>
                                                    </figcaption>
                                                </div>
                                            </div>
                                            <div class="col-xs-12">
                                                <p>The decision to scrap the season meant ADO Den Haag, who were second from bottom in the table, seven points from the safety zone, will survive, having looked like going down.</p>
                                                <p>One British newspaper reported former West Ham United, Newcastle United, Southampton and Crystal Palace boss Pardew would receive a 100,000 pounds bonus payment.</p>
                                                <p>In a statement on the club’s website, however, the 58-year-old Pardew said: “If I was formally entitled to an amount, I would never want to receive it. In this difficult period, I would always return any bonus to the club, which will certainly find a good destination for it.”</p>
                                                <p>Pardew said he wanted the money given to Den Haag’s non-playing staff or donated to the Dutch health service.</p>
                                                <p>“I hope this clears up any misunderstandings caused by press reports,” he added.</p>
                                                <p>Pardew was appointed as manager of the Dutch minnows in December tasked with saving them from relegation. Yet with the relegation battle and the title fight being scrapped, the English coach can be said to have succeeded.</p>
                                                <p>Although he admitted: “Of course there is relief, but modesty is in order. I had the belief that we could accomplish our mission, we were not in good shape and we will never know if we would have succeeded.</p>
                                                <p>“We count our blessings and understand the frustrations at SC Cambuur and De Graafschap.”</p>
                                                <p>SC Cambur and De Graafschap were both set to gain promotion to the top flight from the Dutch second tier.</p>
                                            </div>');

INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values
	('Lame duck Neville needs to launch new era of Lionesses success','Outgoing Lionesses manager Phil Neville has 15 months in which to help select his replacement. Carrie Dunn says that the last two years have ended in real disappointment - and whoever takes over needs to deliver success.','Carrie Dunn','2020-04-26',
	10,'<p><b>Outgoing Lionesses manager Phil Neville has 15 months in which to help select his replacement. Carrie Dunn says that the last two years have ended in real disappointment - and whoever takes over needs to deliver success.</b></p>
                                            <div class="ArticleMedia">
                                                <div class="ArticleMedia_container">
                                                    <figure class="Image">
                                                        <img src="imgs/PostID_p03.jpg" width="803" alt="none">
                                                    </figure>
                                                    <figcaption>
                                                        <div class="Image_caption"><h5>Soccer Football - Premier League - West Bromwich Albion vs Burnley - The Hawthorns,</h5></div>
                                                            <div class="Image_caption"><h6>SOURCE: Reuters/Ed Syke</h6></div>
                                                    </figcaption>
                                                </div>
                                            </div>
                                            <div class="col-xs-12">
                                                <p>Outgoing Lionesses manager Phil Neville has 15 months in which to help select his replacement. Carrie Dunn says that the last two years have ended in real disappointment - and whoever takes over needs to deliver success.</p>
                                                <p>Hands were basically forced all round - his contract was initially due to expire in the summer of 2021, after the 2020 Olympic Games and after a home European Championships. The coronavirus pandemic now means that both competitions will be held a year later and so Neville will not lead his England side in another major tournament - and its possible if not probable he wont be coaching Team GB through the Olympics either, although there has been no decision on that one way or the other as yet.</p>
                                                <p>So for the next 15 months, England essentially have a lame duck coach. He might be dealing with the same admin as usual, and working with his staff to put together training packages for the squad during the footballing hiatus; but by the time England kick a ball in anger again it will be a matter of a handful of weeks until he leaves the job. Whatever philosophy and game plans he might have will be rendered irrelevant when a new manager takes over.</p>
                                                <p>Or perhaps not. The FA have been clear that part of the reason for the early announcement of his departure is so that he can be part of the selection committee for his replacement. This is a fairly decent and common principle in many HR departments; the person actually doing the job obviously has an insight into who will be best suited to fill their shoes.</p></div>
                                                <div class="ArticleMedia col-xs-12">
                                                    <div class="ArticleMedia_container col-xs-12">
                                                        <iframe src="https://video.eurosport.com/football/why-phil-neville-had-to-go-and-who-should-replace-him_vid1311364/embed-video.shtml" width="701.79" height="394" allowfullscreen frameborder=0></iframe>
                                                    </div>
                                                </div>
                                            <div class="col-xs-12">
                                                <p>Except - and whisper this, for it goes against much of the perceived wisdom - Nevilles time as England boss has been something of a disappointment. With all the financial and staff support anyone could wish for, the Lionesses still only made the semi-finals of the Womens World Cup last year - finishing fourth, as opposed to the third place theyd achieved in 2015. (Cynics and those with long memories might wonder what Hope Powell - England manager from 1998 to 2013 - might have done given similar resources.) Since the summer of 2019, England have lost seven of their last 11 matches, and failed to defend their SheBelieves Cup title in March. When he took over, the Lionesses were the top-ranked side in Europe; now they are third.</p>
                                                <div class="ArticleMedia">
                                                    <div class="ArticleMedia_container">
                                                        <figure class="Image">
                                                            <img src="imgs/PostID_p03_1.jpg" width="803" alt="none">
                                                        </figure>
                                                        <figcaption>
                                                            <div class="Image_caption"><h5>Steph Houghton of England misses a penalty during the 2019 FIFA Womens World Cup France</h5></div>
                                                            <div class="Image_caption"><h6>SOURCE: Getty Images</h6></div>
                                                        </figcaption>
                                                    </div>
                                                </div>
                                                <p>Of course, Neville had to hit the ground running. He stepped into a vacancy that had been left unfilled for several months after Mark Sampsons hurried and controversial departure in the autumn of 2017; it seemed that nobody wanted to coach a team who had won a World Cup bronze medal and just reached the semi-finals of the European Championship.
                                                    <a href="https://www.eurosport.com/football/new-coach-phil-neville-needs-luck-and-help-with-the-lionesses_sto6495663/story.shtml">There were four names that observers discussed repeatedly then</a> - Laura Harvey, Emma Hayes, Nick Cushing and John Herdman - and all four ruled themselves out swiftly.</p>
                                                <p>Might one of them feel that this could be their time, a few years on? Harvey is now working in the US Soccer junior set-up, Cushing has just left Manchester City to take a job in MLS with New York City, and Herdman oversees all of Canadian mens international football. Hayes is the only one still in England, but she has been quick to point out how very happy she is at Chelsea.</p>
                                                <p>Neville was an unexpected choice in 2018, but he knew how the FA operated, and he was keen on the role - that was apparently enough. It might have to be the same for the person who follows him.</p>
                                                <p>Although Neville had the UEFA Pro Licence the FA deemed obligatory for anyone wanting to take on the job, he didnot have any experience in a head coach role - and he certainly didnt have any experience in the women game. He worked hard to get to know the players available to him and the way the game operated. He drew on the backing of his support staffs knowledge, and had the good fortune to be helped out by former captain Casey Stoney - now the Manchester United manager - for his first few months in situ.</p>
                                                <p>He started to find his feet as head coach, and showed himself to be somewhat of a micro-manager, talking happily about wanting to know everything that was going on in the lives of his players, setting up group WhatsApp chats with each of them to that end. He revealed early on in his tenure:</p>
                                                <p>In terms of the actual coaching, the bulk of that seemed to be left to his new assistant Bev Priestman - certainly that seemed to be the case to this observer in France last summer.</p>
                                                <p>Yet some of his decision-making has been genuinely puzzling - giving captain Steph Houghton penalty-taking responsibility in the World Cup semi-final against the USA,
                                                    <a href="https://www.eurosport.com/football/women-s-world-cup/2019/women-s-world-cup-england-manager-phil-neville-made-massive-oversight-in-ignoring-karen-carney_sto7358117/story.shtml">failing to use genuine game-changers</a> such as Karen Carney, and dismissing the third-place play-off as "a nonsense game" (which he later retracted - but one has to wonder how much of his scorn for the match was evident prior to taking on Sweden, and how that affected his teams mindset going into and during their 2-1 defeat).</p>
                                                <p>One of his achievements is certainly his willingness to bring young players into the camp - calling up six of the 2018 Under-20 World Cup squad for this years SheBelieves Cup. But that wish to bring through youngsters and give them experience clashed with his expressed wish to defend that silverware - a confidence-sapping third-place finish in a four-team invitational did nobody any real good.</p>
                                                <p>One indisputable fact is that he is to be congratulated for bringing a massive amount of media attention with him; it is to be hoped that some of the journalists who were delighted to cover their old chum in a high-profile role will continue to cover the women game after he is gone.</p>
                                                <p>It is also to be hoped that whoever is the next Lionesses manager will keep benefiting from the sterling support offered to Neville by the FA - and achieves more on the field. He or she will need to deliver that first major trophy, and soon</p>
                                            </div>');

INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values
	('"Just wondering": Roger Federers comments add fuel to ATP-WTA merger debate','"Just wondering ... am I the only one thinking that now is the time for mens and womens tennis to be united and come together as one?"','Peter Bodo ESPN.com Staff Writer','2020-04-23',
	11,'<p>"Just wondering ... am I the only one thinking that now is the time for mens and womens tennis to be united and come together as one?"</p>
                                            <p>It would be a seemingly innocuous statement had it been written by any tennis player or fan with time to contemplate the state of the sport.</p>
                                            <div class="ArticleMedia">
                                                <div class="ArticleMedia_container">
                                                    <figure class="Image">
                                                        <img src="imgs/PostID_p04.jpg" width="803" alt="none">
                                                    </figure>
                                                    <figcaption>
                                                        <div class="Image_caption"><h5>Roger Federer raised the prospect of merging the ATP and WTA, the governing bodies that oversee the mens and womens tennis tours.</h5></div>
                                                            <div class="Image_caption"><h6>SOURCE: Cameron Spencer/Getty Images</h6></div>
                                                    </figcaption>
                                                </div>
                                            </div>
                                            <div class="col-xs-12">
                                                <p>It is a nice idea that has been floated more times than anyone can count. But because this time the player was
                                                    <a href="https://www.espn.com/sports/tennis/players/profile?playerId=425">Roger Federer</a>, and the comment was made through the megaphone of Twitter during uncertain times brought on by the
                                                    <a href="https://www.espn.com/espn/story/_/id/28871525/coronavirus-cancellations-reactions-sports">coronavirus pandemic</a>, the comment gained immediate traction. The result was a groundswell of support for the Swiss icons suggestion.</p>
                                                <p>"I agree [about the need to merge], and have been saying so since the early 1970s," tennis legend Billie Jean King tweeted. "One voice, women and men together, has long been my vision for tennis. The WTA on its own was always Plan B."</p>
                                                <p><a href="https://www.espn.com/sports/tennis/players/profile?playerId=261">Rafael Nadal</a> was among the uniformly supportive male players and tennis commentators who chimed in: "Hey @rogerfederer as you know per our discussions I completely agree that it would be great to get out of this world crisis with the union of mens and women tennis in one only organisation."</p>
                                                <p>Clearly, the social distancing that the pandemic has required, along with the shutdown of economic activity, has led people to step back and take a deep breath, viewing their respective professions with fresh eyes.</p>
                                                <p>"When things are going very well, no one wants to give up anything in any business. You cannot get anyone to focus on change," Chris Kermode, executive chairman and president of the ATP from 2014 to 2019, told ESPN.com. "You tend to get people focusing on different ideas and potential changes when there is a crisis. So necessity drives a lot of these decisions."</p>
                                                <p>The crisis is evident: Professional tennis came to a standstill on the eve of the Indian Wells combined event, and no ATP or WTA tournaments will be played until at least July 13, the week after Wimbledon would have ended, had it not been canceled. The economic impact of the lockdown has been profound, especially for players ranked outside the top 200.</p>
                                            </div>
                                                <div class="ArticleMedia">
                                                    <div class="ArticleMedia_container">
                                                        <figure class="Image">
                                                            <img src="imgs/PostID_p04_1.jpg" width="803" alt="none">
                                                        </figure>
                                                        <figcaption>
                                                            <div class="Image_caption"><h5>Defending French Open champions Rafael Nadal and Simona Halep were among the tennis players who supported Roger Federer call to join the ATP and WTA tours</h5></div>
                                                            <div class="Image_caption"><h6>SOURCE: Bertrand Rindoff Petroff/Getty Images</h6></div>
                                                        </figcaption>
                                                    </div>
                                                </div>
                                            <div class="col-xs-12">
                                                <p>Administrators for both the ATP and WTA were developing a new interest in bridging the divide between the tours in recent months, even before the economic crisis brought on by the coronavirus pandemic.</p>
                                                <p>At the Australian Open in January, WTA president Micky Lawler met with Andrea Gaudenzi, Kermode successor, as well as Tennis Australia officials, to discuss ways to create a closer working relationship between the tours. The top item on the agenda: creating a womens companion event to the season-opening ATP Cup, with as many points of commonality as possible.</p>
                                                <p>"We are talking about a WTA Cup to launch in 2022," Lawler wrote to ESPN.com in an email at the time. "It is in the works."</p>
                                                <p><a href="https://www.espn.com/sports/tennis/players/profile?playerId=1352">Vasek Pospisil</a>, an ATP Player Council representative who has been an outspoken critic of the prize-money structure in tennis and a perceived lack of player power, wrote in response to Federer: "Hey @rogerfederer & @RafaelNadal. Great idea. The ATP has been working on this since they brought the vision forward to us in January. "</p>
                                                <p>The main stumbling block to uniting the tours under one umbrella has been the reluctance of the ATP Tour -- historically more profitable -- to underwrite its own resources into the WTA Tour.</p>
                                                <p>Also, rank-and-file ATP players traditionally have been lukewarm to the idea of merged tours. Count
                                                    <a href="https://www.espn.com/sports/tennis/players/profile?playerId=1984">Nick Kyrgios</a> as a skeptic not entirely bewitched by Federers suggestion. "Did anyone ask the majority of the ATP [players] what they think about merging with the WTA and how it is good for us?"</p>
                                                <p>Another obstacle to realignment plans is the governance structure in tennis. The sport is more or less run by committee, with four different governing bodies and seven stakeholders with skin in the game. The governing bodies: the ATP, WTA, ITF (International Tennis Federation) and the Grand Slam Board (a panel that represents the four Grand Slam events).</p>
                                                <p>"If it is ever advantageous for both sides to merge, it will happen," said Kermode, who more than doubled ATP prize money and presided over soaring attendance figures during his five-year tenure. "But until that point, it wont. If one tour is doing better than the other, why do it? Both must have an incentive to merge."</p>
                                                <p>In a follow-up tweet, Federer said he was not advocating for "merging competition on the court," but for merging the ATP and WTA. He wrote, "Its too confusing for the fans when there are different ranking systems, different logos, different websites, different tournament categories."</p>
                                                <p>Some disparities between the tours and how they operate could be overcome somewhat easily. A shared logo, website, ranking system and databank would be welcomed by most players, as would a common, subscription-based broadcast partner for events of lesser interest to major networks.</p>
                                                <p>A closer partnership might also open the door to more combined events, not all of them at the highest level like Indian Wells. But that could get tricky. It could mean reducing jobs by as much as 50% for both tours, or creating events with larger draws and more days of play. Tournaments currently on the calendar would have to be culled, but they all have stakeholder rights.</p>
                                                <p>Other issues, such as sponsorship deals, broadcast contracts and prize-money allocations, would present more formidable challenges. "I think the aim would be to work more closely together," Kermode said. "One organization certainly wont happen in the short term."</p>
                                                <p>The current crisis might give the tours greater incentive to move forward, and it might enhance the spirit of cooperation. Its also difficult to see what concrete steps can be taken in the near future, as the tours are ironing out the details of a multimillion dollar relief package aimed at providing financial support to lower-ranked players on both tours.</p>
                                                pIt is impossible to say what the climate will be like when the tours resume, and the sense of shared hardship and the need for mutual support begins to fade. It is unlikely that a merger will be priority as the tours try to make up for lost ground. A merger that radically transforms the ingrained structure of the professional game would be an extremely difficult, complex and costly undertaking even at the best of times.
                                            </div>');

INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values
	('A big ask for Murray to win a Grand Slam - Rusedski',
	'The extended lockdown of tennis will help Andy Murrays return from injury but it will be "a big ask" for him to add to his three Grand Slam titles, according to former British number one Greg Rusedski.','Reuters','2020-04-27',11,
	'<p>The extended lockdown of tennis will help <a href="https://www.espn.com/sports/tennis/players/profile?playerId=235">Andy Murray</a> return from injury but it will be "a big ask" for him to add to his three Grand Slam titles, according to former British number one
                                                <a href="https://www.espn.com/sports/tennis/players/profile?playerId=691">Greg Rusedski</a>.</p>
                                            <div class="ArticleMedia">
                                                <div class="ArticleMedia_container">
                                                    <figure class="Image">
                                                        <img src="imgs/PostID_p05.jpg" width="803" alt="none">
                                                    </figure>
                                                    <figcaption>
                                                        <div class="Image_caption"><h5>Andy Murray has struggled to regain his form since early 2019 when he underwent hip surgery</h5></div>
                                                            <div class="Image_caption"><h6>SOURCE: AP Photo/Francisco Seco</h6></div>
                                                    </figcaption>
                                                </div>
                                            </div>
                                            <div class="col-xs-12">
                                                <p>Murray underwent hip re-surfacing surgery at the start of 2019 and resumed playing doubles in June before returning to singles action in August.</p>
                                                <p>He did not compete at the U.S. Open but won the title in Antwerp in October -- his first on the ATP Tour for two years.</p>
                                                <p>Murray, 32, has not played a competitive match this year because of bone bruising near the site of his surgery.</p>
                                                <p>With tennis unlikely to return until at least late July because of the coronavirus pandemic, the Scot has plenty of time to get himself 100% fit for when play resumes.</p>
                                                <p>Yet Rusedski says it will be tough for twice Wimbledon champion Murray to regain his former place in the so-called big four of mens tennis alongside
                                                    <a href="https://www.espn.com/sports/tennis/players/profile?playerId=425"></a>Roger Federer, Rafa Nadal and
                                                    <a href="http://www.espn.com/tennis/player/_/id/296/novak-djokovic">Novak Djokovic</a>.</p>
                                                <p>"The good news for him is that hehad more of a rest at this point," Rusedski told Sky Sports on Sunday. "Hopefully his body comes back, but to challenge week in week out with Nadal, Federer, Djokovic, [Stefanos] Tsitsipas is going to be hard.</p>
                                                <p>"Can he win matches? Can he possibly win a Tour event? Yes, he can do so. But to win Slams, that is three out of five sets, seven matches, that is a little bit difficult. It is possible he can get to a quarterfinal, fourth round, but to go all the way with the surgeries he is had, that is a big ask.</p>
                                                <p>"But I hope he proves me wrong, like he is done on several occasions."

                                                    Former world number one Murray is now ranked at 129. Next week he will swap his racked for a controller as he plays in the virtual Madrid Open, featuring 32 of the world best players including Nadal and
                                                    <a href="http://www.espn.com/tennis/player/_/id/1852/dominic-thiem">Dominic Thiem</a>.</p>
                                            </div>');
											
	INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values
	('How the coronavirus pandemic forced sudden shutdown, then uncertainty for ATP, WTA tours',
	'It was around 4:30 p.m. local time on March 8 when Petra Kvitova landed in Los Angeles',
	'Simon Cambers','2020-05-12',11,'<p>It was around 4:30 p.m. local time on March 8 when Petra Kvitova landed in Los Angeles. The two-time Wimbledon champion collected her bags and headed to a car, bound for
                                                <a href="https://www.espn.com/sports/tennis/players/profile?playerId=928">Indian Wells</a> and the first big North American hard-court event of 2020, the BNP Paribas Open in Indian Wells.</p>
                                                <a href="https://www.espn.com/sports/tennis/players/profile?playerId=691">Greg Rusedski</a>.</p>
                                            <div class="ArticleMedia">
                                                <div class="ArticleMedia_container">
                                                    <figure class="Image">
                                                        <img src="imgs/PostID_23.jpg" width="803" alt="none">
                                                    </figure>
                                                    <figcaption>
                                                        <div class="Image_caption"><h5>The announcement on April 1 that Wimbledon would not be played in 2020, while well communicated and thought out, still came as a shock to many.</h5></div>
                                                            <div class="Image_caption"><h6>SOURCE: Alex Davidson/Getty Images</h6></div>
                                                    </figcaption>
                                                </div>
                                            </div>
                                            <div class="col-xs-12">
                                                <p>Kvitova was about an hour into the three-hour journey to Palm Springs, California, when she received a message from her agent, Marijn Bal, and her press agent, Katie Spellman, telling her that Indian Wells had been canceled because of COVID-19.</p>
                                                <p>"It was very weird," Kvitova told ESPN.com via email.</p>
                                                <p>Spellman, who also manages <a href="http://www.espn.com/tennis/player/_/id/936/simona-halep">Simona Halep</a>, had arrived a few hours earlier and, soon after, the rumors started to fly.</p>
                                                <p>"There were already rumblings around site about it potentially being canceled, mainly because someone had tested positive for COVID-19 in the Coachella Valley that day," Spellman told ESPN.com. "Suddenly it became much more real for everyone on site; the whole tournament site was set up, everybody was arriving, lots of players were there. This news was kind of breaking all around us.</p>
                                                <p>"There was a huge meeting of everybody on site, including players, happening downstairs. We saw everybody come out of that meeting and then the news spread very quickly that it had been canceled. It felt like a huge shock at that point, because it was the first tournament to be canceled and the players were all on site and, yes, everybody was a little bit miffed that we would gone all that way to be there, not realizing at the time how serious the situation was very quickly going to become."</p>
                                                <p>The speed of the decision took many by surprise. A few days before, the tournament had announced that it would be taking a number of special measures in light of the developing pandemic. Ball boys and girls would wear gloves and not handle players towels, while the players were advised not to take pens from fans for autographs.</p>
                                                <p>Many players found out on social media and though they understood the decision, they were not too impressed by the manner in which they were told.</p>
                                                <p>"It would be nice if [the] ATP Tour communicates a bit better to the players about a suspension of such a tournament when we are all here," Argentinian Diego Schwartzman said via Twitter. "Finding out about it on social networks or WhatsApp is quite loose."</p>
                                                <p>Halep had pulled out of the event with a foot injury, so she was home in Romania. But Kvitova and many others were left to wait to find out whether the Miami Open, the next stop on tour, would go ahead or suffer the same fate. The Indian Wells Tennis Garden quickly went into lockdown, with journalists and photographers not allowed through the gates, and players and coaches were left in limbo, wondering whether to stay or go home immediately.</p>
                                                <p>"Even if there was no tournament, we still had a lot of marketing shoots and everything to do, plus we had to wait and see what would happen with Miami," Kvitova said.</p>
                                                <p>For a while, it seemed that Miami might sneak in before the cull. Discussions continued behind the scenes over the next few days, but on March 11 the decision by the World Health Organization that COVID-19 was a pandemic sped things along.</p>
                                                <p>On March 12, even while The Players Championship golf event was beginning at nearby Sawgrass the same day, the ATP announced that it was suspending its tour for six weeks. Miami, Houston, Marrakech, Monte Carlo, Barcelona and Budapest were all canceled.</p>
                                            </div>
                                            <div class="ArticleMedia">
                                                <div class="ArticleMedia_container">
                                                    <figure class="Image">
                                                        <img src="imgs/PostID_23_1.jpg" width="803" alt="none">
                                                    </figure>
                                                    <figcaption>
                                                        <div class="Image_caption"><h5>Petra Kvitova was on her way to Indian Wells when the tournament was canceled on March 8. </h5></div>
                                                        <div class="Image_caption"><h6>SOURCE: KARIM JAAFAR/AFP via Getty Images</h6></div>
                                                    </figcaption>
                                                </div>
                                            </div>
                                            <p>Kvitova had been doing promotional shoots for the WTA, Wilson and Nike, among others, in Indian Wells, but as soon as she heard the Miami news, she arranged to fly home.</p>
                                            <p>"In those few short days there, everything changed and the world locked down pretty quickly," she said. "We had to rush to get home and had to drive home from Vienna as our connection into Prague got canceled."</p>
                                            <p>As players scrambled for flights home, officials were holding talks behind the scenes.</p>
                                            <p>"(Indian Wells) was a huge decision and we did realize the magnitude of it and how it would likely lead to other decisions," WTA CEO Steve Simon told ESPN via email. "The tournament did everything they could and had all the conversations to see if the event could happen, but in the end it was deemed the best decision was for it to not be held. It turned out to clearly be the right decision.</p>
                                            <p>"A focused and concerted effort around communication and education then followed, with all of our members. The world changed overnight with respect to the decision that was made and we had to communicate as effectively and quickly as we could to our players, tournaments, partners, staff and fans."</p>
                                            <p>The new ATP chief, Andrea Gaudenzi, said players and administrators had mulled over the idea of playing the event.</p>
                                            <p>"It was something we discussed in Indian Wells because the players were already on site (but) we couldn not guarantee the safety of people on site, not only players but ball boys, linesmen, physios, everyone who was there," Gaudenzi told ATP Tennis Radio.</p>
                                            <p>While the ATP and WTA discussed their plans, events moved forward with pace, most notably with the shocking announcement from Roland Garros that the French Open was moving this years event from the traditional May-June dates to Sept. 20 to Oct. 4.</p>
                                            <p>"We agree that it was great coordination and compliments to the team at Wimbledon, the ATP, ITF and other Grand Slams on working together as we should. I believe we all saw the positive results that came from this well-coordinated announcement."</p>
                                            <div class="ArticleMedia">
                                                <div class="ArticleMedia_container">
                                                    <figure class="Image">
                                                        <img src="imgs/PostID_23_2.jpg" width="803" alt="none">
                                                    </figure>
                                                    <figcaption>
                                                        <div class="Image_caption"><h5>The All England Club sent defending champion Simona Halep an email after canceling Wimbledon, explaining the decision.</h5></div>
                                                        <div class="Image_caption"><h6>SOURCE: WILL OLIVER/EPA-EFE/Shutterstock</h6></div>
                                                    </figcaption>
                                                </div>
                                            </div>
                                            <p>Others were also given a heads-up. "We had a bit more warning that the Wimbledon announcement was coming," Halep, the defending champion, said. "The club wrote me a nice email afterwards and explained the reason behind the decision."</p>
                                            <p>The All England Club took pains to let all of its stakeholders know what was coming before the announcement was made, at 4 p.m. that day.</p>
                                            <p>Canceling Wimbledon also meant canceling the entire grass-court season. On April 11, Tennis Canada announced that the Rogers Cup men and women events, which should have been held in August, would be held over to 2021.</p>
                                            <p>The US Open is still scheduled to begin on Aug. 24 and the French Open soon after, but with so much uncertainty about the extent of the pandemic, nothing is certain.</p>
                                            <p>Kvitova, locked down in the Czech Republic, is not thinking too far ahead.</p>
                                            <p>"(When Wimbledon canceled), that was a sad day for sure," she said. "Everyone knows Wimbledon is very special to me. It was the tournament that motivated me to come back to tennis a few years ago, and it is always a highlight of the year for me. So for sure it was disappointing to have it confirmed. After that, with the whole grass court season going, I have found it easier just to not think about when we might be back playing tournaments and take it day by day instead."</p>
                                            <p>Though US Open officials said this week that playing with no fans is "unlikely," talk of resuming the tours continues. Players, including Kvitova and Halep and most on the men tour, would rather not play without fans, but, according to Gaudenzi, nothing is ruled out.</p>
                                            <p>"I think it is extremely difficult for tennis because these people travel from all over the globe, they are not locals, and it will be extremely challenging," he said. "We are exploring our options, including closed gates. But safety and health is the priority. If we can play with closed gates, guaranteeing everyone health and safety, then we will do it. If not, I think it is best to probably wait."</p>');

INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values
('Five surfers die in the Netherlands after huge layer of sea foam hampers rescue','Five surfers who knew the sea "like the back of their hand" have died after a huge layer of foam in the water hampered efforts to rescue them.The group ran into difficulties at the northern harbor head of the Scheveningen district of The Hague in the Netherlands on Monday evening.',
'Lianne Kolirin','2020-05-13',6,'<div class="ArticleMedia">
                                                <div class="ArticleMedia_container">
                                                    <figure class="Image">
                                                        <img src="imgs/PostID_24.jpg" width="803" alt="none">
                                                    </figure>
                                                    <figcaption>
                                                        <div class="Image_caption"><h5>Emergency workers searched through the foam for the missing surfers.</h5></div>
                                                    </figcaption>
                                                </div>
                                            </div>
                                            <div class="col-xs-12">
                                                <p>Five surfers who knew the sea "like the back of their hand" have died after a huge layer of foam in the water hampered efforts to rescue them.
                                                    The group ran into difficulties at the northern harbor head of the Scheveningen district of The Hague in the Netherlands on Monday evening.</p>
                                                <p>Despite a large-scale rescue operation, only one member of the group could be saved, according to KNRM, the Royal Netherlands Sea Rescue Organization.</p>
                                                <div class="ArticleMedia">
                                                    <div class="ArticleMedia_container">
                                                        <figure class="Image">
                                                            <img src="imgs/PostID_24_1.jpg" width="803" alt="none">
                                                        </figure>
                                                        <figcaption>
                                                            <div class="Image_caption"><h5>Relatives, friends and the surf community gather on The Hague Beach to mourn the loss of five surfers.</h5></div>
                                                        </figcaption>
                                                    </div>
                                                </div>
                                                <p>A statement issued online by the rescue service said its efforts were "complicated by the man-sized foam layer at sea and on the beach," while "strong winds and high waves also made it very difficult to provide relief from the harbor pier."</p>
                                                <p>Police, firefighters, the coastguard, units from KNRM and other emergency workers were all involved in the rescue operation, in which a helicopter was used to try to blow away the foam and improve visibility.</p>
                                                <p>Two of the bodies were recovered on Monday and another two the following morning, according to the KNRM post. A fifth body has yet to be recovered. The victims identities have not yet been released.</p>
                                                <p>Investigators are now looking into what caused the sea foam and its possible role in the tragedy.</p>
                                                <p>Johan Remkes, mayor of The Hague, described the events as a "terrible tragedy" involving "young, physically fit, sporty people, who know the sea like the back of their hand."</p>
                                                <p>n a statement published on the citys website, Remkes offered his condolences and said: "The heavy grief among people in the Scheveningen community is unfathomable. People here understand better than anybody else that "The sea gives and the sea takes", but the way in which so many young lives ended abruptly and so many families and groups of friends have been affected is incredibly brutal."</p>
                                                <p>The mayor, who witnessed the incident as it happened, said: "How is it possible that such experienced surfers were completely taken by surprise at a spot they knew so well? But also: how is it possible that a drama unfolded at one harbour inlet while at the other harbour inlet, not even 100 metres away, people were still surfing until late in the evening?"</p>
                                                <p>Pledging to investigate the incident, he said: "Today we remember the victims. Tomorrow we will start trying to understand what happened."</p>
                                                <p>The surfers were all "very experienced watermen", according to the Holland Surfing Association, which posted its condolences on Facebook.</p>
                                                <p>"They were robbed due to the exceptional circumstances and fate has struck: 5 of them tragically died," the post said. "We express our sympathy to the relatives and everyone involved. In the surf community in Scheveningen and far beyond there is great defeat, we are in deep mourning for this loss."</p>');

INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values
('The Singapore Model: Advocacy in an Authoritarian State','Singapore has a class of activists who have found ways to advocate within boundaries and avoid punishments.','Low Minmin','2020-02-20',6,
'<p>On November 26 2016, Singaporean activist Jolovan Wham organized an event called “Civil Disobedience and Social Movements” and invited Hong Kong student activist Joshua Wong to participate via a video call.</p>
                                            <p>Wham was later charged with organizing a public assembly without a permit and for refusing to sign a statement he made at the police station. Last February, he was fined SG$3,200 (US$2,300) but chose to serve 16 days in jail instead.</p>
                                            <div class="ArticleMedia">
                                                <div class="ArticleMedia_container">
                                                    <figure class="Image">
                                                        <img src="imgs/PostID_25.jpg" width="803" alt="none">
                                                    </figure>
                                                    <figcaption>
                                                        <div class="Image_caption"><h5>A man covers his mouth with a fifty dollar bill at the Speakers Corner in Singapore</h5></div>
                                                        <div class="Image_caption"><h6>SOURCE: AP Photo/Wong Maye-E</h6></div>
                                                    </figcaption>
                                                </div>
                                            </div>
                                            <div class="col-xs-12">
                                                <p>Wham started out as a social worker with an organization that advocates for the rights of migrant workers.</p>
                                                <p>While Wham was contesting his charges in 2017, another youth activist, Yinzhou Cai, has been championing for the welfare of migrant workers in a different way.</p>
                                                <p>Cai grew up in Geylang, a neighborhood known for its red light district.* Growing up, Cai had sex workers and migrant workers for neighbors and befriended them, often through badminton games. Then he realized he could no longer ignore the immense gulf between their disparate social classes.</p>
                                                <p>“For playing badminton in the back alleys, we were raided by the police,” Cai wrote.</p>
                                                <p>Cai watched as his neighborhood became increasingly regulated, such as being designated a liquor control zone, after a riot involving migrant workers some years ago in another part of Singapore resulted in fatalities.</p>
                                                <p>Cai wanted to redefine Singaporeans’ relationships with migrant workers. So he started Geylang Adventures, an initiative that offers tours through the back alleys of his neighborhood, to shine a light on a different side of Geylang and thereby restore humanity to the migrant communities living there. He also founded BackAlley Barbers, which provides free haircuts to migrant workers.</p>
                                                <p>Both Cai and Wham are champions for migrant workers, but their fates could not have been more different. In 2017, while Wham was on trial for his charges, Cai was honored on the national stage with the Singapore Youth Award, for how he has brought “distinction to the nation” through his “resilience, courage, leadership, service and ambition.”</p>
                                                <p>What separates Cai from Wham? And where exactly is the line between acceptable activism and unlawful social movements? In a country where it is illegal to hold public demonstrations without a police permit – except at the designated Speakers Corner in Hong Lim Park – how can bottom-up movements play a part in shaping public opinion and public policy?</p>
                                                <p>Think Singapore and one might bring to mind a developed city-state that is efficient but somewhat authoritarian. Globally, it is often known for its strict legislation. For instance, selling gum is illegal, littering can lead to hefty SG$2,000 fines, and vandals may be caned – as in the oft-cited case of American citizen Michael Fay.</p>
                                                <p>Indeed, Singapore consistently finds itself on the bottom rungs of the Press Freedom Index – last year, it took the 151th spot out of 180 countries – and the authorities are infamous for wielding legal threats against journalists and publications.</p>
                                                <p>Yet, despite its harsh laws, the country is far from a politically stagnant society. Its people have shown a willingness to organize quickly when they feel the pinch, and have managed to prompt the government to respond in their favor. Singapore has its class of activists who have found ways to advocate within boundaries and avoid sanctions.</p>
                                                <p>In September, Singaporean resident Zachary Tan started an online petition to ban electric scooters on pedestrian footpaths after a spate of injuries and fatal accidents. Tan, who had amassed 69,000 signatures in one month, shared his petition with the Land Transport Authority</p>
                                                <p>The next day scores of food delivery riders who use e-scooters to go about their work, showed up at meeting halls across the island objecting to the ban, lamenting the threat to their livelihoods. Their distinctive green uniforms drew widespread media attention.</p>
                                                <div class="ArticleMedia">
                                                    <div class="ArticleMedia_container">
                                                        <figure class="Image">
                                                            <img src="imgs/PostID_25_1.jpg" width="803" alt="none">
                                                        </figure>
                                                        <figcaption>
                                                            <div class="Image_caption"><h5>Supporters of the ruling People’s Action Party celebrate in Singapore, Sept. 12, 2015.</h5></div>
                                                            <div class="Image_caption"><h6>SOURCE: AP Photo/Ng Han Guan</h6></div>
                                                        </figcaption>
                                                    </div>
                                                </div>
                                                <p>In the latter, one complaint prompted action from the authority, while in the former, thousands of signatories on a petition barely moved the needle. On what basis does the government decide when to act according to public pressure? According to Tan, the government has a general policy of not governing by petitions.</p>
                                                <p>“Where societal values and norms are involved where people do not change their views overnight, the government tends to act more cautiously,” he said.</p>
                                                <p>“They recognize that even with big names canvassing for repeal, there is even more resistance to a dramatic change in the status quo. Most religions, especially Christianity and Islam, have relatively clear positions on homosexuality. The thinking is that the majority do not want the law repealed.”</p>
                                                <p>Indeed, the Ready4Repeal movement had sparked a counterpetition that gathered more than twice the number of signatures on the petition for repeal. </p>
                                                <p>Tan believes the government commissions secret polls to gauge public sentiment on certain issues when weighing policy decisions.</p>
                                                <p>“When society remains deeply divided, the government will adopt a wait-and-see approach, preferring a clear majority on the way forward before it does anything,” he said. “It boils down to a basic thing about politics. Political parties seek to win elections; they have to be popular. They have to be able to carry the ground.”</p>
                                                <p>Singapore’s draconian laws around public assembly may seem excessive. Yet its distinctive model appears to work for the country. The state is peaceful despite its diverse racial makeup. Strong rule of law ensures that the workforce never goes on strike and the country runs like clockwork to prevent any disruption to the economy. This trade-off is broadly accepted by the public in exchange for reliable public services, high levels of public safety, continued stability and prosperity, and significantly
                                                    <a href="https://www.edelman.com/sites/g/files/aatuss191/files/2019-02/2019_Edelman_Trust_Barometer_Global_Report_2.pdf">greater trust</a> in institutions than in many other countries, according to the 2019 Edelman Trust Barometer Rankings.</p>
                                                <p>And while Singapore restricts public assembly and the free press, it does have mechanisms that allow public opinion to influence government. For instance, residents can write to the newspapers or directly to ministers and Members of Parliament (MPs), whose email addresses are a matter of public information.</p>
                                                <p>The government also maintains weekly “Meet-the-People” sessions across all constituencies in Singapore, where MPs meet face-to-face with their constituencies to address any concerns they want to raise.</p>');

INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values
('Coronavirus: China’s new army of tough-talking diplomats','"Beijing diplomacy was so subtle and indirect that it largely went over our heads in Washington".','James Landale','2020-05-10',6,
'<p><b>Once upon a time Chinese statecraft was discreet and enigmatic.</b></p>
                                            <p>Henry Kissinger, the former US secretary of state, wrote in his seminal study Diplomacy that "Beijings diplomacy was so subtle and indirect that it largely went over our heads in Washington".</p>
                                            <div class="ArticleMedia">
                                                <div class="ArticleMedia_container">
                                                    <figure class="Image">
                                                        <img src="imgs/PostID_26.jpg" width="803" alt="none">
                                                    </figure>
                                                    <figcaption>
                                                        <div class="Image_caption"><h5>Foreign Ministry Spokesman Lijian Zhao suggested the US had brought coronavirus to China</h5></div>
                                                        <div class="Image_caption"><h6>SOURCE: BBC</h6></div>
                                                    </figcaption>
                                                </div>
                                            </div>
                                            <div class="col-xs-12">
                                                <p>Governments in the West employed sinologists to interpret the opaque signals emanating from Chinas politburo.</p>
                                                <p>Under its former leader, Deng Xiaoping, the country declared strategy was to "hide its ability and bide its time". Well, not any more.</p>
                                                <p>China has dispatched an increasingly vocal cadre of diplomats out into the world of social media to take on all comers with, at times, an eye-blinking frankness. Their aim is to defend Chinas handling of the coronavirus pandemic and challenge those who question Beijings version of events.</p>
                                                <div class="ArticleMedia">
                                                    <div class="ArticleMedia_container">
                                                        <figure class="Image">
                                                            <img src="imgs/PostID_26_1.jpg" width="803" alt="none">
                                                        </figure>
                                                        <figcaption>
                                                            <div class="Image_caption"><h5>Diplomats are defending China handling of the coronavirus outbreak</h5></div>
                                                            <div class="Image_caption"><h6>SOURCE: BBC</h6></div>
                                                        </figcaption>
                                                    </div>
                                                </div>
                                                <p>So they launch salvos of persistent tweets and posts from their embassies around the world. And they hold little back, deploying sarcasm and aggression in equal measure.</p>
                                                <p>Such is the novelty of their techniques that they have been dubbed "wolf warrior" diplomats after the eponymous action films.</p>
                                                <p>Wolf Warrior and Wolf Warrior 2 are hugely popular movies in which elite Chinese special forces take on American-led mercenaries and other ner-do-wells. They are violent and extremely nationalistic in tone. One critic dubbed them "Rambo with Chinese characteristics".</p>
                                                <p>One critic dubbed them "Rambo with Chinese characteristics". A promotional poster showed a picture of the central character raising his middle finger with the slogan: "Anyone who offends China, no matter how remote, must be exterminated."</p>
                                                <p>In a recent editorial, the Chinese Communist Party newspaper, Global Times, declared the people were "no longer satisfied with a flaccid diplomatic tone" and said the West feels challenged by Chinas new "Wolf Warrior" diplomacy.</p>
                                                <h4><b>A new kind of language</b></h4>
                                                <p>Perhaps the quintessential "wolf warrior" is Lijian Zhao, China young foreign affairs spokesman. He is the official who made the unsubstantiated suggestion that the United States might have brought coronavirus to Wuhan.</p>
                                                <p>He has more than 600,000 followers on Twitter and he exploits that audience almost by the hour, relentlessly tweeting, retweeting and liking anything that promotes and defends China.</p>
                                                <div class="ArticleMedia col-xs-12">
                                                    <div class="ArticleMedia_container col-xs-12">
                                                        <iframe width="720" height="394" frameborder="0" src="https://www.bbc.com/news/av/embed/p08brx2c/52562549"></iframe>
                                                    </div>
                                                </div>
                                                <p>This is of course what diplomats anywhere in the world must do: it is their job to promote their country national interest. But few diplomats use language that is, well, so undiplomatic.</p>
                                                <p>Take the Chinese embassy in India which described calls for China to pay compensation for spreading the virus as "ridiculous and eyeball-catching nonsense".</p>
                                                <p>Chinas ambassador in the Netherlands accused President Donald Trump of being "full of racism".</p>
                                                <div class="ArticleMedia col-xs-12">
                                                    <div class="col-xs-2"></div>
                                                    <div class="col-xs-10">
                                                        <blockquote class="twitter-tweet"><p lang="en" dir="ltr">What Trump said is groundless and full of racism, totally ignored the great effort and sacrifice made by Chinese people! This is political virus to international solidarity and cooperation in fighting # COVID19. <a href="https://t.co/MbfemcuuLu">pic.twitter.com/MbfemcuuLu</a></p>&mdash; Ambassador Xu Hong (@PRCAmbNL) <a href="https://twitter.com/PRCAmbNL/status/1239904460949917698?ref_src=twsrc%5Etfw">March 17, 2020</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
                                                    </div>
                                                </div>
                                                <p>In response to Mr Trump much mocked speculation about the best ways of tackling the virus, the chief spokesman for the Chinese Communist Party in Beijing tweeted: "Mr President is right. Some people do need to be injected with #disinfectant, or at least gargle with it. That way they will not spread the virus, lies and hatred when talking."</p>
                                            </div>');

INSERT INTO DNBC_Posts(PostTitle,PostSummary,PostWriter,PostDateTime,CategoryID,PostContent) values
('Indian and Chinese soldiers injured in cross-border fistfight, says Delhi','Troops also threw stones in face-off involving 150 soldiers at remote crossing point near Tibet, says Indian army','','2020-05-11',7,
'<p><b>Troops also threw stones in face-off involving 150 soldiers at remote crossing point near Tibet, says Indian army</b></p>
                                            <p>Several Indian and Chinese soldiers have been injured in a cross-border clash involving fistfights and stone-throwing at a remote but strategically important mountain pass near Tibet, the Indian army said on Sunday.</p>
                                            <div class="ArticleMedia">
                                                <div class="ArticleMedia_container">
                                                    <figure class="Image">
                                                        <img src="imgs/PostID_27.jpg" width="803" alt="none">
                                                    </figure>
                                                    <figcaption>
                                                        <div class="Image_caption"><h5>Chinese army officers stand on China’s side of the border with India at Nathu La Pass, in northeastern Indian state of Sikkim.</h5></div>
                                                        <div class="Image_caption"><h6>SOURCE: Gurinder Osan/AP</h6></div>
                                                    </figcaption>
                                                </div>
                                            </div>
                                            <div class="col-xs-12">
                                                <p>There have been long-running border tensions between the nuclear-armed neighbours, with a bitter war fought over the Indian north-eastern state of Arunachal Pradesh in 1962.</p>
                                                <p>“Aggressive behaviour by the two sides resulted in minor injuries to troops. It was stone-throwing and arguments that ended in a fistfight,” Indian army eastern command spokesman Mandeep Hooda said.</p>
                                                <p>The “stand-off” on Saturday – at Naku La sector near the 15,000-feet (4,572-metre) Nathu La crossing in the northeastern state of Sikkim – was later resolved after “dialogue and interaction” at a local level, Hooda said.</p>
                                                <p>“Temporary and short-duration face-offs between border-guarding troops do occur as boundaries are not resolved,” he said.</p>
                                                <p>One hundred and fifty soldiers were involved in the face-off, the Press Trust of India reported.</p>
                                                <div class="ArticleMedia">
                                                    <div class="ArticleMedia_container">
                                                        <figure class="Image">
                                                            <img src="imgs/PostID_27_1.jpg" width="803" alt="none">
                                                        </figure>
                                                        <figcaption>
                                                            <div class="Image_caption"><h5>This 2008 image shows a Chinese soldier and an Indian soldier at the Nathu La border crossing</h5></div>
                                                            <div class="Image_caption"><h6>SOURCE: Diptendu Dutta/AFP/Getty Images</h6></div>
                                                        </figcaption>
                                                    </div>
                                                </div>
                                                <p>There have been numerous face-offs and brawls between Chinese and Indian soldiers, including one near the north-west Indian region of Ladakh, that was captured on video in 2017, where troops were seen throwing punches and stones.</p>
                                                <p>In 2017, there was a high-altitude standoff in Bhutan’s Doklam region for two months after the Indian army sent troops to stop China constructing a road there.</p>
                                                <p>Relations since the Doklam dispute between the two Asian giants appeared to improve following talks between Chinese president Xi Jinping and Prime Minister Narendra Modi in Wuhan, China, in 2018.</p>
                                                <p>The two men also met in October last year in Chennai in southern India.</p>
                                                <p>China still claims about 90,000 square kilometres (35,000 square miles) of territory under New Delhi’s control.</p>
                                            </div>');

select * from DNBC_Posts;
INSERT INTO DNBC_Collections(CollectionID,Link) values ('y1','imgs/PostID_01.webp'),('y2','imgs/PostID_02.webp'),('y3','imgs/PostID_03.webp'),('y4','imgs/PostID_04.webp'),('y5','imgs/PostID_05.webp'), 
	('y6','imgs/PostID_06.webp'),('y7','imgs/PostID_07.webp'),('y8','imgs/PostID_08.webp'),('y9','imgs/PostID_09.jpeg'),('y10','imgs/PostID_10.jpeg'),('y11','imgs/PostID_11.png'),('y12','imgs/PostID_11_2.png'),
	('y13','imgs/PostID_12.jpeg'),('y14','imgs/PostID_13.jpg'),('y15','imgs/PostID_14.jpeg'),('y16','https://player.cnbc.com/p/gZWlPC/cnbc_global?playertype=synd&byGuid=7000126277'), 
	('y17','https://player.cnbc.com/p/gZWlPC/cnbc_global?playertype=synd&byGuid=7000133026'), ('y18','imgs/PostID_16.jng'), ('y19','imgs/PostID_17.jpeg');

	INSERT INTO DNBC_Collections (CollectionID,Link) VALUES ('y20','https://www.bbc.com/news/av/embed/p089st6l/52319575'),
	('20','imgs/PostID_p01.jpg'),('p2','imgs/PostID_p02.jpg'),('p3','imgs/PostID_p03.jpg'),('imgs/PostID_p03_1.jpg'),('imgs/PostID_p04_1.jpg'),('p4','imgs/PostID_p04.jpg'),('p5','imgs/PostID_p05.jpg'),('p6','imgs/PostID_p06.jpg');

	
INSERT INTO DNBC_PostCollection(Source,Title,CollectionID,PostID) values
	('REUTERS/Jorge Duenes','A view shows the Toyota Motor Manufacturing plant in Tijuana, Mexico May 31, 2019. Picture taken May 31, 2019.','y1','y1'),
	('REUTERS/Mike Blake','The front grill logo of a Ford pickup truck is seen in this photo taken in Carlsbad, California November 5, 2014','y2','y2'),
	('REUTERS/Henry Romero','A production line is seen after the opening of Honda new automobile plant in a suburb of Celaya, Guanajuato February 21, 2014','y3','y3'),
	('REUTERS/Rebecca Cook','An American flag flies in front of the United Auto Workers union logo on the front of the UAW Solidarity House in Detroit, Michigan, September 8, 2011.','y4','y4'),
	('REUTERS/Mike Blake','Automobiles are shown for sale at a car dealership in Carlsbad, California, U.S. May 2, 2016.','y5','y5'),
	('REUTERS/Anushree Fadnavis','The logo is seen on the bonnet of a new Ford Aspire car during its launch in New Delhi, India, October 4, 2018. Picture taken October 4, 2018','y6','y6'),
	('REUTERS/Rebecca Cook','The GM logo is seen at the General Motors Warren Transmission Operations Plant in Warren, Michigan October 26, 2015','y7','y7'),
	('REUTERS/Alessandro Bianchi','Employees of Fiat SpA work on new car "Panda" at the Fiat plant in Pomigliano DArco, near Naples, Italy, December 14, 2011.','y8','y8'),
	('Harry Porters','The coronavirus outbreak has had a severe impact on demand for air travel','y9','y9'),
	('Wikimedia Commons','An Air Deccan Beecraft 1900D. The original incarnation of Air Deccan was India’s largest low-cost carrier.','y10','y10'),
	('Fact Set CNBC data','Oil future Crash','y11','y11'),
	('FactSet','West Texas Intermediate drop into negative territory','y12','y11'),
	('Michael Heiman','An offshore oil platform is seen with a tanker in the distance on April 20, 2020 in Huntington Beach, California.','y13','y12'),
	('Haidar Mohammed Ali','An Iraqi labourer works at an oil refinery in the southern town Nasiriyah.','y14','y13'),
	('Will Lester','Inland Valley Daily Bulletin','y15','y14'),
	('CNBC Global','No more hamburgers? How ‘clean meat’ could transform our diets','y16','y15'),
	('USA Labor Dept','Unemployment by States','y17','y16'),
	('CNBC','Florida is the slowest at processing unemployment claims','y18','y16'),
	('Bloomberg/Mark Kauzlarich','A pedestrian wearing a protective mask stands outside a JPMorgan Chase & Co. bank branch in New York, U.S., on Friday, April 10, 2020','y19','y17'),
	('BBC','Inside the almost deserted Heathrow airport','y20','y9'),
	('PA Sport','Manchester United co-chairman Avram Glazer (right) pictured at a match at Old Trafford','p1','p1'),
	('Reuters/Ed Syke','Soccer Football - Premier League - West Bromwich Albion vs Burnley - The Hawthorns,','p2','p2'),
	('Reuters','Phil Neville in England training','p3','p3'),
	('Getty Images','Steph Houghton of England misses a penalty during the 2019 FIFA Women World Cup France',,)
	('Cameron Spencer/Getty Images','Roger Federer raised the prospect of merging the ATP and WTA, the governing bodies that oversee the mens and womens tennis tours','p4','p4'),
	('Bertrand Rindoff Petroff/Getty Images','Defending French Open champions Rafael Nadal and Simona Halep were among the tennis players who supported Roger Federer call to join the ATP and WTA tours', , ),
	('AP Photo/Francisco Seco','Andy Murray has struggled to regain his form since early 2019 when he underwent hip surgery','p5','p5'),
	('Alex Davidson/Getty Images','The announcement on April 1 that Wimbledon would not be played in 2020, while well communicated and thought out, still came as a shock to many','p6','p6')
	;
	select * from DNBC_PostCollection;