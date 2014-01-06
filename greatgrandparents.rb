class Relative

  @@relatives = {}

  def initialize(name = "",sex)
    @name = name.upcase
    @klass = "#{self.class}"
    @super = "#{self.class.superclass}"
  end

  def add_great
    unless defined? @@relatives[@klass]
      @@relatives[@klass] = @name
    else
      puts "ya tiene un #{@klass}"
    end
  end

  def add
    if @super == "Relative"
      add_great
    else
      @@relatives[@klass] ||= []
      @@relatives[@klass] << @name
      puts "#{@name} added as #{@klass}"
    end
  end

  def all
    if defined? @@relatives[@klass]
      @@relatives[@klass].each { |name| puts name[1]}
    end
  end

  def all_sex
    if defined? @@relatives[@klass][@sex]
      @@relatives[@klass][@sex].each { |name| puts name}
    end
  end

  def search
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

  def include? param
    false
  end

end
