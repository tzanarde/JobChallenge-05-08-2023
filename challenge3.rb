def main(string)
  openings = 0
  closings = 0
  0.upto string.length do |index|
      openings += 1 if parenthesis_opening?(string[index])
      closings += 1 if parenthesis_closing?(string[index])
  end
  parenthesis_missing_count(openings, closings)
end

private

def parenthesis_opening?(char)
  char == '('
end

def parenthesis_closing?(char)
  char == ')'
end

def parenthesis_missing_count(openings, closings)
  return closings - openings unless (closings - openings).negative?
  (closings - openings) * -1
end
