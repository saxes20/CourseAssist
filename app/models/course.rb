class Course < ApplicationRecord
    def self.search(search)
        if search
            self.where("course LIKE ?", "%" + search + "%")
        else
            Course.all
        end
    end
end