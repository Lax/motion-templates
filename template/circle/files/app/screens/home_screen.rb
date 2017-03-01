class HomeScreen < PM::Screen
  title "Circle"._

  def load_view
    self.view = layout.view
  end

  def on_load
    set_nav_bar_button :left, image: icon_image(:foundation, :list, size: 18), action: :show_menu
    set_nav_bar_button :right, image: icon_image(:foundation, :info, size: 18), action: :show_help
  end

  private

  def layout
    @layout ||= HomeLayout.new
  end

  def show_help
    open HelpScreen
  end

  def show_menu
    app_delegate.menu.toggle(:left)
  end

end
