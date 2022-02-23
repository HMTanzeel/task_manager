module ApplicationHelper
  include Pagy::Frontend
  
  def format_date(datetime)
    datetime.to_date.strftime("%d %b, %Y")
  end
end
