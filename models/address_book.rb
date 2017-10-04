require_relative 'entry'

class AddressBook
  attr_reader :entries

  def initialize
    @entries = []
  end

  def add_entry(name,phone,email)
    index = 0
    entries.each do |entry|
      break if name <entry.name
      index+= 1

    end
    entries.insert(index, Entry.new(name,phone,email))
  end

  def remove_entry(name,phone,email)
    index = 0
    entries.each { |entry|
      if name == entry.name && phone == entry.phone && email == entry.email
        entries.delete( entry)
          break
        else
          index+= 1
      end
    }

  end

end
