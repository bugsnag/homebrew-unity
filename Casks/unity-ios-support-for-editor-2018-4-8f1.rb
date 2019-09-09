cask 'unity-ios-support-for-editor-2018-4-8f1' do
  version '2018.4.8f1,9bc9d983d803'
  sha256 '82748dd312f542a0f0d42d0116817625052559ab7307e61aa0db9baade32cd0e'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity-2018-4-8f1'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
