Pod::Spec.new do |s|
  s.name             = 'AMRAdapterAdtiming'
  s.version          = '4.4.1.2'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited.
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Adtiming adapter for AMR SDK.'
  s.description      = 'AMR Adtiming adapter allows publishers to mediate Adtiming interstitial and video ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-ADTIMING.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '9.0'
  s.vendored_libraries = 'AMRAdapterAdtiming/Libs/libAMRAdapterAdtiming.a'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.dependency 'AMRSDK', '~> 1.5.0'
  s.dependency 'AdTimingSDK', '4.4.1'
end
