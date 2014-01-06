module Sex

  @@sexes = {1 => :man, 2 => :woman}

  def check(num)
    @@sexes[num]
  end

  def self.all
    @@sexes.values
  end

end
