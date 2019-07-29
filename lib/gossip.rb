require 'pry'
require 'csv'

class Gossip

  def save
    CSV.open("../db/gossip.csv", "ab") do |csv|
  csv << ["Mon super auteur", "Ma super description"]
    end
  end






# End of the Gossip class
end
