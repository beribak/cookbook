class ListView

    def display(repo)
        repo.each_with_index do |student, index|
            p "#{index} -- #{student}"
        end
    end

    def ask_user_for_name
        p "Who do you want to add to the list"
        return gets.chomp
    end

    def ask_for_user_index
        p "Which student do you want to remove from the list?"
        return gets.chomp.to_i
    end
end