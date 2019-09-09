cask 'unity-tvos-support-for-editor-5-6-7f1' do
  version '5.6.7f1,e80cc3114ac1'
  sha256 '6c530f3661c1023e0e4382d7b97464a7af6cce82e736c4a7fd0d602d2fa899f7'

  url "https://netstorage.unity3d.com/unity/e80cc3114ac1/MacEditorTargetInstaller/UnitySetup-AppleTV-Support-for-Editor-5.6.7f1.pkg"
  name 'Unity tvOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity-5-6-7f1'

  pkg "UnitySetup-AppleTV-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AppleTVSupport'
end
