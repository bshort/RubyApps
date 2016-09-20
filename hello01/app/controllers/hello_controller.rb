class HelloController < ApplicationController

  layout :admin_or_user

  

   
  def index
    one = 1
    two = 2
    two = 3 + one  
    my_array = [[1, 2, 'tweet'],[3, 4, 'tweet']]
    my_hash ={ 'one' => 1, 'two' => 2, 'three' => 'tweet' }
    @result = one + two + my_array[0][1] + my_hash['two'] + add_them(1, 2)
    
    
    @result = 'First is greater than or equal to last.'
    first=202
    last=25
    unless first < last
      @result = 'First is smaller than last.'
    end
    
    if first < last
        @result = 'blah First is smaller than last.'
      elsif last < first
        @result = 'baz First is greater than or equal to last.'
      else 
        @result = 'final'
      end
      
      @result = case
         when first < last
            'First is smaller than last.'
         when first == last
            'First is equal to last.'
         when first > last
            'First is greater than last.'
       end
       
       count=1
       #@result =' '
       while count <= 10 do
           @result = @result + count.to_s + " "
           count= count + 1
       end
       
       count = -10
       until count > 10 do
           @result = @result + count.to_s + " "
           count= count + 1
       end
       
       count.times {
           @result = @result + "count "
       }
       for i in 1..count
           @result = @result + i.to_s + " "
       end
      # ActionController::Base.helpers.sanitize(str)
       @result = @result + Helpers.tag(:br)
       
       my_array= [5, 4, 3, 2, 1]
       for i in my_array
           @result = @result + i.to_s + " "
       end
       
       @message = "test message in a global variable"
       
       @message = @message + "test"
       print 1.class      # => Fixnum: the number 1 is a Fixnum
       print 0.0.class    # => Float: floating-point numbers have class Float
       true.class   # => TrueClass: true is a the singleton instance of TrueClass
       false.class  # => FalseClass
       nil.class    # => NilClass
       
       3.times { print "Ruby! " } 
       
       1.upto(9) {|x| print x } 
       
       
       a = [3, 2, 1]     # This is an array literal
       a[3] = a[2] - 1   # Use square brackets to query and set array elements
       a.each do |elt|   # each is an iterator. The block has a parameter elt
         print elt+1     # Prints "4321"
       end               # This block was delimited with do/end instead of {}
       
       
       
       
  end
  
  private
  
  def add_them(firstNumber, secondNumber)
    firstNumber + secondNumber
  end
  module Helpers
      extend ActionView::Helpers::TagHelper
  end
  
  
  def admin_or_user
     if true
       "standard_layout"
     else
       "hello"
     end
   end
   
   
 
end
