class TodoList
    def initialize(new_array)
        @array = new_array
    end

    def get_items
        
        @new_array = @array
        @new_array

    end

    def add_item(new_item)
        @new_array = @array << new_item
        @new_array
        # new_item.push(@new_array)
    end

        def delete_item(item)
    
        @array.keep_if { |i|
            i != item
        }
        
        end

    def get_item(index)
        @array[index]
    end
end