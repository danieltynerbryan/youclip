json.array!(@clips) do |clip|
  json.extract! clip, :id, :youtube_id, :start, :end
  json.url clip_url(clip, format: :json)
end
