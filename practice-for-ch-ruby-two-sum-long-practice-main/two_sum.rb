
# # O(n^2)
# def bad_two_sum?(arr, target_sum)
#     arr.each_with_index do |n1, i|
#         arr.each_with_index do |n2, j|
#             return true if n1 + n2 == target_sum && j > i
#         end
#     end
#     false
# end


# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false



def good_two_sum?(arr, target_sum) #sorting

    arr.sort!
    i = 0
    j = -1

    while i < arr.length
        if arr[i] + arr[j] == target_sum
            return true
        elsif arr[i] + arr[j] > target_sum
            j -= 1
        else
            i +=1
        end
    i+=1
    end
    false
end

arr = [0, 1, 5, 7]
arr1 = [2, 25, 6, 5, 7, 1]
p good_two_sum?(arr, 6) # => should be true
p good_two_sum?(arr, 10) # => should be false
p good_two_sum?(arr1, 9) # =>true
p good_two_sum?(arr1, 26) # =>true
