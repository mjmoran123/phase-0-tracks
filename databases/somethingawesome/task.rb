class Task
	attr_accessor :date, :start_time, :end_time, :location, :description

	def initialize(date,start_time,end_time,location,description)
		@date = date
		@start_time = start_time
		@end_time = end_time
		@location = location
		@description = description
	end
	
	# def to_s
	# 	puts "DATE: #{@date}"
	# 	puts "FROM #{@start_time} to #{@end_time}"
	# 	puts "AT #{@location}"
	# 	puts @description
	# end
end

# task1 = Task.new
# task1.date = "06232016"
# task1.start_time = "12:30"
# task1.end_time = "16:30"
# task1.location = "jackalope cafe"
# task1.description = "work on 8.5 assignment"

# puts task1

