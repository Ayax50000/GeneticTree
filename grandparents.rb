require_relative 'greatgrandparents'

class GrandParent < GreatGrandParent

end

abue = GrandParent.new("Jose chavez",1)
abue.add
abue.add
#abue.all
#abue.all_sex
abue.search
GreatGrandParent.tree
