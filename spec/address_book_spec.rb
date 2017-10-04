require_relative '../models/address_book'

RSpec.describe AddressBook do
  describe "attributes" do
    it "responds to entries" do
      book = AddressBook.new
      expect(book).to respond_to(:entries)
    end

    it "initialize entries as an array" do
      book = AddressBook.new
      expect(book.entries).to be_an(Array)
    end
    it "initialize entries to an empty array" do
      book = AddressBook.new
      expect(book.entries.size).to eq(0)
    end
  end
  describe "#add_entry" do
    it "adds only one entry to the address_book" do
      book = AddressBook.new
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      expect(book.entries.size).to eq(1)
    end
    it "add the correct information to entries" do
      book = AddressBook.new
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      new_entry = book.entries[0]

      expect(new_entry.name).to eq('Ada Lovelace')
      expect(new_entry.phone).to eq("010.012.1815")
      expect(new_entry.email).to eq('augusta.king@lovelace.com')
    end
  end
  describe "#remove_entry" do
    it "removes only one entry from address_book" do
      book = AddressBook.new
    
      book.remove_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      expect(book.entries.size).to eq(0)

    end
  end
end
