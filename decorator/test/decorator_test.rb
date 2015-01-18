require "test_helper"
require 'product'

describe Product do
  let(:product) { Product.new("Tomato", :fruit, %w(red salad sour)) }
  let(:expected_result) { <<EOF
    <tr>
      <th>Tomato</th>
      <td>fruit</td>
      <td>
        <ul>
          <li>red</li>
          <li>salad</li>
          <li>sour</li>
        </ul>
      </td>
    </tr>
EOF
}

  it "can be printed as an HTML table row" do
    product_decorator = ProductDecorator.new product

    product_decorator.as_html_row.
      strip.gsub(/(^\s+)|\n/, ""). # remove all indentation and newlines
        must_equal expected_result.
          strip.gsub /(^\s+)|\n/, "" # remove all indentation and newlines
  end
end
