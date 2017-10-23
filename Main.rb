puts "Enter your basic maths equation"
equation = gets().chomp
nums=equation.split(/\W+/)
operand=equation.tr("0-9", "")
operand=operand.split("")
i=0
operand.each do |x|

  if x=="+"
    nums[i]=nums[i].to_i+nums[i+1].to_i
    nums[i+1]=nums[i]

  elsif x=="-"
    nums[i]=nums[i].to_i-nums[i+1].to_i
    nums[i+1]=nums[i]

  end
  i +=1
end
length=nums.length
puts nums[length-1]