def swift ( arr, pos, ele )
	arr[pos] = ele
end	

def eachArr (arr)
	arr.each do |el|
		puts el
	end	
end

def main
	arr = [2,3,4,5]
	puts swift(arr,3,0)
end	

arr = [2,3,4,5]
eachArr(arr)