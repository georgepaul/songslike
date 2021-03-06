class StreamController < ApplicationController


before_filter :allow_ajax_request_from_other_domains
skip_before_filter :verify_authenticity_token

 def allow_ajax_request_from_other_domains
   headers['Access-Control-Allow-Origin'] = '*'
   headers['Access-Control-Request-Method'] = '*'
   headers['Access-Control-Allow-Headers'] = '*'
 end

def search_item

images = ["http://images.thecarconnection.com/lrg/ferrari_100420855_l.jpg",
		"http://assets.vg247.com/current//2014/07/pwill.jpg",
"http://thegrid10.com/wp-content/uploads/2013/11/BIGGIE-SMALLS1993-psd13012.png",
"http://www.okayplayer.com/wp-content/uploads/2014/03/premier-big.jpg",
"http://cps-static.rovicorp.com/3/JPG_400/MI0001/719/MI0001719592.jpg?partner=allrovi.com",
"https://a1-images.myspacecdn.com/images03/21/13dafc86191c4a74b7fa27109f1e07d1/300x300.jpg",
"http://upload.wikimedia.org/wikipedia/en/2/25/De_La_Soul_Are_You_In.png",
"http://cdn.envythedj.netdna-cdn.com/wp-content/uploads/2015/01/tupac_shakur_1996_death_row_interscope_records_photofest_WEB-630x416.jpg",
"http://badgerherald.com/wordpress/media/2013/09/MGMT-by-David-Roemer-for-BlackBook-03.jpg",
"http://hipsterjew.com/wp-content/uploads/2013/03/mgmt.jpg",
"http://www.anthonysaintjames.com/data/photos/43_1asj_bustarhymes.jpg",
"http://www.8notes.com/wiki/images/BustaRhymes.jpg",
"http://upload.wikimedia.org/wikipedia/commons/a/a7/Whitney_Houston_Welcome_Home_Heroes_1_cropped.jpg",
"http://image.thefashionisto.com/wp-content/uploads/2015/01/Pharrell-GQ-February-2015-Cover-800x1088.jpg",
"http://www.centurymedia.com/media/news/large/635507751231191686.jpg",
"http://www.hiphopsite.com/http://www.hiphopsite.com//2014/12/e40.jpg",
"http://www.contactmusic.com/pics/lf/hop_farm_day_two_9_010712/bob-dylan-hop-farm-music-festival-2012_3970660.jpg",
"http://www.alternativenation.net/wp-content/uploads/2014/11/prong2014.jpg",
"http://www.konbini.com/en/files/2014/12/10341572_901716613191926_6562428459844591707_n.jpg",
"http://nme.assets.ipccdn.co.uk/images/gallery/image004.jpg",
"http://www.metalinsider.net/site/wp-content/uploads/2014/11/Tommy-Victor-Prong-200x300.jpg",
"http://cdn4.pitchfork.com/news/57934/b0eb650c.jpg",
"http://ccdn.hiphopdx.com/2014/12/2-chainz-304-300x300.jpg",
"http://cdn3.pitchfork.com/news/56857/4a5e69c0.jpg",
"http://hiphop-n-more.com/wp-content/uploads/2015/01/eminem-3.jpg",
"http://consequenceofsound.files.wordpress.com/2015/01/screen-shot-2015-01-17-at-10-21-17-am.png?w=807",
"http://hiphop-n-more.com/wp-content/uploads/2015/01/hogg-life.jpg",
"http://www.hiphopdx.com/images/600_1416201025_jcole_artwork_64.jpg",
"http://news.hiphopearly.com/wp-content/uploads/2015/01/TechN9nePhoto-750x400-520x245.jpg",
"http://mediastorage-lls.bauermedia.co.uk/cd/bc4d5/ad6c4/754d1/1ff71/26660/d7513/cheryl-cole-only-human_620x713.jpg?1412680131",
"http://c.directlyrics.com/img/upload/nicki-minaj-rolling-stone-2015.jpg",
"http://assets.rollingstone.com/assets/images/story/timbaland-on-new-missy-elliott-album-we-got-the-bullet-in-the-gun-20140729/missy-624-1406640052.jpg",
"http://jaredbraden.com/wp-content/uploads/2014/07/nim.png",
"http://www.audiocastle.co/uploads/news/SADA_428_293.jpg"]

