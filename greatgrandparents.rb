require_relative 'sex'

class GreatGrandParent

include Sex

  def initialize(name,sex)
    @name = name.upcase
    @sex = check(sex)
  end

  def add

  end

  def show

  end

end
abue = GreatGrandParent.new("Jose Martinez",1)
p abue
