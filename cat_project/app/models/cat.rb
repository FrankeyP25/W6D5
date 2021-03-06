require 'action_view'

class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper

    CAT_COLORS = %w(Orange Black Yellow White Gray)

     validates :color, inclusion: { in: %w(Orange Black Yellow White Gray), message: "Invalid, valid colors are: #{CAT_COLORS.join(" ")}."}
     validates :sex, inclusion: { in: %w(M F) ,message: "Please pick M or F"}
     


    def age
        time_ago_in_words(birth_date)
    end

end