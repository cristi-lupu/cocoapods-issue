ensure_bundler!

platform :ios, '15.0'

install! 'cocoapods',
  :share_schemes_for_development_pods => true,
  :preserve_pod_file_structure => true,
  :generate_multiple_pod_projects => true,
  :incremental_installation => true

source 'https://github.com/CocoaPods/Specs.git'

target 'cocoapods-issue' do
  project 'cocoapods-issue'
  workspace 'cocoapods-issue'

  pod 'ModuleA', :path => 'Modules/ModuleA', :testspecs => ['Tests']
end
