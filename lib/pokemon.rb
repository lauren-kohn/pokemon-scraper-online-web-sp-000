class Pokemon
  
  attr_accessor :id, :name, :type, :db 
  
  def initialize(id:, name:, type:, db:)
    @id, @name, @type, @db = id, name, type, db 
  end 
  
  def self.save 
    if self.id
      self.update
    else
      sql = <<-SQL 
        INSERT INTO pokemon (name, type)
        VALUES (?, ?)
      SQL
      @db.execute(sql, self.name, self.type)
    end
  end 
  
  def self.find
  
  end
  
end
