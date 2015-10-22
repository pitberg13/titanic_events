# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.precompile += %w( jquery.min.js )
Rails.application.config.assets.precompile += %w( jquery.ui.widget.js )
Rails.application.config.assets.precompile += %w( jquery.iframe-transport.js )
Rails.application.config.assets.precompile += %w( jquery.fileupload.js )
Rails.application.config.assets.precompile += %w( jquery.fileupload-process.js )
Rails.application.config.assets.precompile += %w( jquery.fileupload-image.js )
Rails.application.config.assets.precompile += %w( jquery.fileupload-validate.js )
Rails.application.config.assets.precompile += %w( jquery.ui.js )
Rails.application.config.assets.precompile += %w( load-image.all.min.js )
Rails.application.config.assets.precompile += %w( canvas-to-blob.min.js )
Rails.application.config.assets.precompile += %w( jquery.cloudinary.js )
Rails.application.config.assets.precompile += %w( attachinary.js )
Rails.application.config.assets.precompile += %w( admin.js )
Rails.application.config.assets.precompile += %w( admin.css )
Rails.application.config.assets.precompile += %w( jquery.js )
Rails.application.config.assets.precompile += %w( tinymce.min.js )
Rails.application.config.assets.precompile += %w( webflow.css )
Rails.application.config.assets.precompile += %w( normalize.css )
Rails.application.config.assets.precompile += %w( webflow.js )
Rails.application.config.assets.precompile += %w( modernizr.js )
Rails.application.config.assets.precompile += %w( bootstrap.min.js )
Rails.application.config.assets.precompile += %w( ckeditor/* )
Rails.application.config.assets.precompile += %w( normalizepublic.css )
Rails.application.config.assets.precompile += %w( webflowpublic.css )
Rails.application.config.assets.precompile += %w( contained.webflow.css )
Rails.application.config.assets.precompile += %w( modernizr.public.js )
Rails.application.config.assets.precompile += %w( webflow.public.js )
Rails.application.config.assets.precompile += %w( public.css )


# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
