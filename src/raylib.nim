when defined(macosx):
  # Mac OS X
  const LIB_RAYLIB* = "libraylib.dylib"
  {.passL: "-L. -lraylib".}
  {.deadCodeElim: on.}
else:
  # Linux
  const LIB_RAYLIB* = "libraylib.so"
  {.passL: "-lglfw -lGL -lopenal -lm -lpthread -ldl -lX11 -lXrandr -lXinerama -lXxf86vm -lXcursor".}

  {.deadCodeElim: on.}

# TODO windows

# Manually (statically) compile in raylib...  Absolutely disgusting...
{.compile: "raylib_src/external/stb_vorbis.c".}
{.compile: "raylib_src/audio.c".}
{.compile: "raylib_src/core.c".}
{.compile: "raylib_src/models.c".}
{.compile: "raylib_src/rlgl.c".}
{.compile: "raylib_src/shapes.c".}
{.compile: "raylib_src/text.c".}
{.compile: "raylib_src/textures.c".}
{.compile: "raylib_src/utils.c".}



const
  FLAG_SHOW_LOGO* = 1
  FLAG_FULLSCREEN_MODE* = 2
  FLAG_WINDOW_RESIZABLE* = 4
  FLAG_WINDOW_DECORATED* = 8
  FLAG_WINDOW_TRANSPARENT* = 16
  FLAG_MSAA_4X_HINT* = 32
  FLAG_VSYNC_HINT* = 64


const
  KEY_SPACE* = 32
  KEY_ESCAPE* = 256
  KEY_ENTER* = 257
  KEY_BACKSPACE* = 259
  KEY_RIGHT* = 262
  KEY_LEFT* = 263
  KEY_DOWN* = 264
  KEY_UP* = 265
  KEY_F1* = 290
  KEY_F2* = 291
  KEY_F3* = 292
  KEY_F4* = 293
  KEY_F5* = 294
  KEY_F6* = 295
  KEY_F7* = 296
  KEY_F8* = 297
  KEY_F9* = 298
  KEY_F10* = 299
  KEY_F11* = 300
  KEY_F12* = 301
  KEY_LEFT_SHIFT* = 340
  KEY_LEFT_CONTROL* = 341
  KEY_LEFT_ALT* = 342
  KEY_RIGHT_SHIFT* = 344
  KEY_RIGHT_CONTROL* = 345
  KEY_RIGHT_ALT* = 346

##  Keyboard Alpha Numeric Keys

const
  KEY_ZERO* = 48
  KEY_ONE* = 49
  KEY_TWO* = 50
  KEY_THREE* = 51
  KEY_FOUR* = 52
  KEY_FIVE* = 53
  KEY_SIX* = 54
  KEY_SEVEN* = 55
  KEY_EIGHT* = 56
  KEY_NINE* = 57
  KEY_A* = 65
  KEY_B* = 66
  KEY_C* = 67
  KEY_D* = 68
  KEY_E* = 69
  KEY_F* = 70
  KEY_G* = 71
  KEY_H* = 72
  KEY_I* = 73
  KEY_J* = 74
  KEY_K* = 75
  KEY_L* = 76
  KEY_M* = 77
  KEY_N* = 78
  KEY_O* = 79
  KEY_P* = 80
  KEY_Q* = 81
  KEY_R* = 82
  KEY_S* = 83
  KEY_T* = 84
  KEY_U* = 85
  KEY_V* = 86
  KEY_W* = 87
  KEY_X* = 88
  KEY_Y* = 89
  KEY_Z* = 90

const
  MOUSE_LEFT_BUTTON* = 0
  MOUSE_RIGHT_BUTTON* = 1
  MOUSE_MIDDLE_BUTTON* = 2


const
  MAX_TOUCH_POINTS* = 2


const
  GAMEPAD_PLAYER1* = 0
  GAMEPAD_PLAYER2* = 1
  GAMEPAD_PLAYER3* = 2
  GAMEPAD_PLAYER4* = 3

const
  GAMEPAD_PS3_BUTTON_TRIANGLE* = 0
  GAMEPAD_PS3_BUTTON_CIRCLE* = 1
  GAMEPAD_PS3_BUTTON_CROSS* = 2
  GAMEPAD_PS3_BUTTON_SQUARE* = 3
  GAMEPAD_PS3_BUTTON_L1* = 6
  GAMEPAD_PS3_BUTTON_R1* = 7
  GAMEPAD_PS3_BUTTON_L2* = 4
  GAMEPAD_PS3_BUTTON_R2* = 5
  GAMEPAD_PS3_BUTTON_START* = 8
  GAMEPAD_PS3_BUTTON_SELECT* = 9
  GAMEPAD_PS3_BUTTON_UP* = 24
  GAMEPAD_PS3_BUTTON_RIGHT* = 25
  GAMEPAD_PS3_BUTTON_DOWN* = 26
  GAMEPAD_PS3_BUTTON_LEFT* = 27
  GAMEPAD_PS3_BUTTON_PS* = 12

##  PS3 USB Controller Axis

const
  GAMEPAD_PS3_AXIS_LEFT_X* = 0
  GAMEPAD_PS3_AXIS_LEFT_Y* = 1
  GAMEPAD_PS3_AXIS_RIGHT_X* = 2
  GAMEPAD_PS3_AXIS_RIGHT_Y* = 5
  GAMEPAD_PS3_AXIS_L2* = 3
  GAMEPAD_PS3_AXIS_R2* = 4


const
  GAMEPAD_XBOX_BUTTON_A* = 0
  GAMEPAD_XBOX_BUTTON_B* = 1
  GAMEPAD_XBOX_BUTTON_X* = 2
  GAMEPAD_XBOX_BUTTON_Y* = 3
  GAMEPAD_XBOX_BUTTON_LB* = 4
  GAMEPAD_XBOX_BUTTON_RB* = 5
  GAMEPAD_XBOX_BUTTON_SELECT* = 6
  GAMEPAD_XBOX_BUTTON_START* = 7
  GAMEPAD_XBOX_BUTTON_UP* = 10
  GAMEPAD_XBOX_BUTTON_RIGHT* = 11
  GAMEPAD_XBOX_BUTTON_DOWN* = 12
  GAMEPAD_XBOX_BUTTON_LEFT* = 13
  GAMEPAD_XBOX_BUTTON_HOME* = 8

const
  GAMEPAD_XBOX_AXIS_LEFT_X* = 0
  GAMEPAD_XBOX_AXIS_LEFT_Y* = 1
  GAMEPAD_XBOX_AXIS_RIGHT_X* = 2
  GAMEPAD_XBOX_AXIS_RIGHT_Y* = 3
  GAMEPAD_XBOX_AXIS_LT* = 4
  GAMEPAD_XBOX_AXIS_RT* = 5

## ----------------------------------------------------------------------------------
##  Structures Definition
## ----------------------------------------------------------------------------------
## #ifndef __cplusplus
## // Boolean type
##     #if !defined(_STDBOOL_H)
##         typedef enum { false, true } bool;
##         #define _STDBOOL_H
##     #endif
## #endif
##  Vector2 type

type
  Vector2* = object
    x*: cfloat
    y*: cfloat


##  Vector3 type

type
  Vector3* = object
    x*: cfloat
    y*: cfloat
    z*: cfloat


##  Matrix type (OpenGL style 4x4 - right handed, column major)

type
  Matrix* = object
    m0*: cfloat
    m4*: cfloat
    m8*: cfloat
    m12*: cfloat
    m1*: cfloat
    m5*: cfloat
    m9*: cfloat
    m13*: cfloat
    m2*: cfloat
    m6*: cfloat
    m10*: cfloat
    m14*: cfloat
    m3*: cfloat
    m7*: cfloat
    m11*: cfloat
    m15*: cfloat


##  Color type, RGBA (32bit)

type
  Color* = object
    r*: cuchar
    g*: cuchar
    b*: cuchar
    a*: cuchar


##  Rectangle type

