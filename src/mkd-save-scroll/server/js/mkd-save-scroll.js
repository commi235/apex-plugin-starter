var mkd = mkd || {};

(function ($, storage, debug) {
  const _storagePrefix = "apexSaveScrollPosition";
  const _itemName = "scrollPosition";
  const _myStorage = storage.getScopedSessionStorage({
    prefix: _storagePrefix,
    useAppId: true,
    usePageId: true,
  });

  function _get() {
    const scrollPos = _myStorage.getItem(_itemName);
    debug.info("Get called", {
      itemName: _itemName,
      scrollTop: scrollPos,
      storage: _myStorage,
    });

    return scrollPos;
  }

  _save = function () {
    debug.info("Save called", {
      itemName: _itemName,
      scrollTop: $(window).scrollTop(),
      storage: _myStorage,
    });
    _myStorage.setItem(_itemName, $(window).scrollTop());
  };

  _restore = function () {
    apex.jQuery(window).scrollTop(_get());
  };

  _clear = function () {
    debug.info("Clear called");
    _myStorage.clear();
  };

  mkd.saveScroll = {
    save: _save,
    restore: _restore,
    clear: _clear,
  };
})(apex.jQuery, apex.storage, apex.debug);
