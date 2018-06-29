module Profiler
  class Hooks < Redmine::Hook::ViewListener
      render_on :view_account_left_bottom, partial: 'hooks/info_user'
  end
end