type
  Rectangle* = object
    x*: cint
    y*: cint
    width*: cint
    height*: cint


##  Image type, bpp always RGBA (32bit)
##  NOTE: Data stored in CPU memory (RAM)

type
  Image* = object
    data*: pointer             ##  Image raw data
    width*: cint               ##  Image base width
    height*: cint              ##  Image base height
    mipmaps*: cint             ##  Mipmap levels, 1 by default
    format*: cint              ##  Data format (TextureFormat type)
  

##  Texture2D type
##  NOTE: Data stored in GPU memory

type
  Texture2D* = object
    id*: cuint                 ##  OpenGL texture id
    width*: cint               ##  Texture base width
    height*: cint              ##  Texture base height
    mipmaps*: cint             ##  Mipmap levels, 1 by default
    format*: cint              ##  Data format (TextureFormat type)
  

##  RenderTexture2D type, for texture rendering

type
  RenderTexture2D* = object
    id*: cuint                 ##  OpenGL Framebuffer Object (FBO) id
    texture*: Texture2D        ##  Color buffer attachment texture
    depth*: Texture2D          ##  Depth buffer attachment texture
  

##  SpriteFont character info

type
  CharInfo* = object
    value*: cint               ##  Character value (Unicode)
    rec*: Rectangle            ##  Character rectangle in sprite font
    offsetX*: cint             ##  Character offset X when drawing
    offsetY*: cint             ##  Character offset Y when drawing
    advanceX*: cint            ##  Character advance position X
  

##  SpriteFont type, includes texture and charSet array data

type
  SpriteFont* = object
    texture*: Texture2D        ##  Font texture
    baseSize*: cint            ##  Base size (default chars height)
    charsCount*: cint          ##  Number of characters
    chars*: ptr CharInfo        ##  Characters info data
  

##  Camera type, defines a camera position/orientation in 3d space

type
  Camera* = object
    position*: Vector3         ##  Camera position
    target*: Vector3           ##  Camera target it looks-at
    up*: Vector3               ##  Camera up vector (rotation over its axis)
    fovy*: cfloat              ##  Camera field-of-view apperture in Y (degrees)
  

##  Camera2D type, defines a 2d camera

type
  Camera2D* = object
    offset*: Vector2           ##  Camera offset (displacement from target)
    target*: Vector2           ##  Camera target (rotation and zoom origin)
    rotation*: cfloat          ##  Camera rotation in degrees
    zoom*: cfloat              ##  Camera zoom (scaling), should be 1.0f by default
  

##  Bounding box type

type
  BoundingBox* = object
    min*: Vector3              ##  minimum vertex box-corner
    max*: Vector3              ##  maximum vertex box-corner
  

##  Vertex data definning a mesh

type
  Mesh* = object
    vertexCount*: cint         ##  number of vertices stored in arrays
    triangleCount*: cint       ##  number of triangles stored (indexed or not)
    vertices*: ptr cfloat       ##  vertex position (XYZ - 3 components per vertex) (shader-location = 0)
    texcoords*: ptr cfloat      ##  vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)
    texcoords2*: ptr cfloat     ##  vertex second texture coordinates (useful for lightmaps) (shader-location = 5)
    normals*: ptr cfloat        ##  vertex normals (XYZ - 3 components per vertex) (shader-location = 2)
    tangents*: ptr cfloat       ##  vertex tangents (XYZ - 3 components per vertex) (shader-location = 4)
    colors*: ptr cuchar         ##  vertex colors (RGBA - 4 components per vertex) (shader-location = 3)
    indices*: ptr cushort       ##  vertex indices (in case vertex data comes indexed)
    vaoId*: cuint              ##  OpenGL Vertex Array Object id
    vboId*: array[7, cuint]     ##  OpenGL Vertex Buffer Objects id (7 types of vertex data)
  

##  Shader type (generic shader)

type
  Shader* = object
    id*: cuint                 ##  Shader program id
             ##  Vertex attributes locations (default locations)
    vertexLoc*: cint           ##  Vertex attribute location point    (default-location = 0)
    texcoordLoc*: cint         ##  Texcoord attribute location point  (default-location = 1)
    texcoord2Loc*: cint        ##  Texcoord2 attribute location point (default-location = 5)
    normalLoc*: cint           ##  Normal attribute location point    (default-location = 2)
    tangentLoc*: cint          ##  Tangent attribute location point   (default-location = 4)
    colorLoc*: cint ##  Color attibute location point      (default-location = 3)
                  ##  Uniform locations
    mvpLoc*: cint              ##  ModelView-Projection matrix uniform location point (vertex shader)
    colDiffuseLoc*: cint       ##  Diffuse color uniform location point (fragment shader)
    colAmbientLoc*: cint       ##  Ambient color uniform location point (fragment shader)
    colSpecularLoc*: cint ##  Specular color uniform location point (fragment shader)
                        ##  Texture map locations (generic for any kind of map)
    mapTexture0Loc*: cint      ##  Map texture uniform location point (default-texture-unit = 0)
    mapTexture1Loc*: cint      ##  Map texture uniform location point (default-texture-unit = 1)
    mapTexture2Loc*: cint      ##  Map texture uniform location point (default-texture-unit = 2)
  

##  Material type

type
  Material* = object
    shader*: Shader            ##  Standard shader (supports 3 map textures)
    texDiffuse*: Texture2D     ##  Diffuse texture  (binded to shader mapTexture0Loc)
    texNormal*: Texture2D      ##  Normal texture   (binded to shader mapTexture1Loc)
    texSpecular*: Texture2D    ##  Specular texture (binded to shader mapTexture2Loc)
    colDiffuse*: Color         ##  Diffuse color
    colAmbient*: Color         ##  Ambient color
    colSpecular*: Color        ##  Specular color
    glossiness*: cfloat        ##  Glossiness level (Ranges from 0 to 1000)
  

##  Model type

type
  Model* = object
    mesh*: Mesh                ##  Vertex data buffers (RAM and VRAM)
    transform*: Matrix         ##  Local transform matrix
    material*: Material        ##  Shader and textures data
  

##  Ray type (useful for raycast)

type
  Ray* = object
    position*: Vector3         ##  Ray position (origin)
    direction*: Vector3        ##  Ray direction
  

##  Raycast hit information

type
  RayHitInfo* = object
    hit*: bool                 ##  Did the ray hit something?
    distance*: cfloat          ##  Distance to nearest hit
    position*: Vector3         ##  Position of nearest hit
    normal*: Vector3           ##  Surface normal of hit
  

##  Wave type, defines audio wave data

type
  Wave* = object
    sampleCount*: cuint        ##  Number of samples
    sampleRate*: cuint         ##  Frequency (samples per second)
    sampleSize*: cuint         ##  Bit depth (bits per sample): 8, 16, 32 (24 not supported)
    channels*: cuint           ##  Number of channels (1-mono, 2-stereo)
    data*: pointer             ##  Buffer data pointer
  

##  Sound source type

type
  Sound* = object
    source*: cuint             ##  OpenAL audio source id
    buffer*: cuint             ##  OpenAL audio buffer id
    format*: cint              ##  OpenAL audio format specifier
  

##  Music type (file streaming from memory)
##  NOTE: Anything longer than ~10 seconds should be streamed

#type
#  Music* = ptr MusicData
type
  Music* = ptr object

##  Audio stream type
##  NOTE: Useful to create custom audio streams not bound to a specific file

type
  AudioStream* = object
    sampleRate*: cuint         ##  Frequency (samples per second)
    sampleSize*: cuint         ##  Bit depth (bits per sample): 8, 16, 32 (24 not supported)
    channels*: cuint           ##  Number of channels (1-mono, 2-stereo)
    format*: cint              ##  OpenAL audio format specifier
    source*: cuint             ##  OpenAL audio source id
    buffers*: array[2, cuint]   ##  OpenAL audio buffers (double buffering)
  

##  rRES data returned when reading a resource, 
##  it contains all required data for user (24 byte)

