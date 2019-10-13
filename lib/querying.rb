def select_books_titles_and_years_in_first_series_order_by_year
  "select books.title, min(year) from books left join series on books.series_id = series.id where series.id = 1 group by books.title order by min(year);"
end

def select_name_and_motto_of_char_with_longest_motto
  "select name, motto from characters where id = (select id from characters group by id order by max(length(motto)) desc limit 1);"
end


def select_value_and_count_of_most_prolific_species
  "select species, count(id) from characters group by species order by count(id) desc limit 1;"
end

def select_name_and_series_subgenres_of_authors
  "select authors.name, subgenres.name from series left join subgenres on series.subgenre_id = subgenres.id left join authors on series.author_id = authors.id; "
end

def select_series_title_with_most_human_characters
  "select title from series left join authors on series.author_id = authors.id left join characters on authors.id = characters.author_id where species = "human" group by title "
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end
