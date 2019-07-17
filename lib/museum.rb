class Museum

  attr_reader :name, :exhibits

  def initialize(name)
    @name = name
    @exhibits = []
    @recommend_exhibits = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(parton)
    @recommend_exhibits << parton.interests
  end

end
