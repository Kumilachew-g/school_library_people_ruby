require './nameable'

class Decorator < Nameable
    def initialaize(nameable)
        super()
        @nameable = nameable
    end
    
end