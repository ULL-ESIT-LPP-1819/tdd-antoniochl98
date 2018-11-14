
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

		else
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
		else
			@tail.value="NULL"
			@size-=1
		end
	end

	def clasifica(a)
		aux=@head
		v_bajo=[]
		v_alto=[]

		while aux.next!="NULL"
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
		(@head.value=="NULL")
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
