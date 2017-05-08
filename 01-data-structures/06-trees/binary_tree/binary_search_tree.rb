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
    return nil if data.nil? || root.nil?
    if  root.title == data
      return root
    elsif root.right != nil
      find( root.right, data)
    elsif root.left != nil
      find(root.left, data)
    end
  end

  def delete(root, data)
    return nil if data.nil? || root.nil?
    node = find(root, data)
    if node.nil? 
      nil
    else
      node.title = nil && node.rating = nil
    end
  end

  # Recursive Breadth First Search
  def printf(children=nil)
    start = [@root]
    list = []
    while start.length > 0
      new_root = start.shift
      if new_root.left != nil
        start.push(new_root.left)
      end
      if new_root.right != nil
        start.push(new_root.right)
      end
      list.push("#{new_root.title}: #{new_root.rating}")
    end
    list.each {|x| puts x}
  end
end
