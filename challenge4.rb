chars = []
counts = []

def main(word)
	return true if even_sized_word?(word) and no_single_letters?(word)
    return true if odd_sized_word?(word) and only_one_single_letter?(word)
    false
end

private

def odd_sized_word?(word)
    word.length.odd?
end

def even_sized_word?(word)
    word.length.even?
end

def no_single_letters?(word)
    last_char = ''
    char_count = 0
    word.split('').sort.each do |char|
        if char == last_char or last_char == ''
            char_count += 1
        else
            return false if char_count.odd?
            char_count += 0
        end
        last_char = char
    end
    true
end

def only_one_single_letter?(word)
    last_char = ''
    char_count = 0
    single_letters_count = 0
    word.split('').sort.each do |char|
        return false if single_letters_count > 1
        if char == last_char or last_char == ''
            char_count += 1
        else
            single_letters_count += 1 if char_count.odd?
            char_count += 0
        end
        last_char = char
    end
    true
end
