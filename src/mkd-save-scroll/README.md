# Save Scroll Position Plugin

## Creating the Plugin manually

1. Create new Application
2. Create one page with Interactive Report using `select * from all_objects;`
3. Run the page and set pagination size to 100. (we just need a page to scroll)
4. Shared Components -> Plug-ins
5. Create -> From Scratch
6. Any Name and Internal Name
7. Type = Dynamic Action, Category = Navigation
8. Grab content from the file [plsql/mkd_save_scroll.pkb](server/plsql/mkd_save_scroll.pkb) and paste into PL/SQL Code region.
9. Set `Render Procedure/Function Name` to `render`
10. Save
11. Upload File [js/mkd-save-scroll.js](server/js/mkd-save-scroll.js) to Plugin Files.
12. Pick up the shown Reference and put into File URLs to Load -> JavaScript
13. Add a custom attribute called Action, Type `Select List`
14. Add Values for `SAVE`, `REStORE` and `CLEAR`

## Using the plugin

Now add the Dynamic Action Plugin to your page.

1. Page Load -> Restore
2. Page Unload -> Save
3. Add a button and attach Clear action
