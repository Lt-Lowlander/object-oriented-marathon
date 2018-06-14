class Zoo
  attr_reader :cages, :employees


  def initialize(name, opening_date, closing_date)
    @name = name
    @opening_date = opening_date
    @closing_date = closing_date
    @cages = []
    10.times do
      @cages << Cage.new
    end

    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def open?(date)
    if date >= @opening_date && date <= @closing_date
      true
    else
      false
    end
  end

  def add_animal(animal)
    cages.each do |cage|
      if cage.empty?
        return cage.animal = animal
      end
    end
    return "Your zoo is already at capacity!"
  end

  def visit
    message = ""

    @employees.each do |employee|
      message += employee.greet + "\n"
    end

    @cages.each do |cage|
      if !cage.empty?
        message += cage.animal.speak + "\n"
      end
    end
    message
  end
end
