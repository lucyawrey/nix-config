{
  programs.plasma = {
    enable = true;
    workspace = {
      clickItemTo = "select";
      tooltipDelay = 100;
      theme = "breeze-dark";
      colorScheme = "BreezeDark";
      wallpaper = "./lucina-sweater.png";
    };

    kwin.titlebarButtons = {
     left = [ "on-all-desktops" "keep-above-windows" ];
     right = [ "help" "minimize" "maximize" "close" ];
   };
    
    spectacle.shortcuts = {
      captureActiveWindow = "Meta+Print";
      captureCurrentMonitor = "Print";
      captureEntireDesktop = "Shift+Print";
      captureRectangularRegion = "Meta+Shift+S";
      captureWindowUnderCursor = "Meta+Ctrl+Print";
      launch = "Meta+S";
      launchWithoutCapturing = "Meta+Alt+S";
    };
  };
}