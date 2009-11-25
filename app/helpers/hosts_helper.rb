module HostsHelper

  def showGraphDummy name, host_id
    image_tag "blurred_graphs/#{name}.png", :id => "graph-#{name}-blurred", :style => "cursor: pointer;", :onclick => "showGraph('#{name}', '#{host_id}', '123')"
  end

end
