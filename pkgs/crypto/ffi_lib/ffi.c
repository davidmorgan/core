// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#include <stdio.h>
#include "ffi.h"
#include "md5.h"

int main()
{
    hello_world();
    uint8_t result[16];
    md5String("Hello, World!", result);       // *result = 65a8e27d8879283831b664bd8b7f0ad4
    printf(result);
    return 0;
}

// Note:
// ---only on Windows---
// Every function needs to be exported to be able to access the functions by dart.
// Refer: https://stackoverflow.com/q/225432/8608146
void hello_world()
{
    printf("Hello World\n");
}
