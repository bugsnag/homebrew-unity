cask 'unity-android-support-for-editor-5-6-7f1' do
  version '5.6.7f1,e80cc3114ac1'
  sha256 '726749213198b5cdf54f567ddd64e90a39972a5b023f85f5c06d769fca2dc5b7'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity-5-6-7f1'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidPlayer'
end
