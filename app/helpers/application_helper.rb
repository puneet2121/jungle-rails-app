module ApplicationHelper
  def order_total_in_cents(line_items)
    line_items.map {|entry| entry.total_price_cents}.sum 
  end
end
