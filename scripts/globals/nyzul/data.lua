xi = xi or {}
xi.nyzul = xi.nyzul or {}
-----------------------------------
require('scripts/globals/nyzul/enums')
-----------------------------------
local ID = zones[xi.zone.NYZUL_ISLE]
-----------------------------------

-- Defines mob spawn points and lamp possible positions in a room.
-- Each room contains 5 spawn points and 2 lamp locations, EXCEPT boss rooms.
xi.nyzul.roomInfo =
{
    [xi.nyzul.room.BOSS_A] =
    {
        mobSpawnPoints  = { { x = -35, y = 0, z = -405 }, { x = -85, y = 0, z = -405 }, { x = -85, y = 0, z = -355 }, { x = -35, y = 0, z = -355 }, { x = -60, y = 0, z = -395 }, { x = -60, y = 0, z = -365 }, { x = -75, y = 0, z = -380 } },
        lampSpawnPoints = {}
    },
    [xi.nyzul.room.BOSS_B] =
    {
        mobSpawnPoints  = { { x = -355, y = 0, z = -405 }, { x = -405, y = 0, z = -405 }, { x = -405, y = 0, z = -355 }, { x = -355, y = 0, z = -355 }, { x = -380, y = 0, z = -395 }, { x = -380, y = 0, z = -365 }, { x = -395, y = 0, z = -380 } },
        lampSpawnPoints = {}
    },
    [xi.nyzul.room.BOSS_C] =
    {
        mobSpawnPoints  = { { x = -565, y = -4, z = -285 }, { x = -515, y = -4, z = -285 }, { x = -565, y = -4, z = -235 }, { x = -515, y = -4, z = -235 }, { x = -540, y = -4, z = -275 }, { x = -540, y = -4, z = -245 }, { x = -555, y = -4, z = -260 } },
        lampSpawnPoints = {}
    },
    [xi.nyzul.room.BOSS_D] =
    {
        mobSpawnPoints  = { { x = -565, y = -4, z = -475 }, { x = -515, y = -4, z = -475 }, { x = -565, y = -4, z = -525 }, { x = -515, y = -4, z = -525 }, { x = -540, y = -4, z = -515 }, { x = -540, y = -4, z = -485 }, { x = -555, y = -4, z = -500 } },
        lampSpawnPoints = {}
    },
    [xi.nyzul.room.SE_A] =
    {
        mobSpawnPoints  = { { x = 460, y = 0, z = -446.5 }, { x = 460, y = 0, z = -433.5 }, { x = 433.5, y = 0, z = -433.5 }, { x = 486.5, y = 0, z = -433.5 }, { x = 460, y = 0, z = -429 } },
        lampSpawnPoints = { { x = 480, y = 0, z = -440   }, { x = 460, y = 0, z = -440   }, { x = 440,   y = 0, z = -440   } }
    },
    [xi.nyzul.room.SE_B] =
    {
        mobSpawnPoints  = { { x = 406.5, y = 0, z = -513.5 }, { x = 433.5, y = 0, z = -509   }, { x = 433.5, y = 0, z = -486.5 }, { x = 424.5, y = 0, z = -495.5 }, { x = 415.5, y = 0, z = -495.5 } },
        lampSpawnPoints = { { x = 420,   y = 0, z = -504.5 }, { x = 411,   y = 0, z = -513.5 } }
    },
    [xi.nyzul.room.SE_C] =
    {
        mobSpawnPoints  = { { x = 473.5, y = 0, z = -486.5 }, { x = 446.5, y = 0, z = -486.5 }, { x = 455.5, y = 0, z = -495.5 }, { x = 464.5, y = 0, z = -500 }, { x = 455.5, y = 0, z = -513.5 } },
        lampSpawnPoints = { { x = 451,   y = 0, z = -486.5 }, { x = 469,   y = 0, z = -486.5 } }
    },
    [xi.nyzul.room.SE_D] =
    {
        mobSpawnPoints  = { { x = 509, y = 0, z = -500 }, { x = 491, y = 0, z = -500 }, { x = 491, y = 0, z = -509 }, { x = 486.5, y = 0, z = -513.5 }, { x = 500, y = 0, z = -486.5 } },
        lampSpawnPoints = { { x = 491, y = 0, z = -500 }, { x = 500, y = 0, z = -509 } }
    },
    [xi.nyzul.room.SE_E_HALF_NE] = -- Hideable walls. Can split Room E in half diagonally.
    {
        mobSpawnPoints  = { { x = 366.5, y = 0, z = -526.5 }, { x = 393.5, y = 0, z = -553.5 }, { x = 393.5, y = 0, z = -526.5 }, { x = 380, y = 0, z = -526.5 }, { x = 393.5, y = 0, z = -540 } },
        lampSpawnPoints = { { x = 366.5, y = 0, z = -526.5 }, { x = 393.5, y = 0, z = -553.5 } }
    },
    [xi.nyzul.room.SE_E_HALF_SW] = -- Hideable walls. - Can split Room E in half diagonally.
    {
        mobSpawnPoints  = { { x = 366.5, y = 0, z = -535.5 }, { x = 375.5, y = 0, z = -535.5 }, { x = 384.5, y = 0, z = -540 }, { x = 375.5, y = 0, z = -544.5 }, { x = 366.5, y = 0, z = -549 } },
        lampSpawnPoints = { { x = 366.5, y = 0, z = -535.5 }, { x = 366.5, y = 0, z = -535.5 } }
    },
    [xi.nyzul.room.SE_F] =
    {
        mobSpawnPoints  = { { x = 433.5, y = 0, z = -553.5 }, { x = 415.5, y = 0, z = -535.5 }, { x = 429, y = 0, z = -531 }, { x = 411, y = 0, z = -549 }, { x = 420, y = 0, z = -540 } },
        lampSpawnPoints = { { x = 420,   y = 0, z = -540   }, { x = 429,   y = 0, z = -549   } }
    },
    [xi.nyzul.room.SE_G] =
    {
        mobSpawnPoints  = { { x = 500, y = 0, z = -540 }, { x = 509, y = 0, z = -531 }, { x = 491, y = 0, z = -549 }, { x = 491, y = 0, z = -531 }, { x = 509, y = 0, z = -549 } },
        lampSpawnPoints = { { x = 491, y = 0, z = -540 }, { x = 509, y = 0, z = -540 } }
    },
    [xi.nyzul.room.SE_H] =
    {
        mobSpawnPoints  = { { x = 553, y = 0, z = -560 }, { x = 560, y = 0, z = -552.5 }, { x = 560, y = 0, z = -527.5 }, { x = 553.5, y = 0, z = -513.5 }, { x = 553.5, y = 0, z = -540 } },
        lampSpawnPoints = { { x = 560, y = 0, z = -540 }, { x = 560, y = 0, z = -520   }, { x = 560, y = 0, z = -560   } }
    },
    [xi.nyzul.room.SE_I] =
    {
        mobSpawnPoints  = { { x = 424.5, y = 0, z = -575.5 }, { x = 415.5, y = 0, z = -580   }, { x = 411, y = 0, z = -593.5 }, { x = 406.5, y = 0, z = -566.5 }, { x = 429, y = 0, z = -566.5 } },
        lampSpawnPoints = { { x = 424.5, y = 0, z = -580   }, { x = 420,   y = 0, z = -575.5 } }
    },
    [xi.nyzul.room.SE_J] =
    {
        mobSpawnPoints  = { { x = 464.5, y = 0, z = -566.5 }, { x = 464.5, y = 0, z = -580   }, { x = 455.5, y = 0, z = -584.5 }, { x = 455.5, y = 0, z = -566.5 }, { x = 446.5, y = 0, z = -571 } },
        lampSpawnPoints = { { x = 446.5, y = 0, z = -566.5 }, { x = 473.5, y = 0, z = -566.5 } }
    },
    [xi.nyzul.room.SE_K] =
    {
        mobSpawnPoints  = { { x = 513.5, y = 0, z = -593.5 }, { x = 505.5, y = 0, z = -585.5 }, { x = 491, y = 0, z = -571 }, { x = 486.5, y = 0, z = -566.5 }, { x = 486.5, y = 0, z = -593.5 } },
        lampSpawnPoints = { { x = 509,   y = 0, z = -589   }, { x = 491,   y = 0, z = -580   } }
    },
    [xi.nyzul.room.SE_L] =
    {
        mobSpawnPoints  = { { x = 460, y = 0, z = -640   }, { x = 486.5, y = 0, z = -646.5 }, { x = 433.5, y = 0, z = -646.5 }, { x = 486.5, y = 0, z = -633.5 }, { x = 433.5, y = 0, z = -633.5 } },
        lampSpawnPoints = { { x = 460, y = 0, z = -646.5 }, { x = 460,   y = 0, z = -633.5 } }
    },

    [xi.nyzul.room.EAST_A] =
    {
        mobSpawnPoints  = { { x = 509, y = 0, z = 100 }, { x = 491, y = 0, z = 100 }, { x = 491, y = 0, z = 91 }, { x = 491, y = 0, z = 109 }, { x = 500, y = 0, z = 91 } },
        lampSpawnPoints = { { x = 500, y = 0, z = 109 }, { x = 509, y = 0, z = 109 } }
    },
    [xi.nyzul.room.EAST_B] =
    {
        mobSpawnPoints  = { { x = 455.5, y = 0, z = 64.5 }, { x = 455.5, y = 0, z = 55.5 }, { x = 451, y = 0, z = 46.5 }, { x = 473.5, y = 0, z = 51 }, { x = 446.5, y = 0, z = 73.5 } },
        lampSpawnPoints = { { x = 446.5, y = 0, z = 73.5 }, { x = 464.5, y = 0, z = 60   } }
    },
    [xi.nyzul.room.EAST_C] =
    {
        mobSpawnPoints  = { { x = 500, y = 0, z = 60 }, { x = 491, y = 0, z = 69 }, { x = 509, y = 0, z = 69 }, { x = 509, y = 0, z = 51 }, { x = 491, y = 0, z = 51 } },
        lampSpawnPoints = { { x = 500, y = 0, z = 60 }, { x = 509, y = 0, z = 51 } }
    },
    [xi.nyzul.room.EAST_C_HALLWAY] =
    {
        mobSpawnPoints  = { { x = 500, y = 0, z = 20 }, { x = 500, y = 0, z = 11 }, { x = 500, y = 0, z = 6 }, { x = 500, y = 0, z = 29 }, { x = 500, y = 0, z = 33 } },
        lampSpawnPoints = { { x = 500, y = 0, z = 20 }, { x = 500, y = 0, z = 20 } }
    },
    [xi.nyzul.room.EAST_D] =
    {
        mobSpawnPoints  = { { x = 540,   y = 0, z = 55.5 }, { x = 544.5, y = 0, z = 73.5 }, {x = 553.5, y = 0, z = 64.5 }, { x = 549, y = 0, z = 46.5 }, { x = 531, y = 0, z = 73.5 } },
        lampSpawnPoints = { { x = 526.5, y = 0, z = 60   }, { x = 540,   y = 0, z = 55.5 } }
    },
    [xi.nyzul.room.EAST_E] =
    {
        mobSpawnPoints  = { { x = 375.5, y = 0, z = 20 }, { x = 400,   y = 0, z = 0  }, { x = 400, y = 0, z = 40 }, { x = 406.5, y = 0, z = 20 }, { x = 393.5, y = 0, z = 20 } },
        lampSpawnPoints = { { x = 393.5, y = 0, z = 20 }, { x = 375.5, y = 0, z = 20 } }
    },
    [xi.nyzul.room.EAST_F] =
    {
        mobSpawnPoints  = { { x = 473.5, y = 0, z = 33.5 }, { x = 468.5, y = 0, z = 24.5 }, { x = 464.5, y = 0, z = 15.5 }, { x = 473.5, y = 0, z = 11 }, { x = 469, y = 0, z = 6.5 } },
        lampSpawnPoints = { { x = 455.5, y = 0, z = 20   }, { x = 446.5, y = 0, z = 33.5 } }
    },
    [xi.nyzul.room.EAST_G] =
    {
        mobSpawnPoints  = { { x = 526.5, y = 0, z = 15.5 }, { x = 526.5, y = 0, z = 24.5 }, { x = 540, y = 0, z = 20 }, { x = 553.5, y = 0, z = 33.5 }, { x = 553.5, y = 0, z = 6.5 } },
        lampSpawnPoints = { { x = 531,   y = 0, z = 29   }, { x = 531,   y = 0, z = 11   } }
    },
    [xi.nyzul.room.EAST_H] =
    {
        mobSpawnPoints  = { { x = 571,   y = 0, z = 33.5 }, { x = 575.5, y = 0, z = 6.5 }, { x = 575.5, y = 0, z = 24.5 }, { x = 584.5, y = 0, z = 24.5 }, { x = 589, y = 0, z = 6.5 } },
        lampSpawnPoints = { { x = 566.5, y = 0, z = 11   }, { x = 566.5, y = 0, z = 29  } }
    },
    [xi.nyzul.room.EAST_I] =
    {
        mobSpawnPoints  = { { x = 500, y = 0, z = -11 }, { x = 495.5, y = 0, z = -15.5 }, { x = 504.5, y = 0, z = -24.5 }, { x = 495.5, y = 0, z = -24.5 }, { x = 504.5, y = 0, z = -15.5 } },
        lampSpawnPoints = { { x = 500, y = 0, z = -20 }, { x = 500,   y = 0, z = -11   } }
    },
    [xi.nyzul.room.EAST_J] =
    {
        mobSpawnPoints  = { { x = 553.5, y = 0, z = -11   }, { x = 553.5, y = 0, z = -33.5 }, { x = 544.5, y = 0, z = -15.5 }, { x = 535.5, y = 0, z = -29 }, { x = 526.5, y = 0, z = -33.5 } },
        lampSpawnPoints = { { x = 540,   y = 0, z = -15.5 }, { x = 553.5, y = 0, z = -20   } }
    },
    [xi.nyzul.room.EAST_K] =
    {
        mobSpawnPoints  = { { x = 633.5, y = 0, z = -15.5 }, { x = 633.5, y = 0, z = -24.5 }, { x = 611, y = 0, z = -29 }, { x = 611, y = 0, z = -11 }, { x = 613, y = 0, z = -20 } },
        lampSpawnPoints = { { x = 606.5, y = 0, z = -20   }, { x = 629,   y = 0, z = -20   }} 
    },
    [xi.nyzul.room.EAST_L] =
    {
        mobSpawnPoints  = { { x = 504.5, y = 0, z = -55.5 }, { x = 504.5, y = 0, z = -64.5 }, { x = 500, y = 0, z = -46.5 }, { x = 513.5, y = 0, z = -60 }, { x = 513.5, y = 0, z = -73.5 } },
        lampSpawnPoints = { { x = 500,   y = 0, z = -55.5 }, { x = 500,   y = 0, z = -64.5 } }
    },
    [xi.nyzul.room.EAST_M] =
    {
        mobSpawnPoints  = { { x = 495.5, y = 0, z = -104.5 }, { x = 504.5, y = 0, z = -104.5 }, {x = 500, y = 0, z = -91 }, { x = 509, y = 0, z = -100 }, { x = 491, y = 0, z = -100 } },
        lampSpawnPoints = { { x = 500,   y = 0, z = -109   }, { x = 500,   y = 0, z = -100   } }
    },
    [xi.nyzul.room.EAST_M_HALLWAY] =
    {
        mobSpawnPoints  = { { x = 500, y = 0, z = -144.5 }, { x = 500, y = 0, z = -131 }, {x = 500, y = 0, z = -135.5 }, { x = 500, y = 0, z = -129 }, { x = 500, y = 0, z = -151.5 } },
        lampSpawnPoints = { { x = 500, y = 0, z = -140   }, { x = 500, y = 0, z = -140 } }
    },
    [xi.nyzul.room.EAST_N] =
    {
        mobSpawnPoints  = { { x = 553.5, y = 0, z = -109   }, { x = 544.5, y = 0, z = -113.5 }, { x = 526.5, y = 0, z = -113.5 }, { x = 531, y = 0, z = -86.5 }, { x = 544.5, y = 0, z = -100 } },
        lampSpawnPoints = { { x = 526.5, y = 0, z = -113.5 }, { x = 540,   y = 0, z = -104.5 } }
    },
    [xi.nyzul.room.EAST_O] =
    {
        mobSpawnPoints  = { {x = 633.5, y = 0, z = -109 }, { x = 633.5, y = 0, z = -91  }, { x = 620, y = 0, z = -91 }, { x = 611, y = 0, z = -109 }, { x = 606.5, y = 0, z = -86.5 } },
        lampSpawnPoints = { {x = 611,   y = 0, z = -100 }, { x = 629,   y = 0, z = -100 } }
    },
    [xi.nyzul.room.EAST_P] =
    {
        mobSpawnPoints  = { { x = 381.5, y = 0, z = -140 }, { x = 393.5, y = 0, z = -152 }, { x = 406.5, y = 0, z = -166.5 }, { x = 407, y = 0, z = -129 }, { x = 393.5, y = 0, z = -113.5 } },
        lampSpawnPoints = { { x = 375.5, y = 0, z = -140 }, { x = 400,   y = 0, z = -140 } }
    },
    [xi.nyzul.room.EAST_Q] =
    {
        mobSpawnPoints  = { { x = 446.5, y = 0, z = -131   }, { x = 450.5, y = 0, z = -153.5 }, { x = 473, y = 0, z = -149 }, { x = 464.5, y = 0, z = -144.5 }, { x = 464.5, y = 0, z = -135.5 } },
        lampSpawnPoints = { { x = 446.5, y = 0, z = -126.5 }, { x = 455,   y = 0, z = -140   } }
    },
    [xi.nyzul.room.EAST_R] =
    {
        mobSpawnPoints  = { {x = 540, y = 0, z = -140 }, { x = 526.5, y = 0, z = -126.5 }, { x = 526.5, y = 0, z = -153.5 }, { x = 535.5, y = 0, z = -149 }, { x = 549, y = 0, z = -131 } },
        lampSpawnPoints = { {x = 540, y = 0, z = -140 }, { x = 531,   y = 0, z = -140   } }
    },
    [xi.nyzul.room.EAST_S] =
    {
        mobSpawnPoints  = { { x = 584.5, y = 0, z = -135.5 }, { x = 575.5, y = 0, z = -126.5 }, { x = 566.5, y = 0, z = -131 }, { x = 566.5, y = 0, z = -149 }, { x = 589, y = 0, z = -153.5 } },
        lampSpawnPoints = { { x = 566.5, y = 0, z = -140   }, { x = 580,   y = 0, z = -144.5 } }
    },
    [xi.nyzul.room.EAST_T] =
    {
        mobSpawnPoints  = { { x = 473.5, y = 0, z = -184.5 }, { x = 473.5, y = 0, z = -166.5 }, { x = 446.5, y = 0, z = -175.5 }, { x = 460, y = 0, z = -175.5 }, { x = 451, y = 0, z = -184.5 } },
        lampSpawnPoints = { { x = 464.5, y = 0, z = -180   }, { x = 473.5, y = 0, z = -193.5 } }
    },
    [xi.nyzul.room.EAST_U] =
    {
        mobSpawnPoints  = { { x = 500, y = 0, z = -180 }, { x = 509, y = 0, z = -171 }, { x = 491, y = 0, z = -189 }, { x = 513.5, y = 0, z = -193.5 }, { x = 486.5, y = 0, z = -166.5 } },
        lampSpawnPoints = { { x = 509, y = 0, z = -189 }, { x = 491, y = 0, z = -171 } }
    },
    [xi.nyzul.room.EAST_V] =
    {
        mobSpawnPoints  = { { x = 544.5, y = 0, z = -193.5 }, { x = 544.5, y = 0, z = -184.5 }, { x = 540, y = 0, z = -175.5 }, { x = 535.5, y = 0, z = -184.5 }, { x = 535.5, y = 0, z = -193.5 } },
        lampSpawnPoints = { { x = 526.5, y = 0, z = -193.5 }, { x = 553.5, y = 0, z = -193.5 } }
    },
    [xi.nyzul.room.EAST_W] =
    {
        mobSpawnPoints  = { { x = 495.5, y = 0, z = -211 }, { x = 495.5, y = 0, z = -229 }, { x = 504.5, y = 0, z = -229 }, { x = 504.5, y = 0, z = -211 }, { x = 491, y = 0, z = -220 } },
        lampSpawnPoints = { { x = 509,   y = 0, z = -220 }, { x = 513.5, y = 0, z = -220 } }
    },
    [xi.nyzul.room.NE_A] = -- Contains the connected east and west "elbow" hallways.
    {
        mobSpawnPoints  = { { x = 420, y = 0, z = 500 }, { x = 500, y = 0, z = 500 }, { x = 460, y = 0, z = 509 }, { x = 469, y = 0, z = 500 }, { x = 451, y = 0, z = 500 } },
        lampSpawnPoints = { { x = 460, y = 0, z = 500 }, { x = 460, y = 0, z = 491 } }
    },
    [xi.nyzul.room.NE_B] =
    {
        mobSpawnPoints  = { { x = 433.5, y = 0, z = 446.5 }, { x = 406.5, y = 0, z = 451   }, { x = 406.5, y = 0, z = 473.5 }, { x = 415.5, y = 0, z = 464.5 }, { x = 415.5, y = 0, z = 455.5 } },
        LampSpawnPoints = { { x = 424.5, y = 0, z = 460   }, { x = 433.5, y = 0, z = 473.5 } }
    },
    [xi.nyzul.room.NE_C] =
    {
        mobSpawnPoints  = { { x = 460, y = 0, z = 451 }, { x = 469,   y = 0, z = 451  }, { x = 451, y = 0, z = 460 }, { x = 451, y = 0, z = 469 }, { x = 469, y = 0, z = 469 } },
        lampSpawnPoints = { { x = 460, y = 0, z = 469 }, { x = 473.5, y = 0, z = 473.5} }
    },
    [xi.nyzul.room.NE_D] =
    {
        mobSpawnPoints  = { { x = 504.5, y = 0, z = 455.5 }, { x = 504.5, y = 0, z = 464.5 }, { x = 488.5, y = 0, z = 473.5 }, { x = 490.5, y = 0, z = 446.5 }, { x = 513.5, y = 0, z = 473.5 } },
        lampSpawnPoints = { { x = 513.5, y = 0, z = 446.5 }, { x = 495,   y = 0, z = 460   } }
    },
    [xi.nyzul.room.NE_E] =
    {
        mobSpawnPoints  = { { x = 473.5, y = 0, z = 406.5 }, { x = 460,   y = 0, z = 420   }, { x = 460, y = 0, z = 429 }, { x = 446.5, y = 0, z = 433.5 }, { x = 455.5, y = 0, z = 415.5 } },
        lampSpawnPoints = { { x = 460,   y = 0, z = 420   }, { x = 446.5, y = 0, z = 406.5 } }
    },
    [xi.nyzul.room.NE_F] =
    {
        mobSpawnPoints  = { { x = 495.5, y = 0, z = 415.5 }, { x = 505.5, y = 0, z = 415.5 }, { x = 513.5, y = 0, z = 406.5 }, { x = 513.5, y = 0, z = 433.5 }, { x = 486.5, y = 0, z = 433.5 } },
        lampSpawnPoints = { { x = 500,   y = 0, z = 433.5 }, { x = 500,   y = 0, z = 424.5 } }
    },
    [xi.nyzul.room.NE_G] =
    {
        mobSpawnPoints  = { { x = 540, y = 0, z = 411 }, { x = 535.5, y = 0, z = 424.5 }, { x = 553.5, y = 0, z = 433.5 }, { x = 549, y = 0, z = 420 }, { x = 526.5, y = 0, z = 415.5 } },
        lampSpawnPoints = { { x = 540, y = 0, z = 420 }, { x = 533.5, y = 0, z = 433.5 } }
    },
    [xi.nyzul.room.NE_H] =
    {
        mobSpawnPoints  = { { x = 500, y = 0, z = 380 }, { x = 491,   y = 0, z = 389   }, { x = 491, y = 0, z = 371 }, { x = 509, y = 0, z = 389 }, { x = 509, y = 0, z = 371 } },
        lampSpawnPoints = { { x = 500, y = 0, z = 380 }, { x = 486.5, y = 0, z = 366.5 } }
    },
    [xi.nyzul.room.NE_I] =
    {
        mobSpawnPoints  = { { x = 540, y = 0, z = 371 }, { x = 549,   y = 0, z = 380  }, { x = 531, y = 0, z = 380 }, { x = 553.5, y = 0, z = 366.5 }, { x = 540, y = 0, z = 393.5 } },
        lampSpawnPoints = { { x = 540, y = 0, z = 389 }, { x = 526.5, y = 0, z = 366.5} }
    },
    [xi.nyzul.room.NE_J] =
    {
        mobSpawnPoints  = { { x = 584.5, y = 0, z = 375.5 }, { x = 584.5, y = 0, z = 384.5 }, { x = 589, y = 0, z = 393.5 }, { x = 566.5, y = 0, z = 389 }, { x = 580, y = 0, z = 393.5 } },
        lampSpawnPoints = { { x = 580,   y = 0, z = 393.5 }, { x = 575.5, y = 0, z = 380   } }
    },
    [xi.nyzul.room.NE_K] =
    {
        mobSpawnPoints  = { { x = 460, y = 0, z = 344.5 }, { x = 451, y = 0, z = 340 }, { x = 469, y = 0, z = 340 }, { x = 464.5, y = 0, z = 331 }, { x = 455.5, y = 0, z = 331 } },
        lampSpawnPoints = { { x = 460, y = 0, z = 340   }, { x = 460, y = 0, z = 349 } }
    },
    [xi.nyzul.room.NE_L] =
    {
        mobSpawnPoints  = { { x = 486.5, y = 0, z = 353.5 }, { x = 495.5, y = 0, z = 340   }, { x = 504.5, y = 0, z = 340 }, { x = 509, y = 0, z = 353.5 }, { x = 513.5, y = 0, z = 326.5 } },
        lampSpawnPoints = { { x = 500,   y = 0, z = 335.5 }, { x = 486.5, y = 0, z = 326.5 } }
    },
    [xi.nyzul.room.NE_M] =
    {
        mobSpawnPoints  = { { x = 540, y = 0, z = 340 }, { x = 540, y = 0, z = 349 }, { x = 531, y = 0, z = 340 }, { x = 549, y = 0, z = 340 }, { x = 553.5, y = 0, z = 326.5 } },
        lampSpawnPoints = { { x = 540, y = 0, z = 340 }, { x = 540, y = 0, z = 331 } }
    },
    [xi.nyzul.room.NE_N] = -- Contains the connected north and south "elbow" hallways.
    {
        mobSpawnPoints  = { { x = 420,   y = 0, z = 340 }, { x = 420,   y = 0, z = 260   }, { x = 433.5, y = 0, z = 300 }, { x = 406.5, y = 0, z = 309 }, { x = 411, y = 0, z = 295.5 } },
        lampSpawnPoints = { { x = 424.5, y = 0, z = 300 }, { x = 433.5, y = 0, z = 286.5 } }
    },
    [xi.nyzul.room.NE_O] =
    {
        mobSpawnPoints  = { { x = 451,   y = 0, z = 309   }, { x = 460, y = 0, z = 309 }, { x = 451, y = 0, z = 291 }, { x = 460, y = 0, z = 291 }, { x = 469, y = 0, z = 300 } },
        lampSpawnPoints = { { x = 446.5, y = 0, z = 313.5 }, { x = 451, y = 0, z = 300 } }
    },
    [xi.nyzul.room.NE_P] =
    {
        mobSpawnPoints  = { { x = 491,   y = 0, z = 286.5 }, { x = 491,   y = 0, z = 313.5 }, { x = 513.5, y = 0, z = 304.5 }, { x = 500, y = 0, z = 304.5 }, { x = 513, y = 0, z = 291 } },
        lampSpawnPoints = { { x = 495.5, y = 0, z = 300   }, { x = 486.5, y = 0, z = 300   } }
    },
    [xi.nyzul.room.NE_Q] =
    {
        mobSpawnPoints  = { { x = 460, y = 0, z = 260 }, { x = 455.5, y = 0, z = 264.5 }, { x = 464.5, y = 0, z = 255.5 }, { x = 455.5, y = 0, z = 255.5 }, { x = 464.5, y = 0, z = 264.5 } },
        lampSpawnPoints = { { x = 460, y = 0, z = 269 }, { x = 460,   y = 0, z = 251   } }
    },
    [xi.nyzul.room.SOUTH_A] =
    {
        mobSpawnPoints  = { { x = -20, y = 0, z = -260 }, { x = -29, y = 0, z = -260 }, { x = -20, y = 0, z = -251 }, { x = -11, y = 0, z = -260 }, { x = -20, y = 0, z = -269 } },
        lampSpawnPoints = { { x = -20, y = 0, z = -260 }, { x = -20, y = 0, z = -269 } }
    },
    [xi.nyzul.room.SOUTH_B] =
    {
        mobSpawnPoints  = { { x = -51,   y = 0, z = -286.5 }, { x = -46.5, y = 0, z = -309 }, { x = -55.5, y = 0, z = -304.5 }, { x = -64.5, y = 0, z = -295.5 }, { x = -69, y = 0, z = -286.5 } },
        lampSpawnPoints = { { x = -46.5, y = 0, z = -300   }, { x = -55.5, y = 0, z = -300 } }
    },
    [xi.nyzul.room.SOUTH_C] =
    {
        mobSpawnPoints  = { { x = -20, y = 0, z = -300 }, { x = -11, y = 0, z = -300 }, { x = -29, y = 0, z = -300 }, { x = -11, y = 0, z = -291 }, { x = -29, y = 0, z = -309 } },
        lampSpawnPoints = { { x = -20, y = 0, z = -309 }, { x = -20, y = 0, z = -291 } }
    },
    [xi.nyzul.room.SOUTH_D] =
    {
        mobSpawnPoints  = { { x = 29,  y = 0, z = -286.5 }, { x = 33.5, y = 0, z = -309   }, { x = 24.5, y = 0, z = -300 }, { x = 15.5, y = 0, z = -304.5 }, { x = 6.5, y = 0, z = -309 } },
        lampSpawnPoints = { { x = 6.5, y = 0, z = -286.5 }, { x = 15,   y = 0, z = -286.5 } }
    },
    [xi.nyzul.room.SOUTH_E] =
    {
        mobSpawnPoints  = { { x = 60,   y = 0, z = -335.5 }, { x = 69,   y = 0, z = -326.5 }, { x = 46, y = 0, z = -331 }, { x = 55.5, y = 0, z = -353.5 }, { x = 64.5, y = 0, z = -349 } },
        lampSpawnPoints = { { x = 64.5, y = 0, z = -340   }, { x = 55.5, y = 0, z = -340   } }
    },
    [xi.nyzul.room.SOUTH_G] =
    {
        mobSpawnPoints  = { { x = 29, y = 0, z = -371 }, { x = 20,   y = 0, z = -371 }, { x = 11, y = 0, z = -380 }, { x = 20, y = 0, z = -389 }, { x = 29, y = 0, z = -389 } },
        lampSpawnPoints = { { x = 29, y = 0, z = -380 }, { x = 33.5, y = 0, z = -380 } }
    },
    [xi.nyzul.room.SOUTH_H] =
    {
        mobSpawnPoints  = { { x = 100, y = 0, z = -380 }, { x = 104.5, y = 0, z = -375.5 }, { x = 104.5, y = 0, z = -384.5 }, { x = 94.5, y = 0, z = -375.5 }, { x = 94.5, y = 0, z = -384.5 } },
        lampSpawnPoints = { { x = 91,  y = 0, z = -380 }, { x = 109,   y = 0, z = -380   } }
    },
    [xi.nyzul.room.SOUTH_I] =
    {
        mobSpawnPoints  = { { x = 46.5, y = 0, z = -406.5 }, { x = 51, y = 0, z = -433.5 }, { x = 73.5, y = 0, z = -429 }, { x = 64.5, y = 0, z = -411 }, { x = 55.5, y = 0, z = -420.5 } },
        lampSpawnPoints = { { x = 73.5, y = 0, z = -420   }, { x = 60, y = 0, z = -424.5 } }
    },
    [xi.nyzul.room.SOUTH_J] =
    {
        mobSpawnPoints  = { { x = -46.5, y = 0, z = -446.5 }, { x = -69,   y = 0, z = -446.5 }, { x = -60, y = 0, z = -455.5 }, { x = -55.5, y = 0, z = -460 }, { x = -73.5, y = 0, z = -469 } },
        lampSpawnPoints = { { x = -55.5, y = 0, z = -473.5 }, { x = -46.5, y = 0, z = -473.5 } }
    },
    [xi.nyzul.room.SOUTH_K] =
    {
        mobSpawnPoints  = { { x = -33.5, y = 0, z = -473.5 }, { x = -6.5, y = 0, z = -446.5 }, { x = -24.5, y = 0, z = -455.5 }, { x = -15.5, y = 0, z = -464.5 }, { x = -11, y = 0, z = -460 } },
        lampSpawnPoints = { { x = -11,   y = 0, z = -451   }, { x = -29,  y = 0, z = -469   } }
    },
    [xi.nyzul.room.SOUTH_L] =
    {
        mobSpawnPoints  = { { x = 33.5, y = 0, z = -473.5 }, { x = 33.5, y = 0, z = -451   }, { x = 24.5, y = 0, z = -460 }, { x = 15.5, y = 0, z = -451 }, { x = 6.5, y = 0, z = -469 } },
        lampSpawnPoints = { { x = 6.5,  y = 0, z = -473.5 }, { x = 15.5, y = 0, z = -473.5 } }
    },
    [xi.nyzul.room.SOUTH_M] =
    {
        mobSpawnPoints  = { { x = -29, y = 0, z = -504.5 }, { x = -29, y = 0, z = -495.5 }, { x = -20, y = 0, z = -509 }, { x = -20, y = 0, z = -491 }, { x = -11, y = 0, z = -500 } },
        lampSpawnPoints = { { x = -20, y = 0, z = -500   }, { x = -29, y = 0, z = -500   } }
    },
    [xi.nyzul.room.CENTRAL_A] =
    {
        mobSpawnPoints  = { {x = -33.5, y = -4, z = 166.5 }, { x = -6.5, y = -4, z = 171   }, { x = -15.5, y = -4, z = 189 }, { x = -24.5, y = -4, z = 175.5 }, { x = -24.5, y = -4, z = 193.5 } },
        lampSpawnPoints = { {x = -20,   y = -4, z = 175.5 }, { x = -20,  y = -4, z = 166.5 } }
    },
    [xi.nyzul.room.CENTRAL_B] =
    {
        mobSpawnPoints  = { { x = -20, y = -4, z = 149 }, { x = -29, y = -4, z = 140 }, { x = -11, y = -4, z = 140 }, { x = -29, y = -4, z = 131 }, { x = -11, y = -4, z = 131 } },
        lampSpawnPoints = { { x = -20, y = -4, z = 140 }, { x = -20, y = -4, z = 131 } }
    },
    [xi.nyzul.room.CENTRAL_C] =
    {
        mobSpawnPoints  = { { x = -69, y = 0, z = 91  }, { x = -51, y = 0, z = 91 }, { x = -73.5, y = 0, z = 100 }, { x = -46.5, y = 0, z = 86.5 }, { x = -46.5, y = 0, z = 113.5 } },
        lampSpawnPoints = { { x = -51, y = 0, z = 109 }, { x = -51, y = 0, z = 91 } }
    },
    [xi.nyzul.room.CENTRAL_D] =
    {
        mobSpawnPoints  = { { x = -29, y = 0, z = 100 }, { x = -20, y = 0, z = 104.5 }, { x = -20, y = 0, z = 95.5 }, { x = -6.5, y = 0, z = 109 }, { x = -11, y = 0, z = 91 } },
        lampSpawnPoints = { { x = -29, y = 0, z = 109 }, { x = -29, y = 0, z = 91    } }
    },
    [xi.nyzul.room.CENTRAL_E] =
    {
        mobSpawnPoints  = { { x = 20, y = 0, z = 104.5 }, { x = 33.5, y = 0, z = 113.5 }, { x = 6.5, y = 0, z = 91 }, { x = 15.5, y = 0, z = 100 }, { x = 24.5, y = 0, z = 86.5 } },
        lampSpawnPoints = { { x = 20, y = 0, z = 104.5 }, { x = 29,   y = 0, z = 113.5 } }
    },
    [xi.nyzul.room.CENTRAL_F] =
    {
        mobSpawnPoints  = { { x = 64.5, y = 0, z = 113.5 }, { x = 64.5, y = 0, z = 106.5 }, { x = 51, y = 0, z = 91 }, { x = 73.5, y = 0, z = 86.5 }, { x = 66.5, y = 0, z = 95.5 } },
        lampSpawnPoints = { { x = 69,   y = 0, z = 109   }, { x = 60,   y = 0, z = 109   } }
    },
    [xi.nyzul.room.CENTRAL_G] =
    {
        mobSpawnPoints  = { { x = -113.5, y = 0, z = 55.5 }, { x = -95.5,  y = 0, z = 60   }, { x = -109, y = 0, z = 64.5 }, { x = -91, y = 0, z = 73.5 }, { x = -86.5, y = 0, z = 46.5 } },
        lampSpawnPoints = { { x = -113.5, y = 0, z = 73.5 }, { x = -113.5, y = 0, z = 46.5 } }
    },
    [xi.nyzul.room.CENTRAL_H] =
    {
        mobSpawnPoints  = { { x = -60,   y = 0, z = 64.5 }, { x = -55.5, y = 0, z = 55.5 }, { x = -69, y = 0, z = 46.5 }, { x = -73.5, y = 0, z = 69 }, { x = -46.5, y = 0, z = 73.5 } },
        lampSpawnPoints = { { x = -64.5, y = 0, z = 60   }, { x = -73.5, y = 0, z = 60   } }
    },
    [xi.nyzul.room.CENTRAL_I] =
    {
        mobSpawnPoints  = { { x = 73.5, y = 0, z = 60   }, { x = 64.5, y = 0, z = 60   }, { x = 55.5, y = 0, z = 64.5 }, { x = 51, y = 0, z = 55.5 }, { x = 46.5, y = 0, z = 69 } },
        lampSpawnPoints = { { x = 73.5, y = 0, z = 73.5 }, { x = 73.5, y = 0, z = 46.5 } }
    },
    [xi.nyzul.room.CENTRAL_J] =
    {
        mobSpawnPoints  = { { x = 104.5, y = 0, z = 64.5 }, { x = 100,   y = 0, z = 55.5 }, { x = 113.5, y = 0, z = 51 }, { x = 86.5, y = 0, z = 46.5 }, { x = 91, y = 0, z = 73.5 } },
        lampSpawnPoints = { { x = 95.5,  y = 0, z = 60   }, { x = 113.5, y = 0, z = 73.5 } }
    },
    [xi.nyzul.room.CENTRAL_K] =
    {
        mobSpawnPoints  = { { x = -73.5, y = 0, z = 33.5 }, { x = -69, y = 0, z = 11 }, { x = -55.5, y = 0, z = 15.5 }, { x = -51, y = 0, z = 29 }, { x = -64.5, y = 0, z = 26.5 } },
        lampSpawnPoints = { { x = -69,   y = 0, z = 20   }, { x = -51, y = 0, z = 20 } }
    },
    [xi.nyzul.room.CENTRAL_L] =
    {
        mobSpawnPoints  = { { x = -33.5, y = 0, z = 6.5 }, { x = -29, y = 0, z = 24.5 }, { x = -15.5, y = 0, z = 10.5 }, { x = -11, y = 0, z = 29 }, { x = -24.5, y = 0, z = 15.5 } },
        lampSpawnPoints = { { x = -20,   y = 0, z = 20  }, { x = -29, y = 0, z = 11   } }
    },
    [xi.nyzul.room.CENTRAL_M] =
    {
        mobSpawnPoints  = { { x = 15.5, y = 0, z = 15.5 }, { x = 24.5, y = 0, z = 20 }, { x = 29, y = 0, z = 33.5 }, { x = 29, y = 0, z = 6.5 }, { x = 6.5, y = 0, z = 6.5 } },
        lampSpawnPoints = { { x = 20,   y = 0, z = 15.5 }, { x = 15.5, y = 0, z = 20 } }
    },
    [xi.nyzul.room.CENTRAL_N] =
    {
        mobSpawnPoints  = { { x = 69, y = 0, z = 15.5 }, { x = 69, y = 0, z = 29 }, { x = 46.5, y = 0, z = 33.5 }, { x = 51, y = 0, z = 11 }, { x = 69, y = 0, z = 6.5 } },
        lampSpawnPoints = { { x = 60, y = 0, z = 11   }, { x = 60, y = 0, z = 29 } }
    },
    [xi.nyzul.room.CENTRAL_P] =
    {
        mobSpawnPoints  = { { x = -15.5, y = -4, z = -60 }, { x = -24.5, y = -4, z = -55.5 }, { x = -24.5, y = -4, z = -73.5 }, { x = -33.5, y = -4, z = -69 }, { x = -33.5, y = -4, z = -46.5 } },
        lampSpawnPoints = { { x = -6.5,  y = -4, z = -60 }, { x = -20,   y = -4, z = -55.5 } }
    },
    [xi.nyzul.room.CENTRAL_Q] = -- Corner long hallway.
    {
        mobSpawnPoints  = { { x = -60, y = -4, z = 151.5 }, { x = -60, y = 0,  z = 128 }, { x = -63, y = -1, z = 136 }, { x = -57, y = -2, z = 139.5 }, { x = -63, y = -3.5, z = 144 } },
        lampSpawnPoints = { { x = -60, y = 0,  z = 126.5 }, { x = -60, y = -2, z = 140 } }
    },
    [xi.nyzul.room.CENTRAL_R] = -- Corner long hallway.
    {
        mobSpawnPoints  = { { x = 20, y = -4, z = 153.5 }, { x = 20, y = 0,  z = 128.5 }, { x = 17, y = -2, z = 140 }, { x = 23, y = -3.5, z = 144 }, { x = 23, y = -1, z = 136 } },
        lampSpawnPoints = { { x = 20, y = 0,  z = 126.5 }, { x = 20, y = -2, z = 140   } }
    },
    [xi.nyzul.room.CENTRAL_S] = -- Corner long hallway.
    {
        mobSpawnPoints  = { { x = -60, y = -4, z = -31.5 }, { x = -60, y = 0,  z = -8.5 }, { x = -63, y = -1, z = -17 }, { x = -63, y = -3.5, z = -24 }, { x = -57, y = -2, z = -20 } },
        lampSpawnPoints = { { x = -60, y = 0,  z = -6.5  }, { x = -60, y = -2, z = -20  } }
    },
    [xi.nyzul.room.CENTRAL_T] = -- Corner long hallway.
    {
        mobSpawnPoints  = { { x = 20, y = -4, z = -31.5 }, { x = 20, y = 0,  z = -8.5 }, { x = 23, y = -1, z = -17 }, { x = 23, y = -3.5, z = -24 }, { x = 17, y = -2, z = -20 } },
        lampSpawnPoints = { { x = 20, y = 0,  z = -6.5  }, { x = 20, y = -2, z = -20  } }
    },
    [xi.nyzul.room.SW_A] =
    {
        mobSpawnPoints  = { { x = -495.5, y = -4, z = -184.5 }, { x = -504.5, y = -4, z = -175.5 }, { x = -509, y = -4, z = -189 }, { x = -491, y = -4, z = -171 }, { x = -500, y = -4, z = -180 } },
        lampSpawnPoints = { { x = -509,   y = -4, z = -171   }, { x = -491,   y = -4, z = -189   } }
    },
    [xi.nyzul.room.SW_B] =
    {
        mobSpawnPoints  = { { x = -455.5, y = -4, z = -175.5 }, { x = -464.5, y = -4, z = -180 }, { x = -460, y = -4, z = -189 }, { x = -455.5, y = -4, z = -184.5 }, { x = -446.5, y = -4, z = -166.5 } },
        lampSpawnPoints = { { x = -460,   y = -4, z = -180   }, { x = -460,   y = -4, z = -171 } }
    },
    [xi.nyzul.room.SW_C] =
    {
        mobSpawnPoints  = { { x = -415.5, y = -4, z = -184.5 }, { x = -406.5, y = -4, z = -175.5 }, { x = -420, y = -4, z = -166.5 }, { x = -420, y = -4, z = -189 }, { x = -424.5, y = -4, z = -180 } },
        lampSpawnPoints = { { x = -411,   y = -4, z = -180   }, { x = -420,   y = -4, z = -180   } }
    },
    [xi.nyzul.room.SW_E] = -- Includes the hallway to the east.
    {
        mobSpawnPoints  = { { x = -473.5,  y = -4, z = -260 }, { x = -464.5, y = -4, z = -260   }, { x = -451, y = -4, z = -246.5 }, { x = -446.5, y = -4, z = -273.5 }, { x = -429, y = -4, z = -260 }, { x = -411, y = 0, z = -260 } },
        lampSpawnPoints = { { x = -420.25, y = -2, z = -260 }, { x = -460,   y = -4, z = -264.5 } }
    },
    [xi.nyzul.room.SW_F] =
    {
        mobSpawnPoints  = { { x = -375.5, y = 0, z = -264.5 }, { x = -366.5, y = 0, z = -251 }, { x = -389, y = 0, z = -260 }, { x = -393.5, y = 0, z = -251 }, { x = -393.5, y = 0, z = -273.5 } },
        lampSpawnPoints = { { x = -380,   y = 0, z = -260   }, { x = -371,   y = 0, z = -260 } }
    },
    [xi.nyzul.room.SW_G] =
    {
        mobSpawnPoints  = { { x = -389,   y = 0, z = -286.5 }, { x = -380,   y = 0, z = -295.5 }, { x = -393.5, y = 0, z = -313.5 }, { x = -371, y = 0, z = -313.5 }, { x = -366.5, y = 0, z = -291 } },
        lampSpawnPoints = { { x = -393.5, y = 0, z = -304.5 }, { x = -393.5, y = 0, z = -295.5 } }
    },
    [xi.nyzul.room.SW_H] =
    {
        mobSpawnPoints  = { { x = -344.5, y = 0, z = -309 }, { x = -331, y = 0, z = -295.5 }, { x = -349, y = 0, z = -291 }, { x = -340, y = 0, z = -300 }, { x = -353.5, y = 0, z = -286.5 } },
        lampSpawnPoints = { { x = -331,   y = 0, z = -309 }, { x = -340, y = 0, z = -300   } }
    },
    [xi.nyzul.room.SW_I] = -- Includes the hallway to the east.
    {
        mobSpawnPoints  = { { x = -553.5, y = -4, z = -340 }, { x = -544.5,  y = -4, z = -331 }, { x = -544.5, y = -4, z = -344.5 }, { x = -535.5, y = -4, z = -349 }, { x = -535.5, y = -4, z = -335.5 }, { x = -500.25, y = -2, z = -340 } },
        lampSpawnPoints = { { x = -549,   y = -4, z = -340 }, { x = -500.25, y = -2, z = -340 } }
    },
    [xi.nyzul.room.SW_J] =
    {
        mobSpawnPoints  = { { x = -460,   y = 0, z = -344.5}, { x = -451,   y = 0, z = -353.5 }, { x = -473.5, y = 0, z = -353.5 }, { x = -469, y = 0, z = -326.5 }, { x = -446.5, y = 0, z = -331 } },
        lampSpawnPoints = { { x = -446.5, y = 0, z = -344.5}, { x = -464.5, y = 0, z = -340   } }
    },
    [xi.nyzul.room.SW_K] =
    {
        mobSpawnPoints  = { { x = -313.5, y = 0, z = -326.5 }, { x = -286.5, y = 0, z = -353.5 }, { x = -309, y = 0, z = -340 }, { x = -300, y = 0, z = -331 }, { x = -286.5, y = 0, z = -326.5 } },
        lampSpawnPoints = { { x = -309,   y = 0, z = -331   }, { x = -291,   y = 0, z = -349   } }
    },
    [xi.nyzul.room.SW_L] =
    {
        mobSpawnPoints  = { { x = -544.5, y = -4, z = -366.5 }, { x = -526.5, y = -4, z = -371 }, { x = -549, y = -4, z = -393.5 }, { x = -544.5, y = -4, z = -384.5 }, { x = -540, y = -4, z = -375.5 } },
        lampSpawnPoints = { { x = -553.5, y = -4, z = -366.5 }, { x = -535.5, y = -4, z = -380 } }
    },
    [xi.nyzul.room.SW_M] =
    {
        mobSpawnPoints  = { { x = -495.5, y = -4, z = -384.5 }, { x = -486.5, y = -4, z = -375.5 }, { x = -504.5, y = -4, z = -375.5 }, { x = -509, y = -4, z = -389 }, { x = -500, y = -4, z = -380 } },
        lampSpawnPoints = { { x = -491,   y = -4, z = -380   }, { x = -500,   y = -4, z = -380   } }
    },
    [xi.nyzul.room.SW_N] =
    {
        mobSpawnPoints  = { { x = -446.5, y = 0, z = -366.5 }, { x = -460, y = 0, z = -380 }, { x = -473.5, y = 0, z = -393.5 }, { x = -464.5, y = 0, z = -371 }, { x = -473.5, y = 0, z = -366.5 } },
        lampSpawnPoints = { { x = -469,   y = 0, z = -380   }, { x = -451, y = 0, z = -371 } }
    },
    [xi.nyzul.room.SW_P] =
    {
        mobSpawnPoints  = { { x = -304.5, y = 0, z = -380   }, { x = -291, y = 0, z = -384.5 }, { x = -286.5, y = 0, z = -375.5 }, { x = -313.5, y = 0, z = -366.5 }, { x = -309, y = 0, z = -393.5 } },
        lampSpawnPoints = { { x = -300,   y = 0, z = -384.5 }, { x = -300, y = 0, z = -375.5 } }
    },
    [xi.nyzul.room.SW_Q] =
    {
        mobSpawnPoints  = { { x = -260, y = 0, z = -340 }, { x = -260, y = 0, z = -420 }, { x = -255.5, y = 0, z = -375.5 }, { x = -260, y = 0, z = -380 }, { x = -264.5, y = 0, z = -384.5 } },
        lampSpawnPoints = { { x = -251, y = 0, z = -380 }, { x = -269, y = 0, z = -380 } }
    },
    [xi.nyzul.room.SW_R] = -- Includes hallway to the east.
    {
        mobSpawnPoints  = { { x = -535.5, y = -4, z = -415.5 }, { x = -544.5,  y = -4, z = -424.5 }, { x = -509, y = -4, z = -420 }, { x = -500.25, y = -2, z = -423 }, { x = -486.5, y = 0, z = -420 } },
        lampSpawnPoints = { { x = -540,   y = -4, z = -420   }, { x = -500.25, y = -2, z = -420   } }
    },
    [xi.nyzul.room.SW_S] =
    {
        mobSpawnPoints  = { { x = -455.5, y = 0, z = -424.5 }, { x = -446.5, y = 0, z = -433.5 }, { x = -473.5, y = 0, z = -429 }, { x = -469, y = 0, z = -406.5 }, { x = -446.5, y = 0, z = -415.5 } },
        lampSpawnPoints = { { x = -473.5, y = 0, z = -420   }, { x = -464.5, y = 0, z = -420   } }
    },
    [xi.nyzul.room.SW_T] =
    {
        mobSpawnPoints  = { { x = -291, y = 0, z = -433.5 }, { x = -313.5, y = 0, z = -433.5 }, { x = -309, y = 0, z = -429 }, { x = -313.5, y = 0, z = -411 }, { x = -309, y = 0, z = -411 } },
        lampSpawnPoints = { { x = -300, y = 0, z = -429   }, { x = -309,   y = 0, z = -420   } }
    },
    [xi.nyzul.room.SW_U] =
    {
        mobSpawnPoints  = { { x = -380, y = 0, z = -455.5 }, { x = -380, y = 0, z = -464.5 }, { x = -389, y = 0, z = -473.5 }, { x = -389, y = 0, z = -446.5 }, { x = -366.5, y = 0, z = -473.5 } },
        lampSpawnPoints = { { x = -389, y = 0, z = -455.5 }, { x = -389, y = 0, z = -464.5 } }
    },
    [xi.nyzul.room.SW_V] =
    {
        mobSpawnPoints  = { { x = -344.5, y = 0, z = -451 }, { x = -331, y = 0, z = -464.5 }, { x = -349, y = 0, z = -469 }, { x = -326.5, y = 0, z = -446.5 }, { x = -335.5, y = 0, z = -455.5 } },
        lampSpawnPoints = { { x = -331,   y = 0, z = -451 }, { x = -340, y = 0, z = -460   } }
    },
    [xi.nyzul.room.SW_X] = -- Includes hallway to the east.
    {
        mobSpawnPoints  = { { x = -406.5,  y = 0,  z = -500 }, { x = -433.5, y = -4, z = -500   }, { x = -464.5, y = -4, z = -513.5 }, { x = -455.5, y = -4, z = -504.5 }, { x = -451, y = -4, z = -486.5 } },
        lampSpawnPoints = { { x = -420.25, y = -2, z = -500 }, { x = -460,   y = -4, z = -495.5 } }
    },
    [xi.nyzul.room.SW_Y] =
    {
        mobSpawnPoints  = { { x = -371, y = 0, z = -513.5 }, { x = -394.5, y = 0, z = -513.5 }, { x = -389, y = 0, z = -500 }, { x = -375.5, y = 0, z = -495.5 }, { x = -366.5, y = 0, z = -486.5 } },
        lampSpawnPoints = { { x = -380, y = 0, z = -509   }, { x = -380,   y = 0, z = -513.5 } }
    },
    [xi.nyzul.room.SW_Z] =
    {
        mobSpawnPoints  = { { x = -496.5, y = -4, z = -584.5 }, { x = -486.5, y = -4, z = -593.5 }, { x = -509, y = -4, z = -589 }, { x = -504.5, y = -4, z = -571 }, { x = -495.5, y = -4, z = -575.5 } },
        lampSpawnPoints = { { x = -500,   y = -4, z = -580   }, { x = -491,   y = -4, z = -589   } }
    },
    [xi.nyzul.room.SW_ZA] =
    {
        mobSpawnPoints  = { { x = -451, y = -4, z = -593.5 }, { x = -469, y = -4, z = -584.5 }, { x = -455.5, y = -4, z = -584.5 }, { x = -455.5, y = -4, z = -571 }, { x = -473.5, y = -4, z = -566.5 } },
        lampSpawnPoints = { { x = -460, y = -4, z = -580   }, { x = -460, y = -4, z = -593.5 } }
    },
    [xi.nyzul.room.SW_ZB] =
    {
        mobSpawnPoints  = { { x = -415.5, y = -4, z = -580 }, { x = -424.5, y = -4, z = -590 }, { x = -430, y = -4, z = -571 }, { x = -406.5, y = -4, z = -566.5 }, { x = -433.5, y = -4, z = -593.5 } },
        lampSpawnPoints = { { x = -411,   y = -4, z = -580 }, { x = -406.5, y = -4, z = -580 } }
    },
    [xi.nyzul.room.SW_ZC] =
    {
        mobSpawnPoints  = { { x = -431.5, y = -4, z = -220 }, { x = -408.5,  y = 0,  z = -220 }, { x = -420, y = -2, z = -223 }, { x = -417, y = -1, z = -217 }, { x = -423, y = -3, z = -217 } },
        lampSpawnPoints = { { x = -406.5, y = 0,  z = -220 }, { x = -420.25, y = -2, z =-220  } }
    },
    [xi.nyzul.room.SW_ZD] =
    {
        mobSpawnPoints  = { { x = -408.5, y = 0, z = -540 }, { x = -431.5,  y = -4, z = -540 }, { x = -420, y = -2, z = -537 }, { x = -417, y = -1, z = -543 }, { x = -423, y = -3, z = -543 } },
        lampSpawnPoints = { { x = -406.5, y = 0, z = -540 }, { x = -420.25, y = -2, z = -540 } }
    }
}

