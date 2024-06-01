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
  get 'perfumes/show7' => 'perfumes#show7'
  get 'perfumes/show8' => 'perfumes#show8'
  get 'perfumes/show9' => 'perfumes#show9'
  get 'perfumes/show10' => 'perfumes#show10'
  get 'perfumes/show11' => 'perfumes#show11'
  get 'perfumes/show12' => 'perfumes#show12'
  get 'perfumes/show13' => 'perfumes#show13'
  get 'perfumes/show14' => 'perfumes#show14'
  get 'perfumes/show15' => 'perfumes#show15'
  get 'perfumes/show16' => 'perfumes#show16'
end
