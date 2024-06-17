Rails.application.routes.draw do
  devise_for :users

  get 'perfumes/aruku' => 'perfumes#aruku'
  get 'perfumes/zekkei' => 'perfumes#zekkei'
  get 'perfumes/hinitizyo' => 'perfumes#hinitizyo'
  get 'perfumes/kansyo' => 'perfumes#kansyo'
  get 'perfumes/active' => 'perfumes#active'
  get 'perfumes/nature' => 'perfumes#nature'

  get 'perfumes/ryugado' => 'perfumes#ryugado'
  get 'perfumes/dougo' => 'perfumes#dougo'
  get 'perfumes/matsuyamazyo' => 'perfumes#matsuyamazyo'
  get 'perfumes/otsuka' => 'perfumes#otsuka'
  get 'perfumes/kazura' => 'perfumes#kazura'
  get 'perfumes/takaya' => 'perfumes#takaya'
  get 'perfumes/karusuto' => 'perfumes#karusuto'
  get 'perfumes/chichibu' => 'perfumes#chichibu'

  get 'perfumes/ryugado1' => 'perfumes#ryugado1'
  get 'perfumes/dougo1' => 'perfumes#dougo1'
  get 'perfumes/matsuyamazyo1' => 'perfumes#matsuyamazyo1'
  get 'perfumes/otsuka1' => 'perfumes#otsuka1'
  get 'perfumes/kazura1' => 'perfumes#kazura1'
  get 'perfumes/takaya1' => 'perfumes#takaya1'
  get 'perfumes/karusuto1' => 'perfumes#karusuto1'
  get 'perfumes/chichibu1' => 'perfumes#chichibu1'

  resources :perfumes
 resources :users, only: [:show] do
 end
 get 'flowers/top' => 'flowers#top'

 get 'flowers/shiraberu' => 'flowers#shiraberu'
 get 'flowers/kouchi' => 'flowers#kouchi'
 get 'flowers/ehime' => 'flowers#ehime'
 get 'flowers/kagawa' => 'flowers#kagawa'
 get 'flowers/tokushima' => 'flowers#tokushima'

 get 'flowers/active' => 'flowers#active'
 get 'flowers/goumet' => 'flowers#goumet'
 get 'flowers/nature' => 'flowers#nature'
 get 'flowers/nonbiri' => 'flowers#nonbiri'
 get 'flowers/kansyo' => 'flowers#kansyo'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :flowers do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
    root 'flowers#index' 
 
end



