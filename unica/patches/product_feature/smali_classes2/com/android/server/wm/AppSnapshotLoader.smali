.class public final Lcom/android/server/wm/AppSnapshotLoader;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppSnapshotLoader;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    return-void
.end method


# virtual methods
.method public final loadTask(IIZ)Landroid/window/TaskSnapshot;
    .registers 29

    move/from16 v0, p1

    move/from16 v1, p2

    const-string/jumbo v2, "WindowManager"

    const-string v3, "Failed to retrieve gralloc buffer for bitmap: "

    const-string v4, "Failed to create hardware bitmap: "

    const-string v5, "Failed to load bitmap: "

    move-object/from16 v6, p0

    iget-object v6, v6, Lcom/android/server/wm/AppSnapshotLoader;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-virtual {v6, v0, v1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getProtoFile(II)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1f

    const/16 p0, 0x0

    goto/16 :goto_91

    :cond_1f
    :try_start_1f
    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-static {v7}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->parseFrom([B)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    move-result-object v7

    invoke-virtual {v6, v0, v1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getHighResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v8

    iget v10, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    iget v11, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->legacyScale:F

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_37} :catch_195

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v10, :cond_3d

    move v10, v13

    goto :goto_3e

    :cond_3d
    move v10, v14

    :goto_3e
    if-nez v10, :cond_44

    const/16 p0, 0x0

    const/4 v10, 0x0

    goto :goto_7b

    :cond_44
    const/high16 v15, 0x3f000000  # 0.5f

    const/16 p0, 0x0

    const/4 v9, 0x0

    if-eqz v10, :cond_67

    :try_start_4b
    invoke-static {v11, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v16

    if-nez v16, :cond_67

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v9

    if-eqz v9, :cond_5e

    if-nez v12, :cond_5e

    const v11, 0x3f19999a  # 0.6f

    :goto_5c
    move v9, v13

    goto :goto_76

    :cond_5e
    if-eqz p3, :cond_62

    move v11, v15

    goto :goto_65

    :cond_62
    const/high16 v9, 0x3f800000  # 1.0f

    goto :goto_74

    :cond_65
    :goto_65
    move v9, v14

    goto :goto_76

    :cond_67
    if-eqz v10, :cond_74

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v9

    if-eqz v9, :cond_70

    goto :goto_5c

    :cond_70
    if-eqz p3, :cond_65

    mul-float/2addr v11, v15

    goto :goto_65

    :cond_74
    :goto_74
    move v11, v9

    goto :goto_65

    :goto_76
    new-instance v10, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;

    invoke-direct {v10, v9, v11}, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;-><init>(ZF)V

    :goto_7b
    if-eqz v10, :cond_82

    iget-boolean v9, v10, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;->mForceLoadReducedJpeg:Z

    if-eqz v9, :cond_82

    goto :goto_83

    :cond_82
    move v13, v14

    :goto_83
    if-nez p3, :cond_87

    if-eqz v13, :cond_8b

    :cond_87
    invoke-virtual {v6, v0, v1}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getLowResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v8

    :cond_8b
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_92

    :goto_91
    return-object p0

    :cond_92
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-boolean v6, v6, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mUse16BitFormat:Z

    if-eqz v6, :cond_a2

    iget-boolean v6, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    if-nez v6, :cond_a2

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_a4

    :cond_a2
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_a4
    iput-object v6, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_c4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_c4
    sget-object v5, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v5, v14}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    if-nez v5, :cond_e3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_e3
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v9

    if-nez v9, :cond_fd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_fd
    iget-object v1, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->topActivityComponent:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v10, :cond_11c

    iget v1, v10, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;->mScale:F

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    float-to-int v1, v4

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    :goto_11a
    move-object v13, v4

    goto :goto_126

    :cond_11c
    new-instance v4, Landroid/graphics/Point;

    iget v1, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    iget v3, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskHeight:I

    invoke-direct {v4, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_11a

    :goto_126
    new-instance v3, Landroid/window/TaskSnapshot;

    move-object v1, v5

    iget-wide v4, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->id:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    move-wide v14, v10

    iget v11, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    iget v12, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->rotation:I

    move-wide v15, v14

    new-instance v14, Landroid/graphics/Rect;

    iget v6, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    iget v10, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    move-object/from16 p2, v1

    iget v1, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    move-object/from16 v17, v3

    iget v3, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    invoke-direct {v14, v6, v10, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-wide/from16 v18, v15

    new-instance v15, Landroid/graphics/Rect;

    iget v1, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetLeft:I

    iget v3, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetTop:I

    iget v6, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetRight:I

    iget v10, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetBottom:I

    invoke-direct {v15, v1, v3, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-boolean v1, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    iget v3, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    iget v6, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->appearance:I

    iget-boolean v10, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    move/from16 v16, v1

    iget v1, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->uiMode:I

    move/from16 v22, v1

    new-instance v1, Landroid/graphics/Rect;

    move/from16 v20, v3

    iget v3, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->cutoutInsetLeft:I

    move-wide/from16 v23, v4

    iget v4, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->cutoutInsetTop:I

    iget v5, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->cutoutInsetRight:I

    iget v7, v7, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->cutoutInsetBottom:I

    invoke-direct {v1, v3, v4, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v21, 0x0

    move-wide/from16 v3, v18

    move/from16 v19, v6

    move-wide v6, v3

    move-object/from16 v3, v17

    move/from16 v18, v20

    move-wide/from16 v4, v23

    move-object/from16 v23, v1

    move/from16 v20, v10

    move/from16 v17, v16

    move-object/from16 v10, p2

    move/from16 v16, p3

    invoke-direct/range {v3 .. v23}, Landroid/window/TaskSnapshot;-><init>(JJLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZILandroid/graphics/Rect;)V
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_192} :catch_197

    move-object/from16 v17, v3

    return-object v17

    :catch_195
    const/16 p0, 0x0

    :catch_197
    const-string/jumbo v1, "Unable to load task snapshot data for Id="

    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
