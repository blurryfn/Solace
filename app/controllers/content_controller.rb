class ContentController < ApplicationController
  def fortnite_game
   
    file_path = Rails.root.join('public',  'contentpages.json')
    
   
    if File.exist?(file_path)
      contentpages = JSON.parse(File.read(file_path))
      render json: contentpages, status: :ok
    else
      render json: { error: 'contentpages.json not found' }, status: :not_found
    end
  end
end