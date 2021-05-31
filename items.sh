#!/bin/bash

cat <<EOF
{
  "items": [
    {
      "title": "Capture Area",
      "subtitle": "Take a screenshot of a specific area on your screen.",
      "arg": "capture-area",
      "icon": {
        "path": "icons/capture-area.png"
      },
      "uid": "capture-area"
    },
    {
      "title": "Capture Fullscreen",
      "subtitle": "Take a screenshot of your screen.",
      "arg": "capture-fullscreen",
      "icon": {
        "path": "icons/capture-fullscreen.png"
      },
      "uid": "capture-fullscreen"
    },
    {
      "title": "Capture Previous Area",
      "subtitle": "Take a screenshot of the previously specified area of your screen.",
      "arg": "capture-previous-area",
      "icon": {
        "path": "icons/capture-previous-area.png"
      },
      "uid": "capture-previous-area"
    },
    {
      "title": "Capture Window",
      "subtitle": "Take a screenshot of a window.",
      "arg": "capture-window",
      "icon": {
        "path": "icons/capture-window.png"
      },
      "uid": "capture-window"
    },
EOF

imgpath="$(mktemp)"
if ./pngpaste "$imgpath"; then
cat <<EOF
    {
      "title": "Open From Clipboard",
      "subtitle": "Open screenshot that is currently in the clipboard.",
      "arg": "open-from-clipboard",
      "icon": {
        "path": "icons/annotate-clipboard.png"
      },
      "uid": "open-from-clipboard"
    },
EOF
fi

cat <<EOF
    {
      "title": "Annotate Image",
      "subtitle": "Annotate and edit an image.",
      "arg": "annotate",
      "icon": {
        "path": "icons/annotate.png"
      },
      "uid": "annotate"
    },
    {
      "title": "Pin to the Screen",
      "subtitle": "Pin an image to the screen.",
      "arg": "pin",
      "icon": {
        "path": "icons/pin.png"
      },
      "uid": "pin"
    },
    {
      "title": "Record Screen",
      "subtitle": "Start a screen recording and save it as a video or an optimized GIF file.",
      "arg": "record-screen",
      "icon": {
        "path": "icons/record-screen.png"
      },
      "uid": "record-screen"
    },
    {
      "title": "Restore Recently Closed File",
      "subtitle": "Restore the recently closed file.",
      "arg": "restore-recently-closed",
      "icon": {
        "path": "icons/restore-recently-closed.png"
      },
      "uid": "restore-recently-closed"
    },
    {
      "title": "Scrolling Capture",
      "subtitle": "Capture any scrollable content.",
      "arg": "scrolling-capture",
      "icon": {
        "path": "icons/scrolling-capture.png"
      },
      "uid": "scrolling-capture"
    },
    {
      "title": "Self Timer",
      "subtitle": "Take a screenshot after a specified delay to capture the perfect moment.",
      "arg": "self-timer",
      "icon": {
        "path": "icons/self-timer.png"
      },
      "uid": "self-timer"
    },
    {
      "title": "Toggle Desktop Icons",
      "subtitle": "Hide clutter on your Desktop.",
      "arg": "toggle-desktop-icons",
      "icon": {
        "path": "icons/toggle-desktop-icons.png"
      },
      "uid": "toggle-desktop-icons"
    }
  ]
}
EOF
