/*creates a table, id is a number, not null, name can be up to 25 characters, description up to 50 chars, instructions up to 500 chars, specifing the engine type, charset = utf8 sets the chars to utf8
comments would be the bascially the same for each line for 3-5 (just changing the max number/char allowed) so just using the above for all so there is not so much info on this page
these are columns*/
create table Recipe (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(25), description VARCHAR(50), instructions VARCHAR(500)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
create table Ingredient (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(50)) ENGINE=InnoDB DEFAULT CHARSET=utf8; 
create table Measure (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(30)) ENGINE=InnoDB DEFAULT CHARSET=utf8; 

/*creates a table called RecipeIngredient, gives an id (not null), ingredient id (not null), measure id (will be an integer), and amount (will also be an integer)*/
create table RecipeIngredient (recipe_id INT NOT NULL, ingredient_id INT NOT NULL, measure_id INT, amount INT, 
    
    /*constraint creates rules for these (foreign keys make the relational part of the database)
	make a foreign key called recipe_id, and reference Recipe table's id (connect recipe ingredient table to recipe table)
	links other tables to this one---same for the other two, but just for the names ingredient and measure*/                           
	CONSTRAINT fk_recipe FOREIGN KEY(recipe_id) REFERENCES Recipe(id), 
	CONSTRAINT fk_ingredient FOREIGN KEY(ingredient_id) REFERENCES Ingredient(id), 
	CONSTRAINT fk_measure FOREIGN KEY(measure_id) REFERENCES Measure(id)) 
	ENGINE=InnoDB DEFAULT CHARSET=utf8; 
	/*engine= type of the engine and default character set (utf8--8 bit character encoding)


/*Inserts into the the measure table and lists the name values*/
INSERT INTO Measure (name) VALUES('CUP'), ('TEASPOON'), ('TABLESPOON'), ('WHOLE');

/*Inserts into the Ingredient table and lists the name values*/
INSERT INTO Ingredient (name) VALUES('egg'), ('salt'), ('sugar'), ('chocolate'), ('vanilla extract'), ('flour'), ('bread'), ('peanut butter'), 
('grape jelly'), ('water'), ('ramen noodles'), ('ramen seasoning packet'), ('boxed tomato soup'), ('frozen pizza'), ('microwavable popcorn');

/*Inserts into the Recipe table, lists the values for name, description, and instructions*/
INSERT INTO Recipe (name, description, instructions) VALUES('Boiled Egg', 'A single boiled egg', 'Add egg to cold water. Bring water to boil. Cook.');

/*Inserts into the Recipe table, lists the values for name, description, and instructions*/
INSERT INTO Recipe (name, description, instructions) VALUES('Chocolate Cake', 'Yummy cake', 'Add eggs, flour, chocolate to pan. Bake at 350 for 1 hour');

/*New PB&J recipe I added--name, description, instructions*/
INSERT INTO Recipe (name, description, instructions) VALUES('PB&J Sandwich', 'Classic PB&J', 'Get 2 pieces of bread, slather on peanut butter and jelly on each piece. Put bread together.');

/*Ramen noodles recipe I added--name, description, instructions*/
INSERT INTO Recipe (name, description, instructions) VALUES('Ramen Noodles', 'Chicken Ramen', 'Boil water. Add Ramen noodles. Cook for 3 minutes. Add seasoning if desired.');

/*Tomato Soup Recipe I added--name, description, instructions*/
INSERT INTO Recipe (name, description, instructions) VALUES('Tomato Soup', 'Boxed Tomato Soup', 'Pour box of soup into pan. Cook over medium heat until heated throughout.');

/*Frozen Pizza Recipe I added--name, description, instructions*/
INSERT INTO Recipe (name, description, instructions) VALUES('Pizza', 'Delish Frozen Pizza', 'Preheat oven to 425 degrees. Once preheated, take plastic off pizza and place on oven rack. Cook 15-18 min.');

/*Popcorn recipe I added--name, description, instructions*/
INSERT INTO Recipe (name, description, instructions) VALUES('Popcorn', 'Classic Popcorn', 'Take off wrapper and place bag in microwave. Hit the popcorn button. Allow microwave to cook and take out when it beeps or when you hear 
popcorn kernels stop popping.');

/*Inserts into RecipesIngredient and gets the recipe id, ingredient id, measure id, and amount values 
values are NULL if they don't have that item i.e. for making a boiled egg, the measure id is NULL b/c you don't have to measure anything to boil an egg
This first one gets the boiled egge recipe (id1), ingredient id1 (egg), nothing for measure id, and amount= 1*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (1, 1, NULL, 1);

/*this is getting recipe id 2-Choc cake, ingredient id 1-egg, nothing for measure, and amt-3*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 1, NULL, 3);

/*this is getting recipe id 2-Choc cake, ingredient id 2-salt, measure teaspoon, and amt-1*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 2, 2, 1);

/*this is getting recipe id 2-choc cake, ingredient id 3-sugar, measure-1 cup, and amt = 2*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 3, 1, 2);

/*this is getting recipe id 2-choc cake, ingredient id 4 chocolate, measure 1-cup, and amt-1*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 4, 1, 1);



/*Insert 5 new recipes and their ingredients, amounts, and measures into the Database.*/
/*PB&J sandwich 
this is gettng recipe id 3-pb&j sandwich, ingredient id 7 = bread, nothing for measure, and amt = 2*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (3, 7, NULL, 2);
/*this is gettng recipe id 3-pb&j sandwich, ingredient id 8= peanut butter, nothing for measure, and amt = 1*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (3, 8, NULL, 1);
/*this is gettng recipe id 3-pb&j sandwich, ingredient id 9= grape jelly, nothing for measure, and amt = 1*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (3, 9, NULL, 1);


/*Ramen noodles 
recipe id 4-ramen noodles, ingredient id 10= water, measureid = cups, amt=4 (cups)*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (4, 10, 1, 4);
/*Ramen noodles recipe id 4-ramen noodles, ingredient id 11= ramen noodles, measureid = null, amt=1*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (4, 11, NULL, 1);
/*Ramen noodles recipe id 4-ramen noodles, ingredient id 12= ramen seasoning packet, measureid = null, amt=1*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (4, 12, NULL, 1);


/*Tomato Soup*/
/*recipe id5 = tomato soup, ingredient 13= boxed tomato soup, measure id= null, amt = 1*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (5, 13, NULL, 1);

/*Frozen pizza*/
/*recipe id6 = pizza, ingredient 14= frozen pizza, measure id= null, amt = 1*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (6, 14, NULL, 1);

/*Popxcorn*/
/*recipe id7 = popcorn, ingredient 15= microwavable popcorn, measure id= null, amt = 1*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (7, 15, NULL, 1);






