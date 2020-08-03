require "markdown_escape/version"

module MarkdownEscape
  class Error < StandardError; end

  def self.escape(data)
    markdown = [['\\', '\\\\'], ['#', '\#'], ['`', '\`'], ['*', '\*'], ['_', '\_'], ['{', '\{'],
                ['}', '\}'],    ['[', '\['], [']', '\]'], ['(', '\('], [')', '\)'], ['+', '\+'],
                ['-', '\-'],    ['.', '\.'], ['!', '\!'], ['~', '~'],  ['>', '>']]

    markdown.inject(data) do |after_data, (before, after)|
      after_data.gsub(before, after)
    end
  end
end
