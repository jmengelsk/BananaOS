.class public final Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ThermalManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 31

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    move-object/from16 v6, p1

    goto :goto_0

    :cond_0
    const-string v6, ""

    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_1
    move v6, v4

    goto :goto_2

    :sswitch_0
    const-string/jumbo v7, "override-status"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move v6, v1

    goto :goto_2

    :sswitch_1
    const-string/jumbo v7, "reset"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v2

    goto :goto_2

    :sswitch_2
    const-string/jumbo v7, "inject-temperature"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    move v6, v5

    goto :goto_2

    :sswitch_3
    const-string/jumbo v7, "headroom"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    move v6, v3

    :goto_2
    packed-switch v6, :pswitch_data_0

    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_0
    const-string v1, "Error: "

    const-string v2, "Invalid status: "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1}, Landroid/os/Temperature;->isValidStatus(I)Z

    move-result v9

    if-nez v9, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_5
    :try_start_3
    iget-object v2, v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v2, v2, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    iput-boolean v5, v0, Lcom/android/server/power/ThermalManagerService;->mIsStatusOverride:Z

    invoke-virtual {v0, v1}, Lcom/android/server/power/ThermalManagerService;->setStatusLocked(I)V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :pswitch_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_7
    iget-object v4, v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v4, v4, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    iput-boolean v3, v0, Lcom/android/server/power/ThermalManagerService;->mIsStatusOverride:Z

    invoke-virtual {v0}, Lcom/android/server/power/ThermalManagerService;->onTemperatureMapChangedLocked()V

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :pswitch_2
    const-string v6, "Invalid temperature type: "

    const-string v7, "Invalid throttle status: "

    const-string v8, "Error: "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_b
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v11

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/16 v15, 0xc

    const/16 v16, 0x12

    const/16 v17, 0x11

    const/16 v18, 0x13

    const/16 v19, 0xa

    const/16 v20, 0xe

    const/16 v21, 0xb

    const/16 v22, 0xf

    const/16 v23, 0xd

    const/16 v24, 0x9

    const/16 v25, 0x7

    const/16 v26, 0x8

    const/16 v27, 0x10

    const/16 v28, 0x4

    const/16 v29, 0x5

    const/16 v30, 0x6

    sparse-switch v14, :sswitch_data_1

    goto/16 :goto_4

    :sswitch_4
    const-string v14, "CAMERA"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move/from16 v13, v27

    goto/16 :goto_5

    :catchall_4
    move-exception v0

    goto/16 :goto_c

    :sswitch_5
    const-string v14, "BCL_CURRENT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move/from16 v13, v26

    goto/16 :goto_5

    :sswitch_6
    const-string/jumbo v14, "POWER_AMPLIFIER"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move/from16 v13, v30

    goto/16 :goto_5

    :sswitch_7
    const-string v14, "BCL_VOLTAGE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move/from16 v13, v25

    goto/16 :goto_5

    :sswitch_8
    const-string/jumbo v14, "USB_PORT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move/from16 v13, v29

    goto/16 :goto_5

    :sswitch_9
    const-string/jumbo v14, "UNKNOWN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move v13, v3

    goto/16 :goto_5

    :sswitch_a
    const-string v14, "BATTERY"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move v13, v1

    goto/16 :goto_5

    :sswitch_b
    const-string v14, "BCL_PERCENTAGE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move/from16 v13, v24

    goto/16 :goto_5

    :sswitch_c
    const-string/jumbo v14, "MODEM"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move/from16 v13, v23

    goto/16 :goto_5

    :sswitch_d
    const-string/jumbo v14, "WIFI"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move/from16 v13, v22

    goto/16 :goto_5

    :sswitch_e
    const-string/jumbo v14, "SKIN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move/from16 v13, v28

    goto/16 :goto_5

    :sswitch_f
    const-string/jumbo v14, "POGO"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/16 v13, 0x14

    goto/16 :goto_5

    :sswitch_10
    const-string/jumbo v14, "TPU"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move/from16 v13, v21

    goto :goto_5

    :sswitch_11
    const-string/jumbo v14, "SOC"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move/from16 v13, v20

    goto :goto_5

    :sswitch_12
    const-string/jumbo v14, "NPU"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move/from16 v13, v19

    goto :goto_5

    :sswitch_13
    const-string v14, "GPU"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move v13, v2

    goto :goto_5

    :sswitch_14
    const-string v14, "CPU"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move v13, v5

    goto :goto_5

    :sswitch_15
    const-string v14, "AMBIENT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move/from16 v13, v18

    goto :goto_5

    :sswitch_16
    const-string v14, "FLASHLIGHT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move/from16 v13, v17

    goto :goto_5

    :sswitch_17
    const-string/jumbo v14, "SPEAKER"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move/from16 v13, v16

    goto :goto_5

    :sswitch_18
    const-string v14, "DISPLAY"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move v13, v15

    goto :goto_5

    :cond_6
    :goto_4
    move v13, v4

    :goto_5
    packed-switch v13, :pswitch_data_1

    invoke-virtual {v6, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :pswitch_3
    move/from16 v15, v18

    goto :goto_6

    :pswitch_4
    move/from16 v15, v16

    goto :goto_6

    :pswitch_5
    move/from16 v15, v17

    goto :goto_6

    :pswitch_6
    move/from16 v15, v27

    goto :goto_6

    :pswitch_7
    move/from16 v15, v22

    goto :goto_6

    :pswitch_8
    move/from16 v15, v20

    goto :goto_6

    :pswitch_9
    move/from16 v15, v23

    goto :goto_6

    :pswitch_a
    move/from16 v15, v21

    goto :goto_6

    :pswitch_b
    move/from16 v15, v19

    goto :goto_6

    :pswitch_c
    move/from16 v15, v24

    goto :goto_6

    :pswitch_d
    move/from16 v15, v26

    goto :goto_6

    :pswitch_e
    move/from16 v15, v25

    goto :goto_6

    :pswitch_f
    move/from16 v15, v30

    goto :goto_6

    :pswitch_10
    move/from16 v15, v29

    goto :goto_6

    :pswitch_11
    move/from16 v15, v28

    goto :goto_6

    :pswitch_12
    move v15, v1

    goto :goto_6

    :pswitch_13
    move v15, v2

    goto :goto_6

    :pswitch_14
    move v15, v5

    goto :goto_6

    :pswitch_15
    move v15, v3

    goto :goto_6

    :pswitch_16
    move v15, v4

    :goto_6
    :pswitch_17
    :try_start_c
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_2

    goto :goto_7

    :sswitch_19
    const-string/jumbo v13, "SHUTDOWN"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move/from16 v12, v30

    goto :goto_8

    :sswitch_1a
    const-string/jumbo v13, "MODERATE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move v12, v2

    goto :goto_8

    :sswitch_1b
    const-string v13, "EMERGENCY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move/from16 v12, v29

    goto :goto_8

    :sswitch_1c
    const-string v13, "LIGHT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move v12, v5

    goto :goto_8

    :sswitch_1d
    const-string/jumbo v13, "NONE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move v12, v3

    goto :goto_8

    :sswitch_1e
    const-string v13, "CRITICAL"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move/from16 v12, v28

    goto :goto_8

    :sswitch_1f
    const-string/jumbo v13, "SEVERE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move v12, v1

    goto :goto_8

    :cond_7
    :goto_7
    move v12, v4

    :goto_8
    packed-switch v12, :pswitch_data_2

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :pswitch_18
    move/from16 v1, v30

    goto :goto_9

    :pswitch_19
    move/from16 v1, v29

    goto :goto_9

    :pswitch_1a
    move/from16 v1, v28

    goto :goto_9

    :pswitch_1b
    move v1, v2

    goto :goto_9

    :pswitch_1c
    move v1, v5

    goto :goto_9

    :pswitch_1d
    move v1, v3

    :goto_9
    :pswitch_1e
    :try_start_d
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_b

    :cond_8
    const/high16 v4, 0x41e00000    # 28.0f

    :goto_a
    :try_start_f
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    new-instance v6, Landroid/os/Temperature;

    invoke-direct {v6, v4, v15, v2, v1}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    invoke-virtual {v0, v6, v5}, Lcom/android/server/power/ThermalManagerService;->onTemperatureChanged(Landroid/os/Temperature;Z)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_b
    :try_start_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :goto_c
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :pswitch_1f
    const-string v1, "Error: "

    const-string v2, "Headroom in "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_11
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :try_start_13
    iget-object v8, v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v8, v8, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_9

    const-string v0, "Error: thermal HAL is not ready"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_5
    move-exception v0

    goto :goto_e

    :cond_9
    if-ltz v1, :cond_b

    const/16 v8, 0x3c

    if-le v1, v8, :cond_a

    goto :goto_d

    :cond_a
    :try_start_14
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    invoke-virtual {v0, v1}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getForecast(I)F

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seconds: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_b
    :goto_d
    :try_start_15
    const-string v0, "Error: forecast second input should be in range [0,60]"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catch_2
    move-exception v0

    :try_start_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :goto_e
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x4273a145 -> :sswitch_3
        -0x3ab50c8 -> :sswitch_2
        0x6761d4f -> :sswitch_1
        0x16fa8113 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x718f5b5e -> :sswitch_18
        -0x4cec1421 -> :sswitch_17
        -0x299a58da -> :sswitch_16
        -0xa618188 -> :sswitch_15
        0x10588 -> :sswitch_14
        0x1148c -> :sswitch_13
        0x12ed3 -> :sswitch_12
        0x14167 -> :sswitch_11
        0x14559 -> :sswitch_10
        0x258f27 -> :sswitch_f
        0x26dd7d -> :sswitch_e
        0x28a715 -> :sswitch_d
        0x462030a -> :sswitch_c
        0x170bfb2e -> :sswitch_b
        0x170d39ed -> :sswitch_a
        0x19d1382a -> :sswitch_9
        0x1a693e7c -> :sswitch_8
        0x338c332a -> :sswitch_7
        0x33d09377 -> :sswitch_6
        0x51069545 -> :sswitch_5
        0x760cb725 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_17
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x6e69498c -> :sswitch_1f
        -0x5cfe9861 -> :sswitch_1e
        0x24a738 -> :sswitch_1d
        0x4513cf6 -> :sswitch_1c
        0x730d571 -> :sswitch_1b
        0x9c2ed03 -> :sswitch_1a
        0x248df656 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1e
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "Thermal service (thermalservice) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  inject-temperature TYPE STATUS NAME [VALUE]"

    const-string v1, "    injects a new temperature sample for the specified device."

    const-string v2, "    type and status strings follow the names in android.os.Temperature."

    const-string v3, "  override-status STATUS"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    sets and locks the thermal status of the device to STATUS."

    const-string v1, "    status code is defined in android.os.Temperature."

    const-string v2, "  reset"

    const-string v3, "    unlocks the thermal status of the device."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  headroom FORECAST_SECONDS"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    gets the thermal headroom forecast in specified seconds, from [0,60]."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method
