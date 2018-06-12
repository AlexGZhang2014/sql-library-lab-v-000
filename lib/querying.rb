

def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books INNER JOIN series ON books.series_id = series.id WHERE series.id = 1 ORDER BY books.year;"
end



def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters WHERE characters.motto = (SELECT MAX(characters.motto) FROM characters);"
end



def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, SUM(characters.species) FROM characters WHERE characters.species = \'human\';"
end



def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors INNER JOIN series ON authors.id = series.author_id JOIN subgenres ON series.subgenre_id = subgenres.id;"
end

it 'selects the series title with the most characters that are the species "human"' do
    expect(@db.execute(select_series_title_with_most_human_characters)).to eq([["A Song of Ice and Fire"]])
  end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series"
end

it 'selects all of the character names and their number of books they have appeared in, in descending order' do
    expect(@db.execute(select_character_names_and_number_of_books_they_are_in)).to eq([["Character Three",3], ["Character Two", 3],["Daenerys Targaryen", 3], ["Tyrion Lannister", 3], ["Character Four", 1], ["Character One", 1], ["Eddard Stark", 1], ["Lady", 1]])
  end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end
