class MenuScreen < PM::Screen

  def load_view
    self.view = layout.view
  end

  def on_load
    load_avatar
    update_menu_size
  end

  private

  def layout
    @layout ||= MenuLayout.new.tap do |layout|
      layout.menu_list = menu_list_screen.view
      layout.menu_list.scrollEnabled = false
    end
  end

  def menu_list_screen
    @menu_list_screen ||= MenuListScreen.new.tap do |s|
      self.addChildViewController s
      s.parent_screen = self
    end
  end

  def load_avatar
    layout.get(:profile_avatar).sd_setImageWithURL "https://source.unsplash.com/random/72x72".nsurl, placeholderImage:"Icon-72".uiimage
  end

  def update_menu_size
    [layout.menu_list, layout.get(:scroll), layout.get(:content_view)].tap do |m, s, c|
      layout.extend_list_height(m.contentSize.height)
      s.contentSize = [s.contentSize.width, c.frame.size.height]
    end
  end

end
