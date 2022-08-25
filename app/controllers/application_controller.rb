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
