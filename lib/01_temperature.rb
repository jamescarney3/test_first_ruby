def ftoc(ftemp)
  (ftemp.to_f - 32.0) * 5.0/9.0
end

def ctof(ctemp)
  ctemp.to_f * 9.0/5.0 + 32.0
end