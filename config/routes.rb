Rails.application.routes.draw do
 get "students", to:"students#index"

 get "students/grades", to:"students#grades"

#  Bonus lab
 get "/students/high-grade", to:"students#high_grade"
end