type
  RRESData* = object
    `type`*: cuint             ##  Resource type (4 byte)
    param1*: cuint             ##  Resouce parameter 1 (4 byte)
    param2*: cuint             ##  Resouce parameter 2 (4 byte)
    param3*: cuint             ##  Resouce parameter 3 (4 byte)
    param4*: cuint             ##  Resouce parameter 4 (4 byte)
    data*: pointer             ##  Resource data pointer (4 byte)
  

##  RRES type (pointer to RRESData array)

type
  RRES* = ptr RRESData

## ----------------------------------------------------------------------------------
##  Enumerators Definition
## ----------------------------------------------------------------------------------
##  Trace log type

type
  LogType* = enum
    INFO = 0, WARNING, ERROR, DEBUG, OTHER


##  Texture formats
##  NOTE: Support depends on OpenGL version and platform

type
  TextureFormat* = enum
    UNCOMPRESSED_GRAYSCALE = 1, ##  8 bit per pixel (no alpha)
    UNCOMPRESSED_GRAY_ALPHA,  ##  16 bpp (2 channels)
    UNCOMPRESSED_R5G6B5,      ##  16 bpp
    UNCOMPRESSED_R8G8B8,      ##  24 bpp
    UNCOMPRESSED_R5G5B5A1,    ##  16 bpp (1 bit alpha)
    UNCOMPRESSED_R4G4B4A4,    ##  16 bpp (4 bit alpha)
    UNCOMPRESSED_R8G8B8A8,    ##  32 bpp
    UNCOMPRESSED_R32G32B32,   ##  32 bit per channel (float) - HDR
    COMPRESSED_DXT1_RGB,      ##  4 bpp (no alpha)
    COMPRESSED_DXT1_RGBA,     ##  4 bpp (1 bit alpha)
    COMPRESSED_DXT3_RGBA,     ##  8 bpp
    COMPRESSED_DXT5_RGBA,     ##  8 bpp
    COMPRESSED_ETC1_RGB,      ##  4 bpp
    COMPRESSED_ETC2_RGB,      ##  4 bpp
    COMPRESSED_ETC2_EAC_RGBA, ##  8 bpp
    COMPRESSED_PVRT_RGB,      ##  4 bpp
    COMPRESSED_PVRT_RGBA,     ##  4 bpp
    COMPRESSED_ASTC_4x4_RGBA, ##  8 bpp
    COMPRESSED_ASTC_8x8_RGBA  ##  2 bpp


##  Texture parameters: filter mode
##  NOTE 1: Filtering considers mipmaps if available in the texture
##  NOTE 2: Filter is accordingly set for minification and magnification

type
  TextureFilterMode* = enum
    FILTER_POINT = 0,           ##  No filter, just pixel aproximation
    FILTER_BILINEAR,          ##  Linear filtering
    FILTER_TRILINEAR,         ##  Trilinear filtering (linear with mipmaps)
    FILTER_ANISOTROPIC_4X,    ##  Anisotropic filtering 4x
    FILTER_ANISOTROPIC_8X,    ##  Anisotropic filtering 8x
    FILTER_ANISOTROPIC_16X    ##  Anisotropic filtering 16x


##  Texture parameters: wrap mode

type
  TextureWrapMode* = enum
    WRAP_REPEAT = 0, WRAP_CLAMP, WRAP_MIRROR


##  Color blending modes (pre-defined)

type
  BlendMode* = enum
    BLEND_ALPHA = 0, BLEND_ADDITIVE, BLEND_MULTIPLIED


##  Gestures type
##  NOTE: It could be used as flags to enable only some gestures

type
  Gestures* = enum
    GESTURE_NONE = 0, GESTURE_TAP = 1, GESTURE_DOUBLETAP = 2, GESTURE_HOLD = 4,
    GESTURE_DRAG = 8, GESTURE_SWIPE_RIGHT = 16, GESTURE_SWIPE_LEFT = 32,
    GESTURE_SWIPE_UP = 64, GESTURE_SWIPE_DOWN = 128, GESTURE_PINCH_IN = 256,
    GESTURE_PINCH_OUT = 512


##  Camera system modes

type
  CameraMode* = enum
    CAMERA_CUSTOM = 0, CAMERA_FREE, CAMERA_ORBITAL, CAMERA_FIRST_PERSON,
    CAMERA_THIRD_PERSON


##  Head Mounted Display devices

type
  VrDevice* = enum
    HMD_DEFAULT_DEVICE = 0, HMD_OCULUS_RIFT_DK2, HMD_OCULUS_RIFT_CV1,
    HMD_VALVE_HTC_VIVE, HMD_SAMSUNG_GEAR_VR, HMD_GOOGLE_CARDBOARD,
    HMD_SONY_PLAYSTATION_VR, HMD_RAZER_OSVR, HMD_FOVE_VR


##  RRESData type

type
  RRESDataType* = enum
    RRES_TYPE_RAW = 0, RRES_TYPE_IMAGE, RRES_TYPE_WAVE, RRES_TYPE_VERTEX,
    RRES_TYPE_TEXT, RRES_TYPE_FONT_IMAGE, RRES_TYPE_FONT_CHARDATA, ##  CharInfo data array
    RRES_TYPE_DIRECTORY


## ------------------------------------------------------------------------------------
##  Global Variables Definition
## ------------------------------------------------------------------------------------
##  It's lonely here...
## ------------------------------------------------------------------------------------
##  Window and Graphics Device Functions (Module: core)
## ------------------------------------------------------------------------------------
##  Window-related functions

proc InitWindow*(width: cint; height: cint; title: cstring)
  {.importc.}
##  Initialize window and OpenGL context

proc CloseWindow*()
  {.importc.}
##  Close window and unload OpenGL context

proc WindowShouldClose*(): bool
  {.importc.}
##  Check if KEY_ESCAPE pressed or Close icon pressed

proc IsWindowMinimized*(): bool
  {.importc.}
##  Check if window has been minimized (or lost focus)

proc ToggleFullscreen*()
  {.importc.}
##  Toggle fullscreen mode (only PLATFORM_DESKTOP)

proc SetWindowIcon*(image: Image)
  {.importc.}
##  Set icon for window (only PLATFORM_DESKTOP)

proc SetWindowPosition*(x: cint; y: cint)
  {.importc.}
##  Set window position on screen (only PLATFORM_DESKTOP)

proc SetWindowMonitor*(monitor: cint)
  {.importc.}
##  Set monitor for the current window (fullscreen mode)

proc SetWindowMinSize*(width: cint; height: cint)
  {.importc.}
##  Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)

proc GetScreenWidth*(): cint
  {.importc.}
##  Get current screen width

proc GetScreenHeight*(): cint
  {.importc.}
##  Get current screen height
##  Cursor-related functions

proc ShowCursor*()
  {.importc.}
##  Shows cursor

proc HideCursor*()
  {.importc.}
##  Hides cursor

proc IsCursorHidden*(): bool
  {.importc.}
##  Check if cursor is not visible

proc EnableCursor*()
  {.importc.}
##  Enables cursor (unlock cursor)

proc DisableCursor*()
  {.importc.}
##  Disables cursor (lock cursor)
##  Drawing-related functions

proc ClearBackground*(color: Color)
  {.importc.}
##  Set background color (framebuffer clear color)

proc BeginDrawing*()
  {.importc.}
##  Setup canvas (framebuffer) to start drawing

proc EndDrawing*()
  {.importc.}
##  End canvas drawing and swap buffers (double buffering)

proc Begin2dMode*(camera: Camera2D)
  {.importc.}
##  Initialize 2D mode with custom camera (2D)

proc End2dMode*()
  {.importc.}
##  Ends 2D mode with custom camera

proc Begin3dMode*(camera: Camera)
  {.importc.}
##  Initializes 3D mode with custom camera (3D)

proc End3dMode*()
  {.importc.}
##  Ends 3D mode and returns to default 2D orthographic mode

proc BeginTextureMode*(target: RenderTexture2D)
  {.importc.}
##  Initializes render texture for drawing

