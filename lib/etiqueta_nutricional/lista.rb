
Node=Struct.new(:value,:next,:prev)


class Lista
       attr_reader :head,:tail,:size	
	def initialize()
		@head=Node.new
		@head.value="NULL"
		@head.next="NULL"
		@head.prev="NULL"
		@tail=@head
		@size=0	
	end

	def push_head(a)
		if @head.value == "NULL" then
			@head.value=a
			@tail=@head
			@size+=1
		else
			aux=Node.new
			aux.value=a
			aux.prev="NULL"
			aux.next=@head
			@head.prev=aux
			@head=aux
			@size+=1
		end
	end

	def pop_head()
		if @head != @tail
			@head=@head.next
			@head.prev="NULL"
			@size-=1

		elsif @head != "NULL"
			@head.value="NULL"
			@size-=1
		end
	end

	def push_tail(a)
		if @head.value == "NULL" then
			@tail.value=a
			@head=@tail
			@size+=1
		else
			aux=Node.new
			aux.value=a
			aux.prev=@tail
			aux.next="NULL"
			@tail.next=aux
			@tail=aux
			@size+=1
		end
	end

	def pop_tail()
		if @head != @tail
			@tail=@tail.prev
			@tail.next="NULL"
			@size-=1
		elsif @tail != "NULL"
			@tail.value="NULL"
			@size-=1
		end
	end

	def to_s()
		s=""
		aux=@head
		while aux.next!="NULL" 
			s+="["+aux.value.to_s+"]"
			aux=aux.next
			if aux.value!="NULL"
				s+="<->"
			end
		end
		if aux.value!="NULL"
			s+="["+aux.value.to_s+"]"
		end
		s
	end


end
