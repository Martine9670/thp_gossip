require_relative 'controller'
require_relative 'gossip'
require_relative 'view'

class Router
    def initialize
        @controller = Controller.new
    end

    def perform
        while true
            puts "Choisis 1 ou 4"
            choice = gets.chomp.to_i
            case choice 
            when 1
                puts "\nCrées ton gossip !!"
                @controller.create_gossip
            when 4
                puts "À bientôt !"
                break 
            else 
                puts "On t'a dit 1 ou 4"
            end
        end
    end
end


