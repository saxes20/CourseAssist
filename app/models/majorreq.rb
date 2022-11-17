class Majorreq < ApplicationRecord
    def self.search(search)
        if search
            self.where(subject: search)
        end
    end
end