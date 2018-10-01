cask 'unity-tvos-support-for-editor-2017-4-1f1' do
  version '2017.4.1f1,9231f953d9d3'
  sha256 'a59c77557d5dd7af6d05e369e89e23556d01d37d200ef9633fadacd1ea5df7c4'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-AppleTV-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity tvOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity-2017-4-1f1'

  pkg "UnitySetup-AppleTV-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AppleTVSupport'
end
