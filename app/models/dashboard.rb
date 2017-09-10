class Dashboard < ApplicationRecord
	extend FriendlyId
  friendly_id :title, use: :slugged
  
	mount_uploader :video, VideoUploader  

end
