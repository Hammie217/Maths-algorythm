puts "Enter your basic maths equation"
equation = gets().chomp
nums=equation.split(/\W+/)
operand=equation.tr("0-9", "")
operand=operand.split("")
opCount=operand.length
ans =0;
while(equation.include?("*")or equation.include?("/"))
for i in 0...opCount
  if operand[i]=="*"
    ans=nums[i].to_i*nums[i+1].to_i
    equation=""
    for ii in 0...opCount
      if ii<i
      equation += nums[ii].to_s
      equation += operand[ii].to_s
      elsif ii>i
        equation += operand[ii].to_s
        equation += nums[ii+1].to_s
      elsif
        equation += ans.to_s
      end
    end
    nums=equation.split(/\W+/)
    operand=equation.tr("0-9", "")
    operand=operand.split("")
    opCount=operand.length
  end
  if operand[i]=="/"
    ans=nums[i].to_i/nums[i+1].to_i
    equation=""
    for ii in 0...opCount
      if ii<i
        equation += nums[ii].to_s
        equation += operand[ii].to_s
      elsif ii>i
        equation += operand[ii].to_s
        equation += nums[ii+1].to_s
      elsif
      equation += ans.to_s
      end
    end
    nums=equation.split(/\W+/)
    operand=equation.tr("0-9", "")
    operand=operand.split("")
    opCount=operand.length
  end
end
end
equ="-"
while(equation.include?("+")or equ.include?("-"))
  for i in 0...opCount
    if operand[i]=="+"
      ans=nums[i].to_i+nums[i+1].to_i
      equation=""
      for ii in 0...opCount
        if ii<i
          equation += nums[ii].to_s
          equation += operand[ii].to_s
        elsif ii>i
          equation += operand[ii].to_s
          equation += nums[ii+1].to_s
        elsif
        equation += ans.to_s
        end
      end
      nums=equation.split(/\W+/)
      operand=equation.tr("0-9", "")
      operand=operand.split("")
      opCount=operand.length
    end
    if operand[i]=="-"
      ans=nums[i].to_i-nums[i+1].to_i
      equation=""
      for ii in 0...opCount
        if ii<i
          equation += nums[ii].to_s
          equation += operand[ii].to_s
        elsif ii>i
          equation += operand[ii].to_s
          equation += nums[ii+1].to_s
        elsif
        equation += ans.to_s
        end
      end
      nums=equation.split(/\W+/)
      operand=equation.tr("0-9", "")
      operand=operand.split("")
      opCount=operand.length
    end
  end
  equ = equation[1..-1]
  end
  puts equation