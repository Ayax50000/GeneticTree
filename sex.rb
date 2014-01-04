module Sex

  @@sexes = {1 => :man, 2 => :woman}

  def check(num)
    @@sexes[num]
  end

  def show()
   @@sexes.each do |sex|
     puts "#{sex[0]} #{sex[1]} "
   end
  end

end
