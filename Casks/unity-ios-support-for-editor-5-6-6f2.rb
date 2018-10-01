cask 'unity-ios-support-for-editor-5-6-6f2' do
  version '5.6.6f2,6bac21139588'
  sha256 '29dc9a82561df6f191b61dd6f9ef3943086ca07382b8f1aa1c4708ca537e0b8e'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity-5-6-6f2'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
