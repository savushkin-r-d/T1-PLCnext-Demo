--version  = 1
--Eplanner version = 2022.1.8074.25997
--PAC_name = 'T1-PLCnext-Demo'
------------------------------------------------------------------------------
------------------------------------------------------------------------------
init_tech_objects_modes = function()
    return
    {
    [ 1 ] =
        {
        n          = 1,
        tech_type  = 1,
        name       = 'Ячейка процесса',
        name_eplan = 'MASTER',
        name_BC    = 'TankObj',
        cooper_param_number = -1,
        base_tech_object = 'master',
        attached_objects = '',
        system_parameters =
            {
            P_MIX_FLIP_PERIOD =
                {
                value = 180,
                },
            P_MIX_FLIP_UPPER_TIME =
                {
                value = 2000,
                },
            P_MIX_FLIP_LOWER_TIME =
                {
                value = 1000,
                },
            P_V_OFF_DELAY_TIME =
                {
                value = 1000,
                },
            P_V_BOTTOM_OFF_DELAY_TIME =
                {
                value = 1200,
                },
            P_WAGO_TCP_NODE_WARN_ANSWER_AVG_TIME =
                {
                value = 50,
                },
            P_MAIN_CYCLE_WARN_ANSWER_AVG_TIME =
                {
                value = 300,
                },
            P_RESTRICTIONS_MODE =
                {
                value = 0,
                },
            P_RESTRICTIONS_MANUAL_TIME =
                {
                value = 120000,
                },
            P_AUTO_PAUSE_OPER_ON_DEV_ERR =
                {
                value = 0,
                },
            },

        modes =
            {
            [ 1 ] =
                {
                name = 'Новая операция',
                base_operation = '',
                },
            },
        },
    }
end