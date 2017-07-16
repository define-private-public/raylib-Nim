import raylib as rl

proc main()=
  let
    screenWidth = 800.cint
    screenHeight = 450.cint

  rl.InitWindow(screenWidth, screenHeight, "raylib [core] example - basic window")

  while not rl.WindowShouldClose():
    rl.BeginDrawing()

    rl.ClearBackground(rl.RAYWHITE)
    rl.DrawText("Congrats! You created your first window!", 190, 200, 20, rl.LIGHTGRAY)

    rl.EndDrawing()

  rl.CloseWindow()



main()
