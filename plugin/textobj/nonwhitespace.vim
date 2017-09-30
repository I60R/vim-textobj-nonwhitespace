" Non-whitespace text object for Vim
" Copyright © 2016-2017 160R

" Permission is hereby granted, free of charge, to any person obtaining
" a copy of this software and associated documentation files (the "Software"),
" to deal in the Software without restriction, including without limitation
" the rights to use, copy, modify, merge, publish, distribute, sublicense,
" and/or sell copies of the Software, and to permit persons to whom the
" Software is furnished to do so, subject to the following conditions:

" The above copyright notice and this permission notice shall be included
" in all copies or substantial portions of the Software.

" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
" EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
" OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
" IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
" DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
" TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
" OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


if exists('g:loaded_textobj_nonwhitespace')
   finish
endif

call textobj#user#plugin('nonwhitespace', {
\    'nonwhitespace-i': {
\	 '*pattern*': '\v\S+',
\	 'select': 'i<Space>',
\    },
\    'nonwhitespace-a': {
\	 '*pattern*': '\v\S+\s*',
\        'select': 'a<Space>',
\    },
\})

let g:loaded_textobj_nonwhitespace = 1
