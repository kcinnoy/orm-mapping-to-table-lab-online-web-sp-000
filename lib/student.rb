class Student

attr_accessor :name, :grade, :db
attr_reader :id

def initialize(name, grade, id=nil)
  @name = name
  @grade = grade
  @id = id
end

def self.create_table

end




def initialize(name, album, id=nil)
  @id = id
  @name = name
  @album = album
end

def self.create_table
  sql =  <<-SQL
    CREATE TABLE IF NOT EXISTS songs (
      id INTEGER PRIMARY KEY,
      name TEXT,
      album TEXT
      )
      SQL
  DB[:conn].execute(sql)
end

end
