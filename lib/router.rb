require_relative 'controller'
require_relative 'gossip'
require_relative 'view'

class Router
    def initialize
        @controller = Controller.new
    end

    def perform
        while true
            puts "\nChoisis 1, 2, 3, ou 4"
            choice = gets.chomp.to_i
            case choice 
            when 1
                puts "Crées ton gossip !!"
                @controller.create_gossip
            when 2
                puts "Afficher tous les potins."
                all_gossips = @controller.index_gossips

                index = 0
                while index < all_gossips.length
                    puts index
                    all_gossips[index].afficher
                    index += 1
                end
            when 3
                puts "Quel gossip veux-tu supprimer ?"

            when 4
                puts "À bientôt !"
                break 
            else 
                puts "Saisie invalide."
            end
        end
    end
end