return {
		'song_name' => SecureRandom.hex(13), 
		'replay_average' => rand(10...242),
		'image_url' => images[rand(1...30)], 
		'stream_id' => rand(1...30),
		'suggested_by' => SecureRandom.hex(13), 
	}
end


def stream_item

images = ["http://images.thecarconnection.com/lrg/ferrari_100420855_l.jpg",
		"http://assets.vg247.com/current//2014/07/pwill.jpg",
"http://thegrid10.com/wp-content/uploads/2013/11/BIGGIE-SMALLS1993-psd13012.png",
"http://www.okayplayer.com/wp-content/uploads/2014/03/premier-big.jpg",
"http://cps-static.rovicorp.com/3/JPG_400/MI0001/719/MI0001719592.jpg?partner=allrovi.com",
"https://a1-images.myspacecdn.com/images03/21/13dafc86191c4a74b7fa27109f1e07d1/300x300.jpg",
"http://upload.wikimedia.org/wikipedia/en/2/25/De_La_Soul_Are_You_In.png",
"http://cdn.envythedj.netdna-cdn.com/wp-content/uploads/2015/01/tupac_shakur_1996_death_row_interscope_records_photofest_WEB-630x416.jpg",
"http://badgerherald.com/wordpress/media/2013/09/MGMT-by-David-Roemer-for-BlackBook-03.jpg",
"http://hipsterjew.com/wp-content/uploads/2013/03/mgmt.jpg",
"http://www.anthonysaintjames.com/data/photos/43_1asj_bustarhymes.jpg",
"http://www.8notes.com/wiki/images/BustaRhymes.jpg",
"http://upload.wikimedia.org/wikipedia/commons/a/a7/Whitney_Houston_Welcome_Home_Heroes_1_cropped.jpg",
"http://image.thefashionisto.com/wp-content/uploads/2015/01/Pharrell-GQ-February-2015-Cover-800x1088.jpg",
"http://www.centurymedia.com/media/news/large/635507751231191686.jpg",
"http://www.hiphopsite.com/http://www.hiphopsite.com//2014/12/e40.jpg",
"http://www.contactmusic.com/pics/lf/hop_farm_day_two_9_010712/bob-dylan-hop-farm-music-festival-2012_3970660.jpg",
"http://www.alternativenation.net/wp-content/uploads/2014/11/prong2014.jpg",
"http://www.konbini.com/en/files/2014/12/10341572_901716613191926_6562428459844591707_n.jpg",
"http://nme.assets.ipccdn.co.uk/images/gallery/image004.jpg",
"http://www.metalinsider.net/site/wp-content/uploads/2014/11/Tommy-Victor-Prong-200x300.jpg",
"http://cdn4.pitchfork.com/news/57934/b0eb650c.jpg",
"http://ccdn.hiphopdx.com/2014/12/2-chainz-304-300x300.jpg",
"http://cdn3.pitchfork.com/news/56857/4a5e69c0.jpg",
"http://hiphop-n-more.com/wp-content/uploads/2015/01/eminem-3.jpg",
"http://consequenceofsound.files.wordpress.com/2015/01/screen-shot-2015-01-17-at-10-21-17-am.png?w=807",
"http://hiphop-n-more.com/wp-content/uploads/2015/01/hogg-life.jpg",
"http://www.hiphopdx.com/images/600_1416201025_jcole_artwork_64.jpg",
"http://news.hiphopearly.com/wp-content/uploads/2015/01/TechN9nePhoto-750x400-520x245.jpg",
"http://mediastorage-lls.bauermedia.co.uk/cd/bc4d5/ad6c4/754d1/1ff71/26660/d7513/cheryl-cole-only-human_620x713.jpg?1412680131",
"http://c.directlyrics.com/img/upload/nicki-minaj-rolling-stone-2015.jpg",
"http://assets.rollingstone.com/assets/images/story/timbaland-on-new-missy-elliott-album-we-got-the-bullet-in-the-gun-20140729/missy-624-1406640052.jpg",
"http://jaredbraden.com/wp-content/uploads/2014/07/nim.png",
"http://www.audiocastle.co/uploads/news/SADA_428_293.jpg"]

return {
		'song_name' => "Bryson Tiller - Don't", 
		'replay_average' => rand(10...242),
		'image_url' => images[rand(1...30)], 
		'stream_id' => rand(1...30),
		'suggested_by' => "Paul C. George",
		'suggested_by_image' => images[rand(1...30)],
		'suggested_to_name' => "Love Songs",
		'suggestion_story' => "Replayed",
		'icon_class' => "ion-loop",
		'youtube_id' => "08qJimb9sKU",
		'unique_dom_id' => rand(9999...100000),
	}
