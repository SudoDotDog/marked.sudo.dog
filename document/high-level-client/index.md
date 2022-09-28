---
layout: default
---

## Quick Start with High Level Client

```js
import { Marked } from '@sudoo/marked'

Marked(`import print from 'print'; print(1)`, {
    options: // options
    injects: // inject variable
    provides: {
        print: {
            default: (...contents) => {
                console.log(...contents.map((content) => content ? content.toString() : 'undefined'));
            },
        },
    },
})
    .then((result)=>/*handle result*/)
    .catch((err)=>/*handle error*/);
```
