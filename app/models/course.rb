class Course < ApplicationRecord
    def self.search(search)
        if search
            self.where("course LIKE ?", "%" + search + "%")
        else
            return Course.all
        end
    end

    def self.recommend_courses(major, minor)
        all_courses = Course.all
        recs = []

        major_code = ''
        minor_code = ''

        case major
        when 'Operations Research'
            major_code = 'IEOR'
        when 'Computer Science'
            major_code = 'COMS'
        when 'Economics'
            major_code = 'ECON'
        when 'Statistics'
            major_code = 'STAT'
        else
            major_code = ''
        end
        
        case minor
        when 'Operations Research'
            minor_code = 'IEOR'
        when 'Computer Science'
            minor_code = 'COMS'
        when 'Economics'
            minor_code = 'ECON'
        when 'Statistics'
            minor_code = 'STAT'
        else
            minor_code = ''
        end

        if major_code == '' and minor_code == ''
            return
        end

        all_courses.each do |c|
            puts c.course[0,4]
            if c.course[0, 4] == major_code or c.course[0,4] == minor_code
                recs << c
            end
        end
        return recs
    end

end