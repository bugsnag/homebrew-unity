cask 'unity-ios-support-for-editor-2017-4-32f1' do
  version '2017.4.32f1,4da3ed968770'
  sha256 '9f007c26788d49b7aec9f2debd86a67fed426d1a84f8693c6531e9d35c7312d9'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity-2017-4-32f1'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
