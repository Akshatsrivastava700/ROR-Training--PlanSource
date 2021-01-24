class DivisionError<StandardError
  attr_reader :reason
  def initialize(reason)
    @reason=reason
  end
end

def divide(x,y)
    begin
        raise DivisionError.new("Divided by zero") if y == 0
        puts( x/y )
    rescue  DivisionError => e
        puts( e.reason )
    end
end

divide(2,2)
