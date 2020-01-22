def time_string(t)
  Time.at(t).utc.strftime("%H:%M:%S")
end