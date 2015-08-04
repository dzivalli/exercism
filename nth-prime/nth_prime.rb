class Prime
  def self.nth(prime_number)
    raise ArgumentError if prime_number == 0

    number = 1
    prime_count = 0

    loop do
      number += 1
      prime_count += 1 if Prime.is_prime? number
      break if prime_count == prime_number
    end

    number
  end

  def self.is_prime?(number)
    (2..Math.sqrt(number)).none? { |n| number % n == 0 }
  end
end