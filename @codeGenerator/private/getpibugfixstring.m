function bfixString = getPiBugfixString(CGen)
%% GETPIBUGFIXSTRING Returns a string to fix PI-Bug in auto genereated functions.
% =========================================================================
% 
%   bfixString = getPiBugfixString()
% 
%  Description::
%    In some versions the symbolic toolbox writes the constant $pi$ in
%    capital letters. This way autogenerated functions might not work properly. 
%    To fix this issue a local variable is introduced:
%    PI = pi
%
%  Output::
%       bfixString: String with explanation comment and variable declaration.
% 
%  Authors::
%        J�rn Malzahn   
%        2012 RST, Technische Universit�t Dortmund, Germany
%        http://www.rst.e-technik.tu-dortmund.de   
% 
%  See also constructheaderstring, replaceheader.

% Copyright (C) 1993-2012, by Peter I. Corke
%
% This file is part of The Robotics Toolbox for Matlab (RTB).
% 
% RTB is free software: you can redistribute it and/or modify
% it under the terms of the GNU Lesser General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% RTB is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU Lesser General Public License for more details.
% 
% You should have received a copy of the GNU Leser General Public License
% along with RTB.  If not, see <http://www.gnu.org/licenses/>.
%
% http://www.petercorke.com
 
bfixString = [];
bfixString = [bfixString, sprintf('%s\n','%% Bugfix')];
bfixString = [bfixString, sprintf('%s\n','%  In some versions the symbolic toolbox writes the constant $pi$ in')];
bfixString = [bfixString, sprintf('%s\n','%  capital letters. This way autogenerated functions might not work properly.')];
bfixString = [bfixString, sprintf('%s\n','%  To fix this issue a local variable is introduced:')];
bfixString = [bfixString, sprintf('%s\n','PI = pi;')];
bfixString = [bfixString, sprintf('%s\n','   ')];