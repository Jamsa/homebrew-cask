cask 'vivaldi' do
  version '1.4.589.29'
  sha256 '2eedea66db5645e79f00d105de556851ccd4e928012efce81f8bd9b5108ec9d6'

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '7f00ebc043c8ebf5d3deb8040509f2dddf140b9ded7299832b5100f0bd51b6be'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  auto_updates true

  app 'Vivaldi.app'

  zap delete: [
                '~/Library/Preferences/com.vivaldi.Vivaldi.plist',
                '~/Library/Application Support/Vivaldi',
                '~/Library/Caches/Vivaldi',
                '~/Library/Caches/com.vivaldi.Vivaldi',
                '~/Library/Saved Application State/com.vivaldi.Vivaldi.savedState',
              ]
end
