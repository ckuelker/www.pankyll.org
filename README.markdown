# www.pankyll.org

## Overview

This document describes the technical aspects of the repository
`www.pankyll.org`. Technically this site is the `en_US` output of
[pankyll-theme-rankle-example].

![Github license](https://img.shields.io/github/license/ckuelker/www.pankyll.org.svg)
![Github issues](https://img.shields.io/github/issues/ckuelker/www.pankyll.org.svg?style=popout-square)
![Github code size in bytes](https://img.shields.io/github/languages/code-size/ckuelker/www.pankyll.org.svg)
![Git repo size](https://img.shields.io/github/repo-size/ckuelker/www.pankyll.org.svg)
![Last commit](https://img.shields.io/github/last-commit/ckuelker/www.pankyll.org.svg)

## Changes

| Version | Date       | Notes                                                |
| ------- | ---------- | ---------------------------------------------------- |
| 0.1.5   | 2022-05-20 | Makefile, README: Display, Build pages, Doc 0.1.9    |
| 0.1.4   | 2021-05-18 | Favicon, Documentation 0.1.7                         |
| 0.1.3   | 2021-05-15 | Favicon, Documentation 0.1.6                         |
| 0.1.2   | 2020-05-13 | Favicon, Documentation 0.1.3                         |
| 0.1.1   | 2020-04-28 | Fix theme license                                    |
| 0.1.0   | 2020-04-27 | Initial release                                      |

## Display (Serve) This Repository As A Web Site

```bash
make server
```

Connect to the server URL mentioned at the output.

## Building The Web Site www.pankyll.org

```bash
git clone https://github.com/ckuelker/pankyll-theme-rankle-example.git
cd pankyll-theme-rankle-example
# The original www.pankyll.org is created with the feature 'create_pdf: False'
# due to quota limitation of github.com
make realclean submodule-update submodule-pull repository-update build
cd ..

git clone https://github.com/ckuelker/www.pankyll.org.git
cd www.pankyll.org
# This merges to content of public/ into the current directory
make copy
# To see the web sites use and point your browser to the displayed URL
make server

```

## Author Of The Content in en_EN

    Christian Külker <c@c8i.org>

## License And Copyright

This repository is a merge from different sources. All files are copyrighted
and licensed by their authors. Please refer to the source code repository.
The information for this external repositories is for courtesy only.

For the remaining sources:

    Copyright (C) 2020, 2021, 2022 by Christian Kuelker, see LICENSE file.

### pankyll-documentation

* Copyright: Christian Külker
* License: GNU FDL 1.3 or later
* Directory: `en_US`
* Files: `index.html`
* Repository: https://github.com/ckuelker/pankyll-documentation

### pankyll-theme-rankle

* Copyright: Christian Külker
* License: GNU GPL 3.0 or later
* Directory: `en_US`
* Files: `css/rankle.css` `js/rankle.js`
* Repository: https://github.com/ckuelker/pankyll-theme-rankle

### Font Awesome

 * Copyright:  Font Awesome Free 5.13.0 by @fontawesome - https://fontawesome.com
 * License: https://fontawesome.com/license/free (Icons: CC BY 4.0, Fonts: SIL OFL 1.1, Code: MIT License)
 * File: `css`
 * Directory: `webfonts`
 * Repository: https://github.com/FortAwesome/Font-Awesome.git

### Font Lato

 * Copyright:  2015 HAKGER
 * License: MIT
 * Directory: `font/lato`
 * Repository: https://github.com/hakger/latolatin-webfont.git

### Font Roboto-Sans

 * Author: [Christian Robertson](https://plus.google.com/110879635926653430880/about)
 * License: Apache 2.0
 * Directory: `font/roboto-slab`
 * Repository: https://github.com/choffmeister/roboto-fontface-bower.git

## DISCLAIMER OF WARRANTY

    THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE
    LAW. EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR
    OTHER PARTIES PROVIDE THE PROGRAM “AS IS” WITHOUT WARRANTY OF ANY KIND,
    EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
    WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE
    ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.
    SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY
    SERVICING, REPAIR OR CORRECTION.

## LIMITATION OF LIABILITY

    IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING WILL
    ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MODIFIES AND/OR CONVEYS THE
    PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES, INCLUDING ANY
    GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE
    USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED TO LOSS OF
    DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD
    PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER PROGRAMS),
    EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
    SUCH DAMAGES.

[pankyll-theme-rankle-example]: https://github.com/ckuelker/pankyll-theme-rankle-example

