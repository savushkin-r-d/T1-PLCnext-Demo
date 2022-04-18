--version  = 1
--Eplanner version = 2022.2.8082.20736
------------------------------------------------------------------------------
PAC_name = 'T1-PLCnext-Demo'
PAC_id = '28204'
------------------------------------------------------------------------------
--Узлы IO
nodes =
    {
        {
        name    = 'A1',
        ntype   = 201, --AXC F 2152
        n       = 1,
        IP      = '192.168.1.10',
        modules =
            {
            }
        },
        {
        name    = 'A100',
        ntype   = 200, --AXL F BK ETH
        n       = 2,
        IP      = '192.168.1.11',
        modules =
            {
             { 2701916 },        --AXL F DI8/1 DO8/1 1H,
             { 2702072 },        --AXL F AI2 AO2 1H,
             { 2701916 },        --AXL F DI8/1 DO8/1 1H,
             { 1027843 },        --AXL F IOL8 2H,
             { 1088132 },        --AXL SE IOL4,
            }
        },
    }
------------------------------------------------------------------------------
--Устройства
devices =
    {
        {
        name    = 'V1',
        descr   = '',
        dtype   = 0,
        subtype = 15, -- V_IOLINK_MIXPROOF
        article = 'AL.9615-4003-06',
        AO =
            {
                {
                node          = 1,
                offset        = 16,
                physical_port = 70,
                logical_port  = 5,
                module_offset = 4
                },
            },
        AI =
            {
                {
                node          = 1,
                offset        = 16,
                physical_port = 70,
                logical_port  = 5,
                module_offset = 4
                },
            },
        par = {1000 --[[P_ON_TIME]], 1 --[[P_FB]] }
        },

        {
        name    = 'LS1',
        descr   = '',
        dtype   = 3,
        subtype = 3, -- LS_IOLINK_MIN
        article = 'IFM.LMT100',
        AI =
            {
                {
                node          = 1,
                offset        = 8,
                physical_port = 31,
                logical_port  = 2,
                module_offset = 4
                },
            },
        par = {0 --[[P_DT]], 1000 --[[P_ERR]] }
        },

        {
        name    = 'LS2',
        descr   = '',
        dtype   = 3,
        subtype = 4, -- LS_IOLINK_MAX
        article = 'IFM.LMT100',
        AI =
            {
                {
                node          = 1,
                offset        = 39,
                physical_port = 0,
                logical_port  = 1,
                module_offset = 36
                },
            },
        par = {0 --[[P_DT]], 1000 --[[P_ERR]] }
        },

        {
        name    = 'TE1',
        descr   = '',
        dtype   = 4,
        subtype = 2, -- TE_IOLINK
        article = 'IFM.TA2502',
        AI =
            {
                {
                node          = 1,
                offset        = 7,
                physical_port = 30,
                logical_port  = 1,
                module_offset = 4
                },
            },
        par = {0 --[[P_C0]], 1000 --[[P_ERR]] }
        },

        {
        name    = 'GS1',
        descr   = '',
        dtype   = 6,
        subtype = 2, -- GS_VIRT
        article = 'PXC.1191993',
        },

        {
        name    = 'QT1',
        descr   = '',
        dtype   = 9,
        subtype = 3, -- QT_IOLINK
        article = 'IFM.LDL100',
        AI =
            {
                {
                node          = 1,
                offset        = 10,
                physical_port = 33,
                logical_port  = 4,
                module_offset = 4
                },
            },
        par = {1000 --[[P_ERR]] }
        },

        {
        name    = 'A2HL1',
        descr   = '',
        dtype   = 11,
        subtype = 1, -- HL
        article = 'SIE.3SB3217-6AA40',
        DO =
            {
                {
                node          = 1,
                offset        = 8,
                physical_port = 2,
                logical_port  = 3,
                module_offset = 0
                },
            },
        },

        {
        name    = 'A2HL2',
        descr   = '',
        dtype   = 11,
        subtype = 1, -- HL
        article = 'SIE.3SB3217-6AA40',
        DO =
            {
                {
                node          = 1,
                offset        = 9,
                physical_port = 3,
                logical_port  = 4,
                module_offset = 0
                },
            },
        },

        {
        name    = 'A2HL3',
        descr   = '',
        dtype   = 11,
        subtype = 1, -- HL
        article = 'SIE.3SB3217-6AA40',
        DO =
            {
                {
                node          = 1,
                offset        = 10,
                physical_port = 12,
                logical_port  = 7,
                module_offset = 0
                },
            },
        },

        {
        name    = 'A2HL4',
        descr   = '',
        dtype   = 11,
        subtype = 1, -- HL
        article = 'SIE.3SB3217-6AA40',
        DO =
            {
                {
                node          = 1,
                offset        = 11,
                physical_port = 13,
                logical_port  = 8,
                module_offset = 0
                },
            },
        },

        {
        name    = 'A2HL5',
        descr   = '',
        dtype   = 11,
        subtype = 1, -- HL
        article = 'SIE.3SB3217-6AA40',
        DO =
            {
                {
                node          = 1,
                offset        = 12,
                physical_port = 22,
                logical_port  = 11,
                module_offset = 0
                },
            },
        },

        {
        name    = 'A2HL6',
        descr   = '',
        dtype   = 11,
        subtype = 1, -- HL
        article = 'SIE.3SB3217-6AA40',
        DO =
            {
                {
                node          = 1,
                offset        = 13,
                physical_port = 23,
                logical_port  = 12,
                module_offset = 0
                },
            },
        },

        {
        name    = 'A2HL7',
        descr   = '',
        dtype   = 11,
        subtype = 1, -- HL
        article = 'SIE.3SB3217-6AA40',
        DO =
            {
                {
                node          = 1,
                offset        = 14,
                physical_port = 32,
                logical_port  = 15,
                module_offset = 0
                },
            },
        },

        {
        name    = 'A2HL8',
        descr   = '',
        dtype   = 11,
        subtype = 1, -- HL
        article = 'SIE.3SB3217-6AA40',
        DO =
            {
                {
                node          = 1,
                offset        = 15,
                physical_port = 33,
                logical_port  = 16,
                module_offset = 0
                },
            },
        },

        {
        name    = 'A5HL1',
        descr   = '',
        dtype   = 11,
        subtype = 1, -- HL
        article = 'SIE.3SB3217-6AA40',
        DO =
            {
                {
                node          = 1,
                offset        = 56,
                physical_port = 2,
                logical_port  = 3,
                module_offset = 48
                },
            },
        },

        {
        name    = 'A5HL2',
        descr   = '',
        dtype   = 11,
        subtype = 1, -- HL
        article = 'SIE.3SB3217-6AA40',
        DO =
            {
                {
                node          = 1,
                offset        = 57,
                physical_port = 3,
                logical_port  = 4,
                module_offset = 48
                },
            },
        },

        {
        name    = 'A5HL3',
        descr   = '',
        dtype   = 11,
        subtype = 1, -- HL
        article = 'SIE.3SB3217-6AA40',
        DO =
            {
                {
                node          = 1,
                offset        = 58,
                physical_port = 12,
                logical_port  = 7,
                module_offset = 48
                },
            },
        },

        {
        name    = 'A5HL4',
        descr   = '',
        dtype   = 11,
        subtype = 1, -- HL
        article = 'SIE.3SB3217-6AA40',
        DO =
            {
                {
                node          = 1,
                offset        = 59,
                physical_port = 13,
                logical_port  = 8,
                module_offset = 48
                },
            },
        },

        {
        name    = 'A5HL5',
        descr   = '',
        dtype   = 11,
        subtype = 1, -- HL
        article = 'SIE.3SB3217-6AA40',
        DO =
            {
                {
                node          = 1,
                offset        = 60,
                physical_port = 22,
                logical_port  = 11,
                module_offset = 48
                },
            },
        },

        {
        name    = 'A5HL6',
        descr   = '',
        dtype   = 11,
        subtype = 1, -- HL
        article = 'SIE.3SB3217-6AA40',
        DO =
            {
                {
                node          = 1,
                offset        = 61,
                physical_port = 23,
                logical_port  = 12,
                module_offset = 48
                },
            },
        },

        {
        name    = 'A5HL7',
        descr   = '',
        dtype   = 11,
        subtype = 1, -- HL
        article = 'SIE.3SB3217-6AA40',
        DO =
            {
                {
                node          = 1,
                offset        = 62,
                physical_port = 32,
                logical_port  = 15,
                module_offset = 48
                },
            },
        },

        {
        name    = 'A5HL8',
        descr   = '',
        dtype   = 11,
        subtype = 1, -- HL
        article = 'SIE.3SB3217-6AA40',
        DO =
            {
                {
                node          = 1,
                offset        = 63,
                physical_port = 33,
                logical_port  = 16,
                module_offset = 48
                },
            },
        },

        {
        name    = 'A2DI1',
        descr   = '',
        dtype   = 13,
        subtype = 1, -- DI
        article = '',
        DI =
            {
                {
                node          = 1,
                offset        = 8,
                physical_port = 0,
                logical_port  = 1,
                module_offset = 0
                },
            },
        par = {0 --[[P_DT]] }
        },

        {
        name    = 'A2DI2',
        descr   = '',
        dtype   = 13,
        subtype = 1, -- DI
        article = '',
        DI =
            {
                {
                node          = 1,
                offset        = 9,
                physical_port = 1,
                logical_port  = 2,
                module_offset = 0
                },
            },
        par = {0 --[[P_DT]] }
        },

        {
        name    = 'A2DI3',
        descr   = '',
        dtype   = 13,
        subtype = 1, -- DI
        article = '',
        DI =
            {
                {
                node          = 1,
                offset        = 10,
                physical_port = 10,
                logical_port  = 5,
                module_offset = 0
                },
            },
        par = {0 --[[P_DT]] }
        },

        {
        name    = 'A2DI4',
        descr   = '',
        dtype   = 13,
        subtype = 1, -- DI
        article = '',
        DI =
            {
                {
                node          = 1,
                offset        = 11,
                physical_port = 11,
                logical_port  = 6,
                module_offset = 0
                },
            },
        par = {0 --[[P_DT]] }
        },

        {
        name    = 'A2DI5',
        descr   = '',
        dtype   = 13,
        subtype = 1, -- DI
        article = '',
        DI =
            {
                {
                node          = 1,
                offset        = 12,
                physical_port = 20,
                logical_port  = 9,
                module_offset = 0
                },
            },
        par = {0 --[[P_DT]] }
        },

        {
        name    = 'A2DI6',
        descr   = '',
        dtype   = 13,
        subtype = 1, -- DI
        article = '',
        DI =
            {
                {
                node          = 1,
                offset        = 13,
                physical_port = 21,
                logical_port  = 10,
                module_offset = 0
                },
            },
        par = {0 --[[P_DT]] }
        },

        {
        name    = 'A2DI7',
        descr   = '',
        dtype   = 13,
        subtype = 1, -- DI
        article = '',
        DI =
            {
                {
                node          = 1,
                offset        = 14,
                physical_port = 30,
                logical_port  = 13,
                module_offset = 0
                },
            },
        par = {0 --[[P_DT]] }
        },

        {
        name    = 'A2DI8',
        descr   = '',
        dtype   = 13,
        subtype = 1, -- DI
        article = '',
        DI =
            {
                {
                node          = 1,
                offset        = 15,
                physical_port = 31,
                logical_port  = 14,
                module_offset = 0
                },
            },
        par = {0 --[[P_DT]] }
        },

        {
        name    = 'A5DI1',
        descr   = '',
        dtype   = 13,
        subtype = 1, -- DI
        article = '',
        DI =
            {
                {
                node          = 1,
                offset        = 56,
                physical_port = 0,
                logical_port  = 1,
                module_offset = 48
                },
            },
        par = {0 --[[P_DT]] }
        },

        {
        name    = 'A5DI2',
        descr   = '',
        dtype   = 13,
        subtype = 1, -- DI
        article = '',
        DI =
            {
                {
                node          = 1,
                offset        = 57,
                physical_port = 1,
                logical_port  = 2,
                module_offset = 48
                },
            },
        par = {0 --[[P_DT]] }
        },

        {
        name    = 'A5DI3',
        descr   = '',
        dtype   = 13,
        subtype = 1, -- DI
        article = '',
        DI =
            {
                {
                node          = 1,
                offset        = 58,
                physical_port = 10,
                logical_port  = 5,
                module_offset = 48
                },
            },
        par = {0 --[[P_DT]] }
        },

        {
        name    = 'A5DI4',
        descr   = '',
        dtype   = 13,
        subtype = 1, -- DI
        article = '',
        DI =
            {
                {
                node          = 1,
                offset        = 59,
                physical_port = 11,
                logical_port  = 6,
                module_offset = 48
                },
            },
        par = {0 --[[P_DT]] }
        },

        {
        name    = 'A5DI5',
        descr   = '',
        dtype   = 13,
        subtype = 1, -- DI
        article = '',
        DI =
            {
                {
                node          = 1,
                offset        = 60,
                physical_port = 20,
                logical_port  = 9,
                module_offset = 48
                },
            },
        par = {0 --[[P_DT]] }
        },

        {
        name    = 'A5DI6',
        descr   = '',
        dtype   = 13,
        subtype = 1, -- DI
        article = '',
        DI =
            {
                {
                node          = 1,
                offset        = 61,
                physical_port = 21,
                logical_port  = 10,
                module_offset = 48
                },
            },
        par = {0 --[[P_DT]] }
        },

        {
        name    = 'A5DI7',
        descr   = '',
        dtype   = 13,
        subtype = 1, -- DI
        article = '',
        DI =
            {
                {
                node          = 1,
                offset        = 62,
                physical_port = 30,
                logical_port  = 13,
                module_offset = 48
                },
            },
        par = {0 --[[P_DT]] }
        },

        {
        name    = 'A5DI8',
        descr   = '',
        dtype   = 13,
        subtype = 1, -- DI
        article = '',
        DI =
            {
                {
                node          = 1,
                offset        = 63,
                physical_port = 31,
                logical_port  = 14,
                module_offset = 48
                },
            },
        par = {0 --[[P_DT]] }
        },

        {
        name    = 'A3AI1',
        descr   = '',
        dtype   = 15,
        subtype = 1, -- AI
        article = '',
        AI =
            {
                {
                node          = 1,
                offset        = 1,
                physical_port = 0,
                logical_port  = 1,
                module_offset = 1
                },
            },
        par = {0 --[[P_C0]], 0 --[[P_MIN_V]], 10 --[[P_MAX_V]] }
        },

        {
        name    = 'A3AI2',
        descr   = '',
        dtype   = 15,
        subtype = 1, -- AI
        article = '',
        AI =
            {
                {
                node          = 1,
                offset        = 2,
                physical_port = 1,
                logical_port  = 2,
                module_offset = 1
                },
            },
        par = {0 --[[P_C0]], 0 --[[P_MIN_V]], 10 --[[P_MAX_V]] }
        },

        {
        name    = 'A3AO1',
        descr   = '',
        dtype   = 16,
        subtype = 1, -- AO
        article = '',
        AO =
            {
                {
                node          = 1,
                offset        = 1,
                physical_port = 2,
                logical_port  = 3,
                module_offset = 1
                },
            },
        par = {0 --[[P_MIN_V]], 10 --[[P_MAX_V]] }
        },

        {
        name    = 'A3AO2',
        descr   = '',
        dtype   = 16,
        subtype = 1, -- AO
        article = '',
        AO =
            {
                {
                node          = 1,
                offset        = 2,
                physical_port = 3,
                logical_port  = 4,
                module_offset = 1
                },
            },
        par = {0 --[[P_MIN_V]], 10 --[[P_MAX_V]] }
        },

        {
        name    = 'PT1',
        descr   = '',
        dtype   = 18,
        subtype = 2, -- PT_IOLINK
        article = 'IFM.PI2797',
        AI =
            {
                {
                node          = 1,
                offset        = 9,
                physical_port = 32,
                logical_port  = 3,
                module_offset = 4
                },
            },
        par = {1000 --[[P_ERR]] }
        },

        {
        name    = 'PT2',
        descr   = '',
        dtype   = 18,
        subtype = 2, -- PT_IOLINK
        article = 'FES.8001446',
        AI =
            {
                {
                node          = 1,
                offset        = 19,
                physical_port = 72,
                logical_port  = 7,
                module_offset = 4
                },
            },
        par = {1000 --[[P_ERR]] }
        },

        {
        name    = 'F1',
        descr   = '',
        dtype   = 19,
        subtype = 2, -- F_VIRT
        article = 'IFM.LDL100',
        },

        {
        name    = 'HLA1',
        descr   = '',
        dtype   = 21,
        subtype = 3, -- HLA_IOLINK
        article = 'PXC.1191993',
        prop = --Дополнительные свойства
            {
            SIGNALS_SEQUENCE = 'GYRA',
            },
        AO =
            {
                {
                node          = 1,
                offset        = 18,
                physical_port = 71,
                logical_port  = 6,
                module_offset = 4
                },
            },
        AI =
            {
                {
                node          = 1,
                offset        = 18,
                physical_port = 71,
                logical_port  = 6,
                module_offset = 4
                },
            },
        },

    }
