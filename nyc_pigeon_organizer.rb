
def nyc_pigeon_organizer(data)
  # write your code here!
  
  final_hash = data.each_with_object({}) do |(key, val), fin_arr|
    val.each do |inner_key, name_arr|
      name_arr.each do |name|
        if !fin_arr[name]
          fin_arr[name] = {}
        end
        if !fin_arr[name][key]
          fin_arr[name][key] = []
        end
        fin_arr[name][key] << inner_key.to_s
        
      end 
    end 
  end
end
