cask 'unity-ios-support-for-editor-5-6-7f1' do
  version '5.6.7f1,e80cc3114ac1'
  sha256 '47a7774bf16c5feea58af63e30929f36760f25087851f15b261426d50ca50ec3'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity-5-6-7f1'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
