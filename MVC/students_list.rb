require_relative "repo"
require_relative "list_view"
require_relative "list_controller"

class StudentsList

    attr_reader :students_repository

    def initialize(capacity)
      @capacity = capacity
    end

    def change_capacity!(new_capacity)
        @capacity = new_capacity
    end

end

