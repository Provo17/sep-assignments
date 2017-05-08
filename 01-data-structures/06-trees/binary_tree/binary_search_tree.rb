require_relative 'node'

class BinarySearchTree

  def initialize(root)
    @root = root
  end

  def insert(root, node)
    if root.rating > node.rating
      if root.left.nil? 
        root.left = node
      else
        insert(root.left, node)
      end
    else
      root.right.nil? ? root.right = node : insert(root.right, node) # New trick!!! The ?: operator acts as a one line if/then/else statement.
    end
  end

  # Recursive Depth First Search
  def find(root, data)
    if root.nil? || data.nil?
      return nil
    else 
    
    end
  end

  def delete(root, data)
  end

  # Recursive Breadth First Search
  def printf(children=nil)
  end
end
