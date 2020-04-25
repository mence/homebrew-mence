cask 'cert-quicklook' do
  version '3'
  sha256 '9fd0508ffb1731b52e6a0b5a9a168ede62b1ad17b591bc42c66efa628877e540'

  url "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/cert-quicklook/CertQuickLook-v#{version}.qlgenerator.zip"
  name 'cert-quicklook'
  homepage 'https://code.google.com/p/cert-quicklook/'

  qlplugin 'CertQuickLook.qlgenerator'
end
