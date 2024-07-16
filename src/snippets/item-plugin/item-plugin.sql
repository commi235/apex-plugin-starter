create or replace package body $1
as
-- Start copying below for pasting into plugin source

-- Item Plugin $1

-- Constants

-- Private Methods

-- Plugin Methods
  procedure render
  (
    p_item   in            apex_plugin.t_item
  , p_plugin in            apex_plugin.t_plugin
  , p_param  in            apex_plugin.t_item_render_param
  , p_result in out nocopy apex_plugin.t_item_render_result
  )
  as
  begin
    null;
  end render;

  procedure meta_data
  (
    p_item   in            apex_plugin.t_item
  , p_plugin in            apex_plugin.t_plugin
  , p_param  in            apex_plugin.t_item_meta_data_param
  , p_result in out nocopy apex_plugin.t_item_meta_data_result
  )
  as
  begin
    null;
  end meta_data;

  procedure ajax
  (
    p_item   in            apex_plugin.t_item
  , p_plugin in            apex_plugin.t_plugin
  , p_param  in            apex_plugin.t_item_ajax_param
  , p_result in out nocopy apex_plugin.t_item_ajax_result
  )
  as
  begin
    null;
  end ajax;

  procedure validation
  (
    p_item   in            apex_plugin.t_item
  , p_plugin in            apex_plugin.t_plugin
  , p_param  in            apex_plugin.t_item_validation_param
  , p_result in out nocopy apex_plugin.t_item_validation_result
  )
  as
  begin
    null;
  end validation;

end $1;
/
