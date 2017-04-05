Rails.application.config.assets.version = '1.0'
Rails.root.join("vendor", "assets", "fonts")
Rails.application.config.assets.precompile += %w( fontawesome-webfont.eot )
Rails.application.config.assets.precompile += %w( fontawesome-webfont.woff )
Rails.application.config.assets.precompile += %w( fontawesome-webfont.ttf )
Rails.application.config.assets.precompile += %w( fontawesome-webfont.svg )
# Rails.root.join('app', 'assets', 'fonts')
