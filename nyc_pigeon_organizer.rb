require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  
  pidgeon_hash = {} 
  data.each_with_object ({}) do |(key, value), new_array|
    value.each do |new_key, names|
      names.each do |name| 
        
        if !pidgeon_hash[name]
          pidgeon_hash [name] = {} 
        end 
        if !pidgeon_hash[name][key] 
          pidgeon_hash[name][key]=[]
        end 
        
        pidgeon_hash[name][key] << new_key.to_s 
        
      end 
    end
    end 
    pidgeon_hash
          

end