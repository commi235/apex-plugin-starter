create or replace package mkd_save_scroll
as

  function render
  (
    p_dynamic_action in apex_plugin.t_dynamic_action
  , p_plugin         in apex_plugin.t_plugin
  );

end mkd_save_scroll;
/
