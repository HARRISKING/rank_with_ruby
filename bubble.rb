$array = [2, 31, 33, 41, 16, 76]
$final_data = []

def bubble
  $array.length.times do
    $array.each_with_index do |item, index|
      if $array[index + 1]
        if item > $array[index + 1]
          change_position($array, index)
        end
      end
    end
    $final_data.push($array[$array.length - 1])
    $array.pop
  end
end

def change_position (arr, index)
  arr_store = arr[index + 1]
  arr[index + 1] = arr[index]
  arr[index] = arr_store
end

p "原数组", $array
bubble
p "结果", $final_data
