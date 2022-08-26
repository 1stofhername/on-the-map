class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/users' do
    users = User.all
    users.to_json
  end

  get '/sessions/:email&:password' do
    user = User.find_by(email: params["email"], password: params["password"])
    user.to_json
  end

  post '/users/signup' do
    user = User.create(first_name: params["first_name"], last_name: params["last_name"], email: params["email"], password: params["password"], headline: params["headline"], category: params["category"])
    user.to_json
  end

  post '/users/:email' do
    user = User.find_by(email: params[:email], password: params[:password])
  end

  post '/posts' do
    post = Post.create(
      image_file: params[:image_file],
      location: params[:location],
      caption: params[:caption],
      user_id: params[:user_id]
    )
    post.to_json
  end

end
