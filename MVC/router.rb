require_relative "repo"
require_relative "list_view"
require_relative "list_controller"
require_relative "students_list"

list = StudentsList.new(10)
repo = Repo.new
view = ListView.new
controller = ListControll.new(repo, view)


p "Welcome to your student list!!!"
user_choice = ""
until user_choice == "quit"
    p "Options:" 
    p "1 - show list"
    p "2 - add student"
    p "3 - delete student"
    p "type quit to exit"
    user_choice = gets.chomp

    case user_choice
    when '1'
        controller.display_list
    when '2' 
        controller.store_name
    when '3'
        controller.delete_name
    when "quit"
        p "thanks for using our app!!!"
    end
end