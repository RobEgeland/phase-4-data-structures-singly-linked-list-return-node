require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    # your code here
    # needs to keep track of the number n
    # needs to traverse backwards, get the length of the list?
    # 3 > 2 >
    # length - n 
    # if @head == nil
    #   return nil
    # end

    # tracker = n
    # target_node = @head
    # length = 0
    # while target_node.next_node
    #   target_node = target_node.next_node
    #   length += 1
    # end
    # if tracker > length || tracker < 1
    #   return nil 
    # end
    
    # if tracker == length
    #   return target_node.value
    # end
    
    
    
  #   target_node = @head
  #   counter = 0
  #   while target_node.next_node
  #     if counter == tracker
  #       return target_node.value
  #     end
  #     target_node = target_node.next_node
  #     counter += 1
  #   end
  # end

    len = 0
    temp = @head

    if @head == nil 
      return nil
    end

    while temp.next_node
      temp = temp.next_node
      len += 1
    end

    if len + 1 < n || n < 1
      return nil
    end
    
    temp = @head
    i = 0
    until i == (len - n + 1)
      puts temp.value
      i += 1
      temp = temp.next_node
    end
    temp.value
  end


end
