---
layout: default
---

## Quick Start

### High level client

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

### Low level client

```js
import { Sandbox } from '@sudoo/marked'

const sandbox = Sandbox.fromAllEvaluators();

sandbox
    .provide('print', {
        default: (...contents) => {
            console.log(...contents.map((content) => content ? content.toString() : 'undefined'));
        },
    })
    .evaluate(`import print from 'print'; print(1)`)
    .then((result)=>/*handle result*/)
    .catch((err)=>/*handle error*/);
```
