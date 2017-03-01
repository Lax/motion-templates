class MenuLayout < MK::Layout
  view :menu_list

  def layout
    root :main do
      add UIScrollView, :scroll do
        add UIView, :content_view do
          add UIView, :profile do
            add UIImageView, :profile_avatar
          end
          add menu_list, :menu_list
          add UILabel, :footer_label
        end
      end
    end
  end

  def main_style
    background_color '#fff0e6'.uicolor
  end

  def scroll_style
    constraints do
      center_x.equals(:main)
      width.equals(:main)
      top.equals(:main)
      bottom.equals(:main)
    end
  end

  def content_view_style
    constraints do
      left.equals(:superview)
      top.equals(:superview)
      width.equals(:superview)
      bottom.equals(:footer_label)
    end
  end

  def profile_style
    constraints do
      center_x.equals(:superview)
      width.equals(:superview)
      top.equals(:superview).plus(24)
      height.equals(:profile_avatar).plus(24)
    end
  end

  def profile_avatar_style
    layer do
      cornerRadius 6
      masks_to_bounds true
    end

    constraints do
      center_x.equals(:superview)
      width.is == 72
      top.equals(:superview).plus(12)
      height.is == 72
    end
  end

  def menu_list_style
    constraints do
      left.equals(:superview)
      width.equals(:superview)
      top.equals(:profile, :bottom)
      @height_constraint = (height.is == 0).deactivate
    end
  end

  def footer_label_style
    text '©'._
    text_color UIColor.blackColor
    size_to_fit

    constraints do
      below(:menu_list)
      center_x.equals(:superview)
    end
  end

  def extend_list_height(height)
    @height_constraint.is == height
    @height_constraint.activate

    self.view.layoutIfNeeded
  end

end
