require_relative 'sex'

class GreatGrandParent

include Sex

  @@relatives = {GreatGrandParents: {woman: nil,man: nil}}

  def initialize(name = "",sex)
    @name = name.upcase
    @sex = check(sex)
    @clas = "#{self.class}s".to_sym
    @super = "#{self.class.superclass}s".to_sym
  end

  def add
    if @clas == :GreatGrandParents
      if @@relatives[@clas][@sex] == nil
        @@relatives[@clas][@sex] = [@name]
      else
        puts "operation not posible"
      end
    elsif @@relatives[@super] != nil
      @@relatives[@clas] ||= {}
      @@relatives[@clas][@sex] ||= []
      @@relatives[@clas][@sex] << @name
    else
      puts "you need first to add a #{@super}"
    end
  end

  def all
    @@relatives[@clas].each do |name|
      puts name[1]
    end
  end

  def all_sex
    @@relatives[@clas][@sex].each do |name|
      puts name
    end
  end

  def search()
    @@relatives.each do |generation|
      generation[1].each do |name|
       puts "is your #{generation[0]}" if name[1] = @name
      end
    end
  end

  def self.tree
    order = [:GreatGrandParents,:GrandParents,:Parents,:EqualRelatives]
    order.each do |clas|
      if @@relatives[clas] != nil
        puts "\n#{clas}"
        @@relatives[clas].each do |sex|
          sex.each do |names|
            if (names != nil && names != :man && names != :woman)
              names.each {|name| puts name}
            end
          end
        end
      end
    end
  end

end

abue = GreatGrandParent.new("Jose Martinez",1)
abue.add
abue.add
#abue.all
#abue.all_sex
