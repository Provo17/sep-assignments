require_relative 'node'

class MinBinaryHeap
  attr_reader :root

  def initialize(root)
    @root = root
  end

def insert(root, node)

  if root.rating > node.rating
    temp = root
    @root = node
    node = temp
    insert(@root, node)
  else
    if root.left.nil?
      root.left = node
    elsif root.right.nil? && root.left != nil
      root.right = node
    elsif root.left != nil && root.right != nil && root.left.left != nil && root.left.right != nil
      insert(root.right, node)
    elsif root.left != nil && root.right != nil
      insert(root.left, node)
    end
  end
end

  def find(root, data)
    if root.nil? || data.nil?
      return nil
    else
      if root.title == data
        return root
      elsif root.left != nil
        find(root.left, data)
      elsif root.right != nil
        find(root.right, data)
      end
    end
  end

  def delete(root, data)
    if root.nil? || data.nil?
      return nil
    else
      target_node = find(root, data)
      target_node.nil? ? nil : (target_node.title = nil && target_node.rating = nil)
    end
  end

  def printf
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