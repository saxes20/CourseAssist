class Schoolreq < ApplicationRecord
    def self.search(search)
        if search
            self.where(school: search)
        else
            return []
        end
    end
end