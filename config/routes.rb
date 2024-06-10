Rails.application.routes.draw do
  devise_for :users

  get 'beans/toppage' => 'beans#toppage'
  get 'perfumes/questiontop'=> 'perfumes#questiontop'
  get 'perfumes/question1' => 'perfumes#question1'
  get 'perfumes/question2_1' => 'perfumes#question2_1'
  get 'perfumes/question2_2' => 'perfumes#question2_2'
  get 'perfumes/question3_1' => 'perfumes#question3_1'
  get 'perfumes/question3_2' => 'perfumes#question3_2'
  get 'perfumes/question3_3' => 'perfumes#question3_3'
  get 'perfumes/question3_4' => 'perfumes#question3_4'
  get 'perfumes/show1' => 'perfumes#show1'
  get 'perfumes/show2' => 'perfumes#show2'
  get 'perfumes/show3' => 'perfumes#show3'
  get 'perfumes/show4' => 'perfumes#show4'
  get 'perfumes/show5' => 'perfumes#show5'
  get 'perfumes/show6' => 'perfumes#show6'
  get 'perfumes/show7' => 'perfumes#show7'
  get 'perfumes/show8' => 'perfumes#show8'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :edit, :update] do
  end

  resources :homes
  resources :beans

  root 'beans#toppage'
end
