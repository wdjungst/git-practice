require 'colorize'
require_relative 'git'

class Main
  include Git

  def menu
    puts 'MAIN MENU'.colorize(:cyan)
    puts '1 Enter Git Command'.colorize(:cyan)
    puts '2 View Git config'.colorize(:cyan)
    puts '3 Exit'.colorize(:cyan)
    choice = gets.to_i
    case choice
      when 1
        puts 'Enter a git command'.colorize(:green)
        Git.display_cmd(gets.strip)
        menu
      when 2
        Git.config
      when 3
        exit
      else 
        puts 'Inavlid Choice'.colorize(:red)
        menu
    end
  end
end

menu
