require_relative "../models/address_book"

class MenuController

  attr_reader :address_book
# address_book is equal to instance of AddressBook class
  def initialize
    @address_book = AddressBook.new
  end

  def main_menu
    puts "Main Menu - #{address_book.entries.count} entries"
    puts "1 - View all entries"
    puts "2 - Create an entry"
    puts "3 - Search for an entry"
    puts "4 - Import entries"
    puts "5 - Exit"
    print "Enter your selection:"

    selection = gets.to_i

    case selection
      when 1
        system 'clear'
        # calling view_all_entries method
        view_all_entries
        main_menu
      when 2
        system 'clear'
        # calling create_entry method
        create_entry
        main_menu
      when 3
        system 'clear'
        # calling search_entries method
        search_entries
        main_menu
      when 4
        system 'clear'
        # calling read_csv method
        read_csv
        main_menu
      when 5
        puts "Good-bye"
        exit(0)
      else
        system 'clear'
        puts "sorry, that is a invalid input"
        main_menu
    end
  end

  def view_all_entries
    address_book.entries.each do |entry|
      system 'clear'
      # calling Entry class function to_s
      puts entry.to_s
      # call the submenu function for each entry
      entry_submenu(entry)
      end
      system "clear"
     puts "End of entries"
    end

  def create_entry
    system 'clear'
    puts " New AddressBloc Entry"
    print "Name: "
    name = gets.chomp
    print "Phone number: "
    phone = gets.chomp
    print "Email: "
    email = gets.chomp

    address_book.add_entry(name, phone, email)

    system 'clear'
    puts "New entry created"
  end
  def search_entries

  end
  def read_csv

  end
  def entry_submenu(entry)
    puts "n - next entry"
    puts "d - delete entry"
    puts "e - edit this entry"
    puts "m - return to main menu"

    selection = gets.chomp
    case selection
    when 'n'
    when 'd'
    when 'e'
    when 'm'
      system 'clear'
      main_menu
    else
      system 'clear'
      puts "#{selection} is not a valid input"
      entry_submenu(entry)
      end

  end
end
