mails = []

50.times do |i|
  mails += ["jean.dupont" + "#{"%02d" % (i+1)}" + "@email.fr"]
  if i % 2 != 0
    puts mails[i]
  end
end