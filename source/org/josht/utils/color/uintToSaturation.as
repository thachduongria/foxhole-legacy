////////////////////////////////////////////////////////////////////////////////
//
//  Copyright (c) 2010 Josh Tynjala
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to 
//  deal in the Software without restriction, including without limitation the
//  rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
//  sell copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
//  IN THE SOFTWARE.
//
////////////////////////////////////////////////////////////////////////////////
//
//  Contains third-party source code released under the following license terms:
//
//  Copyright (c) 2008, Yahoo! Inc. All rights reserved.
//  
//  Redistribution and use of this software in source and binary forms, with or
//  without modification, are permitted provided that the following conditions
//  are met:
//  
//    * Redistributions of source code must retain the above copyright notice,
//      this list of conditions and the following disclaimer.
//    * Redistributions in binary form must reproduce the above copyright
//      notice, this list of conditions and the following disclaimer in the
//      documentation and/or other materials provided with the distribution.
//    * Neither the name of Yahoo! Inc. nor the names of its contributors may be
//      used to endorse or promote products derived from this software without
//      specific prior written permission of Yahoo! Inc.
//  
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
//  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
//  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
//  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
//  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
//  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
//  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
//  POSSIBILITY OF SUCH DAMAGE.
//
//  Source: http://developer.yahoo.com/flash/
//
////////////////////////////////////////////////////////////////////////////////

package org.josht.utils.color
{
	/**
	 * Extracts the HSB saturation component from a uint color value. 
	 * 
	 * @param color		The color from which to extract the saturation component.
	 * @return			The saturation component of the input color in the range 0 to 1.
	 *
	 * @author Yahoo! (modified by Josh Tynjala)
	 */
	public function uintToSaturation(color:uint):Number
	{
		var red:Number = uintToRed(color) / 0xff;
		var green:Number = uintToGreen(color) / 0xff;
		var blue:Number = uintToBlue(color) / 0xff;
		
		var max:Number = Math.max(red, green, blue);
		var min:Number = Math.min(red, green, blue);
		var delta:Number = max - min;
		
		var saturation:Number = 0;
		var brightness:Number = max;
		if(delta != 0 && brightness != 0)
		{
			saturation = delta / max;
		}
		return saturation;
	}
}