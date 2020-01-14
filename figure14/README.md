# Figure 14

## USing helm with stack

Helm needs Gtk2Hs, see the instruction on [helm's github](https://github.com/z0w0/helm)

In `package.yaml`:

```
dependencies:
- base >= 4.7 && < 5
- helm
```

In `stack.yaml`:

```
extra-deps: 
    - helm-1.0.0@sha256:d302a857ec4bfaf720ba5f2345fe2cc3df5d61d920173172ca092671340f700f
    - cairo-0.13.8.0@sha256:9b64a376ebaa4f153bba5866a32291fd4bed48147009cce9158ce6533928eba8
    - pango-0.13.8.0@sha256:690149ea2efb03c783937b69a5ec6ac854806146fd760e28e800634a6c2243c1
    - glib-0.13.8.0@sha256:97698bd054bad38756f3ef0220d7684f72e42660d261e9b118aa73419ce9207d
    - gtk2hs-buildtools-0.13.8.0@sha256:132f38155fc677430a47ea750918973161c876fb6f281d342ac2f07eb99229ce
```



