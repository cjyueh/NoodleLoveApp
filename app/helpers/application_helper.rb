module ApplicationHelper
	def render_noodles(value)
      output = ''
      if (1..5).include?(value.to_i)
         value.to_i.times { output += "\xF0\x9F\x8D\x9C"}
      end
      output
   end
end