proc EndTextureMode*()
  {.importc.}
##  Ends drawing to render texture
##  Screen-space-related functions

proc GetMouseRay*(mousePosition: Vector2; camera: Camera): Ray
  {.importc.}
##  Returns a ray trace from mouse position

proc GetWorldToScreen*(position: Vector3; camera: Camera): Vector2
  {.importc.}
##  Returns the screen space position for a 3d world space position

proc GetCameraMatrix*(camera: Camera): Matrix
  {.importc.}
##  Returns camera transform matrix (view matrix)
##  Timming-related functions

proc SetTargetFPS*(fps: cint)
  {.importc.}
##  Set target FPS (maximum)

proc GetFPS*(): cint
  {.importc.}
##  Returns current FPS

proc GetFrameTime*(): cfloat
  {.importc.}
##  Returns time in seconds for last frame drawn
##  Color-related functions

proc GetHexValue*(color: Color): cint
  {.importc.}
##  Returns hexadecimal value for a Color

proc GetColor*(hexValue: cint): Color
  {.importc.}
##  Returns a Color struct from hexadecimal value

proc Fade*(color: Color; alpha: cfloat): Color
  {.importc.}
##  Color fade-in or fade-out, alpha goes from 0.0f to 1.0f

proc ColorToFloat*(color: Color): ptr cfloat
  {.importc.}
##  Converts Color to float array and normalizes

proc VectorToFloat*(vec: Vector3): ptr cfloat
  {.importc.}
##  Converts Vector3 to float array

proc MatrixToFloat*(mat: Matrix): ptr cfloat
  {.importc.}
##  Converts Matrix to float array
##  Misc. functions

proc ShowLogo*()
  {.importc.}
##  Activate raylib logo at startup (can be done with flags)

proc SetConfigFlags*(flags: char)
  {.importc.}
##  Setup window configuration flags (view FLAGS)

#proc TraceLog*(logType: cint; text: cstring) {.varargs.}
#  {.importc.}
##  Show trace log messages (INFO, WARNING, ERROR, DEBUG)

proc TakeScreenshot*(fileName: cstring)
  {.importc.}
##  Takes a screenshot of current screen (saved a .png)

proc GetRandomValue*(min: cint; max: cint): cint
  {.importc.}
##  Returns a random value between min and max (both included)
##  Files management functions

proc IsFileExtension*(fileName: cstring; ext: cstring): bool
  {.importc.}
##  Check file extension

proc GetDirectoryPath*(fileName: cstring): cstring
  {.importc.}
##  Get directory for a given fileName (with path)

proc GetWorkingDirectory*(): cstring
  {.importc.}
##  Get current working directory

proc ChangeDirectory*(dir: cstring): bool
  {.importc.}
##  Change working directory, returns true if success

proc IsFileDropped*(): bool
  {.importc.}
##  Check if a file has been dropped into window

proc GetDroppedFiles*(count: ptr cint): cstringArray
  {.importc.}
##  Get dropped files names

proc ClearDroppedFiles*()
  {.importc.}
##  Clear dropped files paths buffer
##  Persistent storage management

proc StorageSaveValue*(position: cint; value: cint)
  {.importc.}
##  Save integer value to storage file (to defined position)

proc StorageLoadValue*(position: cint): cint
  {.importc.}
##  Load integer value from storage file (from defined position)
## ------------------------------------------------------------------------------------
##  Input Handling Functions (Module: core)
## ------------------------------------------------------------------------------------
##  Input-related functions: keyboard

proc IsKeyPressed*(key: cint): bool
  {.importc.}
##  Detect if a key has been pressed once

proc IsKeyDown*(key: cint): bool
  {.importc.}
##  Detect if a key is being pressed

proc IsKeyReleased*(key: cint): bool
  {.importc.}
##  Detect if a key has been released once

proc IsKeyUp*(key: cint): bool
  {.importc.}
##  Detect if a key is NOT being pressed

proc GetKeyPressed*(): cint
  {.importc.}
##  Get latest key pressed

proc SetExitKey*(key: cint)
  {.importc.}
##  Set a custom key to exit program (default is ESC)
##  Input-related functions: gamepads

proc IsGamepadAvailable*(gamepad: cint): bool
  {.importc.}
##  Detect if a gamepad is available

proc IsGamepadName*(gamepad: cint; name: cstring): bool
  {.importc.}
##  Check gamepad name (if available)

proc GetGamepadName*(gamepad: cint): cstring
  {.importc.}
##  Return gamepad internal name id

proc IsGamepadButtonPressed*(gamepad: cint; button: cint): bool
  {.importc.}
##  Detect if a gamepad button has been pressed once

proc IsGamepadButtonDown*(gamepad: cint; button: cint): bool
  {.importc.}
##  Detect if a gamepad button is being pressed

proc IsGamepadButtonReleased*(gamepad: cint; button: cint): bool
  {.importc.}
##  Detect if a gamepad button has been released once

proc IsGamepadButtonUp*(gamepad: cint; button: cint): bool
  {.importc.}
##  Detect if a gamepad button is NOT being pressed

proc GetGamepadButtonPressed*(): cint
  {.importc.}
##  Get the last gamepad button pressed

proc GetGamepadAxisCount*(gamepad: cint): cint
  {.importc.}
##  Return gamepad axis count for a gamepad

proc GetGamepadAxisMovement*(gamepad: cint; axis: cint): cfloat
  {.importc.}
##  Return axis movement value for a gamepad axis
##  Input-related functions: mouse

proc IsMouseButtonPressed*(button: cint): bool
  {.importc.}
##  Detect if a mouse button has been pressed once

proc IsMouseButtonDown*(button: cint): bool
  {.importc.}
##  Detect if a mouse button is being pressed

proc IsMouseButtonReleased*(button: cint): bool
  {.importc.}
##  Detect if a mouse button has been released once

proc IsMouseButtonUp*(button: cint): bool
  {.importc.}
##  Detect if a mouse button is NOT being pressed

proc GetMouseX*(): cint
  {.importc.}
##  Returns mouse position X

proc GetMouseY*(): cint
  {.importc.}
##  Returns mouse position Y

proc GetMousePosition*(): Vector2
  {.importc.}
##  Returns mouse position XY

proc SetMousePosition*(position: Vector2)
  {.importc.}
##  Set mouse position XY

proc GetMouseWheelMove*(): cint
  {.importc.}
##  Returns mouse wheel movement Y
##  Input-related functions: touch

proc GetTouchX*(): cint
  {.importc.}
##  Returns touch position X for touch point 0 (relative to screen size)

proc GetTouchY*(): cint
  {.importc.}
##  Returns touch position Y for touch point 0 (relative to screen size)

proc GetTouchPosition*(index: cint): Vector2
  {.importc.}
##  Returns touch position XY for a touch point index (relative to screen size)
## ------------------------------------------------------------------------------------
##  Gestures and Touch Handling Functions (Module: gestures)
## ------------------------------------------------------------------------------------

proc SetGesturesEnabled*(gestureFlags: cuint)
  {.importc.}
##  Enable a set of gestures using flags

proc IsGestureDetected*(gesture: cint): bool
  {.importc.}
##  Check if a gesture have been detected

proc GetGestureDetected*(): cint
  {.importc.}
##  Get latest detected gesture

proc GetTouchPointsCount*(): cint
  {.importc.}
##  Get touch points count

proc GetGestureHoldDuration*(): cfloat
  {.importc.}
##  Get gesture hold time in milliseconds

proc GetGestureDragVector*(): Vector2
  {.importc.}
##  Get gesture drag vector

proc GetGestureDragAngle*(): cfloat
  {.importc.}
##  Get gesture drag angle

proc GetGesturePinchVector*(): Vector2
  {.importc.}
##  Get gesture pinch delta

proc GetGesturePinchAngle*(): cfloat
  {.importc.}
##  Get gesture pinch angle
## ------------------------------------------------------------------------------------
##  Camera System Functions (Module: camera)
## ------------------------------------------------------------------------------------

