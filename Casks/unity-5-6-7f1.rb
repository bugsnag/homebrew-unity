cask 'unity-5-6-7f1' do
  version '5.6.7f1,e80cc3114ac1'
  sha256 '34dbd8645f4ed20f1ccec6c144c6eb2a63e7ccb1c9a8ac2461ec74c55d5a721b'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity/Unity.app',
            rmdir:   '/Applications/Unity'
end
