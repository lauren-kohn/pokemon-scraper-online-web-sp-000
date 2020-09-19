class Pokemon
  
  attr_accessor :id, :name, :type, :db 
  
  def initialize(id:, name:, type:, db:)
    @id, @name, @type, @db = id, name, type, db 
  end 
  
  def self.save(name, type, db) 
      db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?);", name, type)
  end 
  
  def self.find(id, db)
    found_pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?;", id).flatten
    Pokemon.new(id: found_pokemon[0], name: found_pokemon[1], type:, db: db)
  end
  
end
