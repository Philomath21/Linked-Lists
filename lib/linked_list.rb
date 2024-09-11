# Node
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

# Linked List
class LinkedList
  attr_accessor :head, :tail, :size

  def initialize
    self.head = nil
    self.tail = nil
    self.size = 0
  end

  def append(value)
    # Setting @next of current @tail to new Node
    new_node = Node.new(value, nil) # @next_node = nil
    tail.next_node = new_node       # for previous tail
    # Changing @tail of list to new Node
    self.tail = new_node

    # Increasing size by 1
    self.size = size + 1
    self.head = tail if size == 1
  end

  def prepend(value)
    # Changing @head of list to new Node, @next_node = @head
    self.head = Node.new(value, head)

    # Increasing size by 1
    self.size = size + 1
    self.tail = head if size == 1
  end

  def at(index)
    return nil if index >= size

    node = head
    index.times { node = node.next_node }
  end

  def pop
    popping_node = tail

    # Changing @tail of list to second last node
    self.tail = at(size - 2) # second_last_node
    tail.next_node = nil unless tail.nil?

    # Reducing size by 1
    self.size = size - 1
    self.head = tail if size < 2

    popping_node.value # returning value of last node
  end

  def find(value)
    node = head
    size.times do |index|
      return index if node.value == value

      node = node.next_node
    end
    nil
  end

  def contains?(value)
    return false if find(value).nil?

    true
  end

  def insert_at(value, index)
    # Converting reverse index (negative) into normal positive index
    index += size if index.negative?

    if index.zero?
      prepend(value)
    elsif index == size
      append(value)
    elsif index < size
      prev_node = at(index - 1)
      prev_node.next_node = Node.new(value, prev_node.next_node)
      self.size = size + 1 # Increasing size by 1
    else
      puts 'Index not found'
      nil
    end
  end

  def remove_at(index)
    # Converting reverse index (negative) into normal positive index
    index += size if index.negative?

    if index == size - 1
      pop(value)
    elsif index < size
      prev_node = at(index - 1)
      prev_node.next_node = prev_node.next_node.next_node
      self.size = size - 1 # Decreasing size by 1
    else
      puts 'Index not found'
      nil
    end
  end

  def to_s
    node = head
    list_s = ''
    size.times do
      list_s += "( #{node} ) -> "
      node = node.next_node
    end

    "#{list_s}nil"
  end
end
