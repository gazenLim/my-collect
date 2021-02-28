languages= ['ruby', 'javascript', 'python', 'objective-c'] 
 students= ['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller'] 

def my_collect(array)
    empty_array = []
    count=0
    while count<array.length 
    empty_array<<yield(array[count])
        count+=1
 
    end
    empty_array
end


my_collect(languages) do |language|
  return language.upcase
  end
     
  my_collect(students) do |student|
   return student.split(" ").first
  end
