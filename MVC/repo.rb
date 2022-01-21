class Repo

    attr_reader :students_repository
    
    def initialize
        @students_repository = []
    end

    def add(student)
        @students_repository << student
    end   

    def delete(index)
        @students_repository.delete_at(index)
    end

end