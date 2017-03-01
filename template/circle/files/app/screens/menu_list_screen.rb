class MenuListScreen < PM::TableScreen
  row_height :auto, estimated: 44

  def on_load
    self.view.backgroundColor = '#fff0e6'.uicolor
  end

  def table_data
    [{
      title: nil,
      cells: [{
        title: 'Home'._,
        action: :swap_center_controller,
        arguments: HomeScreen
      }, {
        title: 'Profile'._
      }, {
        title: 'Discovery'._
      }]
    }, {
      title: nil,
      cells: [{
        title: 'Help'._,
        action: :swap_center_controller,
        arguments: HelpScreen
      }, {
        title: 'Setting'._,
        action: :open_settings
      }]
    }]
  end

  def table_header_view
    UIView.new.tap do |view|
      view.frame = [self.view.frame.origin, [self.view.frame.size.width, 20]]
    end
  end

  def table_footer_view
    UIView.new.tap do |view|
      view.frame = [[self.view.frame.origin.x, self.view.frame.origin.y + self.view.frame.size.height - 20], [self.view.frame.size.width, 20]]
    end
  end

  private

  def swap_center_controller(screen_class)
    # Just use screen_class if you don't need a navigation bar
    app_delegate.menu.tap do |menu|
      menu.center_controller = screen_class.new(nav_bar: true)
      menu.hide
    end
  end

  def open_settings
    UIApplicationOpenSettingsURLString.nsurl.open
  end

end
