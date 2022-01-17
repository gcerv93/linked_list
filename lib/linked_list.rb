# frozen_string_literal: true

# class for the full linked list
class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(value)
    node = Node.new(value)
    tail.next_node = node unless tail.nil?
    @tail = node
    @head = node if head.nil?
    @size += 1
  end

  def prepend(value)
    node = Node.new(value)
    node.next_node = head unless head.nil?
    @head = node
    @tail = node if tail.nil?
    @size += 1
  end

  def size
    puts "The size of this linked list is #{@size}"
  end

  def at(index)
    i = 0
    node = @head
    while node
      return node if i == index

      node = node.next_node
      i += 1
    end
  end

  def pop
    if @head.next_node.nil?
      @head = nil
      @tail = nil
      @size -= 1
      return
    end
    node = @head
    while node.next_node
      prev = node
      node = node.next_node
      if node.next_node.nil?
        prev.next_node = nil
        @tail = prev
      end
    end
    @size -= 1
  end

  def contains?(value)
    node = @head
    while node
      return true if node.value == value

      node = node.next_node
    end
    false
  end

  def find(value)
    node = @head
    i = 0
    while node
      return i if node.value == value

      node = node.next_node
      i += 1
    end
    nil
  end
end

# class for each node
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
