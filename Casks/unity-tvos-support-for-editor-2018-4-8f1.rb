cask 'unity-tvos-support-for-editor-2018-4-8f1' do
  version '2018.4.8f1,9bc9d983d803'
  sha256 '799d28d57889eb6a9f9f5198fc00234d3962521c8bb7172e3e766e1e138f724e'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-AppleTV-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity tvOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity-2018-4-8f1'

  pkg "UnitySetup-AppleTV-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AppleTVSupport'
end
