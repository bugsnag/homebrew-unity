cask 'unity-android-support-for-editor-2017-4-32f1' do
  version '2017.4.32f1,4da3ed968770'
  sha256 'b45a81ab75cc000372aa58518a192d13810062e017922382e024770e097655c4'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Android Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity-2017-4-32f1'

  pkg "UnitySetup-Android-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AndroidPlayer'
end