-- mobSpawnPoints needed per floor = 25: 12 (floor mobs) + 1  (rampart) + 5 (specified enemies) + 5 (gears) + 2 (NMs)
-- This means a minimum of 6 rooms per config minimum: 1 contains rune of transfer, so empty, and 5 full.
-- Expception: Boss floors.

-- Future plans:
-- If we define conections in each room, separated into mandatory (no door) and optional, we could auto-generate layouts.
-- 1. We would start by choosing a valid rune of transer room.
-- 2. We would them link proximity rooms that are mandatory (no door) until we finish this. End result: a table of rooms.
-- 3. We would then check then amount of rooms we have (we need 6) and then open a door IF needed.
-- 3a. We would then repeat the mandatory room process with the new room opened.

-- Essentially, an ACTUAL random dungeon generator.

xi.nyzul.data.layoutInfo =
{
    [xi.nyzul.layout.BOSS_ROOM_1] = -- South Map, Western room
    {
        roomCollection     = { xi.nyzul.room.BOSS_A },
        runeOfTransferPos  = { x = -11, y = 0, z = -380 },
        doorsToOpen        = {}
    },

    [xi.nyzul.layout.BOSS_ROOM_2] = -- SouthWest Map, Central room
    {
        roomCollection     = { xi.nyzul.room.BOSS_B },
        runeOfTransferPos  = { x = -330, y = 0, z = -380 },
        doorsToOpen        = {}
    },

    [xi.nyzul.layout.BOSS_ROOM_3] = -- SouthWest Map, Northern room
    {
        roomCollection     = { xi.nyzul.room.BOSS_C },
        runeOfTransferPos  = { x = -491, y = -4, z = -260 },
        doorsToOpen        = {}
    },

    [xi.nyzul.layout.BOSS_ROOM_4] = -- SouthWest Map, Southern room
    {
        roomCollection     = { xi.nyzul.room.BOSS_D },
        runeOfTransferPos  = { x = -491, y = -4, z = -500 },
        doorsToOpen        = {}
    }
    [xi.nyzul.layout.FLOOR_SE_1] = -- South half starting in SE_K
    {
        roomCollection    = { xi.nyzul.room.SE_E_HALF_SW, xi.nyzul.room.SE_I, xi.nyzul.room.SE_J, xi.nyzul.room.SE_G, xi.nyzul.room.SE_H, xi.nyzul.room.SE_L },
        runeOfTransferPos = { x = 509, y = 0, z = -589 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 2, ID.npc.DOOR_OFFSET + 3, ID.npc.DOOR_OFFSET + 5 }
    },
    [xi.nyzul.layout.FLOOR_SE_2] = -- North half
    {
        roomCollection    = { xi.nyzul.room.SE_A, xi.nyzul.room.SE_B, xi.nyzul.room.SE_C, xi.nyzul.room.SE_D, xi.nyzul.room.SE_E_HALF_NE, xi.nyzul.room.SE_F },
        runeOfTransferPos = { x = 380, y = 0, z = -500 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 7, ID.npc.DOOR_OFFSET + 8 }
    },
    [xi.nyzul.layout.FLOOR_SE_3] = -- Center Loop starts in SE_F
    {
        roomCollection    = { xi.nyzul.room.SE_B, xi.nyzul.room.SE_C, xi.nyzul.room.SE_D, xi.nyzul.room.SE_E_HALF_SW, xi.nyzul.room.SE_G, xi.nyzul.room.SE_I, xi.nyzul.room.SE_J, xi.nyzul.room.SE_K },
        runeOfTransferPos = { x = 420, y = 0, z = -540 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET, ID.npc.DOOR_OFFSET + 1, ID.npc.DOOR_OFFSET + 3, ID.npc.DOOR_OFFSET + 4, ID.npc.DOOR_OFFSET + 6, ID.npc.DOOR_OFFSET + 7 }
    },
    [xi.nyzul.layout.FLOOR_SE_4] = -- Two large rooms, starts in SE_H
    {
        roomCollection    = { xi.nyzul.room.SE_A, xi.nyzul.room.SE_B, xi.nyzul.room.SE_C, xi.nyzul.room.SE_D, xi.nyzul.room.SE_E_HALF_NE, xi.nyzul.room.SE_F, xi.nyzul.room.SE_G, xi.nyzul.room.SE_K},
        runeOfTransferPos = { x = 560, y = 0, z = -540},
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 5, ID.npc.DOOR_OFFSET + 6, ID.npc.DOOR_OFFSET + 7, ID.npc.DOOR_OFFSET + 8 }
    },
    [xi.nyzul.layout.FLOOR_SE_5] = -- South starting in SE_L
    {
        roomCollection    = { xi.nyzul.room.SE_E_HALF_SW, xi.nyzul.room.SE_I, xi.nyzul.room.SE_J, xi.nyzul.room.SE_K, xi.nyzul.room.SE_G, xi.nyzul.room.SE_H },
        runeOfTransferPos = { x = 460, y = 0, z = -640 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 2, ID.npc.DOOR_OFFSET + 3, ID.npc.DOOR_OFFSET + 5 }
    },
    [xi.nyzul.layout.FLOOR_SE_6] = -- West section with doors closed to create a double loop
    {
        roomCollection    = { xi.nyzul.room.SE_B, xi.nyzul.room.SE_C, xi.nyzul.room.SE_D, xi.nyzul.room.SE_E_HALF_SW, xi.nyzul.room.SE_F, xi.nyzul.room.SE_I, xi.nyzul.room.SE_J },
        runeOfTransferPos = { x = 380, y = 0, z = -500 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 4, ID.npc.DOOR_OFFSET + 7 }
    }
    [xi.nyzul.layout.EAST_1] = -- North side starting in EAST_F
    {
        roomCollection    = { xi.nyzul.room.EAST_A, xi.nyzul.room.EAST_B, xi.nyzul.room.EAST_C, xi.nyzul.room.EAST_C_HALLWAY, xi.nyzul.room.EAST_D, xi.nyzul.room.EAST_E, xi.nyzul.room.EAST_I, xi.nyzul.room.EAST_J },
        runeOfTransferPos = { x = 455.5, y = 0, z = 20 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 14 }
    },
    [xi.nyzul.layout.EAST_2] = -- South side, starting at EAST_P
    {
        roomCollection    = { xi.nyzul.room.EAST_L, xi.nyzul.room.EAST_M, xi.nyzul.room.EAST_M_HALLWAY, xi.nyzul.room.EAST_N, xi.nyzul.room.EAST_Q, xi.nyzul.room.EAST_T, xi.nyzul.room.EAST_U, xi.nyzul.room.EAST_V, xi.nyzul.room.EAST_W },
        runeOfTransferPos = { x = 379.5, y = 0, z = -140 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 9, ID.npc.DOOR_OFFSET + 11 }
    },
    [xi.nyzul.layout.EAST_3] = -- North side starting in EAST_HALLWAY_C
    {
        roomCollection    = { xi.nyzul.room.EAST_A, xi.nyzul.room.EAST_B, xi.nyzul.room.EAST_C, xi.nyzul.room.EAST_D, xi.nyzul.room.EAST_E, xi.nyzul.room.EAST_F, xi.nyzul.room.EAST_I, xi.nyzul.room.EAST_J },
        runeOfTransferPos = { x = 500, y = 0, z = 20 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 14 }
    },
    [xi.nyzul.layout.EAST_4] = -- Center starting east of EAST_N
    {
        roomCollection    = { xi.nyzul.room.EAST_L, xi.nyzul.room.EAST_M, xi.nyzul.room.EAST_M_HALLWAY, xi.nyzul.room.EAST_N, xi.nyzul.room.EAST_U, xi.nyzul.room.EAST_V },
        runeOfTransferPos = { x = 580, y = 0, z = -100 },
        doorsToOpen       = {}
    },
    [xi.nyzul.layout.EAST_5] = -- Center starting in EAST_M_HALLWAY
    {
        roomCollection    = { xi.nyzul.room.EAST_E, xi.nyzul.room.EAST_F, xi.nyzul.room.EAST_I, xi.nyzul.room.EAST_J, xi.nyzul.room.EAST_L, xi.nyzul.room.EAST_M, xi.nyzul.room.EAST_N, xi.nyzul.room.EAST_U, xi.nyzul.room.EAST_V },
        runeOfTransferPos = { x = 500, y = 0, z = -140 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 13 }
    },
    [xi.nyzul.layout.EAST_6] = -- East side, backwards C
    {
        roomCollection    = { xi.nyzul.room.EAST_G, xi.nyzul.room.EAST_H, xi.nyzul.room.EAST_K, xi.nyzul.room.EAST_O, xi.nyzul.room.EAST_S, xi.nyzul.room.EAST_R },
        runeOfTransferPos = { x = 620, y = 0, z = -60 },
        doorsToOpen       = {}
    }
    [xi.nyzul.layout.NE_1] = -- NW loop
    {
        roomCollection    = { xi.nyzul.room.NE_B, xi.nyzul.room.NE_A, xi.nyzul.room.NE_C, xi.nyzul.room.NE_D, xi.nyzul.room.NE_E, xi.nyzul.room.NE_F },
        runeOfTransferPos = { x = 420, y = 0, z = 420 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 23, ID.npc.DOOR_OFFSET + 24, ID.npc.DOOR_OFFSET + 26 }
    },
    [xi.nyzul.layout.NE_2] = -- SW Loop
    {
        roomCollection    = { xi.nyzul.room.NE_K, xi.nyzul.room.NE_L, xi.nyzul.room.NE_N, xi.nyzul.room.NE_O, xi.nyzul.room.NE_P, xi.nyzul.room.NE_Q },
        runeOfTransferPos = { x = 500, y = 0, z = 260 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 17, ID.npc.DOOR_OFFSET + 18, ID.npc.DOOR_OFFSET + 19 }
    },
    [xi.nyzul.layout.NE_3] = -- East collection of rooms
    {
        roomCollection    = { xi.nyzul.room.NE_G, xi.nyzul.room.NE_H, xi.nyzul.room.NE_I, xi.nyzul.room.NE_J, xi.nyzul.room.NE_L, xi.nyzul.room.NE_M },
        runeOfTransferPos = { x = 580, y = 0, z = 420 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 20, ID.npc.DOOR_OFFSET + 21, ID.npc.DOOR_OFFSET + 22 }
    },
    [xi.nyzul.layout.NE_4] = -- Another East Collection - starting in NE_F
    {
        roomCollection    = { xi.nyzul.room.NE_E, xi.nyzul.room.NE_G, xi.nyzul.room.NE_H, xi.nyzul.room.NE_I, xi.nyzul.room.NE_J, xi.nyzul.room.NE_M },
        runeOfTransferPos = { x = 500, y = 0, z = 424.5 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 21, ID.npc.DOOR_OFFSET + 22, ID.npc.DOOR_OFFSET + 25 }
    },
    [xi.nyzul.layout.NE_5] = -- East side, long train of rooms
    {
        roomCollection    = { xi.nyzul.room.NE_E, xi.nyzul.room.NE_F, xi.nyzul.room.NE_G, xi.nyzul.room.NE_J, xi.nyzul.room.NE_M, xi.nyzul.room.NE_L },
        runeOfTransferPos = { x = 580, y = 0, z = 340 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 20, ID.npc.DOOR_OFFSET + 22, ID.npc.DOOR_OFFSET + 25 }

    },
    [xi.nyzul.layout.NE_6] = -- North Loop starting in NE_C
    {
        roomCollection    = { xi.nyzul.room.NE_A, xi.nyzul.room.NE_B, xi.nyzul.room.NE_D, xi.nyzul.room.NE_E, xi.nyzul.room.NE_F, xi.nyzul.room.NE_G },
        runeOfTransferPos = { x = 460, y = 0, z = 469 },
        DoorsToOpen       = { ID.npc.DOOR_OFFSET + 23, ID.npc.DOOR_OFFSET + 24, ID.npc.DOOR_OFFSET + 25, ID.npc.DOOR_OFFSET + 26 }
    }
    [xi.nyzul.layout.SOUTH_1] = -- North section
    {
        roomCollection    = { xi.nyzul.room.SOUTH_A, xi.nyzul.room.SOUTH_B, xi.nyzul.room.SOUTH_C, xi.nyzul.room.SOUTH_D, xi.nyzul.room.SOUTH_E, xi.nyzul.room.SOUTH_H },
        runeOfTransferPos = { x = 60, y = 0, z = -300 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 35, ID.npc.DOOR_OFFSET + 36 }
    },
    [xi.nyzul.layout.SOUTH_2] = -- South Section
    {
        roomCollection    = { xi.nyzul.room.SOUTH_G, xi.nyzul.room.SOUTH_I, xi.nyzul.room.SOUTH_J, xi.nyzul.room.SOUTH_K, xi.nyzul.room.SOUTH_L, xi.nyzul.room.SOUTH_M },
        runeOfTransferPos = { x = 20, y = 0, z = -420 }, -- south of G
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 27, ID.npc.DOOR_OFFSET + 28, ID.npc.DOOR_OFFSET + 32 }
    },
    [xi.nyzul.layout.SOUTH_3] = -- East Section plus north
    {
        roomCollection    = { xi.nyzul.room.SOUTH_C, xi.nyzul.room.SOUTH_D, xi.nyzul.room.SOUTH_E, xi.nyzul.room.SOUTH_G, xi.nyzul.room.SOUTH_H, xi.nyzul.room.SOUTH_I },
        runeOfTransferPos = { x = 60, y = 0, z = -460 }, -- south of I
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 30, ID.npc.DOOR_OFFSET + 32, ID.npc.DOOR_OFFSET + 33, ID.npc.DOOR_OFFSET + 36 }
    },
    [xi.nyzul.layout.SOUTH_4] = -- South Eight starting in SOUTH_G
    {
        roomCollection    = { xi.nyzul.room.SOUTH_E, xi.nyzul.room.SOUTH_H, xi.nyzul.room.SOUTH_I, xi.nyzul.room.SOUTH_J, xi.nyzul.room.SOUTH_K, xi.nyzul.room.SOUTH_L, xi.nyzul.room.SOUTH_M },
        runeOfTransferPos = { x = 20, y = 0, z = -371 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 27, ID.npc.DOOR_OFFSET + 28, ID.npc.DOOR_OFFSET + 30, ID.npc.DOOR_OFFSET + 32, ID.npc.DOOR_OFFSET + 33 }
    },
    [xi.nyzul.layout.SOUTH_5] = -- North Eight starting in SOUTH_G
    {
        roomCollection    = { xi.nyzul.room.SOUTH_A, xi.nyzul.room.SOUTH_B, xi.nyzul.room.SOUTH_C, xi.nyzul.room.SOUTH_D, xi.nyzul.room.SOUTH_E, xi.nyzul.room.SOUTH_H, xi.nyzul.room.SOUTH_I },
        runeOfTransferPos = { x = 29, y = 0, z = -371 },
        DoorsToOpen       = { ID.npc.DOOR_OFFSET + 30, ID.npc.DOOR_OFFSET + 32, ID.npc.DOOR_OFFSET + 33, ID.npc.DOOR_OFFSET + 35, ID.npc.DOOR_OFFSET + 36 }
    },
    [xi.nyzul.layout.SOUTH_6] = -- North East starting in SOUTH_C
    {
        roomCollection    = { xi.nyzul.room.SOUTH_A, xi.nyzul.room.SOUTH_B, xi.nyzul.room.SOUTH_D, xi.nyzul.room.SOUTH_E, xi.nyzul.room.SOUTH_H, xi.nyzul.room.SOUTH_I },
        runeOfTransferPos = { x = -20, y = 0, z = -300 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 30, ID.npc.DOOR_OFFSET + 35, ID.npc.DOOR_OFFSET + 36 }
    }
    [xi.nyzul.layout.FLOOR_CENTRAL_1] = -- North section starting east of CENTRAL_A
    {
        roomCollection    = { xi.nyzul.room.CENTRAL_A, xi.nyzul.room.CENTRAL_B, xi.nyzul.room.CENTRAL_D, xi.nyzul.room.CENTRAL_E, xi.nyzul.room.CENTRAL_Q, xi.nyzul.room.CENTRAL_R },
        runeOfTransferPos = { x = 20, y = -4, z = 180 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 47, ID.npc.DOOR_OFFSET + 48 }
    },
    [xi.nyzul.layout.FLOOR_CENTRAL_2] = -- West, starting north of CENTRAL_G
    {
        roomCollection    = { xi.nyzul.room.CENTRAL_C, xi.nyzul.room.CENTRAL_G, xi.nyzul.room.CENTRAL_H, xi.nyzul.room.CENTRAL_K, xi.nyzul.room.CENTRAL_P, xi.nyzul.room.CENTRAL_S },
        runeOfTransferPos = { x = -100, y = 0, z = 100 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 39, ID.npc.DOOR_OFFSET + 42, ID.npc.DOOR_OFFSET + 44 }
    },
    [xi.nyzul.layout.FLOOR_CENTRAL_3] = -- East starting south of CENTRAL_J
    {
        roomCollection    = { xi.nyzul.room.CENTRAL_D, xi.nyzul.room.CENTRAL_E, xi.nyzul.room.CENTRAL_F, xi.nyzul.room.CENTRAL_I, xi.nyzul.room.CENTRAL_J, xi.nyzul.room.CENTRAL_N },
        runeOfTransferPos = { x = 100, y = 0, z = 20 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 45 }
    },
    [xi.nyzul.layout.FLOOR_CENTRAL_4] = -- South/East - starts in CENTRAL_T
    {
        roomCollection    = { xi.nyzul.room.CENTRAL_F, xi.nyzul.room.CENTRAL_I, xi.nyzul.room.CENTRAL_J, xi.nyzul.room.CENTRAL_L, xi.nyzul.room.CENTRAL_M, xi.nyzul.room.CENTRAL_N, xi.nyzul.room.CENTRAL_P, xi.nyzul.room.CENTRAL_S },
        runeOfTransferPos = { x = 20, y = -2, z = -20.25 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 38, ID.npc.DOOR_OFFSET + 40, ID.npc.DOOR_OFFSET + 41 }
    },
    [xi.nyzul.layout.FLOOR_CENTRAL_5] = -- East side reverse C, starts in CENTRAL_J
    {
        roomCollection    = { xi.nyzul.room.CENTRAL_D, xi.nyzul.room.CENTRAL_E, xi.nyzul.room.CENTRAL_F, xi.nyzul.room.CENTRAL_I, xi.nyzul.room.CENTRAL_L, xi.nyzul.room.CENTRAL_M, xi.nyzul.room.CENTRAL_N },
        runeOfTransferPos = { x = 95.5, y = 0, z = 60 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 41, ID.npc.DOOR_OFFSET + 45 }
    },
    [xi.nyzul.layout.FLOOR_CENTRAL_6] = -- North/West starting in CENTRAL_Q
    {
        roomCollection    = { xi.nyzul.room.CENTRAL_A, xi.nyzul.room.CENTRAL_B, xi.nyzul.room.CENTRAL_C, xi.nyzul.room.CENTRAL_G, xi.nyzul.room.CENTRAL_H, xi.nyzul.room.CENTRAL_K, xi.nyzul.room.CENTRAL_R },
        runeOfTransferPos = { x = -60, y = -2, z = 140.25 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 43, ID.npc.DOOR_OFFSET + 46, ID.npc.DOOR_OFFSET + 48 }
    }
    [xi.nyzul.layout.FLOOR_SW_1] = -- North
    {
        roomCollection    = { xi.nyzul.room.SW_A, xi.nyzul.room.SW_B, xi.nyzul.room.SW_C, xi.nyzul.room.SW_E, xi.nyzul.room.SW_F, xi.nyzul.room.SW_G, xi.nyzul.room.SW_H, xi.nyzul.room.SW_ZC },
        runeOfTransferPos = { x = -460, y = -2, z = -299.75 },
        doorsToOpen       = {}
    },
    [xi.nyzul.layout.FLOOR_SW_2] = -- West Open starting in SW_J
    {
        roomCollection    = { xi.nyzul.room.SW_I, xi.nyzul.room.SW_L, xi.nyzul.room.SW_M, xi.nyzul.room.SW_N, xi.nyzul.room.SW_R, xi.nyzul.room.SW_S },
        runeOfTransferPos = { x = -446.5, y = 0, z = -344.5 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 52, ID.npc.DOOR_OFFSET + 58 }
    },
    [xi.nyzul.layout.FLOOR_SW_3] = -- South
    {
        roomCollection    = { xi.nyzul.room.SW_U, xi.nyzul.room.SW_V, xi.nyzul.room.SW_X, xi.nyzul.room.SW_Y, xi.nyzul.room.SW_Z, xi.nyzul.room.SW_ZA, xi.nyzul.room.SW_ZB, xi.nyzul.room.SW_ZD },
        runeOfTransferPos = { x = -540, y = -4, z = -580 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 51 }
    },
    [xi.nyzul.layout.FLOOR_SW_4] = -- Central and South
    {
        roomCollection    = { xi.nyzul.room.SW_I, xi.nyzul.room.SW_J, xi.nyzul.room.SW_N, xi.nyzul.room.SW_S, xi.nyzul.room.SW_U, xi.nyzul.room.SW_V, xi.nyzul.room.SW_X, xi.nyzul.room.SW_Y },
        runeOfTransferPos = { x = -340, y = 0, z = -500 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 53 }
    },
    [xi.nyzul.layout.FLOOR_SW_5] = -- West Closed starting in SW_N
    {
        roomCollection    = { xi.nyzul.room.SW_I, xi.nyzul.room.SW_J, xi.nyzul.room.SW_L, xi.nyzul.room.SW_M, xi.nyzul.room.SW_R, xi.nyzul.room.SW_S },
        runeOfTransferPos = { x = -460, y = 0, z = -380 },
        doorsToOpen       = { ID.npc.DOOR_OFFSET + 58 }
    },
    [xi.nyzul.layout.FLOOR_SW_6] = -- North starting in SW_ZC
    {
        roomCollection    = { xi.nyzul.room.SW_A, xi.nyzul.room.SW_B, xi.nyzul.room.SW_C, xi.nyzul.room.SW_E, xi.nyzul.room.SW_F, xi.nyzul.room.SW_G, xi.nyzul.room.SW_H },
        runeOfTransferPos = { x = -420.25, y = -2, z =-220 },
        doorsToOpen       = {}
    }
}

