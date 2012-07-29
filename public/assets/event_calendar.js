/*
 * Smart event highlighting
 * Handles for when events span rows, or don't have a background color
 */
Event.observe(window,"load",function(){var e="#2EAC6A";$$(".ec-event-bg").each(function(t){t.observe("mouseover",function(n){event_id=t.readAttribute("data-event-id"),event_class_name=t.readAttribute("data-event-class"),$$(".ec-"+event_class_name+"-"+event_id).each(function(t){t.setStyle({backgroundColor:e})})}),t.observe("mouseout",function(e){event_id=t.readAttribute("data-event-id"),event_class_name=t.readAttribute("data-event-class"),event_color=t.readAttribute("data-color"),$$(".ec-"+event_class_name+"-"+event_id).each(function(e){e.setStyle({backgroundColor:event_color})})})}),$$(".ec-event-no-bg").each(function(t){t.observe("mouseover",function(n){t.setStyle({color:"white"}),t.select("a").each(function(e){e.setStyle({color:"white"})}),t.select(".ec-bullet").each(function(e){e.setStyle({backgroundColor:"white"})}),t.setStyle({backgroundColor:e})}),t.observe("mouseout",function(e){event_color=t.readAttribute("data-color"),t.setStyle({color:event_color}),t.select("a").each(function(e){e.setStyle({color:event_color})}),t.select(".ec-bullet").each(function(e){e.setStyle({backgroundColor:event_color})}),t.setStyle({backgroundColor:"transparent"})})})});