cask 'unity-2018-2-21f1' do
  version '2018.2.21f1,a122f5dc316d'
  sha256 '38cae58ed394b6456423902feb69ccf5282977a9a4a16fcc51f83fb81744c7cc'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity/Unity.app',
            rmdir:   '/Applications/Unity'
end
