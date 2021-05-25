def nyc_pigeon_organizer(data)
  # write your code here!
  newHash={}
  data.each{
    |attributeName, attributeValue|
    attributeValue.each{
      |attribute_val, names|
      names.each{|name|
      if(newHash[name]==nil)
        newHash[name]={}
      end
      if(newHash[name][attributeName]==nil)
        newHash[name][attributeName]=[]
      end
      newHash[name][attributeName]<< attribute_val.to_s
      }
    }
  }
  newHash
end
