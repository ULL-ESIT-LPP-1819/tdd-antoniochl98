
Node=Struct.new(:value,:next,:prev)


class Lista
	include Enumerable
       attr_reader :head,:tail,:size	
	def initialize()
		@head=nil
		@tail=@head
		@size=0	
	end

	def push_head(a)
		if @head.nil? then
			@head=Node.new
			@head.value=a
			@head.prev=nil
			@head.next=nil
			@tail=@head
			@size+=1
		else
			aux=Node.new
			aux.value=a
			aux.prev=nil
			aux.next=@head
			@head.prev=aux
			@head=aux
			@size+=1
		end
	end

	def pop_head()
		if @head != @tail
			@head=@head.next
			@head.prev=nil
			@size-=1

		else
			@head=nil
			@tail=@head
			@size-=1
		end
	end

	def push_tail(a)
		if @head.nil? then
			@tail=Node.new()
			@tail.value=a
			@tail.next=nil
			@tail.prev=nil
			@head=@tail
			@size+=1
		else
			aux=Node.new
			aux.value=a
			aux.prev=@tail
			aux.next=nil
			@tail.next=aux
			@tail=aux
			@size+=1
		end
	end

	def pop_tail()
		if @head != @tail
			@tail=@tail.prev
			@tail.next=nil
			@size-=1
		else
			@tail=nil
			@head=@tail
			@size-=1
		end
	end

	def clasifica(a)
		aux=@head
		v_bajo=[]
		v_alto=[]

		while !aux.next.nil?
			if aux.value.sal<=a
				v_bajo.push(aux)
			else
				v_alto.push(aux)
			end
			aux=aux.next
		end
		
		if aux.value.sal<=6
			v_bajo.push(aux)
		else
			v_alto.push(aux)
		end
		v_clasificado=[v_bajo,v_alto]

	end

	def empty()
		(@head.nil?)
	end	

	def to_s()
		s=""
		aux=@head
		while !aux.next.nil? do 
			s+="["+aux.value.to_s+"]"
			aux=aux.next
			if aux.value!="NULL"
				s+="<->"
			end
		end
		if !aux.nil?
			s+="["+aux.value.to_s+"]"
		end
		s
	end
	
	def pos(i)
		return nil unless i<size()
		j=0
		aux=@head
		while j<i do
			aux=aux.next
			j+=1
		end
		aux
	end
	
	def pop_at(i)
		return nil unless i<size()
		if i==0 
			pop_head
		elsif i==(size()-1)
			pop_tail
		else 
			aux=pos(i)
			aux.prev.next=aux.next
			aux.next.prev=aux.prev
			@size-=1
		end
	end

	def each
		node=@head
		while !node.nil?
			yield node.value
			node=node.next
		end
	end
end
