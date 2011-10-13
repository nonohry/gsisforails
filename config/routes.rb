Gsisforails::Application.routes.draw do  
  
  get 'results' => 'results#index', as: 'results'
  match 'results/insert' => 'results#insert', as: 'insert_results'
  
  get "krs/daftar"
  get "krs/print"
  match "krs/print_krs"
  match "krs/print_khs"
  match "krs/simpan_krs"
  match "krs/transkrip"

  get "users" => "users#index"
  get "users/biodata"
  get "users/password"
  match "users/simpan_student"
  match "users/simpan_password"

  get 'mahasiswa/biodata/:id' => 'mahasiswa#biodata', as: 'biodata'
  get "mahasiswa/password/:id" => 'mahasiswa#password', as: 'password'
  get "mahasiswa/status/:id" => 'mahasiswa#status', as: 'status'
  get "mahasiswa/krs/:id" => 'mahasiswa#krs', as: 'krs'
  get "mahasiswa/khs/:id" => 'mahasiswa#khs', as: 'khs'
  get "mahasiswa/nilai/:id" => 'mahasiswa#nilai', as: 'nilai'
  get "mahasiswa/hapus_krs" => 'mahasiswa#hapus_krs'
  match "mahasiswa/update"
  match "mahasiswa/simpan_biodata"
  match "mahasiswa/simpan_status/:id" => 'mahasiswa#simpan_status'
  match "mahasiswa/simpan_password/:id" => 'mahasiswa#simpan_password'
  match "mahasiswa/print_krs"
  match "mahasiswa/print_khs"
  match "mahasiswa/krs"
  
  match "parameters/ubah_semua"
  
  resources :admin_users
  resources :students do
    get 'page/:page', :action => :index, :on => :collection
  end
  resources :guides
  resources :schedules
  resources :rooms
  resources :teachings do
    get 'page/:page', :action => :index, :on => :collection
  end
  resources :subjects do
    get 'page/:page', :action => :index, :on => :collection
  end
  resources :dosens do
    get 'page/:page', :action => :index, :on => :collection
  end
  resources :courses
  resources :colleges
  resources :parameters
  resources :foundations
  resources :information

  root :to => "users#index"
  
  get "home" => "home#index", as: "home"
    
  get "admin2403" => "sessions#new", as: "login"
  get "logout" => "sessions#destroy", as: "logout"
  get "signup" => "admin_users#new", as: "signup"
  resources :sessions
  
  get "masuk" => "pupils#new", as: "masuk"
  get "keluar" => "pupils#destroy", as: "keluar"
  resources :pupils
end
