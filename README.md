# bug-20201120-chromium-chrome-css-render

[Chromium bug report](https://bugs.chromium.org/p/chromium/issues/detail?id=1151415&q=&can=4)

Seeing a problem where the use of nested grid/flex (specifically not flex-direction: column), a max-width in px which the
viewport is larger than and the use of a relative padding-top. It appears to cause sibling blocks to the padding-top element
to render incorrectly when the browser is resized in Chrome and Chromium

The issues appears to cause the affected divs to only take up the space of the children elements and not the full width of
the columns it should be spanning. This causes the contents to be "pushed" to the left hand side of the containing grid.

Affected blocks of html are commented with "affected div" below.

Browser behaviour:
- Firefox  (consistent)  : displaying as expected
- Chrome   (inconsistent): displaying as expected ONLY if the window is not resized or if the window is less than the max-width
- Chromium (consistent)  : not displaying as epected on open or resize regardless of window size

### Notes on this example file

Inlined styles vs class styles: in general if a style is inlined on the element it is one key to causing the problem and
removing it will prevent the issue from occurring. These inlined styles are not exhaustive - for example I haven't checked
how necessary any of the grid display options are for any of these problems to occur.

### Browser/OS versions

```
Darwin ... 17.7.0 Darwin Kernel Version 17.7.0: Mon Aug 31 22:11:23 PDT 2020; root:xnu-4570.71.82.6~1/RELEASE_X86_64 x86_64
```

Chrome
```
Version 86.0.4240.198 (Official Build) (x86_64)
```

Chromium
```
Version 89.0.4331.0 (Developer Build) (x86_64)
```

Firefox
```
"version": "81.0.2",
"buildID": "20201012085804",
```
and
```
"version": "82.0.2",
"buildID": "20201027185343",
```
