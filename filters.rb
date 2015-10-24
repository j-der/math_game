# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
require 'pry'

def find(candidate_id)
# bindng.pry
	output = @candidates.select {|c| c[:id] == candidate_id}
		if output.empty?
			return nil
		else
		return output[0]
	end
end

def experienced?(candidate)
	candidate[:years_of_experience] > 2
end

def github?(points)
	points[:github_points] >= 100
end

def languages?(lang)
	lang[:languages] == 'Ruby' || 'Python'
end

def application_date?(date)
	# binding.pry
	date[:date_applied] > 15.days.ago.to_date
end

def applicant_age?(age)
	age[:age] > 17
end

def qualified_candidates(hire)
	qualified = hire.select do |qual|
		# binding.pry
		experienced?(qual) && 
			github?(qual) && 
			languages?(qual) &&
			application_date?(qual) &&
			applicant_age?(qual)
	end
	qualified
end


def ordered_by_qualifications(candidates)
	candidates.sort_by! do |candidate|
		candidate[:years_of_experience]
	end

	candidates.reverse
end
















