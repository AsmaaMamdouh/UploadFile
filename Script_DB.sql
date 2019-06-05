USE [BloggingSystem]
GO
  INSERT INTO [dbo].[Admin]
           ([UserName],[Password])
     VALUES
           ('admin','admin') 

Go 

INSERT INTO [dbo].[Registeration]
           ([FirstName],[LastName],[Email],[Password],[Mobile],[Address])
     VALUES
           ('asmaa','mamdouh','asma@live.com','123456','01156441873','cairo'), 
		   ('sara','Ahmed','sara@live.com','P@$SW0rd','01156441873','Alex')
GO  

 INSERT INTO [dbo].[Category]
           ([Name]
           ,[Description])
     VALUES
           ('Sport','Sport Description'), 
		   ('Health','Health Description'), 
		   ('Art','Art Description'), 
		   ('Fashon','Fashon Description')
		    
Go
  

INSERT INTO [dbo].[Articale]
           ([Title],[Content],[Auther],[Image],[CategoryId],[Description])
     VALUES
           ('Roland Garros Day 10: Three To See'
           ,'There are not many certainties in sports, but one thing that is certain is that  
		   there will be a Swiss in the semifinals of Roland Garros.  Whether that Swiss will 
		   be Roger Federer or Stan Wawrinka is yet to be determined, but the odds definitely 
		   favor it being Federer.  It has been a few years since Federer opted to play the  
		   clay season, but he hardly looks worse for wear for it.  His forehand is as lethal  
		   as ever, and his serve still as precise.'
            ,'Joanie Agler'
           ,'./images/Rogger.jpg'
           ,1
           ,'Description of articale'),  

		    ('Djokovic Continues To Cruise At Roland Garros'
           ,'The world number one has had his way thus far in Paris The world number one has 
		    had his way thus far in Paris'
            ,'Tumaini Carayol'
           ,'./images/novak.jpg'
           ,1
           ,'Description of articale'), 
		    
			 ('La Tyra Banks and the Disneyfication of Fashion'
           ,'This week Lady Gaga, last seen winning the game of entrances at the Met Gala, will
		    re-emerge in Las Vegas to continue the series of “Enigma” shows she began last December 
			at the Park MGM. On its own that may be exciting news for anyone feeling “Shallow” 
			nostalgia, but this time around she is also bringing a little something extra to the
			 strip: 1,600 square feet of disco-bedazzled fashion and retail extra, to be precise.'
            ,'Vanessa Friedman'
           ,'./images/fashon1.jpg'
           ,4
           ,'Shopping has always been about amusement.'),  

		   ('Mary And Ashley '
           ,'When it comes to their label The Row, designers Mary-Kate and Ashley Olsen are masters  
		   of all things quietly elegant. So it’s no surprise, then, that when it came time for the  
		   duo to find their own red carpet outfits for the CFDA Awards in New York tonight, they 
		   chose an equally stealthy-chic aesthetic.'
            ,'CHRISTIAN ALLAIRE'
           ,'./images/fashon4.jpg'
           ,4
           ,'Mary And Ashley  Make the Case For Discreet Chic'),
		   
		   ('gut-brain connection in autism '
           ,'The discovery confirms a gut-brain nervous system link in autism, opening a new 
		    direction in the search for potential treatments that could ease behavioural issues 
			associated with autism by targeting the gut.  Chief Investigator Associate Professor
			 Elisa Hill-Yardin, RMIT University, said scientists trying to understand autism have 
			  long been looking in the brain, but the links with the gut nervous system have only 
			  been recently explored.'
            ,'RMIT University'
           ,'./images/health1.jpg'
           ,2
           ,'Research Confirms Gut-Brain Connection in Autism'), 
		   
		   ('Brush your teeth postpone Alzheimers '
           ,'You do not only avoid holes in your teeth by keeping good oral hygiene, researchers 
		    at the University of Bergen have discovered a clear connection between gum disease and
			 Alzheimer´s disease.  The researchers have determined that gum disease (gingivitis) 
			 plays a decisive role in whether a person developes Alzheimer´s or not.  "We discovered
			  DNA-based proof that the bacteria causing gingivitis can move from the mouth to the 
			  brain," says researcher Piotr Mydel at Broegelmanns Research Laboratory, Department of 
			  Clinical Science, University of Bergen (UiB).'
            ,'The University of Bergen'
           ,'./images/health2.jpg'
           ,2
           ,'connection between oral health and Alzheimer.'),  

		   ('Dora Maar'
           ,'The Surrealist artist and photographer Dora Maar’s relationship with Pablo 
		   Picasso hugely affected her burgeoning reputation. Specialists in Surrealism  
		   are well aware that Maar was an inspired and innovative photographer before she 
		    met him, as well as a documenter, as later seen in a series of images of the 
			Spanish artist’s masterpiece Guernica (1937). But for a wider public Maar has
			 been defined by Picasso’s depictions of her, particularly as the Weeping Woman (1937).'
            ,'the Chanel Fund for Women'
           ,'./images/art1.jpg'
           ,3
           ,'Dora Maar emerges from her lover Picasso’s shadow')

GO


INSERT INTO [dbo].[Comment]
           ([Content],[ArticaleId],[WriterId])
     VALUES
           ('Comment1',1,1),
		   ('Comment2',1,1), 
		   ('Comment3',1,2),  
		   ('Comment1',2,1),   
		   ('Comment1',3,1)

GO