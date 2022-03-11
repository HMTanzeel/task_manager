module ApplicationHelper
  include Pagy::Frontend
  
  def formated_date(datetime)
    datetime.to_date.strftime("%d %b, %Y")
  end
end
