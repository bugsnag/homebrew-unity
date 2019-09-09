cask 'unity-android-support-for-editor-2018-4-8f1' do
  version '2018.4.8f1,9bc9d983d803'
  sha256 '918757d8c583ff1463b0ca6e44e12a21ca18154b23401e23a6308036e0b3bf08'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  appcast 'https://unity3d.com/get-unity/download/archive'
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity-2018-4-8f1'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidPlayer'
end
