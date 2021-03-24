# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-nord-theme"
  spec.version       = "0.2.4"
  spec.authors       = ["Mike Krisher"]
  spec.email         = ["mike@mikekrisher.com"]

  spec.summary       = "A Nord color scheme for Jekyll"
  spec.homepage      = "https://www.nordtheme.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.9"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"
end
