class HelpScreen < PM::TableScreen
  title "Help"._

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
