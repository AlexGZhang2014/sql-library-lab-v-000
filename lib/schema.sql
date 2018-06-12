CREATE TABLE series (
  id INTEGER PRIMARY KEY,
  title TEXT,
  author_id INTEGER,
  subgenre_id INTEGER
);

CREATE TABLE subgenres (
  id INTEGER PRIMARY KEY,
  name TEXT
);

CREATE TABLE authors (
  id INTEGER PRIMARY KEY,
  name TEXT
);

CREATE TABLE books (
  id INTEGER PRIMARY KEY,
  title TEXT,
  year INTEGER,
  series_id INTEGER
);

CREATE TABLE characters (
  id INTEGER PRIMARY KEY,
  name TEXT,
  species TEXT,
  
);


    it "creates a characters table with a motto field" do
      expect{@db.execute("SELECT motto FROM characters;")}.to_not raise_exception
    end

    it "creates a characters table with a series_id field" do
      expect{@db.execute("SELECT series_id FROM characters;")}.to_not raise_exception
    end

    it "creates a characters table with a author_id field" do
      expect{@db.execute("SELECT author_id FROM characters;")}.to_not raise_exception
    end

    it "creates a characters table with an id as a primary key" do
      expect(@db.execute("PRAGMA table_info(characters);").detect { |arr| arr[-1] == 1 && arr[2] == "INTEGER" }.length).to eq(6)
    end
  end

  describe 'character_books join table' do
    it "creates a character_books table with an id as a primary key" do
      expect(@db.execute("PRAGMA table_info(character_books);").detect { |arr| arr[-1] == 1 && arr[2] == "INTEGER" }.length).to eq(6)
    end

    it "creates a character_books table with a book_id field" do
      expect{@db.execute("SELECT book_id FROM character_books;")}.to_not raise_exception
    end

    it "creates a character_books table with a character_id field" do
      expect{@db.execute("SELECT character_id FROM character_books;")}.to_not raise_exception
    end
  end