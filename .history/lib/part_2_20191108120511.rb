require "byebug"

def my_none?(array, &block)
    array.each { |ele| 
        if !block.call(ele)
            return true
        end
    }
    false
end

def reverser(string, &block)
    block.call(string.reverse)
end

def word_changer(sentence, &block)
    sentence.split(" ").map { |word| block.call(word) }.join(" ")
end

def greater_proc_value(num, prc1, prc2)
    prc1.call(num) > prc2.call(num) ? prc1.call(num) : prc2.call(num)
end

def and_selector(arr, prc1, prc2)
    arr.select { |ele| prc1.call(ele) && prc2.call(ele) }
end

def alternating_mapper (arr, prc1, prc2)
    arr.each_with_index.map { |ele, idx| idx.even? ? prc1.call(ele) : prc2.call(ele) }
end