require 'uuid'

class Todo
  @@todos = []
  @@id = UUID.new

  def self.add(item)
    item[:id] = @@id.generate
    @@todos << item
  end

  def self.all
    @@todos
  end

end 