proc SetCameraMode*(camera: Camera; mode: cint)
  {.importc.}
##  Set camera mode (multiple camera modes available)

proc UpdateCamera*(camera: ptr Camera)
  {.importc.}
##  Update camera position for selected mode

proc SetCameraPanControl*(panKey: cint)
  {.importc.}
##  Set camera pan key to combine with mouse movement (free camera)

proc SetCameraAltControl*(altKey: cint)
  {.importc.}
##  Set camera alt key to combine with mouse movement (free camera)

proc SetCameraSmoothZoomControl*(szKey: cint)
  {.importc.}
##  Set camera smooth zoom key to combine with mouse (free camera)

proc SetCameraMoveControls*(frontKey: cint; backKey: cint; rightKey: cint;
                           leftKey: cint; upKey: cint; downKey: cint)
  {.importc.}
##  Set camera move controls (1st person and 3rd person cameras)
## ------------------------------------------------------------------------------------
##  Basic Shapes Drawing Functions (Module: shapes)
## ------------------------------------------------------------------------------------
##  Basic shapes drawing functions

proc DrawPixel*(posX: cint; posY: cint; color: Color)
  {.importc.}
##  Draw a pixel

proc DrawPixelV*(position: Vector2; color: Color)
  {.importc.}
##  Draw a pixel (Vector version)

proc DrawLine*(startPosX: cint; startPosY: cint; endPosX: cint; endPosY: cint;
              color: Color)
  {.importc.}
##  Draw a line

proc DrawLineV*(startPos: Vector2; endPos: Vector2; color: Color)
  {.importc.}
##  Draw a line (Vector version)

proc DrawLineEx*(startPos: Vector2; endPos: Vector2; thick: cfloat; color: Color)
  {.importc.}
##  Draw a line defining thickness

proc DrawLineBezier*(startPos: Vector2; endPos: Vector2; thick: cfloat; color: Color)
  {.importc.}
##  Draw a line using cubic-bezier curves in-out

proc DrawCircle*(centerX: cint; centerY: cint; radius: cfloat; color: Color)
  {.importc.}
##  Draw a color-filled circle

proc DrawCircleGradient*(centerX: cint; centerY: cint; radius: cfloat; color1: Color;
                        color2: Color)
  {.importc.}
##  Draw a gradient-filled circle

proc DrawCircleV*(center: Vector2; radius: cfloat; color: Color)
  {.importc.}
##  Draw a color-filled circle (Vector version)

proc DrawCircleLines*(centerX: cint; centerY: cint; radius: cfloat; color: Color)
  {.importc.}
##  Draw circle outline

proc DrawRectangle*(posX: cint; posY: cint; width: cint; height: cint; color: Color)
  {.importc.}
##  Draw a color-filled rectangle

proc DrawRectangleRec*(rec: Rectangle; color: Color)
  {.importc.}
##  Draw a color-filled rectangle

proc DrawRectanglePro*(rec: Rectangle; origin: Vector2; rotation: cfloat; color: Color)
  {.importc.}
##  Draw a color-filled rectangle with pro parameters

proc DrawRectangleGradient*(posX: cint; posY: cint; width: cint; height: cint;
                           color1: Color; color2: Color)
  {.importc.}
##  Draw a gradient-filled rectangle

proc DrawRectangleV*(position: Vector2; size: Vector2; color: Color)
  {.importc.}
##  Draw a color-filled rectangle (Vector version)

proc DrawRectangleLines*(posX: cint; posY: cint; width: cint; height: cint; color: Color)
  {.importc.}
##  Draw rectangle outline

proc DrawTriangle*(v1: Vector2; v2: Vector2; v3: Vector2; color: Color)
  {.importc.}
##  Draw a color-filled triangle

proc DrawTriangleLines*(v1: Vector2; v2: Vector2; v3: Vector2; color: Color)
  {.importc.}
##  Draw triangle outline

proc DrawPoly*(center: Vector2; sides: cint; radius: cfloat; rotation: cfloat;
              color: Color)
  {.importc.}
##  Draw a regular polygon (Vector version)

proc DrawPolyEx*(points: ptr Vector2; numPoints: cint; color: Color)
  {.importc.}
##  Draw a closed polygon defined by points

proc DrawPolyExLines*(points: ptr Vector2; numPoints: cint; color: Color)
  {.importc.}
##  Draw polygon lines
##  Basic shapes collision detection functions

proc CheckCollisionRecs*(rec1: Rectangle; rec2: Rectangle): bool
  {.importc.}
##  Check collision between two rectangles

proc CheckCollisionCircles*(center1: Vector2; radius1: cfloat; center2: Vector2;
                           radius2: cfloat): bool
  {.importc.}
##  Check collision between two circles

proc CheckCollisionCircleRec*(center: Vector2; radius: cfloat; rec: Rectangle): bool
  {.importc.}
##  Check collision between circle and rectangle

proc GetCollisionRec*(rec1: Rectangle; rec2: Rectangle): Rectangle
  {.importc.}
##  Get collision rectangle for two rectangles collision

proc CheckCollisionPointRec*(point: Vector2; rec: Rectangle): bool
  {.importc.}
##  Check if point is inside rectangle

proc CheckCollisionPointCircle*(point: Vector2; center: Vector2; radius: cfloat): bool
  {.importc.}
##  Check if point is inside circle

proc CheckCollisionPointTriangle*(point: Vector2; p1: Vector2; p2: Vector2; p3: Vector2): bool
  {.importc.}
##  Check if point is inside a triangle
## ------------------------------------------------------------------------------------
##  Texture Loading and Drawing Functions (Module: textures)
## ------------------------------------------------------------------------------------
##  Image/Texture2D data loading/unloading functions

proc LoadImage*(fileName: cstring): Image
  {.importc.}
##  Load image from file into CPU memory (RAM)

proc LoadImageEx*(pixels: ptr Color; width: cint; height: cint): Image
  {.importc.}
##  Load image from Color array data (RGBA - 32bit)

proc LoadImagePro*(data: pointer; width: cint; height: cint; format: cint): Image
  {.importc.}
##  Load image from raw data with parameters

proc LoadImageRaw*(fileName: cstring; width: cint; height: cint; format: cint;
                  headerSize: cint): Image
  {.importc.}
##  Load image from RAW file data

proc LoadTexture*(fileName: cstring): Texture2D
  {.importc.}
##  Load texture from file into GPU memory (VRAM)

proc LoadTextureFromImage*(image: Image): Texture2D
  {.importc.}
##  Load texture from image data

proc LoadRenderTexture*(width: cint; height: cint): RenderTexture2D
  {.importc.}
##  Load texture for rendering (framebuffer)

proc UnloadImage*(image: Image)
  {.importc.}
##  Unload image from CPU memory (RAM)

proc UnloadTexture*(texture: Texture2D)
  {.importc.}
##  Unload texture from GPU memory (VRAM)

proc UnloadRenderTexture*(target: RenderTexture2D)
  {.importc.}
##  Unload render texture from GPU memory (VRAM)

proc GetImageData*(image: Image): ptr Color
  {.importc.}
##  Get pixel data from image as a Color struct array

proc GetTextureData*(texture: Texture2D): Image
  {.importc.}
##  Get pixel data from GPU texture and return an Image

proc UpdateTexture*(texture: Texture2D; pixels: pointer)
  {.importc.}
##  Update GPU texture with new data
##  Image manipulation functions

proc ImageToPOT*(image: ptr Image; fillColor: Color)
  {.importc.}
##  Convert image to POT (power-of-two)

proc ImageFormat*(image: ptr Image; newFormat: cint)
  {.importc.}
##  Convert image data to desired format

proc ImageAlphaMask*(image: ptr Image; alphaMask: Image)
  {.importc.}
##  Apply alpha mask to image

proc ImageDither*(image: ptr Image; rBpp: cint; gBpp: cint; bBpp: cint; aBpp: cint)
  {.importc.}
##  Dither image data to 16bpp or lower (Floyd-Steinberg dithering)

