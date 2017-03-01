class HomeLayout < MK::Layout

  def layout
    root :main do
      add UILabel, :remove_me
    end
  end

  def main_style
    background_color '#fff0e6'.uicolor
  end

  def remove_me_style
    text 'Hello!'
    text_color UIColor.whiteColor
    size_to_fit
    center ['50%', '50%']
    autoresizing_mask :pin_to_center
  end

end
