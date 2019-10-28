$array = [21, 35, 33, 41, 16, 6]

def select_rank(arr)
  arr.each_with_index do |item, index|
    init_index = index
    inner_arr = arr[index+1, arr.length - index]
    inner_arr.each_with_index do |i, idx|
      min_num = item
      min_index = init_index
      if min_num > i
        min_index = idx + index + 1
        min_num = arr[min_index]
      end
      select_change_position($array, init_index, min_index)
    end
  end
end
def select_change_position (arr, init_index, min_index)
  arr_store = arr[init_index]
  arr[init_index] = arr[min_index]
  arr[min_index] = arr_store
end

p "原始数组",$array
select_rank($array)
p "排序后数组",$array
