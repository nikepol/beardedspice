platform :osx, '12.0'
project 'Beardie'

source 'https://github.com/CocoaPods/Specs.git'

target 'BeardieControllers' do
    pod 'MASShortcut', '~> 2.3.3'

    target 'Beardie' do
        pod 'MASPreferences', '= 1.1.4'
        pod 'FMDB', '~> 2.6.2'

        # all pods for tests should ONLY go here
        target 'BeardieTests' do
            pod 'Kiwi'
            # pod 'OCMock'
            pod 'VCRURLConnection'
        end
    end
end


# Pod specs still declare 10.6/10.7 targets, which Xcode 27 rejects.
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['MACOSX_DEPLOYMENT_TARGET'] = '12.0'
        end
    end
end
