def measure (x = 1, &block)
	all_time = 0
	x.times do
		time_begin = Time.now
		block.call
		time_end = Time.now
    all_time += time_end - time_begin
	end
  all_time / x
end
  