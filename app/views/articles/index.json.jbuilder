json.array!(@articles) do |article|
  json.extract! article, :id, :title, :author, :description, :image_url, :text, :user_id, :edited, :published
  json.url article_url(article, format: :json)
end
