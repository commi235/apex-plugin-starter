var mkd = mkd || {};

(function ($, item, message, clipboard, debug) {
  function _copy(event) {
    const sourceItem = $(event.currentTarget).data("source");
    const itemValue = item(sourceItem).getValue();
    debug.info("copyData", { event, sourceItem, itemValue });

    clipboard.writeText(itemValue);
    message.showPageSuccess("In Zwischenablage kopiert.");
    setTimeout(() => {
      message.hidePageSuccess();
    }, 2000);
  }

  function _init() {
    $(".mkd-clipboard-copy").on("click", function (event) {
      _copy(event);
    });
  }

  mkd.clipboardCopy = { init: _init };
})(apex.jQuery, apex.item, apex.message, navigator.clipboard, apex.debug);
