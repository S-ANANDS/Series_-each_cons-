require 'pry'
class Series
  attr_reader :a
  def initialize(a)
    @a=a
  end     
  def slices(x)
    raise ArgumentError  if @a.length < x
     @a=@a.chars
     b=@a.each_cons(x).to_a
     b.map{|p|p.join} 
    end
  
end
# binding.pry