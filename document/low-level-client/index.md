---
layout: default
---

## Quick Start with Low Level Client

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