proc ImageCopy*(image: Image): Image
  {.importc.}
##  Create an image duplicate (useful for transformations)

proc ImageCrop*(image: ptr Image; crop: Rectangle)
  {.importc.}
##  Crop an image to a defined rectangle

proc ImageResize*(image: ptr Image; newWidth: cint; newHeight: cint)
  {.importc.}
##  Resize and image (bilinear filtering)

proc ImageResizeNN*(image: ptr Image; newWidth: cint; newHeight: cint)
  {.importc.}
##  Resize and image (Nearest-Neighbor scaling algorithm)

proc ImageText*(text: cstring; fontSize: cint; color: Color): Image
  {.importc.}
##  Create an image from text (default font)

proc ImageTextEx*(font: SpriteFont; text: cstring; fontSize: cfloat; spacing: cint;
                 tint: Color): Image
  {.importc.}
##  Create an image from text (custom sprite font)

proc ImageDraw*(dst: ptr Image; src: Image; srcRec: Rectangle; dstRec: Rectangle)
  {.importc.}
##  Draw a source image within a destination image

proc ImageDrawText*(dst: ptr Image; position: Vector2; text: cstring; fontSize: cint;
                   color: Color)
  {.importc.}
##  Draw text (default font) within an image (destination)

proc ImageDrawTextEx*(dst: ptr Image; position: Vector2; font: SpriteFont;
                     text: cstring; fontSize: cfloat; spacing: cint; color: Color)
  {.importc.}
##  Draw text (custom sprite font) within an image (destination)

proc ImageFlipVertical*(image: ptr Image)
  {.importc.}
##  Flip image vertically

proc ImageFlipHorizontal*(image: ptr Image)
  {.importc.}
##  Flip image horizontally

proc ImageColorTint*(image: ptr Image; color: Color)
  {.importc.}
##  Modify image color: tint

proc ImageColorInvert*(image: ptr Image)
  {.importc.}
##  Modify image color: invert

proc ImageColorGrayscale*(image: ptr Image)
  {.importc.}
##  Modify image color: grayscale

proc ImageColorContrast*(image: ptr Image; contrast: cfloat)
  {.importc.}
##  Modify image color: contrast (-100 to 100)

proc ImageColorBrightness*(image: ptr Image; brightness: cint)
  {.importc.}
##  Modify image color: brightness (-255 to 255)
##  Texture2D configuration functions

proc GenTextureMipmaps*(texture: ptr Texture2D)
  {.importc.}
##  Generate GPU mipmaps for a texture

proc SetTextureFilter*(texture: Texture2D; filterMode: cint)
  {.importc.}
##  Set texture scaling filter mode

proc SetTextureWrap*(texture: Texture2D; wrapMode: cint)
  {.importc.}
##  Set texture wrapping mode
##  Texture2D drawing functions

proc DrawTexture*(texture: Texture2D; posX: cint; posY: cint; tint: Color)
  {.importc.}
##  Draw a Texture2D

proc DrawTextureV*(texture: Texture2D; position: Vector2; tint: Color)
  {.importc.}
##  Draw a Texture2D with position defined as Vector2

proc DrawTextureEx*(texture: Texture2D; position: Vector2; rotation: cfloat;
                   scale: cfloat; tint: Color)
  {.importc.}
##  Draw a Texture2D with extended parameters

proc DrawTextureRec*(texture: Texture2D; sourceRec: Rectangle; position: Vector2;
                    tint: Color)
  {.importc.}
##  Draw a part of a texture defined by a rectangle

proc DrawTexturePro*(texture: Texture2D; sourceRec: Rectangle; destRec: Rectangle;
                    origin: Vector2; rotation: cfloat; tint: Color)
  {.importc.}
  ##  Draw a part of a texture defined by a rectangle with 'pro' parameters
## ------------------------------------------------------------------------------------
##  Font Loading and Text Drawing Functions (Module: text)
## ------------------------------------------------------------------------------------
##  SpriteFont loading/unloading functions

proc GetDefaultFont*(): SpriteFont
  {.importc.}
##  Get the default SpriteFont

proc LoadSpriteFont*(fileName: cstring): SpriteFont
  {.importc.}
##  Load SpriteFont from file into GPU memory (VRAM)

proc LoadSpriteFontEx*(fileName: cstring; fontSize: cint; charsCount: cint;
                      fontChars: ptr cint): SpriteFont
  {.importc.}
##  Load SpriteFont from file with extended parameters

proc UnloadSpriteFont*(spriteFont: SpriteFont)
  {.importc.}
##  Unload SpriteFont from GPU memory (VRAM)
##  Text drawing functions

proc DrawFPS*(posX: cint; posY: cint)
  {.importc.}
##  Shows current FPS

proc DrawText*(text: cstring; posX: cint; posY: cint; fontSize: cint; color: Color)
  {.importc.}
##  Draw text (using default font)

proc DrawTextEx*(spriteFont: SpriteFont; text: cstring; position: Vector2;
                fontSize: cfloat; spacing: cint; tint: Color)
  {.importc.}
  ##  Draw text using SpriteFont and additional parameters
##  Text misc. functions

proc MeasureText*(text: cstring; fontSize: cint): cint
  {.importc.}
##  Measure string width for default font

proc MeasureTextEx*(spriteFont: SpriteFont; text: cstring; fontSize: cfloat;
                   spacing: cint): Vector2
  {.importc.}
##  Measure string size for SpriteFont

#proc FormatText*(text: cstring): cstring {.varargs.}
#  {.importc.}
##  Formatting of text with variables to 'embed'

proc SubText*(text: cstring; position: cint; length: cint): cstring
  {.importc.}
##  Get a piece of a text string
## ------------------------------------------------------------------------------------
##  Basic 3d Shapes Drawing Functions (Module: models)
## ------------------------------------------------------------------------------------
##  Basic geometric 3D shapes drawing functions

proc DrawLine3D*(startPos: Vector3; endPos: Vector3; color: Color)
  {.importc.}
##  Draw a line in 3D world space

proc DrawCircle3D*(center: Vector3; radius: cfloat; rotationAxis: Vector3;
                  rotationAngle: cfloat; color: Color)
  {.importc.}
##  Draw a circle in 3D world space

proc DrawCube*(position: Vector3; width: cfloat; height: cfloat; length: cfloat;
              color: Color)
  {.importc.}
##  Draw cube

proc DrawCubeV*(position: Vector3; size: Vector3; color: Color)
  {.importc.}
##  Draw cube (Vector version)

proc DrawCubeWires*(position: Vector3; width: cfloat; height: cfloat; length: cfloat;
                   color: Color)
  {.importc.}
##  Draw cube wires

proc DrawCubeTexture*(texture: Texture2D; position: Vector3; width: cfloat;
                     height: cfloat; length: cfloat; color: Color)
  {.importc.}
##  Draw cube textured

proc DrawSphere*(centerPos: Vector3; radius: cfloat; color: Color)
  {.importc.}
##  Draw sphere

proc DrawSphereEx*(centerPos: Vector3; radius: cfloat; rings: cint; slices: cint;
                  color: Color)
  {.importc.}
##  Draw sphere with extended parameters

proc DrawSphereWires*(centerPos: Vector3; radius: cfloat; rings: cint; slices: cint;
                     color: Color)
  {.importc.}
##  Draw sphere wires

proc DrawCylinder*(position: Vector3; radiusTop: cfloat; radiusBottom: cfloat;
                  height: cfloat; slices: cint; color: Color)
  {.importc.}
##  Draw a cylinder/cone

proc DrawCylinderWires*(position: Vector3; radiusTop: cfloat; radiusBottom: cfloat;
                       height: cfloat; slices: cint; color: Color)
  {.importc.}
##  Draw a cylinder/cone wires

proc DrawPlane*(centerPos: Vector3; size: Vector2; color: Color)
  {.importc.}
##  Draw a plane XZ

proc DrawRay*(ray: Ray; color: Color)
  {.importc.}
##  Draw a ray line

