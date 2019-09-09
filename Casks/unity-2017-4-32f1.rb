cask 'unity-2017-4-32f1' do
  version '2017.4.32f1,4da3ed968770'
  sha256 'bdd00cdaffccd19f8b9895371277ce10ce646a1a0e8e351eeb497b5c8a267654'

  
  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorInstaller/Unity.pkg"
  name 'Unity Editor'
  homepage 'https://unity3d.com/unity/'

  pkg 'Unity.pkg'

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.UnityEditor5.x',
            delete:  '/Applications/Unity/Unity.app',
            rmdir:   '/Applications/Unity'
end
