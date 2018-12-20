# Insert-Ubdate-and-Delete-ASP.NET-Web-Forms
## How To Insert, Ubdate and Delete to/from SQL Server Database Across ASP.NET Web Forms

### How Can We Open The Project:
* Download The website or Fork it, then extract where ever you want
* Open Visual Studio 2013
* Open website such as on this Image
![Open website](https://raw.githubusercontent.com/Mohamedfadah/Insert-Ubdate-and-Delete-ASP.NET-Web-Forms/master/Screenshots/Capture1.PNG)
* Select The Folder you extracted and click open
![Select The Folder](https://raw.githubusercontent.com/Mohamedfadah/Insert-Ubdate-and-Delete-ASP.NET-Web-Forms/master/Screenshots/Capture2.PNG)
* then Run The Project

## Database Part
We create Database named ` Employee ` has Table named ` Employee `,
that table is consist of four attribute:
 * Id ==> (int, auto increment),
 * Name ==> (varchar(10)),
 * Address ==> (varchar(10)),
 * IsDeleted ==> (int)


## Link Between Database and The Project:
* right click on project name and choose "Add" then "Add New Item"
![Add New Item](https://raw.githubusercontent.com/Mohamedfadah/Insert-Ubdate-and-Delete-ASP.NET-Web-Forms/master/Screenshots/Capture3.PNG)
* select "SQL Server Database" then click "Add"
![SQL Server Database](https://raw.githubusercontent.com/Mohamedfadah/Insert-Ubdate-and-Delete-ASP.NET-Web-Forms/master/Screenshots/Capture4.PNG)
* come to server Explorer at visual studio and right click on "Data Connections" and choose "Add Connection"
![Add Connection](https://raw.githubusercontent.com/Mohamedfadah/Insert-Ubdate-and-Delete-ASP.NET-Web-Forms/master/Screenshots/Capture5.PNG)
* Change the data source to "Microsoft SQL Server" and Press "OK"                                 
![Microsoft SQL Server](https://raw.githubusercontent.com/Mohamedfadah/Insert-Ubdate-and-Delete-ASP.NET-Web-Forms/master/Screenshots/Capture6.PNG)
![Server Name Area](https://raw.githubusercontent.com/Mohamedfadah/Insert-Ubdate-and-Delete-ASP.NET-Web-Forms/master/Screenshots/Capture7.PNG)
* write ` . ` on Server Name Area then select your Database Name then Press "OK"                            
![Select Server Name](https://raw.githubusercontent.com/Mohamedfadah/Insert-Ubdate-and-Delete-ASP.NET-Web-Forms/master/Screenshots/Capture9.PNG)
* come to Server Explorer Tool and copy the Database Name                                        
![Database Name](https://raw.githubusercontent.com/Mohamedfadah/Insert-Ubdate-and-Delete-ASP.NET-Web-Forms/master/Screenshots/Capture8.PNG)
* open "Index.aspx.cs" file and replace each statement called "EmployeeConnectionString" with The Database Name you copied
<br>
<b> Note: Don't Run The Project Before Linking it to Database </b>

