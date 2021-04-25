local blips = {
    {id = "casino1", name = "Simones Resort & Casino", color = 5, sprite = 207, x = 925.329, y = 46.152, z = 80.908 },
    {id = "hosp1", name = "Hospital", scale = 0.75, color = 2, sprite = 61, x = 1839.6, y= 3672.93, z= 34.28},
    {id = "hosp2", name = "Hospital", scale = 0.75, color = 2, sprite = 61, x = -247.76, y= 6331.23, z=32.43},
    {id = "hosp3", name = "Hospital", scale = 0.75, color = 2, sprite = 61, x = -449.67, y= -340.83, z= 34.50},
    {id = "hosp4", name = "Hospital", scale = 0.75, color = 2, sprite = 61, x = 357.43, y= -593.36, z= 28.79},
    {id = "hosp5", name = "Hospital", scale = 0.75, color = 2, sprite = 61, x = 295.83, y= -1446.94, z= 29.97},
    {id = "hosp6", name = "Hospital", scale = 0.75, color = 2, sprite = 61, x = -676.98, y= 310.68, z= 83.08},
    {id = "hosp7", name = "Hospital", scale = 0.75, color = 2, sprite = 61, x = 1151.21, y= -1529.62, z= 35.37},
    {id = "hosp8", name = "Hospital", scale = 0.75, color = 2, sprite = 61, x = -874.64, y= -307.71, z= 39.58},
  
    {id = "cloth1", name = "Clothing", scale = 0.6, color = 3, sprite = 73, x = 425.236, y=-806.008, z=29.491},
    {id = "cloth2", name = "Clothing", scale = 0.6, color = 3, sprite = 73, x = -162.658, y=-303.397, z=39.733},
    {id = "cloth3", name = "Clothing", scale = 0.6, color = 3, sprite = 73, x = 75.950, y=-1392.891, z=29.376},
    {id = "cloth4", name = "Clothing", scale = 0.6, color = 3, sprite = 73, x = -822.194, y=-1074.134, z=11.328},
    {id = "cloth5", name = "Clothing", scale = 0.6, color = 3, sprite = 73, x = -1450.711, y=-236.83, z=49.809},
    {id = "cloth6", name = "Clothing", scale = 0.6, color = 3, sprite = 73, x = 4.254, y=6512.813, z=31.877},
    {id = "cloth7", name = "Clothing", scale = 0.6, color = 3, sprite = 73, x = 615.180, y=2762.933, z=44.088},
    {id = "cloth8", name = "Clothing", scale = 0.6, color = 3, sprite = 73, x = 1196.785, y=2709.558, z=38.222},
    {id = "cloth9", name = "Clothing", scale = 0.6, color = 3, sprite = 73, x = -3171.453, y=1043.857, z=20.863},
    {id = "cloth10", name = "Clothing", scale = 0.6, color = 3, sprite = 73, x = -1100.959, y=2710.211, z=19.107},
    {id = "cloth11", name = "Clothing", scale = 0.6, color = 3, sprite = 73, x = -1192.9453125, y=-772.62481689453, z=17.3254737854},
    {id = "cloth12", name = "Clothing", scale = 0.6, color = 3, sprite = 73, x = -707.33416748047, y=-155.07914733887, z=37.415187835693},
    {id = "cloth13", name = "Clothing", scale = 0.6, color = 3, sprite = 73, x = 1683.45667, y=4823.17725, z=42.1631294},
    {id = "cloth14", name = "Clothing", scale = 0.6, color = 3, sprite = 73, x =121.76, y=-224.6, z=54.56},
    {id = "cloth15", name = "Clothing", scale = 0.6, color = 3, sprite = 73, x = -1207.5267333984, y=-1456.9530029297, z=4.3763856887817},

    {id = "recycling", name = "Recycling plant", color = 17, sprite = 304, x = 746.75518798828, y=-1400.094482421, z=26.570837020874},
--    {id = "Smelting", name = "Smelting", color = 17, sprite = 52, x = 1098.10168457031, y=-1999.86364746094, z=30.3807010650635},

    {id = "bar1", name = "Bahama Mamas", sprite = 93, x = -1388.53430175781, y=-586.615295410156, z=29.2186660766602},

    {id = "pcenter", name = "Payments & Internet Center", scale = 1.3, sprite = 351, color = 17, x=-1081.8293457031, y=-248.12872314453, z=37.763294219971},
    {id = "ttruckjob", name = "Impound Lot", color = 17, sprite = 68, x = 549.47796630859, y = -55.197559356689, z = 71.069190979004},
    {id = "ttruckjob2", name = "Impound Lot", color = 17, sprite = 68, x = 1732.1655273438, y = 3307.6025390625, z = 41.22350692749},
    {id = "ttruckjob3", name = "Impound Lot", color = 17, sprite = 68, x = -195.68403625488, y = 6219.8081054688, z = 31.491077423096},

    {id = "fire1", name = "Fire Station",scale = 0.9, color = 1, sprite = 153, x = 205.30201721191, y = -1651.4327392578, z = 29.803213119507},
    {id = "fire2", name = "Fire Tower",scale = 0.9, color = 1, sprite = 153, x =  -1195.5244140625, y = -1788.2210693359, z = 19.490871429443},

    {id = "fire3", name = "Fire Main",scale = 0.9, color = 1, sprite = 153, x =  1206.3913574219, y = -1473.1184082031, z = 34.859497070313},

    --{id = "gopostal", name = "Go Postal", scale = 0.7, color = 17, sprite = 411, x = 63.463, y = 126.000, z = 79.1902},
    -- {id = "fishingsales", name = "Fish Sales", scale = 0.7, color = 7, sprite = 304, x=-1038.4649658203, y=-1396.7390136719, z=5.5531921386719},
    {id = "fishingsales", name = "Fish Sales", scale = 0.7, color = 3, sprite = 304, x=-1847.46, y=-1191.5, z=14.14},
    {id = "huntingshop", name = "Sporting & Survival", scale = 0.7, color = 3, sprite = 141, x=-675.3189, y=5836.144, z=17.70478},
    {id = "huntingsales", name = "Hunting Sales", scale = 0.7, color = 3, sprite = 442, x=569.32, y= 2796.66, z=14.14},
    {id = "cc", name = "Comedy Club", scale = 0.7, color = 7, sprite = 102, x=-431.235299, y=259.939819, z=82.9778519},
    {id = "bobcatsecurity", name = "Bobcat Security", scale = 0.7, color = 2, sprite = 498, x=880.8951, y=-2258.308, z=32.53486},
    {id = "airshop", name = "Planes & Hoes", scale = 0.7, color = 2, sprite = 307, x=-1621.42, y=-3152.99, z=14.0},
    {id = "boatshop", name = "Boats & Hoes", scale = 0.7, color = 2, sprite = 427, x=-876.42, y=-1324.7, z=1.61},
    {id = "veh_rentals", name = "Vehicle Rentals", scale = 0.5, color = 2, sprite = 326, x=108.77, y=-1088.88, z=29.3},

    {id = "townhallfucktobi", name = "Dennis LaBarre City Hall", scale = 0.7, color = 25, sprite = 438, x=-547.36, y=-200.0, z=38.22},
    
    {id = "Imports", name = "Fast Lane Imports & Towing", scale = 0.7, color = 7, sprite = 326, x=-804.48, y=-224.54, z= 37.23},
    {id = "PDM", name = "Premium Deluxe Motorsports", scale = 0.7, color = 7, sprite = 326, x=-33.737, y=-1102.322, z= 26.422},
    {id = "Tuner", name = "Tuner Shop", scale = 0.7, color = 7, sprite = 326, x=920.73, y= -949.92, z= 39.23},
    {id = "Bicycles", name = "Bicycle Shop", scale = 0.7, color = 7, sprite = 226, x=-1100.69, y= -1702.88, z= 4.38},
    
    {id = 'TaxiRank', name = 'Taxi Rank', scale = 0.7, color = 5, sprite = 56, x = -12.72, y = -143.3, z = 56.26},
    
    {id = 'TowTruckParking', name = 'Choppers Jobs', scale = 0.7, color = 5, sprite = 68, x = 536.48, y = -239.46, z = 49.16},

    {id = 'winery', name = 'The Winery', scale = 0.7, color = 6, sprite = 478, x = -1889.86, y = 2036.54, z = 140.83},

    {id = 'qf', name = 'Quick Fix', scale = 0.7, color = 8, sprite = 478, x = 968.03, y = -126.64, z = 74.37},

    {id = 'HarmonyRepairs', name = 'Harmony Repairs', scale = 0.7, color = 12, sprite = 478, x = 1183.18, y = 2651.66, z = 37.81},

    {id = "repo", name = "Govt Vehicle Repo", scale = 0.7, color = 8, sprite = 147, x = 400.85, y = -1632.37, z = 29.3},

     {id = "burgies", name = "Burger Shot", scale = 0.7, color = 8, sprite = 106, x = -1199.61, y = -899.79, z = 14.0},

    -- {id = "burgies2", name = "Burger Bar", scale = 0.7, color = 8, sprite = 106, x = 282.58, y = -214.76, z = 54.0},

    {id = "di", name = "Driving School", scale = 0.6, color = 44, sprite = 380, x = -37.73983, y= -205.6322, z= 45.78902},
}


AddEventHandler("np-base:playerSessionStarted", function()
    Citizen.CreateThread(function()
        for k,v in ipairs(blips) do
            NPX.BlipManager:CreateBlip(v.id, v)
        end
    end)
end)


