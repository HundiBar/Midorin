module PagesHelper
  def current_page
    content_for?(:current_page) ? content_for(:current_page) : 'home'
  end
end
