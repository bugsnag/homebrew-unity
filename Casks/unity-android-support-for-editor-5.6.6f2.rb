cask 'unity-android-support-for-editor-5.6.6f2' do
  version '5.6.6f2,6bac21139588'
  sha256 'da2e3531edf4a84893f2d1842b7bc9ed8a5f4d9e8667c7b36a887545d3fb5298'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity-5.6.6f2'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidPlayer'
end
