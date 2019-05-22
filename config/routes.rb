Rails.application.routes.draw do
root 'doctors#index'

resource :patients
resource :doctors
end
