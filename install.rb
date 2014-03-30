require 'rubygems'
require 'launch_agent'

current_path=Dir::pwd
shuzo="#{current_path}/shuzo-notification.rb"
notification_interval=ARGV[0].to_i
load_set=ARGV[1]


p "notification interval: #{notification_interval}"
p "load set: #{load_set}"


if notification_interval != 0
  agent = LaunchAgent::Periodic.new(notification_interval,'ruby',shuzo)
  if load_set == "load"
    agent.load
  elsif load_set == "unload"
    agent.unload
  end
else
  p "ARGV[0]:#{notification_interval} ARGV[1]:#{load_set}.you set parameter. ARGV[0]=integer,ARGV[1]=load or unload"
end
