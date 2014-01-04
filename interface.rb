require_relative 'parents'
require_relative 'grandparents'
require_relative 'greatgrandparents'
require_relative 'equalparents'

def  interface
  pu ts "What do you like to do
          1   - add Great Grand Mother
          2   - add Great Grand Father
          3   - add Grand Mother
          4   - add Grand Father
          5   - add Woman of Parents Generation
          6   - add Man of Parents Generation
          7   - add Woman of your Generation
          8   - add Man of your Generation
          9   - see Great Grand Mother
          10  - see Great Grand Father
          11  - see Great Grand Parents
          12  - see Grand Mothers
          13  - see Grand Fathers
          14  - see Grand Parents
          15  - see Women of Parents Generation
          16  - see Men of Parents Generation
          17  - see all of Parents Generation
          18  - see Women of your Generation
          19  - see Men of your Generation
          20  - see all of your Generation
          21  - find what is a person for you
          22  - see Genealogic Tree
          0   -  exit\n\n"
end

def go_back
  system 'clear'
  puts "\n" * 6
  yield
  puts "\n" * 6
  puts "Press enter to go back"
  gets
end

def ask_name
  puts "Which is the name of this Person"
  name = gets.chomp
  yield name
end

input = nil
while input != 0
  system 'clear'
  interface
  input = gets.to_i
  case input
    when 1 then go_back do
          ask_name do |name|
          great = GreatGrandParent.new(name,2)
          great.add
        end
      end
    when   2 then go_back do
          ask_name do |name|
          great = GreatGrandParent.new(name,1)
          great.add
        end
      end
    when   3 then go_back do
          ask_name do |name|
          great = GrandParent.new(name,2)
          great.add
        end
      end
    when   4 then go_back do
          ask_name do |name|
          great = GrandParent.new(name,1)
          great.add
        end
      end
    when   5 then go_back do
          ask_name do |name|
          great = Parent.new(name,2)
          great.add
        end
      end
    when   6 then go_back do
          ask_name do |name|
          great = Parent.new(name,1)
          great.add
        end
      end
    when   7 then go_back do
          ask_name do |name|
          great = EqualRelative.new(name,2)
          great.add
        end
      end
    when   8 then go_back do
          ask_name do |name|
          great = EqualRelative.new(name,1)
          great.add
        end
      end
    when   9 then go_back do
          great = GreatGrandParent.new(2)
          great.all_sex
        end
    when   10 then go_back do
        great = GreatGrandParent.new(1)
        great.all_sex
      end
    when   11 then go_back do
        great = GreatGrandParent.new(2)
        great.all
      end
    when   12 then go_back do
        great = GrandParent.new(2)
        great.all_sex
    when   13 then go_back do
        great = GrandParent.new(1)
        great.all_sex
      end
    when   14 then go_back do
        great = GrandParent.new(1)
        great.all
      end
    when   15 then go_back do
        great = Parent.new(2)
        great.all_sex
      end
    when   16 then go_back do
        great = Parent.new(1)
        great.all_sex
      end
    when   17 then go_back do
        great = Parent.new(1)
        great.all
      end
    when   18 then go_back do
        great = EqualRelative.new(2)
        great.all_sex
      end
    when   19 then go_back do
        great = EqualRelative.new(1)
        great.all_sex
      end
    when   20 then go_back do
        great = EqualRelative.new(1)
        great.all
      end
    when   21 then go_back do
          ask_name do |name|
          great = GreatGrandParent.new(name,1)
          great.search
        end
      end
    when   22 then go_back do
        GreatGrandParent.tree
      end
    end
  end
system 'clear'
