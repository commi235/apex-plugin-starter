create or replace package body mkd_clipboard_item
as

  procedure render
  (
    p_item   in            apex_plugin.t_item
  , p_plugin in            apex_plugin.t_plugin
  , p_param  in            apex_plugin.t_item_render_param
  , p_result in out nocopy apex_plugin.t_item_render_result
  )
  as
    l_html_content       varchar2(32767);
    l_display_linebreaks boolean;
    l_icon               varchar2(200);
  begin

    l_display_linebreaks := (p_item.attribute_01 = 'Y');
    l_icon               := p_item.attribute_02;

    -- Hidden field to hold the unchanged value
    apex_plugin_util.print_hidden
    (
      p_item  => p_item
    , p_param => p_param
    );
    
    -- The displayed information for the user.
    -- This will generate HTML and is not the original value in all cases.
    apex_plugin_util.print_display_only
    (
      p_item             => p_item
    , p_display_value    => p_param.session_state_value
    , p_show_line_breaks => l_display_linebreaks
    );

    -- The copy icon, this has a reference to the hidden page item.
    htp.p('<span class="t-Form-itemText t-Form-itemText--post mkd-clipboard-copy" data-source="' || p_item.name || '"><span class="fa ' || l_icon || '"></span></span>');

    apex_javascript.add_onload_code
    (
      p_code => 'mkd.clipboardCopy.init();'
    , p_key  => 'mkd_clipboard_copy'
    );

  end render;

end mkd_clipboard_item;
/
