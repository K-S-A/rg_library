class Book
attr_reader :title, :author

  def initialize(title, author)
    raise Exception, "Attributes should take only string values." unless title.is_a?(String) && author.is_a?(String)
    [title, author].each{ |x| x.strip!; x. capitalize! }
    raise Exception if title.empty? || author.empty?
    @title, @author = title, author
  end
end
