def my_map(array, &block)
    mapped = []
    array.each { |ele| mapped << block.call(ele) }
    mapped
end

def my_select(array, &block)
    selected = []
    array.each { |ele| selected << ele if block.call(ele) }
    selected
end

def my_count(array, &block)
    array.select { |ele| block.call(ele) }.length
end

def my_any?(array, &block)
    array.each { |ele| 
        if block.call(ele)
            return true
        end
    }
    false
end

def my_all?(array, &block)
    array.each { |ele| 
        unless block.call(ele)
            return false
        end
    }
    true
end

def my_none?(array, &block)
    array.each { |ele| 
        if block.call(ele)
            return false
        end
    }
    true
end