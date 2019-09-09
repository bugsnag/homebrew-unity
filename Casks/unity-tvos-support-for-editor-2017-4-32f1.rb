cask 'unity-tvos-support-for-editor-2017-4-32f1' do
  version '2017.4.32f1,4da3ed968770'
  sha256 '0771f2157f811532fcbbeaa06b2d7f194823bb74f285083e6f7090fc4a60eeb7'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-AppleTV-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity tvOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity-2017-4-32f1'

  pkg "UnitySetup-AppleTV-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AppleTVSupport'
end