end

def user_item
return {
		'id' => rand(10...36242), # Plays
		'first_name' => "fn_" + rand(10...242).to_s, # Suggestions
		'last_name' => "fn_" + rand(10...242).to_s, # Followers
		'name' => "somename",
		'song_count' => rand(10...242), # 
		'listeners_count' => rand(10...242), 
		'stat_5' => rand(10...242),
		'stat_6' => rand(10...242), 
		'stat_7' => rand(1...30),
		'stat_8' => rand(10...242), 
		'stat_9' => rand(10...242),
		'stat_10' => rand(10...242), 
		'image_url' => "http://mytjcnews.com/wp-content/uploads/2015/03/us-news-medical-marijuana-1-tb.jpg",
		'new_songs' => rand(10...242)
	}
end

def playlist_item
return {
		'name' => "Some Playlist Name", # Plays
		'image' => "http://mytjcnews.com/wp-content/uploads/2015/03/us-news-medical-marijuana-1-tb.jpg", # Suggestions
		'song_count' => rand(10...242), # Followers
		'listeners_count' => rand(10...242), # 
		'friend_listeners_count' => rand(10...242), 
		'story' => rand(10...242),
		'icon' => "" ,
		'id' => rand(10...242),
		'created_date' => rand(10...242),
		'description' => "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
	}
end

def friend_item
return {
		'name' => "Some Friends Name", # Plays
		'image' => "http://mytjcnews.com/wp-content/uploads/2015/03/us-news-medical-marijuana-1-tb.jpg", # Suggestions
		'song_count' => rand(10...242), # Followers
		'listeners_count' => rand(10...242), # 
		'joindate' => rand(10...242) ,
		'id' => rand(10...242)
	}
end


def sl_boolean
return {
		'result' => "true", # Plays
		'message' => "sample message", # Suggestions
		'stat_1' => 45, # Followers
		'stat_2' => 78, # 
		'stat_3' => 34, 
		'stat_4' => 98,
		'stat_5' => 45, 
		'stat_6' => 23
	}
end


def index 

end

# Stream Types

def general

items = Array.new 
until items.count == 100
items.push self.stream_item
end
render :json => items.to_json
end	

def playlist
playlist = self.playlist_item
meStream = Array.new
worldwideStream = Array.new
friendStream = Array.new
items = Hash.new
until meStream.count == 100
meStream.push self.stream_item
end
until worldwideStream.count == 100
worldwideStream.push self.stream_item
end
until friendStream.count == 100
friendStream.push self.stream_item
end
items["playlist"] = playlist
items["worldwidestream"] = worldwideStream
items["me"] = meStream
items["friends"] = friendStream
render :json => items.to_json
end

def addtoplaylist
allow_ajax_request_from_other_domains
logger.warn(params[:videoId])
logger.warn(params[:playlistId])	

render :json => self.sl_boolean
end

def playlists
items = Array.new 
until items.count == 100
items.push self.playlist_item
end
render :json => items.to_json
end

def createplaylist

	playlist = Playlist.new
	playlist.description = params[:description]
	playlist.name = params[:title]
	playlist.created_by = params[:uid]
	
	if playlist.save! 
		render :json => {"success" => true, "id" => playlist.id}.to_json
		else
		render :json => {"success" => false, "id" => 0}.to_json
	end


end




def searchplaylists 
items = Array.new 


until items.count == 100
x =	self.playlist_item
x["name"]= "SEARCH PLAYLIST"
items.push x
end

render :json => items.to_json
end


def friendlists
items = Array.new 
until items.count == 100
items.push self.playlist_item
end
render :json => items.to_json
end


def listened_to
	items = Array.new 
until items.count == 100
items.push self.stream_item
end
render :json => items.to_json
end

def play_count
	items = Array.new 
until items.count == 100
items.push self.stream_item
end
render :json => items.to_json
end	

def friendslist
items = Array.new 
until items.count == 100
items.push self.friend_item
end
render :json => items.to_json
end

def friend
result = Hash.new 
friend = self.friend_item
stream = Array.new

until stream.count == 100
stream.push self.stream_item
end

result["results"] = stream
result["friend"] = friend
render :json => result.to_json
end

def favorited
	items = Array.new 
until items.count == 100
items.push self.stream_item
end
render :json => items.to_json
end

