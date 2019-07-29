require 'pry'
require 'csv'

class Gossip
  attr_accessor :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    CSV.open("./db/gossip.csv", "ab") do |csv|
  csv << [@author, @content]
    end
  end

  def self.all
    all_gossips = []
    CSV.read("./db/gossip.csv").each do |row|
      all_gossips << Gossip.new(row[0], row[1])
    end
    return all_gossips
  end

  #def self.find(id)
  #  return self.all[id]
  #end

  def self.find(id)
    gossip_array = Gossip.all
    return gossip_array[id.to_i]
  end


# End of the Gossip class
end
