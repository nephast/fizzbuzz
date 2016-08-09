def fizzbuzz num
fizz = num % 3 == 0
buzz = num % 5 == 0
if num == 0
  return 0
elsif fizz && buzz
  return "fizzbuzz"
elsif fizz
  return "fizz"
elsif buzz
  return "buzz"
else
  return num
end


end
