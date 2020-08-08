Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show]

  get '/students', to: 'students#index'
  get '/students/:id', to: 'students#show'
  get '/students/:id/activate', to: 'students#activate_student', as: 'activate_student'
  # get activate_student_path(@student), to: redirect(student_path(@student))
  # activate_student_path(@student)
end
