# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title
  "SELECT title, SUM(amount) FROM projects
   INNER JOIN pledges ON projects.id = pledges.project_id
   GROUP BY title
   ORDER BY title ASC
  ";
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  "SELECT name, age, SUM(pledges.amount) FROM users
   INNER JOIN pledges ON users.id = pledges.user_id
   GROUP BY name
   ORDER BY name ASC";
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  "SELECT title, SUM(amount) - funding_goal FROM projects
   INNER JOIN pledges ON projects.id = pledges.project_id
   GROUP BY title
   HAVING SUM(amount) - funding_goal >= 0";
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_summed_amount
  "SELECT name, SUM(amount) FROM users
   INNER JOIN pledges ON users.id = pledges.user_id
   GROUP BY users.name
   ORDER BY SUM(amount) ASC
   ";
   
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  "SELECT category, amount FROM projects
   INNER JOIN pledges ON projects.id = project_id
   WHERE category = 'music'";
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  "SELECT category, SUM(amount) FROM projects
   INNER JOIN pledges ON projects.id = project_id
   WHERE category = 'books'";

end
