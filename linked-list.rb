class Node
	attr_accessor :value, :next_node
  
	def initialize(value, next_node = nil)
	  @value = value
	  @next_node = next_node
	end
end
  
class LinkedList
	def initialize(value = nil)
		@head_node = Node.new(value)
	end

	def insert_beginning(new_value)
		new_node = Node.new(new_value, @head_node)
		@head_node = new_node
	end

	def string_list
		string_list = ''
		current_node = @head_node
		while current_node
			string_list << current_node.value.to_s + '\n' if current_node.value
			current_node - current_node.next_node
		end
		string_list
	end
end


  def stringify_list
	string_list = ""
	current_node = @head_node
	while current_node
	  string_list << current_node.value.to_s + "\n" if current_node.value
	  current_node = current_node.next_node
	end
	string_list
  end

  def remove_node(value_to_remove)
	current_node = @head_node

	if current_node && current_node.value == value_to_remove
	  @head_node = current_node.next_node
	  return
	end

	while current_node
	  next_node = current_node.next_node
	  if next_node && next_node.value == value_to_remove
		  current_node.next_node = next_node.next_node
			current_node = nil
	  else
		  current_node = next_node		  
	  end
	  end
	end
  