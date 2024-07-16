create or replace package mkd_clipboard_item
as

  procedure render
  (
    p_item   in            apex_plugin.t_item,
    p_plugin in            apex_plugin.t_plugin,
    p_param  in            apex_plugin.t_item_render_param,
    p_result in out nocopy apex_plugin.t_item_render_result
  );

end mkd_clipboard_item;
/
