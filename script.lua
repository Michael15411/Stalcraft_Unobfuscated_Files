local found = getCurrentMemscan().FoundList

function writefile(path, content)
      local file = io.open(path,"w+b")
      if file then
        file:write(content)
        file:close()
        return true
      else
        return false
      end
end
function getTableSize(t)
    local count = 0
    for _, __ in pairs(t) do
        count = count + 1
    end
    return count
end

for i = 0, found.Count - 1 do
  local address = tonumber(found.Address[i], 16)
  address = address + 0
  local other = readString(address, 999999999)
  local name = readString(address + 1, 11)
  if string.find(other, "version 110") then
     writefile('C:/Users/micha/OneDrive/Desktop/stalkerm/deob/110/' .. i .. '_' .. name .. '.txt', other)
       elseif string.find(other, "version 120") then
           writefile('C:/Users/micha/OneDrive/Desktop/stalkerm/deob/120/' .. i .. '_' .. name .. '.txt', other)
       elseif string.find(other, "version 130") then
            writefile('C:/Users/micha/OneDrive/Desktop/stalkerm/deob/130/' .. i .. '_' .. name .. '.txt', other)
       elseif string.find(other, "version 140") then
            writefile('C:/Users/micha/OneDrive/Desktop/stalkerm/deob/140/' .. i .. '_' .. name .. '.txt', other)
       elseif string.find(other, "version 150") then
            writefile('C:/Users/micha/OneDrive/Desktop/stalkerm/deob/150/' .. i .. '_' .. name .. '.txt', other)
       elseif string.find(other, "version 330") then
            writefile('C:/Users/micha/OneDrive/Desktop/stalkerm/deob/330/' .. i .. '_' .. name .. '.txt', other)
       elseif string.find(other, "version 400") then
            writefile('C:/Users/micha/OneDrive/Desktop/stalkerm/deob/400/' .. i .. '_' .. name .. '.txt', other)
       else
           writefile('C:/Users/micha/OneDrive/Desktop/stalkerm/deob/esl/' .. i .. '_' .. name .. '.txt', other)
  end

end