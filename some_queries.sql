/* get all the ingredients with names */ 
SELECT r.name AS 'Recipe', r.instructions, ri.amount AS 'Amount', mu.name AS 'Unit of Measure', i.name AS 'Ingredient' 
FROM Recipe r 
JOIN RecipeIngredient ri on r.id = ri.recipe_id 
JOIN Ingredient i on i.id = ri.ingredient_id 
LEFT OUTER JOIN Measure mu on mu.id = measure_id;

/*get a list of all recipes from database */ 
SELECT * FROM Recipe

/*
get a specific ingredient 
this command is incomplete, the last item on the right hand side of the equals sign needs to be added
*/ 

SELECT * 
From Recipe r
JOIN RecipeIngredient ri on ri.recipe_id = r.id  
JOIN Ingredient i on i.id = ri.ingredient_id 
WHERE i.name = 'egg'

/*Write a query to update a recipe you added.*/
UPDATE Recipe
SET name = 'THE BEST PIZZA IN HISTORY'
WHERE name = 'Pizza';

UPDATE Ingredient
SET name = 'Justins peanut butter'
WHERE name = 'peanut butter';
