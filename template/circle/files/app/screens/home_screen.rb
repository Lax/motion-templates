class HomeScreen < PM::Screen
  include Menu::NavBar

  title "Circle"._

  def load_view
    self.view = layout.view
  end

  def on_load
    setup_menu_button

    set_nav_bar_button :right, image: icon_image(:foundation, :info, size: 18), action: :show_help
  end

  private

  def layout
    @layout ||= HomeLayout.new
  end

  def show_help
    open HelpScreen
  end

end
