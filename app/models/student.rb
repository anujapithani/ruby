class Student < ApplicationRecord
    validates :student_name,
            presence: true,
            length: { minimum: 3 }
    validates :student_id, :dob, :select_branch, :check_type, :choose_year, :address, presence: true
    validates :password, uniqueness: true,  presence: true
    before_save do
        self.check_type.gsub!(/[\[\]\""]/, "") if attribute_present?("check_type")
    end
end
