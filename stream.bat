@echo off
title=BatchLivestreamer

:streamer
echo =================================
echo = Enter The Stramers Name Below =
echo =================================

set /p streamer=Streamer:
cls
:quality
echo =====================
echo = List of Qualities =
echo =====================
echo =	source	    =
echo =	high	    =
echo =	medium	    =
echo =	low	    =
echo =	mobile	    =
echo =	audio	    =
echo =====================

set quality=
set /p quality=Enter The Viewing Quality:

:stream
livestreamer.exe --player-passthrough hls https://www.twitch.tv/%streamer% %quality%