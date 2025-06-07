require_relative 'controller'
require_relative 'gossip'
require_relative 'router'

class View

    def create_gossip
    puts "Quel est ton nom ?"
    name = gets.chomp
    puts "Qu'as-tu envie de dire ?"
    say = gets.chomp
        return params = {author: name, content: say}
    end

    def index_gossips
        puts "\n Affichage de tous les potins !"
        index_gossips = Index_gossips.new
    end
end

