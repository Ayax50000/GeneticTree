require_relative 'sex'

class GreatGrandParent

include Sex

  @@relatives = {"GreatGrandParents" => {woman: nil,man: nil}}

  def initialize(name = "",sex)
    @name = name.upcase
    @sex = check(sex)
    @klass = "#{self.class}s"
    @super = "#{self.class.superclass}s"
  end

  def add
    if @klass == "GreatGrandParents"
      if @@relatives[@klass][@sex] == nil
        @@relatives[@klass][@sex] = [@name]
      else
        puts "operation not posible"
      end
    elsif @@relatives[@super] != nil
      @@relatives[@klass] ||= {}
      @@relatives[@klass][@sex] ||= []
      @@relatives[@klass][@sex] << @name
    else
      puts "you need first to add a #{@super}"
    end
  end

  def all
    @@relatives[@klass].each { |name| puts name[1]}
  end

  def all_sex
    @@relatives[@klass][@sex].each { |name| puts name}
  end

  def search()
    @@relatives.each do |klass|
      Sex.all.each do |sex|
        puts "is one of #{klass[0]} generation" if klass[1][sex].include? @name
      end
    end
  end

  def self.tree
    order = %w!GreatGrandParents GrandParents Parents EqualRelatives!
    order.each do |klass|
      if @@relatives[klass] != nil
        puts "\n#{klass}"
        @@relatives[klass].each do |sex|
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

class NilClass

  def include?(param)
    false
  end

end
