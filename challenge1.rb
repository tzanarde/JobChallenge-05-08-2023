def main(n)
  string = ''
  1.upto n do |i|
    string << 'DesenvolvimentoSoftware' if multiple_of_3?(i) and multiple_of_5?(i)
      string << 'Desenvolvimento' if multiple_of_3?(i) and not multiple_of_5?(i)
      string << 'Software' if not multiple_of_3?(i) and multiple_of_5?(i)
      string << i.to_s if not multiple_of_3?(i) and not multiple_of_5?(i)
      string << ', ' unless last_number?(i, n)
  end
  string
end

private

def multiple_of_3?(number)
  number % 3 == 0
end

def multiple_of_5?(number)
  number % 5 == 0
end

def last_number?(iteration, number)
  iteration == number
end
