def measure (x = 1)
  all_time = 0
  x.times do
    time_begin = Time.now
    yield
    time_end = Time.now
    all_time += time_end - time_begin
  end
  all_time / x
end
  