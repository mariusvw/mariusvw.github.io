function themeName(name) {
  return name == 'light' ? 'Dark' : 'Light';
}

function themeColor(e) {
  var theme = "light";
  if (localStorage.getItem("theme")) {
    if (localStorage.getItem("theme") == "dark") {
      theme = "dark";
    }
  } else if (window.matchMedia && window.matchMedia("(prefers-color-scheme: dark)").matches) {
    theme = "dark";
  }
  document.documentElement.setAttribute("data-theme", theme);
  localStorage.setItem('theme', theme);
  e.innerText = themeName(theme) + 'mode';
}

function switchTheme(e) {
  var theme = 'light';
  if (document.documentElement.getAttribute('data-theme') == 'light') {
    theme = 'dark';
  }
  document.documentElement.setAttribute('data-theme', theme);
  localStorage.setItem('theme', theme);
  e.target.innerText = themeName(theme) + 'mode';
}

const themeButton = document.getElementById('theme');
themeColor(themeButton);
themeButton.addEventListener('click', switchTheme, false);
