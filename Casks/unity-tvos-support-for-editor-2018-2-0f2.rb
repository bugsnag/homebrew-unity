cask 'unity-tvos-support-for-editor-2018-2-0f2' do
  version '2018.2.0f2,787658998520'
  sha256 'cc7b5c8640e7d2201781c2529cd67c75c44d2840b6ef8aeca5e170efa662cdfd'

  url "https://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-AppleTV-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity tvOS Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity-2018-2-0f2'

  pkg "UnitySetup-AppleTV-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.AppleTVSupport'
end
