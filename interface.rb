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
          6   - see Man of Parents Generation
          7   - add Woman of your Generation
          8   - add Man of your Generation
          9   - see Grand Mother
          10  - see Great Grand Mother
          11  - see Great Grand Father
          12  - see Great Grand Parents
          13  - see Grand Mothers
          14  - see Grand Fathers
          15  - see Grand Parents
          16  - see Women of Parents Generation
          17  - see Men of Parents Generation
          18  - see all of Parents Generation
          19  - see Women of your Generation
          20  - see Men of your Generation
          21  - see all of your Generation
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
end
  input = nil
  while input != 0
    system 'clear'
    interface
    input = gets.chomp.to_i
    case input
      when 1 then go_back { Teacher.all }
      when 2 then go_back do
          puts "Please write the name for the new teacher"
          teacher = Teacher.new(gets.chomp)
          teacher.add
        end
      when 3 then go_back do
          Teacher.all
          puts " select the number of the teacher"
          id_teacher = gets.to_id
          puts " please select the number of subject"
          Subject.all
          Subject.assign_teacher(gets.to_id,id_teacher)
        end
      when 4 then go_back do
          Subject.all
          puts "Please select the subject number do you like"
          Subject.all_teachers(gets.to_id)
        end
      when 5 then go_back do
          puts "What is the name of the new subject"
          subject = Subject.new(gets.chomp)
          subject.add
        end
      when 6 then go_back { Subject.all }
      when 7 then go_back do
          puts "Please write the name for the new student"
          student = Student.new(gets.chomp)
          student.add
        end
      when 8 then go_back do
          Student.all
          puts "Please select the number of student you want to assign"
          id_student = gets.to_id
          Subject.all
          puts "Please select the subject target"
          Subject.assign_student(gets.to_id,id_student)
        end
      when 9 then go_back { Student.all }
      when 10 then go_back do
          Student.all
          puts "Please select the number of student you want to assign"
          id_student = gets.to_id
          Subject.student_assignations(id_student)
          puts "Please select the subject target"
          subject = gets.to_id
          puts "What is the score"
          score = gets.to_id
          Subject.assign_student(subject,id_student,score)
        end
      when 11 then go_back do
          Student.all
          puts "Please select the number of student you want to see the score"
          id_student = gets.to_id
          Subject.student_assignations(id_student)
          puts "Please select the subject"
          Subject.student_score(gets.to_id,id_student)
        end
    end
  end
  system 'clear'
abue = Parent.new("Jose Mejia",1)
abue.add
abue.add
abue.all
abue.all_sex
abue.search
GreatGrandParent.tree
abue = GrandParent.new("Jose chavez",1)
abue.add
abue.add
#abue.all
#abue.all_sex
abue.search
GreatGrandParent.tree
abue = EqualRelative.new("isidro mendoza",1)
abue.add
abue.add
#abue.all
#abue.all_sex
#abue.search
GreatGrandParent.tree
abue = GreatGrandParent.new("Jose Martinez",1)
abue.add
abue.add
#abue.all
#abue.all_sex
