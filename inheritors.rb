require_rekative 'relative.rb'
class GreatGrandParent



include Relative

  def initialize(name = "",sex)
    @name = name.upcase
    @sex = check(sex)
    @klass = "#{self.class}s"
    @super = "#{self.class.superclass}s"
  end

end


class GrandParent < GreatGrandParent; end

class Parent < GrandParent; end

class EqualRelative < Parent ; end
