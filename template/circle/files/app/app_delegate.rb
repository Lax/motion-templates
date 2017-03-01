class AppDelegate < PM::Delegate

  status_bar true, animation: [:none, :slide, :fade].sample

  def on_load(app, options)
    return true if RUBYMOTION_ENV == "test"
    open_menu HomeScreen.new(nav_bar: true), left: MenuScreen,
      to_show: [:pan_nav_bar, :pan_bezel], to_hide: :all,
      max_left_width: 240,
      transition_animation: [:slide_and_scale, :swinging_door, :parallax].sample
  end

end
