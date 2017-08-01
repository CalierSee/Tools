#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'Tools' #名字
s.version          = '0.0.1'  #版本号
s.summary          = 'Tools' #描述

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    基础工具类组件
                       DESC
#详细描述
s.homepage         = 'https://github.com/CalierSee/Tools' #仓库首页地址
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' } #开源许可协议
s.author           = { '景彦铭' => '436005247@qq.com' } #作者
 s.source           = { :git => 'https://github.com/CalierSee/Tools.git', :tag => '0.0.1' } #发布时需要绑定tag 测试时使用下面不绑定tag的方式
# s.source           = { :git => 'https://github.com/CalierSee/Tools.git'}
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.ios.deployment_target = '8.0' #允许版本

s.source_files = 'Pod/Classes/**/*' #class文件存放路径
#资源文件存放地址  xib会被存放在此 所以调用时要加lib路径
   s.resource_bundles = {
     'ToolsLib' => ['Pod/Assets/*.png']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
s.frameworks = 'UIKit', 'MapKit' #原生依赖库
s.dependency 'AFNetworking' #第三方一老库
end
