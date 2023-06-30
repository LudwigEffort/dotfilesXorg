diff --git a/config/polybar/scripts/launch.sh b/config/polybar/scripts/launch.sh
index b124065..e69de29 100755
--- a/config/polybar/scripts/launch.sh
+++ b/config/polybar/scripts/launch.sh
@@ -1,15 +0,0 @@
-#!/usr/bin/env bash
-# source code https://github.com/polybar/polybar
-
-# Terminate already running bar instances
-# If all your bars have ipc enabled, you can use 
-polybar-msg cmd quit
-# Otherwise you can use the nuclear option:
-# killall -q polybar
-
-# Launch bar1 and bar2
-echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
-polybar main 2>&1 | tee -a /tmp/polybar1.log & disown
-#polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown
-
-echo "Bars launched..."
