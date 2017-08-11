module ApplicationHelper
  def youtube_embed(youtube_url)
    if youtube_url[/youtu\.be\/([^\?]*)/]
      youtube_id = $1
    else
      youtube_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
      youtube_id = $5
    end
    %Q{<iframe id="vid_frame" title="YouTube video player" width="640" height="390" src="https://www.youtube.com/embed/_#{ youtube_id }?wmode=transparent&rel=0" frameborder="0" allowfullscreen></iframe>}
  end


end
