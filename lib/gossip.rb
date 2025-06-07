require 'csv'
require_relative 'controller'
require_relative 'router'
require_relative 'view'

class Gossip
    attr_reader :author, :content

    def initialize(author, content)
        @author = author
        @content = content
    end

    def afficher
        puts "#{@author} : #{@content}"
    end

    def save_as_csv
        CSV.open("db/gossip.csv", "a") do |csv|
            csv << [author, content]
        end
        puts "Gossip enregistré : #{author} - #{content}"
    end
    
    def self.read_csv
        all_gossips = []
        CSV.foreach("db/gossip.csv") do |ligne|
            g = Gossip.new(ligne[0], ligne[1])
            all_gossips.push(g)
        end
        return all_gossips
    end

    def retire(gossip)
        @author.delete(gossip)
        @content.delete(gossip)
    end
end