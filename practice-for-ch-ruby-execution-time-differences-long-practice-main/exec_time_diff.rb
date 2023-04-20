
def my_min(list)   #Analysis: O(n)
    i = 0
    min = list[i]
    while i < list.length - 1
        if min >= list[i+1]
            min = list[i+1]
        else
            min
        end
        i += 1
    end
    min
end

#PHASE 1
# def largest_contiguous_subsum(list)
#     subs_sum = []
#     list.each_with_index do |el1, i|
#         list.each_with_index do |el2, j|
#             if j >= i
#                 subs_sum << list[i..j].sum
#             end
#         end
#     end
#     subs_sum.max
# end

#PHASE 2
def largest_contiguous_subsum(list)
    i = 0

    largest_sum = list[i] #5
    current_sum = 0 #5

    while i < list.length
        ele = list[i] #8-7 = 1
        current_sum += ele
        if current_sum > largest_sum
            largest_sum = current_sum
        elsif current_sum < 0
            current_sum = 0
        end
        i += 1
    end
    largest_sum

end

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7

list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])
