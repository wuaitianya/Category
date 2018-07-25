@version = "0.0.2"
		Pod::Spec.new do |s| 
		s.name = "PRZCategory"
		s.version = @version 
		s.summary = "新增按钮类别"
		s.description = "按钮点击倒计时" 
		s.homepage = "https://github.com/wuaitianya/Category" 
		s.license = { :type => 'MIT', :file => 'LICENSE' } 
		s.author = { "wuaitianyapeng" => "wuaitianyapeng@163.com" } 
		s.ios.deployment_target = '8.0' 
		s.source = { :git => "https://github.com/wuaitianya/Category.git", :tag => "v#{s.version}" } 
		s.source_files = 'PRZCategory/**/*.{h,m}'
		s.requires_arc = true 
		s.framework = "UIKit"
		end