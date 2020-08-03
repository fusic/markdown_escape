require_relative 'lib/markdown_escape/version'

Gem::Specification.new do |spec|
  spec.name          = "markdown_escape"
  spec.version       = MarkdownEscape::VERSION
  spec.authors       = ["Yuka Okabe"]
  spec.email         = ["32320352+yukabeoka@users.noreply.github.com"]

  spec.summary       = %q{Returns a markdown-escaped version of the given string.}
  spec.description   = %q{Returns a markdown-escaped version of the given string.}
  spec.homepage      = "https://github.com/fusic/markdown_escape"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/fusic/markdown_escape"
  spec.metadata["changelog_uri"] = "https://github.com/fusic/markdown_escape"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
