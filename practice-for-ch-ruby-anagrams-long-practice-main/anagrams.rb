
def first_anagram?(str1, str2)
    str1.chars.permutation.to_a.include?(str2.chars)
end 

def second_anagram?(str1, str2)
    return false if str1.length != str2.length
    str2_chars = str2.chars
    str1.each_char do |char|
        idx = str2_chars.find_index(char)
        str2_chars.delete_at(idx)
        return false if idx.nil?
    end 
    str2_chars.empty?
end 

def third_anagram?(str1, str2)
    alphabet = ("a".."z").to_a
    new_1 = ""
    new_2 = ""

    alphabet.each do |letter|
        str1.each_char do |char|
            new_1 += char if letter == char
        end 

        str2.each_char do |char|
            new_2 += char if letter == char
        end 
    end 
    new_1 == new_2
end 

def fourth_anagram?(str1, str2)
    count1 = Hash.new(0)
    count2 = Hash.new(0)

    str1.each_char { |char| count1[char] += 1}
    str2.each_char { |char| count2[char] += 1}

    count1 == count2

end 

def bonus_anagram?(str1, str2)
    counts = Hash.new(0)


    str1.each_char { |char| counts[char] += 1}
    str2.each_char { |char| counts[char] -= 1}

    counts.values.all?(0)

end 

