def nyc_pigeon_organizer(data)
  # write your code here!
  ans = {}
  data.each do |general,pairs|
    pairs.each do |spec,names|
      names.each do |name|
        #puts "#{name} #{general} #{spec}"
        ans[name] = {} if !ans[name]
        if ans[name][general]
          #puts "adding #{spec} to #{general} of #{name}"
          ans[name][general] += [spec.to_s]
        else
          ans[name][general] = [spec.to_s]
        end
      end
    end
  end
  ans
end
