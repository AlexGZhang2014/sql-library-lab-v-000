CREATE TABLE series (
  id INTEGER PRIMARY KEY,
  title TEXT,
  author_id INTEGER,
  
);

    it "creates a series table with a author_id field" do
      expect{@db.execute("SELECT author_id FROM series;")}.to_not raise_exception
    end

    it "creates a series table with a subgenre_id field" do
      expect{@db.execute("SELECT subgenre_id FROM series;")}.to_not raise_exception
    end

    it "creates a series table with an id as a primary key" do
      expect(@db.execute("PRAGMA table_info(series);").detect { |arr| arr[-1] == 1 && arr[2] == "INTEGER" }.length).to eq(6)
    end
  end