proc DrawGrid*(slices: cint; spacing: cfloat)
  {.importc.}
##  Draw a grid (centered at (0, 0, 0))

proc DrawGizmo*(position: Vector3)
  {.importc.}
##  Draw simple gizmo
## DrawTorus(), DrawTeapot() could be useful?
## ------------------------------------------------------------------------------------
##  Model 3d Loading and Drawing Functions (Module: models)
## ------------------------------------------------------------------------------------
##  Model loading/unloading functions

proc LoadMesh*(fileName: cstring): Mesh
  {.importc.}
##  Load mesh from file

proc LoadMeshEx*(numVertex: cint; vData: ptr cfloat; vtData: ptr cfloat;
                vnData: ptr cfloat; cData: ptr Color): Mesh
  {.importc.}
##  Load mesh from vertex data

proc LoadModel*(fileName: cstring): Model
  {.importc.}
##  Load model from file

proc LoadModelFromMesh*(data: Mesh; dynamic: bool): Model
  {.importc.}
##  Load model from mesh data

proc LoadHeightmap*(heightmap: Image; size: Vector3): Model
  {.importc.}
##  Load heightmap model from image data

proc LoadCubicmap*(cubicmap: Image): Model
  {.importc.}
##  Load cubes-based map model from image data

proc UnloadMesh*(mesh: ptr Mesh)
  {.importc.}
##  Unload mesh from memory (RAM and/or VRAM)

proc UnloadModel*(model: Model)
  {.importc.}
##  Unload model from memory (RAM and/or VRAM)
##  Material loading/unloading functions

proc LoadMaterial*(fileName: cstring): Material
  {.importc.}
##  Load material from file

proc LoadDefaultMaterial*(): Material
  {.importc.}
##  Load default material (uses default models shader)

proc UnloadMaterial*(material: Material)
  {.importc.}
##  Unload material from GPU memory (VRAM)
##  Model drawing functions

proc DrawModel*(model: Model; position: Vector3; scale: cfloat; tint: Color)
  {.importc.}
##  Draw a model (with texture if set)

proc DrawModelEx*(model: Model; position: Vector3; rotationAxis: Vector3;
                 rotationAngle: cfloat; scale: Vector3; tint: Color)
  {.importc.}
##  Draw a model with extended parameters

proc DrawModelWires*(model: Model; position: Vector3; scale: cfloat; tint: Color)
  {.importc.}
##  Draw a model wires (with texture if set)

proc DrawModelWiresEx*(model: Model; position: Vector3; rotationAxis: Vector3;
                      rotationAngle: cfloat; scale: Vector3; tint: Color)
  {.importc.}
##  Draw a model wires (with texture if set) with extended parameters

proc DrawBoundingBox*(box: BoundingBox; color: Color)
  {.importc.}
##  Draw bounding box (wires)

proc DrawBillboard*(camera: Camera; texture: Texture2D; center: Vector3; size: cfloat;
                   tint: Color)
  {.importc.}
##  Draw a billboard texture

proc DrawBillboardRec*(camera: Camera; texture: Texture2D; sourceRec: Rectangle;
                      center: Vector3; size: cfloat; tint: Color)
  {.importc.}
##  Draw a billboard texture defined by sourceRec
##  Collision detection functions

proc CalculateBoundingBox*(mesh: Mesh): BoundingBox
  {.importc.}
##  Calculate mesh bounding box limits

proc CheckCollisionSpheres*(centerA: Vector3; radiusA: cfloat; centerB: Vector3;
                           radiusB: cfloat): bool
  {.importc.}
##  Detect collision between two spheres

proc CheckCollisionBoxes*(box1: BoundingBox; box2: BoundingBox): bool
  {.importc.}
##  Detect collision between two bounding boxes

proc CheckCollisionBoxSphere*(box: BoundingBox; centerSphere: Vector3;
                             radiusSphere: cfloat): bool
  {.importc.}
##  Detect collision between box and sphere

proc CheckCollisionRaySphere*(ray: Ray; spherePosition: Vector3; sphereRadius: cfloat): bool
  {.importc.}
##  Detect collision between ray and sphere

proc CheckCollisionRaySphereEx*(ray: Ray; spherePosition: Vector3;
                               sphereRadius: cfloat; collisionPoint: ptr Vector3): bool
  {.importc.}
##  Detect collision between ray and sphere, returns collision point

proc CheckCollisionRayBox*(ray: Ray; box: BoundingBox): bool
  {.importc.}
##  Detect collision between ray and box

proc GetCollisionRayMesh*(ray: Ray; mesh: ptr Mesh): RayHitInfo
  {.importc.}
##  Get collision info between ray and mesh

proc GetCollisionRayTriangle*(ray: Ray; p1: Vector3; p2: Vector3; p3: Vector3): RayHitInfo
  {.importc.}
##  Get collision info between ray and triangle

proc GetCollisionRayGround*(ray: Ray; groundHeight: cfloat): RayHitInfo
  {.importc.}
##  Get collision info between ray and ground plane (Y-normal plane)
## ------------------------------------------------------------------------------------
##  Shaders System Functions (Module: rlgl)
##  NOTE: This functions are useless when using OpenGL 1.1
## ------------------------------------------------------------------------------------
##  Shader loading/unloading functions

proc LoadText*(fileName: cstring): cstring
  {.importc.}
##  Load chars array from text file

proc LoadShader*(vsFileName: cstring; fsFileName: cstring): Shader
  {.importc.}
##  Load shader from files and bind default locations

proc UnloadShader*(shader: Shader)
  {.importc.}
##  Unload shader from GPU memory (VRAM)

proc GetDefaultShader*(): Shader
  {.importc.}
##  Get default shader

proc GetDefaultTexture*(): Texture2D
  {.importc.}
##  Get default texture
##  Shader configuration functions

proc GetShaderLocation*(shader: Shader; uniformName: cstring): cint
  {.importc.}
##  Get shader uniform location

proc SetShaderValue*(shader: Shader; uniformLoc: cint; value: ptr cfloat; size: cint)
  {.importc.}
##  Set shader uniform value (float)

proc SetShaderValuei*(shader: Shader; uniformLoc: cint; value: ptr cint; size: cint)
  {.importc.}
##  Set shader uniform value (int)

proc SetShaderValueMatrix*(shader: Shader; uniformLoc: cint; mat: Matrix)
  {.importc.}
##  Set shader uniform value (matrix 4x4)

proc SetMatrixProjection*(proj: Matrix)
  {.importc.}
##  Set a custom projection matrix (replaces internal projection matrix)

proc SetMatrixModelview*(view: Matrix)
  {.importc.}
##  Set a custom modelview matrix (replaces internal modelview matrix)
##  Shading begin/end functions

proc BeginShaderMode*(shader: Shader)
  {.importc.}
##  Begin custom shader drawing

proc EndShaderMode*()
  {.importc.}
##  End custom shader drawing (use default shader)

proc BeginBlendMode*(mode: cint)
  {.importc.}
##  Begin blending mode (alpha, additive, multiplied)

proc EndBlendMode*()
  {.importc.}
##  End blending mode (reset to default: alpha blending)
##  VR control functions

proc InitVrSimulator*(vrDevice: cint)
  {.importc.}
##  Init VR simulator for selected device

proc CloseVrSimulator*()
  {.importc.}
##  Close VR simulator for current device

proc IsVrSimulatorReady*(): bool
  {.importc.}
##  Detect if VR simulator is ready

proc UpdateVrTracking*(camera: ptr Camera)
  {.importc.}
##  Update VR tracking (position and orientation) and camera

proc ToggleVrMode*()
  {.importc.}
##  Enable/Disable VR experience

proc BeginVrDrawing*()
  {.importc.}
##  Begin VR simulator stereo rendering

proc EndVrDrawing*()
  {.importc.}
##  End VR simulator stereo rendering
## ------------------------------------------------------------------------------------
##  Audio Loading and Playing Functions (Module: audio)
## ------------------------------------------------------------------------------------
##  Audio device management functions

