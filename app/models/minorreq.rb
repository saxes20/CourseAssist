class Minorreq < ApplicationRecord
    def self.search(search)
        if search
            self.where(subject: search)
        else 
            return []
        end
    end
end