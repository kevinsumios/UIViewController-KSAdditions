Pod::Spec.new do |s|
  s.name             = 'UIViewController+KSAdditions'
  s.version          = '0.3.0'
  s.summary          = 'A UIViewController category that make you use UIViewController more efficiently.'
  s.description      = <<-DESC
It is a category of UIViewController class, including lots of usefully functions that you will need when working with the UIViewController. This work is aim to reduce the repeate coding when you working with you iOS project.
                       DESC
  s.homepage         = 'https://github.com/kevinsumios/UIViewController-KSAdditions'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Kevin Sum' => 'kevin-sum@hotmail.com' }
  s.source           = { :git => 'https://github.com/kevinsumios/UIViewController-KSAdditions.git', :tag => s.version.to_s }
  s.ios.deployment_target = '6.0'
  s.source_files = 'UIViewController+KSAdditions.{h,m}'
end