def quick_list
	items = Array.new 
until items.count == 100
items.push self.stream_item
end
render :json => items.to_json
end

def friend_activity
	items = Array.new 
until items.count == 100
items.push self.stream_item
end
render :json => items.to_json
end

def friend_group_stream group_id=nil
	items = Array.new 
until items.count == 100
items.push self.stream_item
end
render :json => items.to_json
end

def everyone_group_stream group_id=nil
items = Array.new 
until items.count == 100
items.push self.stream_item
end
render :json => items.to_json
end

def me_group_stream group_id=nil
	items = Array.new 
until items.count == 100
items.push self.stream_item
end
render :json => items.to_json
end

def user_details user_id=nil
render :json => user_item
end

def friend_favorites
items = Array.new 
until items.count == 100
items.push self.stream_item
end
render :json => items.to_json
end


def group_details
items = Array.new 
until items.count == 100
items.push self.stream_item
end
render :json => items.to_json
end

def user_favorites user_id=nil
	items = Array.new 
until items.count == 100
items.push self.stream_item
end
render :json => items.to_json
end

#Social
def follow_user user_id=nil #groups
	render :json => sl_boolean.to_json
end

def unfollow_user user_id=nil #groups
		render :json => sl_boolean.to_json
end


def unfollow_group group_id=nil #groups
		render :json => sl_boolean.to_json
end

def follow_group group_id=nil #groups
		render :json => sl_boolean.to_json
end

def suggest_song_to_friend song_id=nil#group
		render :json => sl_boolean.to_json
end

def suggest_searched_song_to_friend song_id=nil#group
		render :json => sl_boolean.to_json
end

def suggest_song_to_group song_id=nil#group
		render :json => sl_boolean.to_json
end
def suggest_searched_song_to_group song_id=nil#group
		render :json => sl_boolean.to_json
end
def favorite song_id=nil
		render :json => sl_boolean.to_json
end

#Search


def searchyt

videos = Ytcontent.search params[:q]
render :json => videos.to_json
end

def search_soundcloud query=nil
# register a client with YOUR_CLIENT_ID as client_id_
client = SoundCloud.new(:client_id => "2c5ef67435e224e94ea4098c768ac965")
# get 10 hottest tracks
tracks = client.get('/tracks', :limit => 10, :order => 'hotness')
# print each link
items = Array.new 
tracks.each do |track|
  items.push track
end

render :json => items.to_json


end

#Stats
def record_exposure
#Check if friend suggested and push
items = Array.new 
until items.count == 100
items.push self.stream_item
end
render :json => items.to_json
end

def login
allow_ajax_request_from_other_domains
@user = Profile.find_by_facebook_id params["facebook_id"]

if @user.blank?
@user = Profile.user_from_facebook_mobile(params)
end	

if @user.blank?
	render :json => ["Error: No User Found, Cannot Create User"]
else


if  @user.facebook_token != params[:facebook_token]
		@user.facebook_token = params[:facebook_token]
		@user.save!
	end
render :json => @user.to_json
end
end

def quick_play
items = Array.new 
until items.count == 100
items.push self.stream_item
end
render :json => items.to_json
end

def friend_filter_play
items = Array.new 
until items.count == 100
items.push self.stream_item
end
render :json => items.to_json
end

def add_friend_to_filter
	render :json => sl_boolean.to_json
end	

def remove_friend_from_filter
	render :json => sl_boolean.to_json
end	

def searchfriends

items = Array.new 
until items.count == 100
items.push self.user_item
end
render :json => items.to_json

end

def sendtofriend

items = Array.new 
until items.count == 100
items.push self.user_item
end
render :json => items.to_json

end



def comments 
allow_ajax_request_from_other_domains

@results = Comment.find_by_sql ["SELECT profiles.*,comments.* FROM comments,profiles WHERE comments.author_id = profiles.id && comments.resource_id = ?", params[:resource_id]]

render :json => @results.to_json
end




def comment 
	allow_ajax_request_from_other_domains
	c = Comment.new 
	c.author_id = params[:author_id]
	c.content = params[:content]
	c.resource_id = params[:resource_id]
	c.resource_type = "post"
	c.is_hidden = 0;
	c.save


@results = Comment.find_by_sql ["SELECT profiles.*,comments.* FROM comments,profiles WHERE comments.author_id = profiles.id && comments.resource_id = ?", params[:resource_id]]

render :json => @results.to_json

end



end
