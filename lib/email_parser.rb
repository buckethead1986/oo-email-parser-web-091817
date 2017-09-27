# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
attr_accessor :string

  def initialize(string)
    @string = string
  end

  def parse
    string.split(/[\s, ]/).reject {|c| c.empty?}.uniq #split on whitespace (\s) and ", "), then reject all empty space ""
  end

end
