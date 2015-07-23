json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :poster, :plot, :rating, :watchstatus, :genre
  json.url movie_url(movie, format: :json)
end
