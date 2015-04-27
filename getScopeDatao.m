% getScopeData
% Creates a pclab object, runs the scope for 5 seconds, and captures the
% plots the last screen of data in MATLAB. Note that the plot is
% autoscaled; if the signal doesn't change much, the plot may be very
% zoomed in and hard to read. Try zooming out if the plot seems to be a
% solid block of color.

%   MATLAB Support Package for Velleman PCSGU250
%   Version 1.0
%   Copyright 2011 The MathWorks, Inc.

lab = vellscope.pclab;

lab.startScope;
pause(5);
plot(lab.readChannel(1));

delete(lab);
clear all