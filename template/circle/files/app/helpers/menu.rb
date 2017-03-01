module Menu

  module NavBar

    private

    def setup_menu_button
      set_nav_bar_button :left, image: icon_image(:foundation, :list, size: 18), action: :show_menu
    end

    def show_menu
      app_delegate.menu.toggle(:left)
    end

  end

end
