.class public final Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;
.super Landroid/content/pm/dex/ArtManagerInternal;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final getPackageOptimizationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/dex/PackageOptimizationInfo;
    .registers 26

    move-object/from16 v1, p1

    const/16 v10, 0xc

    const/16 v11, 0xb

    const/16 v12, 0xa

    const/16 v13, 0x9

    const/16 v14, 0x8

    const/4 v15, 0x7

    const/16 v16, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/16 v19, 0x3

    const/16 v20, 0x2

    const/4 v2, 0x0

    const/16 v21, 0x1

    const-string v3, "ArtManagerInternalImpl"

    const-string/jumbo v4, "error"

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "android"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Landroid/content/pm/dex/PackageOptimizationInfo;->createWithNoInfo()Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v0

    return-object v0

    :cond_2f
    :try_start_2f
    invoke-static/range {p2 .. p2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Ldalvik/system/DexFile;->getDexFileOptimizationInfo(Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexFile$OptimizationInfo;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/DexFile$OptimizationInfo;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ldalvik/system/DexFile$OptimizationInfo;->getReason()Ljava/lang/String;

    move-result-object v0
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_43} :catch_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_43} :catch_46

    move-object v6, v5

    move-object v5, v0

    goto :goto_83

    :catch_46
    move-exception v0

    goto :goto_4a

    :catch_48
    move-exception v0

    goto :goto_6d

    :goto_4a
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Requested optimization status for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " due to an invalid abi "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6a
    move-object v5, v4

    move-object v6, v5

    goto :goto_83

    :goto_6d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not get optimizations status for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6a

    :goto_83
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v7, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "compiled_traces"

    const-string/jumbo v8, "compiled_trace.pb"

    move-object/from16 v9, p3

    filled-new-array {v0, v1, v9, v7, v8}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data/misc/iorapd"

    invoke-static {v1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    :try_start_9d
    new-array v1, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    sget-boolean v7, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v7, :cond_c6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_ba

    const-string v9, " exists"

    goto :goto_bc

    :catch_b8
    move-exception v0

    goto :goto_f8

    :cond_ba
    const-string v9, " doesn\'t exist"

    :goto_bc
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c6
    if-eqz v1, :cond_100

    invoke-static {v0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v8

    if-eqz v7, :cond_ed

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " size is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_ed} :catch_b8

    :cond_ed
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_f6

    move/from16 v1, v21

    goto :goto_100

    :cond_f6
    :goto_f6
    move v1, v2

    goto :goto_100

    :goto_f8
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f6

    :cond_100
    :goto_100
    if-eqz v1, :cond_108

    const-string v0, "-iorap"

    invoke-static {v6, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_108
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2ea

    goto/16 :goto_290

    :sswitch_115
    const-string/jumbo v1, "run-from-apk-fallback"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_120

    goto/16 :goto_290

    :cond_120
    const/16 v0, 0x1a

    goto/16 :goto_290

    :sswitch_124
    const-string/jumbo v1, "quicken-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    goto/16 :goto_290

    :cond_12f
    const/16 v0, 0x19

    goto/16 :goto_290

    :sswitch_133
    const-string/jumbo v1, "space-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13e

    goto/16 :goto_290

    :cond_13e
    const/16 v0, 0x18

    goto/16 :goto_290

    :sswitch_142
    const-string/jumbo v1, "speed-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14d

    goto/16 :goto_290

    :cond_14d
    const/16 v0, 0x17

    goto/16 :goto_290

    :sswitch_151
    const-string/jumbo v1, "run-from-apk"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15c

    goto/16 :goto_290

    :cond_15c
    const/16 v0, 0x16

    goto/16 :goto_290

    :sswitch_160
    const-string/jumbo v1, "everything-profile-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16b

    goto/16 :goto_290

    :cond_16b
    const/16 v0, 0x15

    goto/16 :goto_290

    :sswitch_16f
    const-string/jumbo v1, "quicken"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17a

    goto/16 :goto_290

    :cond_17a
    const/16 v0, 0x14

    goto/16 :goto_290

    :sswitch_17e
    const-string/jumbo v1, "everything-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_189

    goto/16 :goto_290

    :cond_189
    const/16 v0, 0x13

    goto/16 :goto_290

    :sswitch_18d
    const-string/jumbo v1, "everything"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_198

    goto/16 :goto_290

    :cond_198
    const/16 v0, 0x12

    goto/16 :goto_290

    :sswitch_19c
    const-string/jumbo v1, "space-profile"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a7

    goto/16 :goto_290

    :cond_1a7
    const/16 v0, 0x11

    goto/16 :goto_290

    :sswitch_1ab
    const-string/jumbo v1, "run-from-apk-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b6

    goto/16 :goto_290

    :cond_1b6
    const/16 v0, 0x10

    goto/16 :goto_290

    :sswitch_1ba
    const-string/jumbo v1, "speed"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c5

    goto/16 :goto_290

    :cond_1c5
    const/16 v0, 0xf

    goto/16 :goto_290

    :sswitch_1c9
    const-string/jumbo v1, "space"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d4

    goto/16 :goto_290

    :cond_1d4
    const/16 v0, 0xe

    goto/16 :goto_290

    :sswitch_1d8
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e0

    goto/16 :goto_290

    :cond_1e0
    const/16 v0, 0xd

    goto/16 :goto_290

    :sswitch_1e4
    const-string/jumbo v1, "assume-verified-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1ef

    goto/16 :goto_290

    :cond_1ef
    move v0, v10

    goto/16 :goto_290

    :sswitch_1f2
    const-string/jumbo v1, "run-from-vdex-fallback-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1fd

    goto/16 :goto_290

    :cond_1fd
    move v0, v11

    goto/16 :goto_290

    :sswitch_200
    const-string/jumbo v1, "space-profile-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20b

    goto/16 :goto_290

    :cond_20b
    move v0, v12

    goto/16 :goto_290

    :sswitch_20e
    const-string/jumbo v1, "verify"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_219

    goto/16 :goto_290

    :cond_219
    move v0, v13

    goto/16 :goto_290

    :sswitch_21c
    const-string/jumbo v1, "run-from-vdex-fallback"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_227

    goto/16 :goto_290

    :cond_227
    move v0, v14

    goto/16 :goto_290

    :sswitch_22a
    const-string/jumbo v1, "run-from-apk-fallback-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_235

    goto/16 :goto_290

    :cond_235
    move v0, v15

    goto :goto_290

    :sswitch_237
    const-string/jumbo v1, "speed-profile"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_241

    goto :goto_290

    :cond_241
    move/from16 v0, v16

    goto :goto_290

    :sswitch_244
    const-string/jumbo v1, "extract"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24e

    goto :goto_290

    :cond_24e
    move/from16 v0, v17

    goto :goto_290

    :sswitch_251
    const-string/jumbo v1, "extract-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25b

    goto :goto_290

    :cond_25b
    move/from16 v0, v18

    goto :goto_290

    :sswitch_25e
    const-string/jumbo v1, "verify-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_268

    goto :goto_290

    :cond_268
    move/from16 v0, v19

    goto :goto_290

    :sswitch_26b
    const-string/jumbo v1, "everything-profile"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_275

    goto :goto_290

    :cond_275
    move/from16 v0, v20

    goto :goto_290

    :sswitch_278
    const-string/jumbo v1, "assume-verified"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_282

    goto :goto_290

    :cond_282
    move/from16 v0, v21

    goto :goto_290

    :sswitch_285
    const-string/jumbo v1, "speed-profile-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28f

    goto :goto_290

    :cond_28f
    move v0, v2

    :goto_290
    packed-switch v0, :pswitch_data_358

    move/from16 v2, v21

    goto/16 :goto_2e0

    :pswitch_297  #0x1a
    const/16 v2, 0xd

    goto/16 :goto_2e0

    :pswitch_29b  #0x19
    const/16 v2, 0x12

    goto/16 :goto_2e0

    :pswitch_29f  #0x18
    const/16 v2, 0x14

    goto :goto_2e0

    :pswitch_2a2  #0x17
    const/16 v2, 0x16

    goto :goto_2e0

    :pswitch_2a5  #0x16
    move v2, v10

    goto :goto_2e0

    :pswitch_2a7  #0x15
    const/16 v2, 0x17

    goto :goto_2e0

    :pswitch_2aa  #0x14
    move/from16 v2, v17

    goto :goto_2e0

    :pswitch_2ad  #0x13
    const/16 v2, 0x18

    goto :goto_2e0

    :pswitch_2b0  #0x12
    move v2, v11

    goto :goto_2e0

    :pswitch_2b2  #0x11
    move/from16 v2, v16

    goto :goto_2e0

    :pswitch_2b5  #0x10
    const/16 v2, 0x19

    goto :goto_2e0

    :pswitch_2b8  #0xf
    move v2, v13

    goto :goto_2e0

    :pswitch_2ba  #0xe
    move v2, v15

    goto :goto_2e0

    :pswitch_2bc  #0xc
    const/16 v2, 0xf

    goto :goto_2e0

    :pswitch_2bf  #0xb
    const/16 v2, 0x1b

    goto :goto_2e0

    :pswitch_2c2  #0xa
    const/16 v2, 0x13

    goto :goto_2e0

    :pswitch_2c5  #0x9
    move/from16 v2, v18

    goto :goto_2e0

    :pswitch_2c8  #0x8
    const/16 v2, 0xe

    goto :goto_2e0

    :pswitch_2cb  #0x7
    const/16 v2, 0x1a

    goto :goto_2e0

    :pswitch_2ce  #0x6
    move v2, v14

    goto :goto_2e0

    :pswitch_2d0  #0x5
    move/from16 v2, v19

    goto :goto_2e0

    :pswitch_2d3  #0x4
    const/16 v2, 0x10

    goto :goto_2e0

    :pswitch_2d6  #0x3
    const/16 v2, 0x11

    goto :goto_2e0

    :pswitch_2d9  #0x2
    move v2, v12

    goto :goto_2e0

    :pswitch_2db  #0x1
    move/from16 v2, v20

    goto :goto_2e0

    :pswitch_2de  #0x0
    const/16 v2, 0x15

    :goto_2e0
    :pswitch_2e0  #0xd
    invoke-static {v5}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationReasonTronValue(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/content/pm/dex/PackageOptimizationInfo;

    invoke-direct {v1, v2, v0}, Landroid/content/pm/dex/PackageOptimizationInfo;-><init>(II)V

    return-object v1

    :sswitch_data_2ea
    .sparse-switch
        -0x7dd94aef -> :sswitch_285
        -0x74ad4b37 -> :sswitch_278
        -0x6b7d2b71 -> :sswitch_26b
        -0x65cd9119 -> :sswitch_25e
        -0x65986311 -> :sswitch_251
        -0x4dcd237f -> :sswitch_244
        -0x4358c9dd -> :sswitch_237
        -0x405bb3de -> :sswitch_22a
        -0x35c83f13 -> :sswitch_21c
        -0x30df7787 -> :sswitch_20e
        -0x29c91470 -> :sswitch_200
        -0x2ad7fa5 -> :sswitch_1f2
        0x3061f37 -> :sswitch_1e4
        0x5c4d208 -> :sswitch_1d8
        0x688f106 -> :sswitch_1c9
        0x6890047 -> :sswitch_1ba
        0xf517369 -> :sswitch_1ab
        0x14c5f7e2 -> :sswitch_19c
        0x17efcab3 -> :sswitch_18d
        0x23319da1 -> :sswitch_17e
        0x273d6b56 -> :sswitch_16f
        0x3374d27d -> :sswitch_160
        0x36f5967b -> :sswitch_151
        0x3a695435 -> :sswitch_142
        0x4e7b79b4 -> :sswitch_133
        0x585ef804 -> :sswitch_124
        0x71a3adf4 -> :sswitch_115
    .end sparse-switch

    :pswitch_data_358
    .packed-switch 0x0
        :pswitch_2de  #00000000
        :pswitch_2db  #00000001
        :pswitch_2d9  #00000002
        :pswitch_2d6  #00000003
        :pswitch_2d3  #00000004
        :pswitch_2d0  #00000005
        :pswitch_2ce  #00000006
        :pswitch_2cb  #00000007
        :pswitch_2c8  #00000008
        :pswitch_2c5  #00000009
        :pswitch_2c2  #0000000a
        :pswitch_2bf  #0000000b
        :pswitch_2bc  #0000000c
        :pswitch_2e0  #0000000d
        :pswitch_2ba  #0000000e
        :pswitch_2b8  #0000000f
        :pswitch_2b5  #00000010
        :pswitch_2b2  #00000011
        :pswitch_2b0  #00000012
        :pswitch_2ad  #00000013
        :pswitch_2aa  #00000014
        :pswitch_2a7  #00000015
        :pswitch_2a5  #00000016
        :pswitch_2a2  #00000017
        :pswitch_29f  #00000018
        :pswitch_29b  #00000019
        :pswitch_297  #0000001a
    .end packed-switch
.end method
