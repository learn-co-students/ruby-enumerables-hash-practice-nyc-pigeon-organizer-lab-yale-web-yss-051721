def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, value_hash), final_array|
    value_hash.each do |inner_key, value_array|
      value_array.each do |name|
        if !final_array[name]
          final_array[name] = {}
        end
        if !final_array[name][key]
          final_array[name][key] = []
        end
        final_array[name][key].push(inner_key.to_s)
      end
    end
  end
end
