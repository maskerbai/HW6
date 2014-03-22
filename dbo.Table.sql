CREATE TABLE [dbo].[Table]
(
	[recipeID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [recipeName] NVARCHAR(50) NOT NULL, 
    [submitby] NVARCHAR(50) NOT NULL, 
    [ing#1] NVARCHAR(50) NOT NULL, 
    [ing#2] NVARCHAR(50) NULL, 
    [ing#3] NVARCHAR(50) NULL, 
    [ing#4] NVARCHAR(50) NULL, 
    [ing#5] NVARCHAR(50) NULL, 
    [preparation] NVARCHAR(50) NOT NULL, 
    [notes] NVARCHAR(50) NULL
)
