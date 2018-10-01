cask 'unity-tvos-support-for-editor-5-6-6f2' do
  version '5.6.6f2,6bac21139588'
  sha256 'b8a6c674c4c07f2c57b772c231c2f7950cd966503d39e225f16d1694809fa8e5'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-AppleTV-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity tvOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity-5-6-6f2'

  pkg "UnitySetup-AppleTV-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AppleTVSupport'
end
