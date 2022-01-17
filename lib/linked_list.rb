# frozen_string_literal: true

# class for the full linked list
class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end
end

# class for each node
class Node
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
