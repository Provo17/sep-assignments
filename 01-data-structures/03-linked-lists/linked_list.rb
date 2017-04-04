require_relative 'node'
require 'benchmark'

class LinkedList
  attr_accessor :head
  attr_accessor :tail
  


  # This method creates a new `Node` using `data`, and inserts it at the end of the list.
  def add_to_tail(node)
    if @head == nil
      @head = node
      @tail = node
      
      return
    end
    # create new node
      # current_node = node
    # set old_tail to @tail
     old_tail = @tail 
    # set @tail to node
      @tail = node
    # set old_tail.next to @tail
      old_tail.next = @tail
  end

  # This method removes the last node in the lists and must keep the rest of the list intact.
  def remove_tail
    if @head.next == nil
      @head = nil
      @tail = nil
    
      return
    end
    # set temp value to @head
    temp = @head
    # loop through LL 
    while temp && (temp.next.next != nil)
      temp = temp.next
    end
    
    temp.next = nil
    @tail = temp
  end

  # This method prints out a representation of the list.
  def print
    msg = ''
    current = @head
    while current != nil
      msg << current.data << "\n"
      current = current.next
    end

    puts msg
  end

  # This method removes `node` from the list and must keep the rest of the list intact.
  def delete(node)
    if @head == node
      remove_front
    elsif @tail == node
      remove_tail
    else
      current_node = @head
      until current_node.next == node
        current_node = current_node.next
      end
      current_node.next = node.next
    end   
  end

  # This method adds `node` to the front of the list and must set the list's head to `node`.
  def add_to_front(node)
    if @head.nil?
      @head = node
    else
      node.next = @head
      @head = node
    end    
  end

  # This method removes and returns the first node in the Linked List and must set Linked List's head to the second node.
  def remove_front
    if @head.next == nil
      @head = nil
      @tail = nil
    else
      @head = @head.next
      @head.prev = nil
    end
  end    
end
