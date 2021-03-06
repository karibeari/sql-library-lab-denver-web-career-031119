def select_books_titles_and_years_in_first_series_order_by_year

  "SELECT books.title, year
  FROM books
  LEFT JOIN series
  ON series.id = books.series_id
  WHERE series.id = 1;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto
  FROM characters
  ORDER BY LENGTH(motto) DESC
  LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species)
  FROM characters
  GROUP BY species
  ORDER BY COUNT(species) DESC
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM series
  LEFT JOIN authors
    ON author_id = authors.id
  LEFT JOIN subgenres
    ON subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT title
  FROM series
  LEFT JOIN characters
    ON series_id = series.id
  WHERE species = 'human'
  GROUP BY title
  HAVING COUNT(series.id)
  LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT name, COUNT(title)
  FROM characters
  LEFT JOIN character_books
    ON characters.id = character_id
  LEFT JOIN books
    ON books.id = book_id
  GROUP BY name
  ORDER BY COUNT(title) DESC; "
end
