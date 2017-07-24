import raylib as rl

type
  Bunny = object
    position: Vector2
    speed: Vector2
    color: Color

const MAX_BUNNIES = 100_000


proc main()=
  let
    screenWidth = 1280.cint
    screenHeight = 960.cint

  rl.InitWindow(screenWidth, screenHeight, "raylib example - Bunnymark")

  let texBunny = rl.LoadTexture("resources/wabbit_alpha.png")
  var
    bunnies: array[MAX_BUNNIES, Bunny]
    bunniesCount = 0


  rl.SetTargetFPS(60)
  while not rl.WindowShouldClose():
    # Update
    if rl.IsMouseButtonDown(rl.MOUSE_LEFT_BUTTON):
      # Create
      for i in 0..<100:
        bunnies[bunniesCount].position = rl.GetMousePosition()
        bunnies[bunniesCount].speed.x = rl.GetRandomValue(250, 500).float / 60.0
        bunnies[bunniesCount].speed.y = (rl.GetRandomValue(250, 500) - 500).float / 60.0 
        bunniesCount += 1
   
    for i in 0..<bunniesCount:
      bunnies[i].position.x += bunnies[i].speed.x
      bunnies[i].position.y += bunnies[i].speed.y

#      if ((bunnies[i].position.x > rl.GetScreenWidth()) or (bunnies[i].position.x < 0)):
#        bunnies[i].speed.x *= -1
#      if ((bunnies[i].position.y > rl.GetScreenHeight()) or (bunnies[i].position.y < 0)):
#        bunnies[i].speed.y *= -1
   
    # Draw
    rl.BeginDrawing()

    rl.ClearBackground(RAYWHITE)
    
    for i in 0..<bunniesCount:
      rl.DrawTexture(texBunny, bunnies[i].position.x.cint, bunnies[i].position.y.cint, rl.RAYWHITE)
    
    rl.DrawRectangle(0, 0, screenWidth, 40, rl.LIGHTGRAY)
#    rl.DrawText("raylib bunnymark", 10, 10, 20, rl.DARKGRAY)
#    rl.DrawText(rl.FormatText("bunnies: %i", bunniesCount), 400, 10, 20, rl.RED)
    
    rl.DrawFPS(260, 10)

    rl.EndDrawing()

  rl.CloseWindow()



main()

