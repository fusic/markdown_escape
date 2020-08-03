RSpec.describe MarkdownEscape do
  it "has a version number" do
    expect(MarkdownEscape::VERSION).not_to be nil
  end

  it "escape test" do
    expect(MarkdownEscape.escape("# test -list1 -list2 [text](url)")).to eq("\\# test \\-list1 \\-list2 \\[text\\]\\(url\\)")
  end
end
