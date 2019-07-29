require 'pry'
class Series
  attr_reader :a
  def initialize(a)
    @a=a
    @s=[]
  end     
  def slices(x)
    raise ArgumentError  if @a.length < x
    if x==1 
      @a.split('')
    elsif x==2
      for i in 0 .. (@a.length-2)
        @s[i]="#{@a[i]}#{@a[i+1]}"
      end
      @s 
    elsif x==3
        for i in 0 .. (@a.length-3)
          @s[i]="#{@a[i]}#{@a[i+1]}#{@a[i+2]}"
        end
      @s
    elsif x==4
      for i in 0 .. (@a.length-4)
        @s[i]="#{@a[i]}#{@a[i+1]}#{@a[i+2]}#{@a[i+3]}"
      end
      @s
    elsif x==5
      for i in 0 .. (@a.length-5)
        @s[i]="#{@a[i]}#{@a[i+1]}#{@a[i+2]}#{@a[i+3]}#{@a[i+4]}"
      end
      @s
    end
  end
end
# binding.pry