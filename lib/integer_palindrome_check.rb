# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  return false if number == nil
  return false if number < 0
  return true if number == 0
  return true if number < 10

  divisor = 1
  while (number / divisor) >= 10
    divisor *= 10
  end

  temp = number

  while temp != 0
    head = temp / divisor
    tail = temp % 10

    if head != tail
      return false
    end

    temp = (temp % divisor) / 10
    divisor = divisor / 100
  end

  return true
end
