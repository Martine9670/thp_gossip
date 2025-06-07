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
        puts "#{@author} raconte : #{@content}"
    end

    def save_as_csv
        CSV.open("db/gossip.csv", "a") do |csv|
            csv << [author, content]
        end
        puts "Gossip enregistré : #{author} - #{content}"
    end
    
    def self.read_csv
        CSV.read("db/gossip.csv")
    end
end