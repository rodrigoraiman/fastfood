Rails.application.routes.draw do
 #routes collection
 get 'foods', to: 'foods#index'
 post 'foods/add', to: 'foods#create'
 #routes member
 get 'foods/:id', to: 'foods#show'
 get 'foods/price/:min_price/:max_price', to: 'foods#price'

 #destroy 'foods/:id', to: 'foods#destroy'


end


