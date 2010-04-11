function test_suite = testIsPerpendicular(varargin)
%testIsPerpendicular  One-line description here, please.
%   output = testIsPerpendicular(input)
%
%   Example
%   testIsPerpendicular
%
%   See also
%
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2009-04-22,    using Matlab 7.7.0.471 (R2008b)
% Copyright 2009 INRA - Cepia Software Platform.
% Licensed under the terms of the LGPL, see the file "license.txt"

initTestSuite;


function testPerpendicular

v1 = [1 2];
v2 = [-4 2];
b  = isPerpendicular(v1, v2);
assertTrue(b);


function testNotPerpendicular

v1 = [1 2];
v2 = [-4 1];
b  = isPerpendicular(v1, v2);
assertFalse(b);

function testArray

v1  = [1 0 ; 1 1;1 2];
v2  = [-4 2];
th  = [false; false; true];
res = isPerpendicular(v1, v2);
assertEqual(res, th);

