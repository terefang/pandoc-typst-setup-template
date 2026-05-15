# pandoc typst setup template

a template to setup a pandoc and typst project for pdf publication

## Prerequisites

* a suitable complete POSIX environment and shell (bash, mksh, ...) like Linux
* wget download tool — https://www.gnu.org/software/wget/
* just build tool – https://github.com/casey/just/

## Bootstrapping on x86_64

```
$ git clone https://github.com/terefang/pandoc-typst-setup-template
$ cd pandoc-typst-setup-template
$ just bootstrap
```

this will download common fonts, and well known versions of typst and pandoc.

## Project Layout

TODO

## Project Build

```
$ just build
```

this will build and output the result document into `out/document.pdf`.

```
$ just pacakge
```

this will zip up an archive for offline usage.

## Features

TODO

# BTW

Asking for a feature and presenting facts along with an alternative viewpoint got me banned from the Typst Discord and forums.

see: https://github.com/LaurenzV/krilla/issues/330#issuecomment-4459063408

### this got me a full 7 days timeout

https://discord.com/channels/1054443721975922748/1054443722592497796/1504826801703096494

since i dont have access to the discord, i present a copy of the messages here:

> laurmaedje hello, yes this could get me banned but i want to add one last statement on https://github.com/LaurenzV/krilla/issues/330
>
> the apple truetype spec says:
>
> > Fonts that are not licensed may be encapsulated within a document and shipped freely to other users. Fonts subject to a licensing agreement are legally protected or licensed. They must not be modified or exchanged in any manner without first assuring that the action is within the terms of the protection agreement and obtaining permission from the holder of the protection agreement.
>
> even if i have such a license to use the font, typst will not honor my rights but follow the spec unreasonable.

### this got me banned from the typst discord server and forums:

i DMd laurmaedje and posted ():

> Terefang74: now we are playing games by execising cancel-culture ?
>
> Terefang74: A healthy conversation culture includes allowing different and even opposing opinions.
>   A genuine conversation does not depend on everyone sharing the same view, but on people
>   being able to express their thoughts freely without fear of being suppressed or
>   immediately judged. Different perspectives broaden one’s horizons, encourage critical
>   thinking, and help people understand topics more deeply.
>
>   Those who immediately reject or suppress other opinions prevent open exchange and deny
>   themselves the opportunity to learn something new. Respect does not mean always
>   agreeing with one another; it means listening to others and taking their viewpoints
>   seriously — even when one does not share them. Especially in respectful discussions,
>   opposing views can lead to new ideas, understanding, and mutual respect.
>
>   A good conversation is therefore not defined by uniformity of opinion, but by openness,
>   tolerance, and the willingness to engage with differing viewpoints.


