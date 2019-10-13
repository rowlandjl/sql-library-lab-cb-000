UPDATE characters 
SET species = "Martian"
WHERE id = (select MAX(ID) from characters);