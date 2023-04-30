-- mb
Config = Config or {}

-- distance info = over 200 seems far to me - 200 = like couple blocks -- 150 seems perfect after some testing
Config.Distance = 100 -- distance
Config.UpdateTime = 5 -- check every 5 sec


-- Example Blip 

Config.AllBlips = { -- Docks
  [1] = { 
    Coords = vector3(1100.33, -3050.68, 5.9),
    Blip = { name = 'Blip 1', sprite = 121, size =0.65, color = 2 },
  },
  [2] = { 
    Coords = vector3(1114.33, -3050.57, 5.9),
    Blip = { name = 'Blip 2', sprite = 121, size =0.65, color = 6 },
  },
  [3] = { 
    Coords = vector3(1128.66, -3050.62, 5.9),
    Blip = { name = 'Blip 3', sprite = 121, size =0.65, color = 8 },
  },
  [4] = { 
    Coords = vector3(1142.5, -3050.61, 5.9),
    Blip = { name = 'Blip 4', sprite = 121, size =0.65, color = 11 },
  },

} -- allBlips