Gem::Specification.new do |s|
  s.name = "nri-feature_interest"
  s.version = "1.0.0"
  s.summary = "Generated modules for interfacing with NoRedInk's Feature Interest REST API"
  s.authors = ["Hardy Jones"]
  s.email = "eng@noredink.com"
  s.license = "BSD-3-Clause"
  s.homepage = "https://github.com/NoRedInk/ruby-feature-interest"
  s.files = [
    "lib/nri/feature_interest.rb",
    "lib/nri/feature_interest/feature.rb",
    "lib/nri/feature_interest/admin.rb",
  ]
  s.require_paths = ["lib"]
end
