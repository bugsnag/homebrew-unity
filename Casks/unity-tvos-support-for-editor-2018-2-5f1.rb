cask 'unity-tvos-support-for-editor-2018-2-5f1' do
  version '2018.2.5f1,3071d1717b71'
  sha256 'bfd5b8e00371b41dca76288bd69c5d48b965a33a906b02c823d7d19dc827cb1d'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-AppleTV-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity tvOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity-2018-2-5f1'

  pkg "UnitySetup-AppleTV-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AppleTVSupport'
end
