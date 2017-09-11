class Dashboard < ApplicationRecord
	extend FriendlyId
  friendly_id :title, use: :slugged
  
	mount_uploader :video, VideoUploader  

	validates_presence_of :title, :description, :video
end
