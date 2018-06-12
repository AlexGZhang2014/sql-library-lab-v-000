it 'selects all of the books titles and years in the first series and orders them chronologically' do
    expect(@db.execute(select_books_titles_and_years_in_first_series_order_by_year)).to eq([["Game of Thrones", 1996], ["A Clash of Kings", 1998], ["A Storm of Swords", 2000]])
  end

def select_books_titles_and_years_in_first_series_order_by_year
  ""
end

it 'returns the name and motto of the character with the longest motto' do
    expect(@db.execute(select_name_and_motto_of_char_with_longest_motto)).to eq([["Tyrion Lannister", "A Lannister always pays his debts"]])
  end

def select_name_and_motto_of_char_with_longest_motto
  "Write your SQL query here"
end

it 'determines the most prolific species of characters and return its value and count' do
    expect(@db.execute(select_value_and_count_of_most_prolific_species)).to eq([["human", 4]])
  end

def select_value_and_count_of_most_prolific_species
  "Write your SQL query here"
end



def select_name_and_series_subgenres_of_authors
  "Write your SQL query here"
end

def select_series_title_with_most_human_characters
  "Write your SQL query here"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end
