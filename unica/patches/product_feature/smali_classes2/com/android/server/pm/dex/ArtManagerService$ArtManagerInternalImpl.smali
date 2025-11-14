.class public final Lcom/android/server/pm/dex/ArtManagerService$ArtManagerInternalImpl;
.super Landroid/content/pm/dex/ArtManagerInternal;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final getPackageOptimizationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/dex/PackageOptimizationInfo;
    .locals 22

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

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/content/pm/dex/PackageOptimizationInfo;->createWithNoInfo()Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
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
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v5

    move-object v5, v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :goto_0
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

    :goto_1
    move-object v5, v4

    move-object v6, v5

    goto :goto_3

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not get optimizations status for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :goto_3
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

    :try_start_1
    new-array v1, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    sget-boolean v7, Lcom/android/server/pm/dex/ArtManagerService;->DEBUG:Z

    if-eqz v7, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    const-string v9, " exists"

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_1
    const-string v9, " doesn\'t exist"

    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v1, :cond_5

    invoke-static {v0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v8

    if-eqz v7, :cond_3

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
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_4

    move/from16 v1, v21

    goto :goto_7

    :cond_4
    :goto_5
    move v1, v2

    goto :goto_7

    :goto_6
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    :goto_7
    if-eqz v1, :cond_6

    const-string v0, "-iorap"

    invoke-static {v6, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_6
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_8

    :sswitch_0
    const-string/jumbo v1, "run-from-apk-fallback"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_8

    :cond_7
    const/16 v0, 0x1a

    goto/16 :goto_8

    :sswitch_1
    const-string/jumbo v1, "quicken-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_8

    :cond_8
    const/16 v0, 0x19

    goto/16 :goto_8

    :sswitch_2
    const-string/jumbo v1, "space-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_8

    :cond_9
    const/16 v0, 0x18

    goto/16 :goto_8

    :sswitch_3
    const-string/jumbo v1, "speed-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_8

    :cond_a
    const/16 v0, 0x17

    goto/16 :goto_8

    :sswitch_4
    const-string/jumbo v1, "run-from-apk"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_8

    :cond_b
    const/16 v0, 0x16

    goto/16 :goto_8

    :sswitch_5
    const-string/jumbo v1, "everything-profile-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_8

    :cond_c
    const/16 v0, 0x15

    goto/16 :goto_8

    :sswitch_6
    const-string/jumbo v1, "quicken"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_8

    :cond_d
    const/16 v0, 0x14

    goto/16 :goto_8

    :sswitch_7
    const-string/jumbo v1, "everything-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_8

    :cond_e
    const/16 v0, 0x13

    goto/16 :goto_8

    :sswitch_8
    const-string/jumbo v1, "everything"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_8

    :cond_f
    const/16 v0, 0x12

    goto/16 :goto_8

    :sswitch_9
    const-string/jumbo v1, "space-profile"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_8

    :cond_10
    const/16 v0, 0x11

    goto/16 :goto_8

    :sswitch_a
    const-string/jumbo v1, "run-from-apk-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_8

    :cond_11
    const/16 v0, 0x10

    goto/16 :goto_8

    :sswitch_b
    const-string/jumbo v1, "speed"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_8

    :cond_12
    const/16 v0, 0xf

    goto/16 :goto_8

    :sswitch_c
    const-string/jumbo v1, "space"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_8

    :cond_13
    const/16 v0, 0xe

    goto/16 :goto_8

    :sswitch_d
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_8

    :cond_14
    const/16 v0, 0xd

    goto/16 :goto_8

    :sswitch_e
    const-string/jumbo v1, "assume-verified-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_8

    :cond_15
    move v0, v10

    goto/16 :goto_8

    :sswitch_f
    const-string/jumbo v1, "run-from-vdex-fallback-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_8

    :cond_16
    move v0, v11

    goto/16 :goto_8

    :sswitch_10
    const-string/jumbo v1, "space-profile-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_8

    :cond_17
    move v0, v12

    goto/16 :goto_8

    :sswitch_11
    const-string/jumbo v1, "verify"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_8

    :cond_18
    move v0, v13

    goto/16 :goto_8

    :sswitch_12
    const-string/jumbo v1, "run-from-vdex-fallback"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_8

    :cond_19
    move v0, v14

    goto/16 :goto_8

    :sswitch_13
    const-string/jumbo v1, "run-from-apk-fallback-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_8

    :cond_1a
    move v0, v15

    goto :goto_8

    :sswitch_14
    const-string/jumbo v1, "speed-profile"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_8

    :cond_1b
    move/from16 v0, v16

    goto :goto_8

    :sswitch_15
    const-string/jumbo v1, "extract"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_8

    :cond_1c
    move/from16 v0, v17

    goto :goto_8

    :sswitch_16
    const-string/jumbo v1, "extract-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_8

    :cond_1d
    move/from16 v0, v18

    goto :goto_8

    :sswitch_17
    const-string/jumbo v1, "verify-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_8

    :cond_1e
    move/from16 v0, v19

    goto :goto_8

    :sswitch_18
    const-string/jumbo v1, "everything-profile"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_8

    :cond_1f
    move/from16 v0, v20

    goto :goto_8

    :sswitch_19
    const-string/jumbo v1, "assume-verified"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_8

    :cond_20
    move/from16 v0, v21

    goto :goto_8

    :sswitch_1a
    const-string/jumbo v1, "speed-profile-iorap"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_8

    :cond_21
    move v0, v2

    :goto_8
    packed-switch v0, :pswitch_data_0

    move/from16 v2, v21

    goto/16 :goto_9

    :pswitch_0
    const/16 v2, 0xd

    goto/16 :goto_9

    :pswitch_1
    const/16 v2, 0x12

    goto/16 :goto_9

    :pswitch_2
    const/16 v2, 0x14

    goto :goto_9

    :pswitch_3
    const/16 v2, 0x16

    goto :goto_9

    :pswitch_4
    move v2, v10

    goto :goto_9

    :pswitch_5
    const/16 v2, 0x17

    goto :goto_9

    :pswitch_6
    move/from16 v2, v17

    goto :goto_9

    :pswitch_7
    const/16 v2, 0x18

    goto :goto_9

    :pswitch_8
    move v2, v11

    goto :goto_9

    :pswitch_9
    move/from16 v2, v16

    goto :goto_9

    :pswitch_a
    const/16 v2, 0x19

    goto :goto_9

    :pswitch_b
    move v2, v13

    goto :goto_9

    :pswitch_c
    move v2, v15

    goto :goto_9

    :pswitch_d
    const/16 v2, 0xf

    goto :goto_9

    :pswitch_e
    const/16 v2, 0x1b

    goto :goto_9

    :pswitch_f
    const/16 v2, 0x13

    goto :goto_9

    :pswitch_10
    move/from16 v2, v18

    goto :goto_9

    :pswitch_11
    const/16 v2, 0xe

    goto :goto_9

    :pswitch_12
    const/16 v2, 0x1a

    goto :goto_9

    :pswitch_13
    move v2, v14

    goto :goto_9

    :pswitch_14
    move/from16 v2, v19

    goto :goto_9

    :pswitch_15
    const/16 v2, 0x10

    goto :goto_9

    :pswitch_16
    const/16 v2, 0x11

    goto :goto_9

    :pswitch_17
    move v2, v12

    goto :goto_9

    :pswitch_18
    move/from16 v2, v20

    goto :goto_9

    :pswitch_19
    const/16 v2, 0x15

    :goto_9
    :pswitch_1a
    invoke-static {v5}, Lcom/android/server/pm/dex/ArtManagerService;->getCompilationReasonTronValue(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/content/pm/dex/PackageOptimizationInfo;

    invoke-direct {v1, v2, v0}, Landroid/content/pm/dex/PackageOptimizationInfo;-><init>(II)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7dd94aef -> :sswitch_1a
        -0x74ad4b37 -> :sswitch_19
        -0x6b7d2b71 -> :sswitch_18
        -0x65cd9119 -> :sswitch_17
        -0x65986311 -> :sswitch_16
        -0x4dcd237f -> :sswitch_15
        -0x4358c9dd -> :sswitch_14
        -0x405bb3de -> :sswitch_13
        -0x35c83f13 -> :sswitch_12
        -0x30df7787 -> :sswitch_11
        -0x29c91470 -> :sswitch_10
        -0x2ad7fa5 -> :sswitch_f
        0x3061f37 -> :sswitch_e
        0x5c4d208 -> :sswitch_d
        0x688f106 -> :sswitch_c
        0x6890047 -> :sswitch_b
        0xf517369 -> :sswitch_a
        0x14c5f7e2 -> :sswitch_9
        0x17efcab3 -> :sswitch_8
        0x23319da1 -> :sswitch_7
        0x273d6b56 -> :sswitch_6
        0x3374d27d -> :sswitch_5
        0x36f5967b -> :sswitch_4
        0x3a695435 -> :sswitch_3
        0x4e7b79b4 -> :sswitch_2
        0x585ef804 -> :sswitch_1
        0x71a3adf4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
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
        :pswitch_1a
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
