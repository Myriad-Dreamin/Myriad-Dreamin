
const checkCss = () => {
  if (
    !(!window.matchMedia ||
    !window.matchMedia("(prefers-color-scheme: dark)").matches)
  ) {
    document.documentElement.classList.add("dark");
  }
};

// Check for saved theme preference or default to dark theme
if (typeof localStorage !== "undefined") {
  const userSetTheme = localStorage.getItem("theme");
  if (userSetTheme) {
    if (userSetTheme === "dark") {
      document.documentElement.classList.add("dark");
    }
  } else {
    checkCss();
  }
} else {
  checkCss();
}
