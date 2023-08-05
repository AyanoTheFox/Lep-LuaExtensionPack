require 'lep'

print("mutiply of a number with ceil: " .. math.multiply(25, 16, 'ceil'))
print("mutiply of a number with floor: " .. math.multiply(25, 16, 'floor'))
print("round of a decimal number with ceil: " .. math.round(1.5678668678, 2, 'ceil')) --round to more
print("round of a decimal number with floor: " .. math.round(1.5678668678, 2, 'floor')) --round to less
print("root of 25 is: " .. math.root(5 ^ 2)) --yes 5 ^ 2 is valid because 5 ^ 5 = 25
print("cmfr of 1 of diam is: " .. math.cmfr(1))
print("this number is more than 1 and less than 6: " .. math.clamp('normal', 2, math.random(1, 10), 5))--think random like a exemple of a var not const
print("the linear interpolention of 0 into 30 in 50% id: " .. math.lerp2(0, 30, 50 / 100)) --lerp and larp 2 is the samething XD