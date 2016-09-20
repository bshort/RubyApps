class FooController < ApplicationController
  def index
    @result = "bar"
    
    @message = "asldkfjalskdfjalksdfj"
    
    @count = 10
    @bonus = "blah"
  end
  
  def test
    @result = "testing"
  end
end
