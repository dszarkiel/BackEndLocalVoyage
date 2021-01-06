class Destination < ApplicationRecord
    belongs_to :user

    validates :longitude, :latitude, presence: true 


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
