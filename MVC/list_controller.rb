class ListControll

    def initialize(repo, view)
        @repo = repo
        @view = view
    end

    def store_name
        user_choice = @view.ask_user_for_name
        @repo.add(user_choice)
    end

    def delete_name
        @view.display(@repo.students_repository)
        user_choice = @view.ask_for_user_index
        @repo.delete(user_choice)

        @view.display(@repo.students_repository)
    end

    def display_list
        @view.display(@repo.students_repository)
    end
end