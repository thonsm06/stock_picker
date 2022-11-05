def stock_picker(array)
    current_highest = 0;
    low_pos = 0;
    high_pos = 0;
    array.each_with_index do |v, i| 
        break if i+1 == array.length
        if v < array[i+1]
            array[i+1..-1].each_with_index do |v2, i2|
                if v < v2
                    if current_highest < v2 - v  
                        current_highest = v2 - v
                        low_pos = i
                        high_pos = i + i2 + 1 #adjust for offset to the correct high position
                    end
                end
            end
        end
    end
    return [low_pos, high_pos]
end
p stock_picker([17,3,6,9,15,8,6,1,10])