xi.nyzul.data.mobsByType =
{
    AQUANS = {
        Greatclaw = {17092631, 17092632, 17092633, 17092634, 17092635, 17092636},
        Stygian_Pugil = {17092637, 17092638, 17092639, 17092640},
        Kulshedra = {17092641, 17092642},
    },
    AMORPHS_1 = {
        Bouncing_Ball = {17092643, 17092644, 17092645},
        Thousand_Eyes = {17092646, 17092647, 17092648},
        Mousse = {17092649, 17092650, 17092651, 17092652},
        Black_Pudding = {17092653, 17092654},
    },
    ARCANA_1 = {
        Killing_Weapon = {17092655, 17092656},
        Ominous_Weapon = {17092657, 17092658},
        Magic_Flagon = {17092659, 17092660},
        Friars_Lantern = {17092661, 17092662, 17092665, 17092666},
        Sweeping_Cluster = {17092663, 17092664},
    },
    UNDEAD = {
        Garm = {17092667, 17092668, 17092669},
        Tainted_Flesh = {17092670, 17092671, 17092672},
        Draugar_Blm = {17092673, 17092674},
        Draugar_Thf = {17092675, 17092676},
        Bhoot = {17092677, 17092678},
    },
    VERMIN = {
        Carmine_Eruca = {17092679, 17092680, 17092681},
        Spinner = {17092682, 17092683, 17092684},
        Wamouracampa = {17092685, 17092686, 17092687, 17092688},
        Wamoura = {17092689, 17092690},
    },
    DEMONS = {
        Imp = {17092691, 17092692, 17092693, 17092694, 17092695, 17092696, 17092697, 17092698, 17092699, 17092700},
        Psycheflayer = {17092701, 17092702},
    },
    DRAGONS = {
        Puk = {17092703, 17092704, 17092705, 17092706, 17092707, 17092708, 17092709, 17092710, 17092711, 17092712},
        Wyvern = {17092713, 17092714},
    },
    BIRDS = {
        Marsh_Murre = {17092715, 17092716, 17092717},
        Lesser_Colibri = {17092718, 17092719, 17092720},
        Ziz = {17092721, 17092722, 17092723, 17092724},
        Peryton = {17092725, 17092726},
    },
    BEASTS = {
        Wild_Karakul = {17092727, 17092728, 17092729},
        Wajaom_Tiger = {17092730, 17092731, 17092732},
        Manticore = {17092733, 17092734, 17092735, 17092736},
        Marid = {17092737, 17092738},
    },
    PLANTOIDS = {
        Death_Cap = {17092739, 17092740, 17092741},
        Puktrap = {17092742, 17092743, 17092744},
        Leshy = {17092745, 17092746, 17092747, 17092748},
        Ameretat = {17092749, 17092750},
    },
    LIZARDS = {
        Sand_Lizard = {17092751, 17092752, 17092753},
        Deinonychus = {17092754, 17092755, 17092756},
        Bull_Bugard = {17092757, 17092758, 17092759, 17092760},
        Wivre = {17092761, 17092762},
    },
    AMORPHS_2 = {
        Bouncing_Ball = {17092763, 17092764, 17092765, 17092766, 17092767},
        Thousand_Eyes = {17092768, 17092769, 17092770, 17092771, 17092772},
        Mousse = {17092773, 17092774},
    },
    MIXED_1 = {
        Peryton = {17092775, 17092776, 17092777, 17092778, 17092779, 17092780, 17092781, 17092782, 17092783, 17092784},
        Mousse = {17092785, 17092786},
    },
    MIXED_2 = {
        Draugar_Blm = {17092787, 17092788, 17092789, 17092790, 17092791},
        Draugar_Thf = {17092792, 17092793, 17092794, 17092795, 17092796},
        Mousse = {17092797, 17092798},
    },
    AMORPHS_3 = {
        Mousse = {17092799, 17092800, 17092801, 17092802, 17092803, 17092804},
        Black_Pudding = {17092805, 17092806, 17092807, 17092808, 17092809, 17092810},
    },
    ARCANA_2 = {
        Killing_Weapon = {17092811, 17092812, 17092813},
        Ominous_Weapon = {17092814, 17092815, 17092816},
        Magic_Flagon = {17092817, 17092818, 17092819, 17092820, 17092821, 17092822},
    },
    RAMPARTS = {
        Archaic_Rampart = {17092629, 17092630}, -- one per floor, alternate like runes of transfer
    },
    DAHAK = {
        Dahak = {17092823},
    },
    IMPS = {
        Heraldic_Imp = {17092969, 17092970, 17092971, 17092972, 17092973},
    },
    SOULFLAYERS = {
        Psycheflayer = {17092974, 17092975, 17092976, 17092977, 17092978},
    },
    POROGGOS = {
        Poroggo_Gent = {17092979, 17092980, 17092981, 17092982, 17092983},
    },
    PUDDINGS = {
        Ebony_Pudding = {17092984, 17092985, 17092986, 17092987, 17092988},
    },
    QIQIRN = {
        Qiqirn_Treasure_Hunter = {17092989, 17092990},
        Qiqirn_Archaeologist = {17092991, 17092992, 17092993},
    },
    CHARIOTS = {
        Racing_Chariot = {17092994, 17092995, 17092996, 17092997, 17092998},
    },
    LEADERS = { -- 17092962 ommitted - its a Qiqirn_Mine
        Leaders = {17092944, 17092945, 17092946, 17092947, 17092948, 17092949, 17092950, 17092951, 17092952, 17092953, 17092954, 17092955, 17092956, 17092957, 17092958, 17092959, 17092960, 17092961, 17092963, 17092964, 17092965, 17092966, 17092967, 17092968},
    },
    GEARS = { -- there are a lot more gears in the database. 15 more Gear and 5 more Gears.  I dont know why and at this point I'm too afraid to ask
        Archaic_Gear = {17092914, 17092915, 17092916, 17092917, 17092918},
        Archaic_Gears = {17092919, 17092920, 17092921, 17092922, 17092923},
    },
    NMS_01_19 = {
        NotoriusMonsters = {17092824, 17092825, 17092826, 17092827, 17092828, 17092829, 17092830, 17092831, 17092832, 17092833, 17092834, 17092835, 17092836, 17092837, 17092838, 17092839, 17092840, 17092841},
    },
    NMS_21_39 = {
        NotoriusMonsters = {17092842, 17092843, 17092844, 17092845, 17092846, 17092847, 17092848, 17092849, 17092850, 17092851, 17092852, 17092853, 17092854, 17092855, 17092856, 17092857, 17092858, 17092859},
    },
    NMS_41_59 = {
        NotoriusMonsters = {17092860, 17092861, 17092862, 17092863, 17092864, 17092865, 17092866, 17092867, 17092868, 17092869, 17092870, 17092871, 17092872, 17092873, 17092874, 17092875, 17092876, 17092877},
    },
    NMS_61_79 = {
        NotoriusMonsters = {17092878, 17092879, 17092880, 17092881, 17092882, 17092883, 17092884, 17092885, 17092886, 17092887, 17092888, 17092889, 17092890, 17092891, 17092892, 17092893, 17092894, 17092895},
    },
    NMS_81_99 = {
        NotoriusMonsters = {17092896, 17092897, 17092898, 17092899, 17092900, 17092901, 17092902, 17092903, 17092904, 17092905, 17092906, 17092907, 17092908, 17092909, 17092910, 17092911, 17092912, 17092913},
    },
    BOSSES_20_40 = {
        Bosses = {17092999, 17093000, 17093001},
    },
    BOSSES_60_100 = {
        Bosses = {17093002, 17093003, 17093004},
    },
}

xi.nyzul.data.npcLists = {
    Lamps = {17093332, 17093333, 17093334, 17093335, 17093336},
    Armoury_Crates = {17092609, 17092610, 17092611, 17092612, 17092613, 17092614, 17092615, 17092616, 17092617, 17092618, 17092619, 17092620, 17092621, 17092622, 17092623},
    Armoury_Crates_For_NMs = {17092624, 17092625, 17092626, 17092627, 17092628}
}

-- Note that floor layouts do not include the starting floor (entrance to Nyzul).
-- Lamps and Mobs should not spawn in the same room as a Rune of Transfer - therefore when the RuneOfTransferSpawnPoint is within a room, exclude that room from the roomCollection       list

