# task2
ER diagram :
https://drive.google.com/file/d/1cmknDnAgKXFSuVXvrbqwVEThb60CU99n/view
Class diagram 
https://drive.google.com/file/d/1_N3T0C4MYsBMk-3tpDJEjP4K3K8wE4A5/view

# ER diagram and class diagram:
Creating 5 tables 
1.Registration
2. login
3. Fitness_activities
4. Health_related_data
5. Nutrition 

Relation established between tables

Registration -- login 1:1 
Fitness_Activities --- health_related_data 1:many
Fitness_Activities ---- nutrition many :many

class diagram - In this we create public +, private - , and protected #  visibility to data 


# task3

1.The query first matches accounts with their respective items using the JOIN clauses.(having same account id in both the tables)
2.It groups the data by username and type of the item.
For each group, it:
We have to find the best quality items 
Finds the highest quality of items using MAX(ai.quality).
-- String_agg is a function used for aggregation all items seperting by , and odered them in ascending order
Aggregates all item names into a comma-separated string using STRING_AGG.
Finally, it sorts the results by username and type.
