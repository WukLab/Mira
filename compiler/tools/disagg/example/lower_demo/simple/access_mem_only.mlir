access_mem = {
  // range = { base address , offset expr , access size }
  loop1 = [
    {%rel, <(%arg0) -> ( %arg0 * 32768) > , 1},
    {%rel, <(%arg0) -> ( %arg0 * 32768 + 32) > , 1},
    ...
    {%rel, <(%arg0) -> ( %arg0 * 32768 + 32736) > , 1},
    {%0,   <(%arg0) -> ( %arg0 * 1024) > , 1024}
  ],
  loop2 = [
    {%rel, <(%arg0, %arg1) -> (%arg0 * 32768 + %arg1)>, 1},
    {%0, <(%arg0, %arg1) -> (%arg0 * 1024 + %arg1)>, 1}
  ] 
  loop3 = [
    {%0, <(%arg0) -> (%arg0 * 1024)>, 1024},
    {%1, <(%arg0) -> (0)>, 51470336},
    {%2, <(%arg0) -> (%arg0 * 50264)>, 50264}
  ],
  loop4 = [
    {%0, <(%arg0,%arg1) -> (%arg0 * 1024)>, 1024},
    {%1, <(%arg0,%arg1) -> (50264 + %arg1)>, 8},
    ...
    {%1, <(%arg0,%arg1) -> (1023 * 50264 + %arg1)>, 8},
    {%2, <(%arg0,%arg1) -> (%arg0 * 50264 + %arg1)>, 8}
  ]
  loop5 = [
    {%0, <(%arg0,$arg1,%arg2) -> (%arg0 * 1024 + %arg2)>, 8},
    {%1, <(%arg0,$arg1,%arg2) -> (%arg2 * 50264 + $arg1)>, 8},
    ...
    {%1, <(%arg0,$arg1,%arg2) -> ((%arg2+7) * 50264 + %arg1)>, 8},
    {%2, <(%arg0,$arg1,%arg2) -> (%arg0 * 50264 + $arg1)>, 8}
  ]
  loop6 = [
    {%0, <(%arg0,$arg1,%arg2,%arg3) -> (%arg0 * 1024 + (%arg2+%arg3))>, 1},
    {%1, <(%arg0,$arg1,%arg2,%arg3) -> ((%arg2+%arg3) * 50264 + %arg1)>, 8}
  ]
}
