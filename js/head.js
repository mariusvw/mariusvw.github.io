function ready(fn) {
    if (document.readyState != 'loading'){
        fn();
    } else {
        document.addEventListener('DOMContentLoaded', fn);
    }
}

ready(function() {
    window.addEventListener('blur', title.onBlur);
    window.addEventListener('focus', title.onFocus);
});

var title = {
  focus: true,
  onBlur: function() {
      this.focus = false;
      document.title = 'mariusvw.github.io by Marius van Witzenburg :-(';
  },
  onFocus: function() {
      if (!this.focus) {
          this.focus = true;
          document.title = 'mariusvw.github.io by Marius van Witzenburg :-)';
      }
  }
};
