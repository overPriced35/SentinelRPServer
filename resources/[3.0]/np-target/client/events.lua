Citizen.CreateThread(function()
    -------- Police --------

    AddBoxZone("PoliceDuty", vector3(441.79, -982.07, 30.69), 0.4, 0.7, {
        name="PoliceDuty",
        heading=91,
        debugPoly=false,
        minZ=30.79,
        maxZ=30.99
        }, {
            options = {
                {
                    event = "police:signon",
                    icon = "far fa-clipboard",
                    label = "Sign On",
                },
                {
                    event = "police:signoff",
                    icon = "far fa-clipboard",
                    label = "Sign Off",
                },
            },
            distance = 1.5
        })

    AddBoxZone("PDArmory", vector3(481.49, -994.94, 30.69), 1, 3.2, {
	name="PDArmory",
	heading=0,
	debugPoly=false,
    minZ=27.54,
    maxZ=31.54
    }, {
        options = {
            {
                event = "police:openArmoury",
                icon = "far fa-clipboard",
                label = "PD Armory",
            },
        },
        distance = 3.5
    })     

    AddBoxZone("TrashLocker", vector3(474.2585, -991.0026, 26.27328), 1, 3.2, {
        name="TrashLocker",
        heading=0,
        debugPoly=false,
        minZ=20.54,
        maxZ=29.54
        }, {
            options = {
                {
                    event = "police:openTrash",
                    icon = "far fa-clipboard",
                    label = "Trash Locker",
                },
            },
            distance = 3.5
        })     

    AddBoxZone("personallocker", vector3(447.66, -997.68, 30.68), 1, 5.2, {
	    name="personallocker",
        heading=0,
        debugPoly=false,
        minZ=28.54,
        maxZ=35.54
    }, {
        options = {
            {
                event = "police:openPersonalLocker",
                icon = "fas fa-search",
                label = "Personal Locker",
            },
        },
        distance = 1.5
    })

    -------- Check In --------

    AddCircleZone("checkin", vector3(307.53, -595.28, 43.08), 0.33, {
	name="checkin",
    debugPoly=false,
    useZ=true
    }, {
        options = {
            {
                event = "np-checkin:doc",
                icon = "far fa-clipboard",
                label = "Check In",
            },
            {
                event = "np-page:doctor",
                icon = "fas fa-pager",
                label = "Page Doctor",
            },
        },
        distance = 1.5
    })

    -------- ATMS --------  

    local atms = {
        -1126237515,
        506770882,
        -870868698,
        150237004,
        -239124254,
        -1364697528,  
    }
    AddTargetModel(atms, {
        options = {
            {
                event = "bank:checkATM",
                icon = "fas fa-credit-card",
                label = "Use ATM",
            },
        },
        distance = 1.5
    })


    -------- Weapon Shop --------
    AddCircleZone("weapon1", vector3(20.49, -1105.36, 29.6), 1.35, {
    name="weapon1",
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "np-weapon:shop",
                icon = "fas fa-wrench",
                label = "Purchase Weapons",
            },
        },
        distance = 1.5
    })
    AddCircleZone("weapon2", vector3(812.28, -2158.45, 29.42), 1.35, {
    name="weapon2",
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "np-weapon:shop",
                icon = "fas fa-wrench",
                label = "Purchase Weapons",
            },
        },
        distance = 1.5
    })
    AddCircleZone("weapon3", vector3(844.47, -1034.7, 28.09), 1.35, {
    name="weapon3",
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "np-weapon:shop",
                icon = "fas fa-wrench",
                label = "Purchase Weapons",
            },
        },
        distance = 1.5
    })
    AddCircleZone("weapon4", vector3(253.94, -48.42, 69.74), 1.35, {
    name="weapon4",
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "np-weapon:shop",
                icon = "fas fa-wrench",
                label = "Purchase Weapons",
            },
        },
        distance = 1.5
    })
    AddCircleZone("weapon5", vector3(-1304.19, -392.54, 36.5), 1.35, {
    name="weapon5",
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "np-weapon:shop",
                icon = "fas fa-wrench",
                label = "Purchase Weapons",
            },
        },
        distance = 1.5
    })
    AddCircleZone("weapon6", vector3(-3173.72, 1086.28, 20.64), 1.35, {
    name="weapon6",
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "np-weapon:shop",
                icon = "fas fa-wrench",
                label = "Purchase Weapons",
            },
        },
        distance = 1.5
    })
    AddCircleZone("weapon7", vector3(1691.36, 3759.04, 34.56), 1.35, {
    name="weapon7",
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "np-weapon:shop",
                icon = "fas fa-wrench",
                label = "Purchase Weapons",
            },
        },
        distance = 1.5
    })
    AddCircleZone("weapon8", vector3(-332.65, 6083.1, 31.3), 1.35, {
    name="weapon8",
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "np-weapon:shop",
                icon = "fas fa-wrench",
                label = "Purchase Weapons",
            },
        },
        distance = 1.5
    })
    AddCircleZone("weapon9", vector3(2569.97, 293.22, 108.63), 1.35, {
    name="weapon9",
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "np-weapon:shop",
                icon = "fas fa-wrench",
                label = "Purchase Weapons",
            },
        },
        distance = 1.5
    })
    AddCircleZone("weapon10", vector3(-664.24, -934.2, 21.73), 1.35, {
    name="weapon10",
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "np-weapon:shop",
                icon = "fas fa-wrench",
                label = "Purchase Weapons",
            },
        },
        distance = 1.5
    })
    AddCircleZone("weapon11", vector3(-1120.08, 2697.97, 18.45), 1.35, {
    name="weapon11",
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "np-weapon:shop",
                icon = "fas fa-wrench",
                label = "Purchase Weapons",
            },
        },
        distance = 1.5
    })

    -------- Prison --------
    AddCircleZone("prison1", vector3(1778.73, 2558.14, 46.12), 0.81,{
    name="prison1",
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "np:make:slushy",
                icon = "fas fa-ice-cream",
                label = "Make Slushy",
            },
        },
        distance = 1.5
    })
    AddCircleZone("prison2", vector3(1783.13, 2558.37, 45.67), 3,{
    name="prison2",
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "np:access:jailfood",
                icon = "fas fa-bread-slice",
                label = "Prison Food",
            },
        },
        distance = 1.5
    })
    AddCircleZone("reclaim", vector3(1842.0, 2579.54, 46.01), 2.81, {
    name="reclaim",
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "np:reclaim:possessions",
                icon = "fas fa-undo",
                label = "Reclaim Possessions",
            },
        },
        distance = 5
    })

