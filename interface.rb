require_relative 'parents'
require_relative 'grandparents'
require_relative 'greatgrandparents'
require_relative 'equalparents'

tree = [GreatGrandParent,GrandParent,Parent,EqualRelative]

def  interface
  puts "What do you like to do
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

def add(klass,name,sex)
  great = klass.new(name,sex)
  great.add
end

def all(klass,sex,filter)
  great = GreatGrandParent.new(2)
  (filter)? great.all_sex : great.all
end

def search(name)
  great = GreatGrandParent.new(name,1)
  great.search
end

input = nil
while input != 0
  system 'clear'
  interface
  input = gets.to_i
  case input
  when 1  then go_back {ask_name {|name|add(tree[0],name,2)}}
  when 2  then go_back {ask_name {|name|add(tree[0],name,1)}}
  when 3  then go_back {ask_name {|name|add(tree[1],name,2)}}
  when 4  then go_back {ask_name {|name|add(tree[1],name,1)}}
  when 5  then go_back {ask_name {|name|add(tree[2],name,2)}}
  when 6  then go_back {ask_name {|name|add(tree[2],name,1)}}
  when 7  then go_back {ask_name {|name|add(tree[3],name,2)}}
  when 8  then go_back {ask_name {|name|add(tree[3],name,1)}}
  when 9  then go_back {all(tree[0],2,true)}
  when 10 then go_back {all(tree[0],1,true)}
  when 11 then go_back {all(tree[0],1,false)}
  when 12 then go_back {all(tree[1],2,true)}
  when 13 then go_back {all(tree[1],1,true)}
  when 14 then go_back {all(tree[1],1,false)}
  when 15 then go_back {all(tree[2],2,true)}
  when 16 then go_back {all(tree[2],1,true)}
  when 17 then go_back {all(tree[2],1,false)}
  when 18 then go_back {all(tree[3],2,true)}
  when 19 then go_back {all(tree[3],1,true)}
  when 20 then go_back {all(tree[0],1,false)}
  when 21 then go_back {ask_name {|name| search(name)}}
  when 22 then go_back {GreatGrandParent.tree}
  end
end
system 'clear'
