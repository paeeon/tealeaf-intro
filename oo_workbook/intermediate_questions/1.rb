class Person
  attr_accessor :lastname
  attr_accessor :firstname

  def <=>(person_to_compare_to)
    lastname_comparison = self.lastname <=> person_to_compare_to.lastname
    return lastname_comparison unless lastname == 0
    self.firstname <=> person_to_compare_to.firstname
  end
end