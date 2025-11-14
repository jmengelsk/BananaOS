.class public final Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ThermalManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .registers 33

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz p1, :cond_c

    move-object/from16 v6, p1

    goto :goto_e

    :cond_c
    const-string v6, ""

    :goto_e
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_374

    :goto_15
    move v6, v4

    goto :goto_46

    :sswitch_17
    const-string/jumbo v7, "override-status"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    goto :goto_15

    :cond_21
    move v6, v1

    goto :goto_46

    :sswitch_23
    const-string/jumbo v7, "reset"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d

    goto :goto_15

    :cond_2d
    move v6, v2

    goto :goto_46

    :sswitch_2f
    const-string/jumbo v7, "inject-temperature"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    goto :goto_15

    :cond_39
    move v6, v5

    goto :goto_46

    :sswitch_3b
    const-string/jumbo v7, "headroom"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_45

    goto :goto_15

    :cond_45
    move v6, v3

    :goto_46
    packed-switch v6, :pswitch_data_386

    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_4e  #0x3
    const-string v1, "Error: "

    const-string v2, "Invalid status: "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_56
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v8
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_7b

    :try_start_5a
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_5a .. :try_end_62} :catch_91
    .catchall {:try_start_5a .. :try_end_62} :catchall_7b

    :try_start_62
    invoke-static {v1}, Landroid/os/Temperature;->isValidStatus(I)Z

    move-result v9

    if-nez v9, :cond_7d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_62 .. :try_end_77} :catchall_7b

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_7b
    move-exception v0

    goto :goto_a9

    :cond_7d
    :try_start_7d
    iget-object v2, v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v2, v2, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_82
    .catchall {:try_start_7d .. :try_end_82} :catchall_7b

    :try_start_82
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    iput-boolean v5, v0, Lcom/android/server/power/ThermalManagerService;->mIsStatusOverride:Z

    invoke-virtual {v0, v1}, Lcom/android/server/power/ThermalManagerService;->setStatusLocked(I)V

    monitor-exit v2
    :try_end_8a
    .catchall {:try_start_82 .. :try_end_8a} :catchall_8e

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_8e
    move-exception v0

    :try_start_8f
    monitor-exit v2
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    :try_start_90
    throw v0

    :catch_91
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_90 .. :try_end_a5} :catchall_7b

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :goto_a9
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :pswitch_ad  #0x2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_b1
    iget-object v4, v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v4, v4, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_b6
    .catchall {:try_start_b1 .. :try_end_b6} :catchall_c5

    :try_start_b6
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    iput-boolean v3, v0, Lcom/android/server/power/ThermalManagerService;->mIsStatusOverride:Z

    invoke-virtual {v0}, Lcom/android/server/power/ThermalManagerService;->onTemperatureMapChangedLocked()V

    monitor-exit v4
    :try_end_be
    .catchall {:try_start_b6 .. :try_end_be} :catchall_c2

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_c2
    move-exception v0

    :try_start_c3
    monitor-exit v4
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    :try_start_c4
    throw v0
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c5

    :catchall_c5
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :pswitch_ca  #0x1
    const-string v6, "Invalid temperature type: "

    const-string v7, "Invalid throttle status: "

    const-string v8, "Error: "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_d4
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

    sparse-switch v14, :sswitch_data_392

    goto/16 :goto_205

    :sswitch_109
    const-string v14, "CAMERA"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    move/from16 v13, v27

    goto/16 :goto_206

    :catchall_115
    move-exception v0

    goto/16 :goto_2fc

    :sswitch_118
    const-string v14, "BCL_CURRENT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    move/from16 v13, v26

    goto/16 :goto_206

    :sswitch_124
    const-string/jumbo v14, "POWER_AMPLIFIER"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    move/from16 v13, v30

    goto/16 :goto_206

    :sswitch_131
    const-string v14, "BCL_VOLTAGE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    move/from16 v13, v25

    goto/16 :goto_206

    :sswitch_13d
    const-string/jumbo v14, "USB_PORT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    move/from16 v13, v29

    goto/16 :goto_206

    :sswitch_14a
    const-string/jumbo v14, "UNKNOWN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    move v13, v3

    goto/16 :goto_206

    :sswitch_156
    const-string v14, "BATTERY"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    move v13, v1

    goto/16 :goto_206

    :sswitch_161
    const-string v14, "BCL_PERCENTAGE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    move/from16 v13, v24

    goto/16 :goto_206

    :sswitch_16d
    const-string/jumbo v14, "MODEM"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    move/from16 v13, v23

    goto/16 :goto_206

    :sswitch_17a
    const-string/jumbo v14, "WIFI"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    move/from16 v13, v22

    goto/16 :goto_206

    :sswitch_187
    const-string/jumbo v14, "SKIN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    move/from16 v13, v28

    goto/16 :goto_206

    :sswitch_194
    const-string/jumbo v14, "POGO"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    const/16 v13, 0x14

    goto/16 :goto_206

    :sswitch_1a1
    const-string/jumbo v14, "TPU"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    move/from16 v13, v21

    goto :goto_206

    :sswitch_1ad
    const-string/jumbo v14, "SOC"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    move/from16 v13, v20

    goto :goto_206

    :sswitch_1b9
    const-string/jumbo v14, "NPU"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    move/from16 v13, v19

    goto :goto_206

    :sswitch_1c5
    const-string v14, "GPU"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    move v13, v2

    goto :goto_206

    :sswitch_1cf
    const-string v14, "CPU"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    move v13, v5

    goto :goto_206

    :sswitch_1d9
    const-string v14, "AMBIENT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    move/from16 v13, v18

    goto :goto_206

    :sswitch_1e4
    const-string v14, "FLASHLIGHT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    move/from16 v13, v17

    goto :goto_206

    :sswitch_1ef
    const-string/jumbo v14, "SPEAKER"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    move/from16 v13, v16

    goto :goto_206

    :sswitch_1fb
    const-string v14, "DISPLAY"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_205

    move v13, v15

    goto :goto_206

    :cond_205
    :goto_205
    move v13, v4

    :goto_206
    packed-switch v13, :pswitch_data_3e8

    invoke-virtual {v6, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_210
    .catchall {:try_start_d4 .. :try_end_210} :catchall_115

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :pswitch_214  #0x14
    move/from16 v15, v18

    goto :goto_24a

    :pswitch_217  #0x13
    move/from16 v15, v16

    goto :goto_24a

    :pswitch_21a  #0x12
    move/from16 v15, v17

    goto :goto_24a

    :pswitch_21d  #0x11
    move/from16 v15, v27

    goto :goto_24a

    :pswitch_220  #0x10
    move/from16 v15, v22

    goto :goto_24a

    :pswitch_223  #0xf
    move/from16 v15, v20

    goto :goto_24a

    :pswitch_226  #0xe
    move/from16 v15, v23

    goto :goto_24a

    :pswitch_229  #0xc
    move/from16 v15, v21

    goto :goto_24a

    :pswitch_22c  #0xb
    move/from16 v15, v19

    goto :goto_24a

    :pswitch_22f  #0xa
    move/from16 v15, v24

    goto :goto_24a

    :pswitch_232  #0x9
    move/from16 v15, v26

    goto :goto_24a

    :pswitch_235  #0x8
    move/from16 v15, v25

    goto :goto_24a

    :pswitch_238  #0x7
    move/from16 v15, v30

    goto :goto_24a

    :pswitch_23b  #0x6
    move/from16 v15, v29

    goto :goto_24a

    :pswitch_23e  #0x5
    move/from16 v15, v28

    goto :goto_24a

    :pswitch_241  #0x4
    move v15, v1

    goto :goto_24a

    :pswitch_243  #0x3
    move v15, v2

    goto :goto_24a

    :pswitch_245  #0x2
    move v15, v5

    goto :goto_24a

    :pswitch_247  #0x1
    move v15, v3

    goto :goto_24a

    :pswitch_249  #0x0
    move v15, v4

    :goto_24a
    :pswitch_24a  #0xd
    :try_start_24a
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_416

    goto :goto_2a7

    :sswitch_25a
    const-string/jumbo v13, "SHUTDOWN"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a7

    move/from16 v12, v30

    goto :goto_2a8

    :sswitch_266
    const-string/jumbo v13, "MODERATE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a7

    move v12, v2

    goto :goto_2a8

    :sswitch_271
    const-string v13, "EMERGENCY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a7

    move/from16 v12, v29

    goto :goto_2a8

    :sswitch_27c
    const-string v13, "LIGHT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a7

    move v12, v5

    goto :goto_2a8

    :sswitch_286
    const-string/jumbo v13, "NONE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a7

    move v12, v3

    goto :goto_2a8

    :sswitch_291
    const-string v13, "CRITICAL"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a7

    move/from16 v12, v28

    goto :goto_2a8

    :sswitch_29c
    const-string/jumbo v13, "SEVERE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a7

    move v12, v1

    goto :goto_2a8

    :cond_2a7
    :goto_2a7
    move v12, v4

    :goto_2a8
    packed-switch v12, :pswitch_data_434

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2b2
    .catchall {:try_start_24a .. :try_end_2b2} :catchall_115

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :pswitch_2b6  #0x6
    move/from16 v1, v30

    goto :goto_2c4

    :pswitch_2b9  #0x5
    move/from16 v1, v29

    goto :goto_2c4

    :pswitch_2bc  #0x4
    move/from16 v1, v28

    goto :goto_2c4

    :pswitch_2bf  #0x2
    move v1, v2

    goto :goto_2c4

    :pswitch_2c1  #0x1
    move v1, v5

    goto :goto_2c4

    :pswitch_2c3  #0x0
    move v1, v3

    :goto_2c4
    :pswitch_2c4  #0x3
    :try_start_2c4
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2
    :try_end_2c8
    .catchall {:try_start_2c4 .. :try_end_2c8} :catchall_115

    :try_start_2c8
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2d5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4
    :try_end_2d2
    .catch Ljava/lang/RuntimeException; {:try_start_2c8 .. :try_end_2d2} :catch_2d3
    .catchall {:try_start_2c8 .. :try_end_2d2} :catchall_115

    goto :goto_2d7

    :catch_2d3
    move-exception v0

    goto :goto_2e5

    :cond_2d5
    const/high16 v4, 0x41e00000  # 28.0f

    :goto_2d7
    :try_start_2d7
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    new-instance v6, Landroid/os/Temperature;

    invoke-direct {v6, v4, v15, v2, v1}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    invoke-virtual {v0, v6, v5}, Lcom/android/server/power/ThermalManagerService;->onTemperatureChanged(Landroid/os/Temperature;Z)V
    :try_end_2e1
    .catchall {:try_start_2d7 .. :try_end_2e1} :catchall_115

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_2e5
    :try_start_2e5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2f8
    .catchall {:try_start_2e5 .. :try_end_2f8} :catchall_115

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :goto_2fc
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :pswitch_300  #0x0
    const-string v1, "Error: "

    const-string v2, "Headroom in "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_308
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7
    :try_end_30c
    .catchall {:try_start_308 .. :try_end_30c} :catchall_327

    :try_start_30c
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_314
    .catch Ljava/lang/RuntimeException; {:try_start_30c .. :try_end_314} :catch_35c
    .catchall {:try_start_30c .. :try_end_314} :catchall_327

    :try_start_314
    iget-object v8, v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v8, v8, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_329

    const-string v0, "Error: thermal HAL is not ready"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_323
    .catchall {:try_start_314 .. :try_end_323} :catchall_327

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_327
    move-exception v0

    goto :goto_370

    :cond_329
    if-ltz v1, :cond_353

    const/16 v8, 0x3c

    if-le v1, v8, :cond_330

    goto :goto_353

    :cond_330
    :try_start_330
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
    :try_end_34f
    .catchall {:try_start_330 .. :try_end_34f} :catchall_327

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_353
    :goto_353
    :try_start_353
    const-string v0, "Error: forecast second input should be in range [0,60]"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_358
    .catchall {:try_start_353 .. :try_end_358} :catchall_327

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catch_35c
    move-exception v0

    :try_start_35d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_36c
    .catchall {:try_start_35d .. :try_end_36c} :catchall_327

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :goto_370
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :sswitch_data_374
    .sparse-switch
        -0x4273a145 -> :sswitch_3b
        -0x3ab50c8 -> :sswitch_2f
        0x6761d4f -> :sswitch_23
        0x16fa8113 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_386
    .packed-switch 0x0
        :pswitch_300  #00000000
        :pswitch_ca  #00000001
        :pswitch_ad  #00000002
        :pswitch_4e  #00000003
    .end packed-switch

    :sswitch_data_392
    .sparse-switch
        -0x718f5b5e -> :sswitch_1fb
        -0x4cec1421 -> :sswitch_1ef
        -0x299a58da -> :sswitch_1e4
        -0xa618188 -> :sswitch_1d9
        0x10588 -> :sswitch_1cf
        0x1148c -> :sswitch_1c5
        0x12ed3 -> :sswitch_1b9
        0x14167 -> :sswitch_1ad
        0x14559 -> :sswitch_1a1
        0x258f27 -> :sswitch_194
        0x26dd7d -> :sswitch_187
        0x28a715 -> :sswitch_17a
        0x462030a -> :sswitch_16d
        0x170bfb2e -> :sswitch_161
        0x170d39ed -> :sswitch_156
        0x19d1382a -> :sswitch_14a
        0x1a693e7c -> :sswitch_13d
        0x338c332a -> :sswitch_131
        0x33d09377 -> :sswitch_124
        0x51069545 -> :sswitch_118
        0x760cb725 -> :sswitch_109
    .end sparse-switch

    :pswitch_data_3e8
    .packed-switch 0x0
        :pswitch_249  #00000000
        :pswitch_247  #00000001
        :pswitch_245  #00000002
        :pswitch_243  #00000003
        :pswitch_241  #00000004
        :pswitch_23e  #00000005
        :pswitch_23b  #00000006
        :pswitch_238  #00000007
        :pswitch_235  #00000008
        :pswitch_232  #00000009
        :pswitch_22f  #0000000a
        :pswitch_22c  #0000000b
        :pswitch_229  #0000000c
        :pswitch_24a  #0000000d
        :pswitch_226  #0000000e
        :pswitch_223  #0000000f
        :pswitch_220  #00000010
        :pswitch_21d  #00000011
        :pswitch_21a  #00000012
        :pswitch_217  #00000013
        :pswitch_214  #00000014
    .end packed-switch

    :sswitch_data_416
    .sparse-switch
        -0x6e69498c -> :sswitch_29c
        -0x5cfe9861 -> :sswitch_291
        0x24a738 -> :sswitch_286
        0x4513cf6 -> :sswitch_27c
        0x730d571 -> :sswitch_271
        0x9c2ed03 -> :sswitch_266
        0x248df656 -> :sswitch_25a
    .end sparse-switch

    :pswitch_data_434
    .packed-switch 0x0
        :pswitch_2c3  #00000000
        :pswitch_2c1  #00000001
        :pswitch_2bf  #00000002
        :pswitch_2c4  #00000003
        :pswitch_2bc  #00000004
        :pswitch_2b9  #00000005
        :pswitch_2b6  #00000006
    .end packed-switch
.end method

.method public final onHelp()V
    .registers 5

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
