#
#  Be sure to run `pod spec lint MODropAlertView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "MODropAlert"
  s.version      = "1.0.0"
  s.summary      = "Dropping AlertView by Ahn JungMin"

  s.description  = <<-DESC
                   Dropping AlertView spring animation made by Ahn JungMin

                   DESC

  s.homepage     = "https://github.com/minsOne/MODropAlert"
  s.screenshots  = "https://raw.githubusercontent.com/minsOne/MODropAlert/master/screencapture.gif"

  s.license      = { :type => "MIT", :file => "LICENSE" }


  s.author             = { "Ahn JungMin" => "jungminahn.minsone@gmail.com" }
  s.social_media_url   = "http://twitter.com/cancoffee7"


  s.platform     = :ios
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/minsOne/MODropAlert.git", :tag => "1.0.0" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any h, m, mm, c & cpp files. For header
  #  files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = "MODropAlert", "MODropAlert/*.{h,m}"

  s.frameworks = "Foundation", "CoreGraphics", "UIKit"

  s.requires_arc = true

end
