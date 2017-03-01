class HelpScreen < PM::TableScreen
  include Menu::NavBar

  title "Help"._

  def on_load
    setup_menu_button
  end

  def table_data
    [{
      title: "About"._,
      cells: [{
        title: "About app"._,
        action: :about
      }, {
        title: "More about app"._,
        action: :more_about
      }]
    }, {
      title: "Help"._,
      cells: [{
        title: "Help me"._,
        action: :help
      }]
    }]
  end

  private

  def about
    PM.logger.info "Tapped about"
  end

  def more_about
    PM.logger.info "Tapped more about"
  end

  def help
    PM.logger.info "Tapped help"
  end
end
