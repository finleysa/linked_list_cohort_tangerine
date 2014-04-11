class LinkedListItem
  include Comparable
  attr_accessor :payload, :next_list_item
  
  def initialize(payload)
    @payload = payload
  end

  def next_list_item= next_list_item
    next_list_item == self ? (raise ArgumentError.new("Nope")) : (@next_list_item = next_list_item)
  end

  def last?
    self.next_list_item == nil ? true : false
  end

  def ===(other)
    self.object_id === other.object_id ? true : false
  end

  def <=> other
    self.payload.to_s <=> other.payload.to_s
  end
end
