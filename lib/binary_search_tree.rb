require_relative './node'

class BinarySearchTree
  attr_accessor :root

  def initialize(root = nil)
    @root = root
  end

  def search(value)
    node = @root
    if node
      until node.nil? || node.value == value
        if node.value > value
          node = node.left
        else
          node = node.right
        end
      end
      node
    end
  end

  def insert(value)
    node = Node.new(value)
    if @root.nil?
      @root = node
    end
  end
#   def insert(value)
#     node = Node.new(value)
#     if @root.nil?
#       @root = node
#     end
#     if !search(node.value)
#       curr = @root
#       while node.value > curr.value || node.value < curr.value
#         if node.value > curr.value
#           if curr.right.nil?
#             curr.right = node
#           end
#           curr = curr.right
#         else
#           if curr.left.nil?
#             curr.left = node
#           end
#           curr = curr.left
#         end
#       end
#       node
#     end
#   end
end
