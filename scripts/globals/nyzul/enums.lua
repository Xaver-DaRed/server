xi = xi or {}
xi.nyzul = xi.nyzul or {}

xi.nyzul.mainGoal =
{
    NONE                             = 0,
    ELIMINATE_ALL_ENEMIES            = 1,
    ELIMINATE_ENEMY_LEADER           = 2,
    ELIMINATE_SPECIFIED_ENEMY        = 3,
    ELIMINATE_SPECIFIED_ENEMIES      = 4,
    ACTIVATE_ALL_LAMPS_CERTIFICATION = 5,
    ACTIVATE_ALL_LAMPS_SAME_TIME     = 6,
    ACTIVATE_ALL_LAMPS_ORDERED       = 7,
    FREE_FLOOR                       = 8,
}

xi.nyzul.gearGoal =
{
    NONE            = 0,
    AVOID_DETECTION = 1,
    DO_NOT_DESTROY  = 2,
}

xi.nyzul.penalty =
{
    NONE   = 0,
    TIME   = 1,
    TOKENS = 2,
    PATHOS = 3,
}

-- Defines individual rooms. A combination of rooms forms a layout.
-- Rooms handle mob spawn points and lamp positions.
xi.nyzul.room =
{
    ENTRANCE       =   1,
    BOSS_A         =   2,
    BOSS_B         =   3,
    BOSS_C         =   4,
    BOSS_D         =   5,
    SE_A           =   6,
    SE_B           =   7,
    SE_C           =   8,
    SE_D           =   9,
    SE_E_HALF_NE   =  10, -- Hideable walls. Can split Room E in half diagonally.
    SE_E_HALF_SW   =  11, -- Hideable walls. Can split Room E in half diagonally.
    SE_F           =  12,
    SE_G           =  13,
    SE_H           =  14,
    SE_I           =  15,
    SE_J           =  16,
    SE_K           =  17,
    SE_L           =  18,
    EAST_A         =  19,
    EAST_B         =  20,
    EAST_C         =  21,
    EAST_C_HALLWAY =  22,
    EAST_D         =  23,
    EAST_E         =  24,
    EAST_F         =  25,
    EAST_G         =  26,
    EAST_H         =  27,
    EAST_I         =  28,
    EAST_J         =  29,
    EAST_K         =  30,
    EAST_L         =  31,
    EAST_M         =  32,
    EAST_M_HALLWAY =  33,
    EAST_N         =  34,
    EAST_O         =  35,
    EAST_P         =  36,
    EAST_Q         =  37,
    EAST_R         =  38,
    EAST_S         =  39,
    EAST_T         =  40,
    EAST_U         =  41,
    EAST_V         =  42,
    EAST_W         =  43,
    NE_A           =  44, -- Contains the connected east and west "elbow" hallways.
    NE_B           =  45,
    NE_C           =  46,
    NE_D           =  47,
    NE_E           =  48,
    NE_F           =  49,
    NE_G           =  50,
    NE_H           =  51,
    NE_I           =  52,
    NE_J           =  53,
    NE_K           =  54,
    NE_L           =  55,
    NE_M           =  56,
    NE_N           =  57, -- Contains the connected north and south "elbow" hallways.
    NE_O           =  58,
    NE_P           =  59,
    NE_Q           =  60,
    SOUTH_A        =  61,
    SOUTH_B        =  62,
    SOUTH_C        =  63,
    SOUTH_D        =  64,
    SOUTH_E        =  65,
    -- F is a BOSS room.
    SOUTH_G        =  66,
    SOUTH_H        =  67,
    SOUTH_I        =  68,
    SOUTH_J        =  69,
    SOUTH_K        =  70,
    SOUTH_L        =  71,
    SOUTH_M        =  72,
    CENTRAL_A      =  73,
    CENTRAL_B      =  74,
    CENTRAL_C      =  75,
    CENTRAL_D      =  76,
    CENTRAL_E      =  77,
    CENTRAL_F      =  78,
    CENTRAL_G      =  79,
    CENTRAL_H      =  80,
    CENTRAL_I      =  81,
    CENTRAL_J      =  82,
    CENTRAL_K      =  83,
    CENTRAL_L      =  84,
    CENTRAL_M      =  85,
    CENTRAL_N      =  86,
    -- F is the entance room.
    CENTRAL_P      =  87,
    CENTRAL_Q      =  88, -- Corner long hallway.
    CENTRAL_R      =  89, -- Corner long hallway.
    CENTRAL_S      =  90, -- Corner long hallway.
    CENTRAL_T      =  91, -- Corner long hallway.
    SW_A           =  92,
    SW_B           =  93,
    SW_C           =  94,
    -- D is a BOSS room.
    SW_E           =  95, -- Includes hallway to the east.
    SW_F           =  96,
    SW_G           =  97,
    SW_H           =  98,
    SW_I           =  99, -- Includes hallway to the east.
    SW_J           = 100,
    SW_K           = 101,
    SW_L           = 102,
    SW_M           = 103,
    SW_N           = 104,
    -- O is a BOSS room.
    SW_P           = 105,
    SW_Q           = 106,
    SW_R           = 107, -- Includes hallway to the east.
    SW_S           = 108,
    SW_T           = 109,
    SW_U           = 110,
    SW_V           = 111,
    -- W is a BOSS room.
    SW_X           = 112,
    SW_Y           = 113, -- Includes hallway to the east.
    SW_Z           = 114,
    SW_ZA          = 115,
    SW_ZB          = 116,
    SW_ZC          = 117,
    SW_ZD          = 118,
}

