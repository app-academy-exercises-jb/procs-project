def alternating_mapper (arr, prc1, prc2)
    arr.each_with_index.map { |ele, idx| 
        idx.even? ? prc1.call(ele) : prc2.call(ele)
    }
end