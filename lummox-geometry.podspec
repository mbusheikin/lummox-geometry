Pod::Spec.new do |s|
  s.name = "lummox-geometry"
  s.version = "1.2"
  s.summary = "Helpers for geometry, particularly in order to have Integer versions of CGPoint, CGSize and CGRect."
  s.homepage = "https://github.com/mbusheikin/lummox-geometry"
  s.license = 'MIT'
  s.author = "Michael Busheikin"
  s.source = { :git => "https://github.com/mbusheikin/lummox-geometry.git", :tag => "v1.2" }
  s.platform = :ios
  s.source_files = 'LummoxGeometry/LummoxGeometry'
end
