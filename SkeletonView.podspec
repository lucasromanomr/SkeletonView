Pod::Spec.new do |s|
  s.name         = "SkeletonView"
  s.version      = "0.1.3"
  s.summary      = "An elegant way to show users that something is happening and also prepare them to which contents he is waiting"
  s.description  = <<-DESC
  Today almost all apps have async processes, as API requests, long runing processes, etc. And while the processes are working, usually developers place a loading view to show users that something is going on.
  SkeletonView has been conceived to address this need, an elegant way to show users that something is happening and also prepare them to which contents he is waiting.
  DESC
  s.homepage     = "https://github.com/Juanpe/SkeletonView"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Juanpe Catalán" => "juanpecm@gmail.com" }
  s.social_media_url   = "https://x.com/JuanpeCatalan"
  s.ios.deployment_target = "12.0"
  s.tvos.deployment_target = "12.0"
  s.swift_version = "5.0"
  s.source       = { :git => "https://github.com/Juanpe/SkeletonView.git", :tag => s.version.to_s }
  s.source_files  = "SkeletonViewCore/Sources/**/*.{swift,h}"
  s.vendored_frameworks = "SkeletonView.xcframework"

  # Subspec para o framework estático
  s.subspec "Static" do |sp|
    sp.vendored_frameworks = "StaticXCFramework.xcframework"
  end

  # Subspec para o framework dinâmico
  s.subspec "Dynamic" do |sp|
    sp.vendored_frameworks = "DynamicXCFramework.xcframework"
  end
end