-- Defines layouts.
-- Layouts are formed by several rooms that ensure enough mob positions, doors, and runic portals.
xi.nyzul.layout =
{
    BOSS_ROOM_1 =  1, -- South map,      Western room
    BOSS_ROOM_2 =  2, -- South-West map, Central room
    BOSS_ROOM_3 =  3, -- South-West map, Northern room
    BOSS_ROOM_4 =  4, -- South-West map, Southern room
    SE_1        =  5, -- South-East map, South half starting in SE_K
    SE_2        =  6, -- South-East map, North half
    SE_3        =  7, -- South-East map, Center Loop starts in SE_F
    SE_4        =  8, -- South-East map, Two large rooms, starts in SE_H
    SE_5        =  9, -- South-East map, South starting in SE_L
    SE_6        = 10, -- South-East map, West section with doors closed to create a double loop
    EAST_1      = 11, -- East map,       North side starting in EAST_F
    EAST_2      = 12, -- East map,       South side, starting at EAST_P
    EAST_3      = 13, -- East map,       North side starting in EAST_C_HALLWAY
    EAST_4      = 14, -- East map,       Center starting east of EAST_N
    EAST_5      = 15, -- East map,       Center starting in EAST_M_HALLWAY
    EAST_6      = 16, -- East map,       East side, backwards C
    NE_1        = 17, -- North-East map, NW loop
    NE_2        = 18, -- North-East map, SW Loop
    NE_3        = 19, -- North-East map, East collection of rooms
    NE_4        = 20, -- North-East map, Another East Collection, starting in NE_F
    NE_5        = 21, -- North-East map, East side, long train of rooms
    NE_6        = 22, -- North-East map, North Loop starting in NE_C
    SOUTH_1     = 23, -- South map,      North section
    SOUTH_2     = 24, -- South map,      South Section
    SOUTH_3     = 25, -- South map,      East Section plus north
    SOUTH_4     = 26, -- South map,      South Eight starting in SOUTH_G
    SOUTH_5     = 27, -- South map,      North Eight starting in SOUTH_G
    SOUTH_6     = 28, -- South map,      North East starting in SOUTH_C
    CENTRAL_1   = 29, -- Cwntral map,    North section starting east of CENTRAL_A
    CENTRAL_2   = 30, -- Cwntral map,    West, starting north of CENTRAL_G
    CENTRAL_3   = 31, -- Cwntral map,    East starting south of CENTRAL_J
    CENTRAL_4   = 32, -- Cwntral map,    South/East - starts in CENTRAL_T
    CENTRAL_5   = 33, -- Cwntral map,    East side reverse C, starts in CENTRAL_J
    CENTRAL_6   = 34, -- Cwntral map,    North/West starting in CENTRAL_Q
    SW_1        = 35, -- South-West map, North
    SW_2        = 36, -- South-West map, West Open starting in SW_J
    SW_3        = 37, -- South-West map, South
    SW_4        = 38, -- South-West map, Central and South
    SW_5        = 39, -- South-West map, West Closed starting in SW_N
    SW_6        = 40, -- South-West map, North starting in SW_ZC
}
