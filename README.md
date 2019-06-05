# UploadFile
steps of project

1)I used visual studio 2017 and sql server 2014.  
2)I used asp.net WebForms , ADO to connect to Database. 
3)database "BloggingSystem" has 5tables(Admin,Registeration,Category,Articale,Comment);
 on project I worked on two sides(admin side,visitor side) .
visitor can visit site and show all articales "DisplayArticales.aspx" without registration or loggingIn.  
visitor can also read aparticular articale in detailes "ArticaleDetails" by clicking 'read articale'.
If visitor want to add comment to aparticular articale and he not amember(no registeration) he must register first,
if he is amember he must login (redirect to "Login.aspx"). 
Visitor can search evenif he not amember by selecting category from dropdownlist of categories and show result "SearchResult.aspx". 
 
 for admin side: 
 he must login first logging in then can add articales. (redirect to "Add_Articale.aspx") 
  
 Note that :"Start.aspx" (Set As Start Page) from which go to admin side(for admin) or to visitor side(for visitors)
 
 for frontend i used a ready-made template with some modification i made on it.   
 I create backup of database,script of inserted data to tables that uploaded to repository.
 I used GitHub To Upload project : 
 i create account on github, download github extensions for visual studio,download gitbash. 
 
