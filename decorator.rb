require_relative 'nameable'

class Decorator < Nameable
  def initialaize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable
  end
end
