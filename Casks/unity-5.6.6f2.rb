cask 'unity-5.6.6f2' do
  version '5.6.6f2,6bac21139588'
  sha256 '68e1a0a813ff18cbfd9efbe352ce0520d4ed6ed9574b5f5ca6ecdda84570f2eb'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity/Unity.app',
            rmdir:   '/Applications/Unity'
end
