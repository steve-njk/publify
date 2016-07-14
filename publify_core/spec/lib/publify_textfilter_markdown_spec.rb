require 'rails_helper'

describe PublifyApp::Textfilter::Markdown do
  def filter_text(text)
    described_class.filtertext(text)
  end

  it 'applies markdown processing to the supplied text' do
    text = filter_text('*foo*')
    assert_equal '<p><em>foo</em></p>', text

    text = filter_text("foo\n\nbar")
    assert_equal "<p>foo</p>\n\n<p>bar</p>", text
  end
end
