datt-ambassador
===============

ambassador container. link to get goodness...



### Test running serf...

# start the ambassador in debug mode.

  docker run -i -t --rm -w /files --name datt-ambassador -e RUN_DEBUG=1 --hostname datt-ambassador datt/datt-ambassador

# run the serf monitor to see the events...

  serf monitor

# start three serf client nodes...

  for i in 1 2 3;
  do
    docker run -i -t -d -w /files --name datt-base$i -e RUN_DEBUG=0 --link datt-ambassador:ambassador --hostname datt-base$i datt/datt-base;
  done
