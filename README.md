# docker-flood

> The perfect match between a highly customizable torrent client and an awesome web ui.

This repo holds dockerfiles used to create a flood web ui instance using rtorrent as backend. It was created to be easily deployed using a single `docker-compose`. These dockerfiles are based on [Alpine Linux](https://alpinelinux.org) for minimalist and lightweight images.

![flood_bis](https://user-images.githubusercontent.com/2095991/41016996-1fbd4082-6953-11e8-9a3d-508312265c5d.png)

> Why two containers ?

For the sake of sticking to docker standards and application separation. Seriously, containers are not intended to have more than one process/service running at a time and for security purposes these containers are isolated as thinly as possible to help keep outward facing processes separate from internal ones.

> Oh gosh, this is annoying to deploy !

Yes it can but with `docker-compose.yml` files you can easily launch a complex interdependent application with one command `docker-compose up`.

> Why concatenating all your commands in a single RUN directive ?

Every `RUN` directive creates another layer in your container which makes your container much larger than it needs to be. Meaning if you do any package or archive cleanup after you've installed a bunch of things you're not actually saving any space.

