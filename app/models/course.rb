class Course < ApplicationRecord
    def self.search(search)
        if search
            self.where("course LIKE ?", "%" + search + "%")
        else
            return []
        end
    end
end