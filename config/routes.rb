Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :edit, :update]do

end
  post 'beans/new' => 'beans#create'

  get 'beans/toppage' => 'beans#toppage'
  resources :homes
  resources :beans



  root 'beans#toppage'

  get 'perfumes/question1' => 'perfumes#question1'
  get 'perfumes/question2' => 'perfumes#question2'
  get 'perfumes/question3' => 'perfumes#question3'
  get 'perfumes/question4' => 'perfumes#question4'
  get 'perfumes/show1' => 'perfumes#show1'
  get 'perfumes/show2' => 'perfumes#show2'
  get 'perfumes/show3' => 'perfumes#show3'
  get 'perfumes/show4' => 'perfumes#show4'
  get 'perfumes/show5' => 'perfumes#show5'
  get 'perfumes/show6' => 'perfumes#show6'
end
