# Insert-Ubdate-and-Delete-ASP.NET-Web-Forms
# How To Isert, Ubdate and Derete to/from SQL Server Database Across ASP.NET Web Forms

## How Can We Open The Project:
* Download The website or Fork it, then extract where ever you want
* Open Visual Studio 2013
* Open website such as on this Image

* Select The Folder you extracted and click open
* then Run The Project

## Database Part
We create Database named ` Employee ` has Table named ` Employee `, that table is consist of four attribute (Id ==> (int, auto increment), Name ==> (varchar(10)), Address ==> (varchar(10)), IsDeleted ==> (int))


## Link Between Database and The Project:
* right click on project name and choose "Add" then "Add New Item"
* select "SQL Server Database" then click "Add"
* come to server Explorer at visual studio and right click on "Data Connections" and choose "Add Connection"
* Change the data source to "Microsoft SQL Server" and Press "OK"

* write ` . ` on Server Name Area then select your Database Name then Press "OK"

* come to Server Explorer Tool and copy the Database Name

* open "Index.aspx.cs" file and replace each statement called "EmployeeConnectionString" with The Database Name you copied

* ** Note: Don't Run The Project Before Linking it to Database ** *

