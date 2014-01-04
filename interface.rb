require_relative 'parents'
require_relative 'grandparents'
require_relative 'greatgrandparents'
require_relative 'equalparents'

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
