# frozen_string_literal: true

# class for the full linked list
class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    node = Node.new(value)
    tail.next_node = node unless tail.nil?
    @tail = node
    @head = node if head.nil?
  end

  def prepend(value)
    node = Node.new(value)
    node.next_node = head unless head.nil?
    @head = node
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