-- BurgerShot -- 
AddCircleZone("burgerspickup", vector3(-1193.75, -894.28, 13.99), 0.5,{
    name="burgerspickup",
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "burgershot:pickup",
                icon = "fas fa-search",
                label = "Pickup Order",
            },
        },
        distance = 1.5
    })
    AddCircleZone("burgerspickup2", vector3(-1195.50, -892.5, 13.99), 0.5,{
    name="burgerspickup2",
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "burgershot:pickup2",
                icon = "fas fa-search",
                label = "Pickup Order",
            },
        },
        distance = 1.5
    })
    AddCircleZone("burgershotshelf", vector3(-1197.70, -894.37, 13.99), 0.8, {
    name="burgershotshelf",
    debugPoly=false,
    useZ=true,
    }, {
        options = {
            {
                event = "burgershot:shelf",
                icon = "fas fa-box",
                label = "Shelf",
            },
        },
        distance = 1.5
    })
    AddCircleZone("burgershotdrinks", vector3(-1197.8, -898.4, 13.9), 0.5, {
        name="burgershotdrinks",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "burgershot:drinks",
                    icon = "fas fa-none",
                    label = "Make Soda",
                },
            },
            distance = 1.5
        })
    AddCircleZone("burgershotfood", vector3(-1199.36, -902.45, 13.9), 0.5, {
        name="burgershotfood",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "burgershot:food",
                    icon = "fas fa-bread-slice",
                    label = "Make Food",
                },
            },
            distance = 1.5
        })
    AddCircleZone("burgershotstorage", vector3(-1205.25, -893.76, 14.2), 0.5, {
        name="burgershotstorage",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "burgershot:storage",
                    icon = "fas fa-box",
                    label = "Storage",
                },
            },
            distance = 1.5
        })
    AddCircleZone("burgershotfries", vector3(-1201.74, -899.17, 13.55), 0.5, {
        name="burgershotfries",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "burgershot:fries",
                    icon = "fas fa-box",
                    label = "Fry Fries",
                },
            },
            distance = 1.5
        })
    --CamelTowing--
    AddCircleZone("cameltowingstash", vector3(1187.26, 2635.77, 38.40), 0.5, {
        name="cameltowingstash",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "np-camel:stash",
                    icon = "fas fa-box",
                    label = "Storage",
                },
            },
            distance = 1.5
        })
    AddCircleZone("cameltowingcrafting", vector3(1174.86, 2635.20, 37.75), 0.5, {
        name="cameltowingcrafting",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "np-camel:crafting",
                    icon = "fas fa-wrench",
                    label = "Crafting",
                },
            },
            distance = 1.5
        })
            --------  General Stores -------- 
    AddCircleZone("Store1", vector3(25.08, -1347.41, 29.5), 3.0, {
        name="Store1",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store1s", vector3(25.11, -1345.0, 29.5), 3.0, {
        name="Store1s",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store2", vector3(-706.7, -915.54, 19.22), 3.0, {
        name="Store2",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store2s", vector3(-706.68, -913.55, 19.22), 3.0, {
        name="Store2s",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store3", vector3(-1222.31, -907.74, 12.33), 3.0, {
        name="Store3",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store4", vector3(-47.22, -1757.5, 29.42), 3.0, {
        name="Store4",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store4s", vector3(-48.42, -1759.02, 29.42), 3.0, {
        name="Store4s",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store5", vector3(1134.9, -982.46, 46.42), 3.0, {
        name="Store5",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Use",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store6", vector3(1164.08, -322.73, 69.21), 3.0, {
        name="Store6",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store6s", vector3(1164.49, -324.74, 69.21), 3.0, {
        name="Store6s",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store7", vector3(373.12, 326.21, 103.57), 3.0, {
        name="Store7",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store7s", vector3(373.62, 328.58, 103.57), 3.0, {
        name="Store7s",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store8", vector3(-1820.68, 793.82, 138.14), 3.0, {
        name="Store8",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store8s", vector3(-1819.29, 792.38, 138.14), 3.0, {
        name="Store8s",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store9", vector3(-2967.1, 390.97, 15.04), 3.0, {
        name="Store9",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store10", vector3(-3039.1, 585.11, 7.91), 3.0, {
        name="Store10",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store10s", vector3(-3041.36, 584.35, 7.91), 3.0, {
        name="Store10s",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store11", vector3(-3242.17, 1000.57, 12.83), 3.0, {
        name="Store11",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store11s", vector3(-3244.56, 1000.69, 12.83), 3.0, {
        name="Store11s",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
    
        AddCircleZone("Store12", vector3(2557.28, 381.38, 108.62), 3.0, {
        name="Store12",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store12s", vector3(2554.88, 381.49, 108.62), 3.0, {
        name="Store12s",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store13", vector3(548.46, 2671.31, 42.16), 3.0, {
        name="Store13",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store13s", vector3(548.81, 2668.96, 42.16), 3.0, {
        name="Store13s",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store14", vector3(1165.89, 2710.13, 38.16), 3.0, {
        name="Store14",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store15", vector3(1393.04, 3605.85, 34.98), 3.0, {
        name="Store15",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store16", vector3(1960.62, 3740.19, 32.34), 3.0, {
        name="Store16",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store16s", vector3(1959.34, 3742.35, 32.34), 3.0, {
        name="Store16s",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store17", vector3(1696.83, 4924.53, 42.06), 3.0, {
        name="Store17",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store17s", vector3(1698.46, 4923.44, 42.06), 3.0, {
        name="Store17s",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store18", vector3(1728.38, 6414.87, 35.04), 3.0, {
        name="Store18",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store18s", vector3(1729.47, 6417.11, 35.04), 3.0, {
        name="Store18s",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "shop:general",
                    icon = "fas fa-shopping-basket",
                    label = "Purchase Goods",
                },
            },
            distance = 1.5
        })
        AddCircleZone("Store19", vector3(2678.02, 3279.45, 55.24), 3.0, {
            name="Store19",
            debugPoly=false,
            useZ=true,
            }, {
                options = {
                    {
                        event = "shop:general",
                        icon = "fas fa-shopping-basket",
                        label = "Purchase Goods",
                    },
                },
                distance = 1.5
            })
        -- Iatrias restraunt
        AddCircleZone("microwaveiatria", vector3(143.8067, -1054.761, 22.96024), 1.0, {
            name="microwaveiatria",
            debugPoly=false,
            useZ=true,
            }, {
                options = {
                    {
                        event = "np-latticepie",
                        icon = "fas fa-shopping-basket",
                        label = "Lattice Topped Pie Slice",
                    },
                    {
                        event = "np-brownie",
                        icon = "fas fa-shopping-basket",
                        label = "Brownie",
                    },
                    {
                        event = "np-doughnut",
                        icon = "fas fa-shopping-basket",
                        label = "Glazed Doughnut",
                    },
                    {
                        event = "np-macaroon",
                        icon = "fas fa-shopping-basket",
                        label = "Coconut Macaroon",
                    },
                },
                distance = 1.5
            })

            AddCircleZone("boardiatria", vector3(148.3783, -1054.37, 22.96024), 1.0, {
                name="boardiatria",
                debugPoly=false,
                useZ=true,
                }, {
                    options = {
                        {
                            event = "np-thumbprintcookie",
                            icon = "fas fa-shopping-basket",
                            label = "Thumbprint Cookie with Jam Filling",
                        },
                        {
                            event = "np-pretzel",
                            icon = "fas fa-shopping-basket",
                            label = "Pretzel",
                        },
                        {
                            event = "np-eclair",
                            icon = "fas fa-shopping-basket",
                            label = "Eclair",
                        },
                        {
                            event = "np-creampuff",
                            icon = "fas fa-shopping-basket",
                            label = "Cream Puff",
                        },
                        {
                            event = "np-strudel",
                            icon = "fas fa-shopping-basket",
                            label = "Strudel",
                        },
                    },
                    distance = 1.5
                })

                AddCircleZone("cookingiatria", vector3(146.6336, -1055.103, 22.96024), 1.0, {
                    name="cookingiatria",
                    debugPoly=false,
                    useZ=true,
                    }, {
                        options = {
                            {
                                event = "np-cinnanomroll",
                                icon = "fas fa-shopping-basket",
                                label = "Cinnamon Roll",
                            },
                            {
                                event = "np-raspberryslice",
                                icon = "fas fa-shopping-basket",
                                label = "Raspberry Roulade Slice",
                            },
                        },
                        distance = 1.5
                    })

                    AddCircleZone("cookingiatria2", vector3(142.8238, -1057.519, 22.96023), 1.0, {
                        name="cookingiatria2",
                        debugPoly=false,
                        useZ=true,
                        }, {
                            options = {
                                {
                                    event = "np-souffle",
                                    icon = "fas fa-shopping-basket",
                                    label = "Souffle",
                                },
                            },
                            distance = 1.5
                        }) 
                        AddCircleZone("iatriastoragemain", vector3(134.5371, -1060.483, 22.96023), 1.0, {
                            name="iatriastoragemain",
                            debugPoly=false,
                            useZ=true,
                            }, {
                                options = {
                                    {
                                        event = "np-bakerystoragemain",
                                        icon = "fas fa-shopping-basket",
                                        label = "Open Storage",
                                    },
                                },
                                distance = 1.5
                            })     
                            AddCircleZone("iatriacollectionbottom", vector3(132.2972, -1054.074, 23.62022), 1.0, {
                                name="iatriacollectionbottom",
                                debugPoly=false,
                                useZ=true,
                                }, {
                                    options = {
                                        {
                                            event = "np-collectbottom",
                                            icon = "fas fa-shopping-basket",
                                            label = "Collect Order",
                                        },
                                    },
                                    distance = 1.5
                                })         
                                AddCircleZone("iatriawinecollection", vector3(126.0708, -1047.941, 22.96023), 1.0, {
                                    name="iatriawinecollection",
                                    debugPoly=false,
                                    useZ=true,
                                    }, {
                                        options = {
                                            {
                                                event = "np-collectdrink",
                                                icon = "fas fa-shopping-basket",
                                                label = "Access Drink Storage",
                                            },
                                        },
                                        distance = 1.5
                                    })        
                                    AddCircleZone("iatriacollectorderup", vector3(124.5866, -1033.721, 29.27714), 1.0, {
                                        name="iatriacollectorderup",
                                        debugPoly=false,
                                        useZ=true,
                                        }, {
                                            options = {
                                                {
                                                    event = "np-graborder",
                                                    icon = "fas fa-shopping-basket",
                                                    label = "Collect Order",
                                                },
                                            },
                                            distance = 1.5
                                        })   
                                        AddCircleZone("iatriadrinkmake", vector3(125.2038, -1038.269, 29.27709), 1.0, {
                                            name="iatriadrinkmake",
                                            debugPoly=false,
                                            useZ=true,
                                            }, {
                                                options = {
                                                    {
                                                        event = "np-obtaindrinkiatria",
                                                        icon = "fas fa-shopping-basket",
                                                        label = "Grab a Drink",
                                                    },
                                                },
                                                distance = 1.5
                                            })                                    

        
        --TunerShop--
        AddCircleZone("tunercrafting", vector3(948.13, -969.31, 39.71), 0.8, {
            name="tunercrafting",
            debugPoly=false,
            useZ=true,
            }, {
                options = {
                    {
                        event = "tuner:crafting",
                        icon = "fas fa-wrench",
                        label = "Crafting",
                    },
                },
                distance = 1.5
            })
        AddCircleZone("tunermaterials", vector3(955.81, -958.27, 40.2), 0.8, {
            name="tunermaterials",
            debugPoly=false,
            useZ=true,
            }, {
                options = {
                    {
                        event = "tuner:materials",
                        icon = "fas fa-wrench",
                        label = "Access Materials",
                    },
                },
                distance = 1.5
            })
        AddCircleZone("tunerstash", vector3(949.31, -966.40, 39.50), 0.8, {
            name="tunerstash",
            debugPoly=false,
            useZ=true,
            }, {
                options = {
                    {
                        event = "tuner:stash",
                        icon = "fas fa-box",
                        label = "Tuner Stash",
                    },
                },
                distance = 1.5
            })

            --Vending Machines--
        local vending = {
            992069095,
            -654402915,
        }
        AddTargetModel(vending, {
            options = {
                {
                    event = "shop:open",
                    icon = "fas fa-shopping-basket",
                    label = "Vending Machine",
                },
            },
            distance = 1.5
        })

        --Vanilla Unicorn--
        AddCircleZone("drinksbar", vector3(129.92, -1281.3, 28.2), 0.9, {
            name="drinksbar",
            debugPoly=false,
            useZ=true,
            }, {
                options = {
                    {
                        event = "drinks:bar",
                        icon = "fas fa-box",
                        label = "Drinks Bar",
                    },
                },
                distance = 1.5
            })

            --DriftSchool--
        AddCircleZone("driftstash", vector3(-55.75, -2519.54, 7.40), 0.9, {
            name="driftstash",
            debugPoly=false,
            useZ=true,
            }, {
                options = {
                    {
                        event = "drift:stash",
                        icon = "fas fa-box",
                        label = "Drift Stash",
                    },
                },
                distance = 1.5
            })
        AddCircleZone("tradein", vector3(-113.64, 6471.66, 31.84), 0.9, {
            name="tradein",
            debugPoly=false,
            useZ=true,
            }, {
                options = {
                    {
                        event = "trade:in",
                        icon = "fas fa-credit-card",
                        label = "Trade In",
                    },
                },
                distance = 1.5
            })
            
            --FIB--
        AddCircleZone("fibenter", vector3(176.22, -728.61, 39.40), 0.9, {
            name="fibenter",
            debugPoly=false,
            useZ=true,
            }, {
                options = {
                    {
                        event = "fib:enter",
                        icon = "far fa-clipboard",
                        label = "Use Elevator!",
                    },
                },
                distance = 1.5
            })
        AddCircleZone("fibexit", vector3(136.67, -763.84, 242.15), 0.9, {
            name="fibexit",
            debugPoly=false,
            useZ=true,
            }, {
                options = {
                    {
                        event = "fib:exit",
                        icon = "far fa-clipboard",
                        label = "Use Elevator!",
                    },
                },
                distance = 1.5
            })
        AddCircleZone("fibarmory", vector3(118.35, -728.93, 242.15), 0.9, {
            name="fibarmory",
            debugPoly=false,
            useZ=true,
            }, {
                options = {
                    {
                        event = "fib:armory",
                        icon = "far fa-clipboard",
                        label = "FIB Armory!",
                    },
                },
                distance = 1.5
            })
        AddCircleZone("fibevidence", vector3(143.87, -764.38, 242.15), 0.9, {
            name="fibevidence",
            debugPoly=false,
            useZ=true,
            }, {
                options = {
                    {
                        event = "fib:evidence",
                        icon = "far fa-clipboard",
                        label = "FIB Evidence",
                    },
                },
                distance = 1.5
            })
        
        --Gallery--
        AddCircleZone("gallerystash", vector3(-468.80, 45.21, 46.23), 0.9, {
        name="gallerystash",
        debugPoly=false,
        useZ=true,
        }, {
            options = {
                {
                    event = "gallery:stash",
                    icon = "fas fa-box",
                    label = "Cupboard",
                },
            },
            distance = 1.5
        })
        AddCircleZone("gallerytable", vector3(-422.74, 37.37, 45.43), 0.9, {
            name="gallerytable",
            debugPoly=false,
            useZ=true,
            }, {
                options = {
                    {
                        event = "gallery:table",
                        icon = "fas fa-box",
                        label = "Gem Table",
                    },
                },
                distance = 1.5
            })
        AddCircleZone("tunerstash2", vector3(154.13, -3209.78, 6.09), 0.9, {
            name="tunerstash2",
            debugPoly=false,
            useZ=true,
            }, {
                options = {
                    {
                        event = "tuner:stash2",
                        icon = "fas fa-box",
                        label = "What dis?",
                    },
                },
                distance = 1.5
            })
        end)