class Todo < ActiveRecord::Base
    def to_pleasant_string
          is_completed = completed ? "[X]" : "[ ]" 
          "#{id}. #{due_date} #{todo_text} #{is_completed}\n"
      
    end
end