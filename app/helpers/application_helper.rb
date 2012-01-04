module ApplicationHelper
  # generate CSS class names as controller-<controller> and action-<controller>-<action>
  # for controller and method scoped CSS
  def controller_method_css_class
    "controller-#{controller.controller_path.sub('/', '_')} action-#{controller.controller_path.sub('/', '_')}-#{controller.action_name}"
  end  
end
