class Destination < ApplicationRecord
    belongs_to :user

    validates :longitude, presence: { message: "is needed. Please use the Google Search" }
    validates :rating, numericality: { greater_than_or_equal_to: 0, less_than: 6, message: "must be between 1-5" } 


    after_initialize :set_defaults

    def set_defaults
        if self.category === ""
            self.category = "Please enter category"
        end
        if self.attendees === ""
            self.attendees = "Please enter who attended!"
        end
        if self.comment === ""
            self.comment = "Please enter any thoughts you have about this place!"
        end
        self.cost ||= 0
        self.rating ||= 0
    end

end
