def main(numbers, objective)
  output = []
numbers.each_with_index do |number1, index1|
      numbers.each_with_index do |number2, index2|
          if not same_index?(index1, index2) and equal_to_objective?(number1, number2, objective)
              output << index1
              output << index2
              return output
          end
      end
  end
end

private

def same_index?(index1, index2)
  index1 == index2
end

def equal_to_objective?(number1, number2, objective)
  number1 + number2 == objective
end
