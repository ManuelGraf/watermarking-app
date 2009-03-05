class Image < ActiveRecord::Base
  has_attached_file :file, 
    :styles => { 
        :medium => {
            :geometry => "300x300>", 
            :processors => [:thumbnail,:watermark]
        },
        :thumb => {
            :geometry => "100x100#"}
        }

end