proc InitAudioDevice*()
  {.importc.}
##  Initialize audio device and context

proc CloseAudioDevice*()
  {.importc.}
##  Close the audio device and context

proc IsAudioDeviceReady*(): bool
  {.importc.}
##  Check if audio device has been initialized successfully

proc SetMasterVolume*(volume: cfloat)
  {.importc.}
##  Set master volume (listener)
##  Wave/Sound loading/unloading functions

proc LoadWave*(fileName: cstring): Wave
  {.importc.}
##  Load wave data from file

proc LoadWaveEx*(data: pointer; sampleCount: cint; sampleRate: cint; sampleSize: cint;
                channels: cint): Wave
  {.importc.}
##  Load wave data from raw array data

proc LoadSound*(fileName: cstring): Sound
  {.importc.}
##  Load sound from file

proc LoadSoundFromWave*(wave: Wave): Sound
  {.importc.}
##  Load sound from wave data

proc UpdateSound*(sound: Sound; data: pointer; samplesCount: cint)
  {.importc.}
##  Update sound buffer with new data

proc UnloadWave*(wave: Wave)
  {.importc.}
##  Unload wave data

proc UnloadSound*(sound: Sound)
  {.importc.}
##  Unload sound
##  Wave/Sound management functions

proc PlaySound*(sound: Sound)
  {.importc.}
##  Play a sound

proc PauseSound*(sound: Sound)
  {.importc.}
##  Pause a sound

proc ResumeSound*(sound: Sound)
  {.importc.}
##  Resume a paused sound

proc StopSound*(sound: Sound)
  {.importc.}
##  Stop playing a sound

proc IsSoundPlaying*(sound: Sound): bool
  {.importc.}
##  Check if a sound is currently playing

proc SetSoundVolume*(sound: Sound; volume: cfloat)
  {.importc.}
##  Set volume for a sound (1.0 is max level)

proc SetSoundPitch*(sound: Sound; pitch: cfloat)
  {.importc.}
##  Set pitch for a sound (1.0 is base level)

proc WaveFormat*(wave: ptr Wave; sampleRate: cint; sampleSize: cint; channels: cint)
  {.importc.}
##  Convert wave data to desired format

proc WaveCopy*(wave: Wave): Wave
  {.importc.}
##  Copy a wave to a new wave

proc WaveCrop*(wave: ptr Wave; initSample: cint; finalSample: cint)
  {.importc.}
##  Crop a wave to defined samples range

proc GetWaveData*(wave: Wave): ptr cfloat
  {.importc.}
##  Get samples data from wave as a floats array
##  Music management functions

proc LoadMusicStream*(fileName: cstring): Music
  {.importc.}
##  Load music stream from file

proc UnloadMusicStream*(music: Music)
  {.importc.}
##  Unload music stream

proc PlayMusicStream*(music: Music)
  {.importc.}
##  Start music playing

proc UpdateMusicStream*(music: Music)
  {.importc.}
##  Updates buffers for music streaming

proc StopMusicStream*(music: Music)
  {.importc.}
##  Stop music playing

proc PauseMusicStream*(music: Music)
  {.importc.}
##  Pause music playing

proc ResumeMusicStream*(music: Music)
  {.importc.}
##  Resume playing paused music

proc IsMusicPlaying*(music: Music): bool
  {.importc.}
##  Check if music is playing

proc SetMusicVolume*(music: Music; volume: cfloat)
  {.importc.}
##  Set volume for music (1.0 is max level)

proc SetMusicPitch*(music: Music; pitch: cfloat)
  {.importc.}
##  Set pitch for a music (1.0 is base level)

proc SetMusicLoopCount*(music: Music; count: cfloat)
  {.importc.}
##  Set music loop count (loop repeats)

proc GetMusicTimeLength*(music: Music): cfloat
  {.importc.}
##  Get music time length (in seconds)

proc GetMusicTimePlayed*(music: Music): cfloat
  {.importc.}
##  Get current music time played (in seconds)
##  AudioStream management functions

proc InitAudioStream*(sampleRate: cuint; sampleSize: cuint; channels: cuint): AudioStream
  {.importc.}
##  Init audio stream (to stream raw audio pcm data)

proc UpdateAudioStream*(stream: AudioStream; data: pointer; samplesCount: cint)
  {.importc.}
##  Update audio stream buffers with data

proc CloseAudioStream*(stream: AudioStream)
  {.importc.}
##  Close audio stream and free memory

proc IsAudioBufferProcessed*(stream: AudioStream): bool
  {.importc.}
##  Check if any audio stream buffers requires refill

proc PlayAudioStream*(stream: AudioStream)
  {.importc.}
##  Play audio stream

proc PauseAudioStream*(stream: AudioStream)
  {.importc.}
##  Pause audio stream

proc ResumeAudioStream*(stream: AudioStream)
  {.importc.}
##  Resume audio stream

proc StopAudioStream*(stream: AudioStream)
  {.importc.}
##  Stop audio stream

##  Some Basic Colors
## // NOTE: Custom raylib color palette for amazing visuals on WHITE background
## #define LIGHTGRAY  CLITERAL{ 200, 200, 200, 255 }   // Light Gray
## #define GRAY       CLITERAL{ 130, 130, 130, 255 }   // Gray
## #define DARKGRAY   CLITERAL{ 80, 80, 80, 255 }      // Dark Gray
## #define YELLOW     CLITERAL{ 253, 249, 0, 255 }     // Yellow
## #define GOLD       CLITERAL{ 255, 203, 0, 255 }     // Gold
## #define ORANGE     CLITERAL{ 255, 161, 0, 255 }     // Orange
## #define PINK       CLITERAL{ 255, 109, 194, 255 }   // Pink
## #define RED        CLITERAL{ 230, 41, 55, 255 }     // Red
## #define MAROON     CLITERAL{ 190, 33, 55, 255 }     // Maroon
## #define GREEN      CLITERAL{ 0, 228, 48, 255 }      // Green
## #define LIME       CLITERAL{ 0, 158, 47, 255 }      // Lime
## #define DARKGREEN  CLITERAL{ 0, 117, 44, 255 }      // Dark Green
## #define SKYBLUE    CLITERAL{ 102, 191, 255, 255 }   // Sky Blue
## #define BLUE       CLITERAL{ 0, 121, 241, 255 }     // Blue
## #define DARKBLUE   CLITERAL{ 0, 82, 172, 255 }      // Dark Blue
## #define PURPLE     CLITERAL{ 200, 122, 255, 255 }   // Purple
## #define VIOLET     CLITERAL{ 135, 60, 190, 255 }    // Violet
## #define DARKPURPLE CLITERAL{ 112, 31, 126, 255 }    // Dark Purple
## #define BEIGE      CLITERAL{ 211, 176, 131, 255 }   // Beige
## #define BROWN      CLITERAL{ 127, 106, 79, 255 }    // Brown
## #define DARKBROWN  CLITERAL{ 76, 63, 47, 255 }      // Dark Brown
## 
## #define WHITE      CLITERAL{ 255, 255, 255, 255 }   // White
## #define BLACK      CLITERAL{ 0, 0, 0, 255 }         // Black
## #define BLANK      CLITERAL{ 0, 0, 0, 0 }           // Blank (Transparent)
## #define MAGENTA    CLITERAL{ 255, 0, 255, 255 }     // Magenta
## #define RAYWHITE   CLITERAL{ 245, 245, 245, 255 }   // My own White (raylib logo)

let
  RAYWHITE* = Color(r: 245.cuchar, g: 245.cuchar, b: 245.cuchar, a: 255.cuchar)
  LIGHTGRAY* = Color(r: 200.cuchar, g: 200.cuchar, b: 200.cuchar, a: 255.cuchar)
  DARKGRAY* = Color(r: 80.cuchar, g: 80.cuchar, b: 80.cuchar, a: 255.cuchar)
  RED* = Color(r: 230.cuchar, g: 41.cuchar, b: 55.cuchar, a: 255.cuchar)
