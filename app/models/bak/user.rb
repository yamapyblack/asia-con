class User < ApplicationRecord
    mount_uploader :icon_image, IconImageUploader
end
