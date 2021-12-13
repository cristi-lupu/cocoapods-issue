Pod::Spec.new do |s|
  s.name                   = 'ModuleA'
  s.version                = '0.0.1'
  s.summary                = 'ModuleA'
  s.homepage               = 'https://github.com/cristi-lupu/cocoapods-issue'
  s.license                = 'None'
  s.author                 = { 'Cristian Lupu' => 'lupucristiancptc@gmail.com' }

  s.swift_version          = '5.0'
  s.ios.deployment_target  = '15.0'

  s.source                 = { :git => "git@github.com:cristi-lupu/cocoapods-issue.git", :tag => "#{s.version}" }
  s.source_files           = ['Sources/**/*.swift', 'workaround_project_structure']
  s.resource_bundles       = {
    'ModuleA' => ['Sources/**/*.{storyboard,xib}', 'workaround_project_structure']
  }

  s.static_framework       = true

  s.test_spec 'Tests' do |test_spec|
    test_spec.scheme = { :code_coverage => true }
    test_spec.source_files = ['Tests/**/*.{swift}']
  end
end
