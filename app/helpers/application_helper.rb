module ApplicationHelper
    def checked(area)
        @student.check_type.nil? ? false : @student.check_type.match(area)
    end
end
