Rails.application.routes.draw do
  root to: "bucket#index"
  resources :buckets do
    resources :file_uploads, only: [:new, :create, :destroy]
  end

end
