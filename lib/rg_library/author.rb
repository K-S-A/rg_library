class Author
attr_reader :name, :biography

  def initialize(name, biography)
    raise Exception, "Attributes should take only string values." unless name.is_a?(String) && biography.is_a?(String)
    name.strip!; name.capitalize!; biography.strip!
    raise Exception if name.empty? || biography.empty? 
    biography = biography.slice(0, 1).upcase + biography.slice(1..-1)
    @name, @biography = name, biography    
  end

end

