---
title: ShoeBox

description: Efficiently supporting multi-quality image storage

people:
  - eqy
  - karin
  - luisceze


layout: project
status: inactive
---
  (In collaboration with Kaiyuan Zhang and [Xi Wang](https://homes.cs.washington.edu/~xi/))

## ShoeBox
  Images are among the most popular forms of data stored and transferred on the internet.
  In many applications--especially social media services, users upload and retrieve images using
  a wide variety of devices with different screen sizes, resolutions, and pixel densities. To accomodate
  these use cases, modern image storage must efficiently handle serving images at multiple quality levels or resolutions.
  Previous approaches have sacrificed storage efficiency for performance, storing a (redundant) version
  of each image for each quality level. ShoeBox is a project designed to enable efficient multi-quality
  image storage by only storing a single version of each image. To improve performance, ShoeBox only reads
  the required image data (depending  on the specified quality) for each request.
