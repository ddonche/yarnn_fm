# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( application.css )
Rails.application.config.assets.precompile += %w( styles.css )
Rails.application.config.assets.precompile += %w( jquery.raty.js )
Rails.application.config.assets.precompile += %w( transactions.js.coffee )
Rails.application.config.assets.precompile += %w( player/jquery.mCustomScrollbar.css )
Rails.application.config.assets.precompile += %w( player/artwork5.css )
Rails.application.config.assets.precompile += %w( player/jquery-3.2.1.min.js )
Rails.application.config.assets.precompile += %w( player/jquery.easing.1.3.js )
Rails.application.config.assets.precompile += %w( player/jquery-ui.min.js )
Rails.application.config.assets.precompile += %w( player/jquery.ui.touch-punch.min.js )
Rails.application.config.assets.precompile += %w( player/jquery.mCustomScrollbar.concat.min.js )
Rails.application.config.assets.precompile += %w( player/jsmediatags.min.js )
Rails.application.config.assets.precompile += %w( player/hls.min.js )
Rails.application.config.assets.precompile += %w( player/new.js )
Rails.application.config.assets.precompile += %w( player/jquery.mousewheel.min.js )
Rails.application.config.assets.precompile += %w( player/jquery.touchSwipe.min.js )
Rails.application.config.assets.precompile += %w( player/audio7_html5.js )
Rails.application.config.assets.precompile += %w( player/audio7_html5.css )