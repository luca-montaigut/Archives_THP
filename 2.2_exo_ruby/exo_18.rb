mails = []

50.times do |i|
  mails += ["jean.dupont" + "#{"%02d" % (i+1)}" + "@email.fr"]
end

puts mails