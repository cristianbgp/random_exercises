require 'prime'

palindrome = -> (number) do
    number.to_s == number.to_s.reverse
end

palindrome_prime =  -> (array_size) do
    (1..Float::INFINITY).lazy.select { |x| palindrome.call(x) && x.prime? }.first(array_size)
end

array_size = gets.strip.to_i
p palindrome_prime.call(array_size)