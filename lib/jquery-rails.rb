module Jquery
  module Rails
    class Railtie < ::Rails::Railtie
      config.before_configuration do
        if ::Rails.root.join("javascripts/jquery-ui.min.js").exist?
          config.action_view.javascript_expansions[:defaults] = %w(jquery.min jquery-ui.min rails)
        else
          config.action_view.javascript_expansions[:defaults] = %w(jquery.min rails)
        end
      end
    end
  end
end
