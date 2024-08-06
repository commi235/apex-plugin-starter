var mkd = mkd || {};

(function ($, storage, debug) {
  const _storagePrefix = "apexSaveScrollPosition";
  const _itemName = "scrollPosition";
  const _myStorage = storage.getScopedSessionStorage({
    prefix: storagePrefix,
    useAppId: true,
    usePageId: true,
  });

  function _get() {
    debug.trace();
    return _myStorage.getItem(_itemName);
  }

  _save = function () {
    _myStorage.setItem(_itemName, $(window).scrollTop());
  };

  _restore = function () {
    apex.jQuery(window).scrollTop(_get());
  };

  _clear = function () {
    _myStorage.clear();
  };

  mkd.saveScroll = {
    save: _save,
    restore: _restore,
    clear: _clear,
  };
})(apex.jQuery, apex.storage, apex.debug);
