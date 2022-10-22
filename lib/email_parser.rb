# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end
    def parse
        @email_addresses.split(/[\s,]+/).uniq    # , matches a comma
                                                 # \s matches whitespaces characters ie tabs,spaces
                                                 # [] match any character in the set
                                                 # .uniq eliminates any duplicates
    end
end
email_addresses = EmailAddressParser.new("avi@test.com, arel@test.com")

puts email_addresses.parse
