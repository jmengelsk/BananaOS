.class public final Lcom/android/server/storage/DeviceStorageMonitorService$1;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method public constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 50

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v1, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const-wide/32 v3, 0x2255100

    const-string v5, "DeviceStorageMonitorService"

    const-wide v6, 0x7fffffffffffffffL

    const-class v8, Landroid/content/pm/PackageManagerInternal;

    const/16 v11, 0x14

    const/4 v12, 0x2

    if-eq v1, v2, :cond_a5

    if-eq v1, v12, :cond_1c

    goto/16 :goto_9d1

    :cond_1c
    iget-object v1, v0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    sget v0, Lcom/android/server/storage/DeviceStorageMonitorService;->$r8$clinit:I

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    const-string/jumbo v2, "storage_native_boot"

    const-string/jumbo v13, "storage_threshold_percent_high"

    invoke-static {v2, v13, v11}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :catch_3e
    :cond_3e
    :goto_3e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v14

    invoke-virtual {v13}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v16

    const-wide/16 v18, 0x64

    int-to-long v9, v2

    mul-long v16, v16, v9

    div-long v16, v16, v18

    cmp-long v9, v14, v16

    if-gez v9, :cond_3e

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageManagerInternal;

    :try_start_67
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    check-cast v9, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_72} :catch_8f

    :try_start_72
    iget-object v10, v9, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v13, v10, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_79
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_72 .. :try_end_79} :catch_3e
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_79} :catch_8f

    :try_start_79
    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v13, 0x900

    invoke-virtual {v9, v0, v6, v7, v13}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JI)V
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_84

    :try_start_80
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_83
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_80 .. :try_end_83} :catch_3e
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_8f

    goto :goto_3e

    :catchall_84
    move-exception v0

    move-object v9, v0

    :try_start_86
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_8e

    :catchall_8a
    move-exception v0

    :try_start_8b
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8e
    throw v9
    :try_end_8f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8b .. :try_end_8f} :catch_3e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8f} :catch_8f

    :catch_8f
    move-exception v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e

    :cond_94
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_9d1

    invoke-virtual {v0, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_9d1

    :cond_a5
    const-wide/16 v18, 0x64

    iget-object v1, v0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    sget v0, Lcom/android/server/storage/DeviceStorageMonitorService;->$r8$clinit:I

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v9, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/storage/StorageManager;

    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    invoke-virtual {v9}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_c6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v15

    sget-wide v16, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    const-wide/16 v20, 0x5

    mul-long v16, v16, v20

    div-long v16, v16, v18

    sget-object v0, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v22

    sget-wide v24, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v26

    const-wide/16 v28, 0x20

    mul-long v26, v26, v28

    cmp-long v24, v24, v26

    const-wide/16 v25, 0x400

    const-wide v30, 0x402999999999999aL  # 12.8

    const-wide/16 v32, 0x200

    const-wide/16 v34, 0x100

    const-wide v36, 0x401999999999999aL  # 6.4

    const-wide/16 v38, 0x80

    const-wide/16 v40, 0x40

    const-wide/16 v42, 0x0

    if-gtz v24, :cond_11b

    move-object/from16 p0, v13

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v12

    long-to-double v12, v12

    const-wide v44, 0x3ff999999999999aL  # 1.6

    :goto_117
    mul-double v12, v12, v44

    :goto_119
    double-to-long v12, v12

    goto :goto_180

    :cond_11b
    move-object/from16 p0, v13

    sget-wide v12, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v44

    mul-long v44, v44, v40

    cmp-long v12, v12, v44

    if-gtz v12, :cond_134

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v12

    long-to-double v12, v12

    const-wide v44, 0x400999999999999aL  # 3.2

    goto :goto_117

    :cond_134
    sget-wide v12, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v44

    mul-long v44, v44, v38

    cmp-long v12, v12, v44

    if-gtz v12, :cond_148

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v12

    :goto_144
    long-to-double v12, v12

    mul-double v12, v12, v36

    goto :goto_119

    :cond_148
    sget-wide v12, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v44

    mul-long v44, v44, v34

    cmp-long v12, v12, v44

    if-gtz v12, :cond_159

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v12

    goto :goto_144

    :cond_159
    sget-wide v12, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v44

    mul-long v44, v44, v32

    cmp-long v12, v12, v44

    if-gtz v12, :cond_16d

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v12

    :goto_169
    long-to-double v12, v12

    mul-double v12, v12, v30

    goto :goto_119

    :cond_16d
    sget-wide v12, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v44

    mul-long v44, v44, v25

    cmp-long v12, v12, v44

    if-gtz v12, :cond_17e

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v12

    goto :goto_169

    :cond_17e
    move-wide/from16 v12, v42

    :goto_180
    sget-wide v44, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v46

    mul-long v46, v46, v28

    cmp-long v24, v44, v46

    if-gtz v24, :cond_193

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v3

    mul-long v3, v3, v20

    goto :goto_1f9

    :cond_193
    sget-wide v27, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v44

    mul-long v44, v44, v40

    cmp-long v24, v27, v44

    if-gtz v24, :cond_1a8

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v3

    long-to-double v3, v3

    mul-double v3, v3, v36

    :goto_1a6
    double-to-long v3, v3

    goto :goto_1f9

    :cond_1a8
    sget-wide v27, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v36

    mul-long v36, v36, v38

    cmp-long v24, v27, v36

    if-gtz v24, :cond_1bc

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v3

    :goto_1b8
    long-to-double v3, v3

    mul-double v3, v3, v30

    goto :goto_1a6

    :cond_1bc
    sget-wide v27, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v36

    mul-long v36, v36, v34

    cmp-long v24, v27, v36

    if-gtz v24, :cond_1cd

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v3

    goto :goto_1b8

    :cond_1cd
    sget-wide v27, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v29

    mul-long v29, v29, v32

    cmp-long v24, v27, v29

    const-wide v27, 0x403999999999999aL  # 25.6

    if-gtz v24, :cond_1e6

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v3

    :goto_1e2
    long-to-double v3, v3

    mul-double v3, v3, v27

    goto :goto_1a6

    :cond_1e6
    sget-wide v29, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v31

    mul-long v31, v31, v25

    cmp-long v24, v29, v31

    if-gtz v24, :cond_1f7

    invoke-virtual {v0, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v3

    goto :goto_1e2

    :cond_1f7
    move-wide/from16 v3, v42

    :goto_1f9
    invoke-virtual {v9, v15}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v24

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    sput-wide v16, Lcom/android/server/storage/DeviceStorageMonitorService;->mExhaustionBytes:J

    sput-wide v24, Lcom/android/server/storage/DeviceStorageMonitorService;->mFullBytes:J

    sput-wide v22, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowBytes:J

    sput-wide v12, Lcom/android/server/storage/DeviceStorageMonitorService;->mWarningBytes:J

    sput-wide v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mCautionBytes:J

    invoke-virtual {v15}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v26

    const-wide/16 v28, 0x3

    mul-long v28, v28, v22

    const-wide/16 v30, 0x2

    div-long v28, v28, v30

    cmp-long v0, v26, v28

    const-string/jumbo v2, "check("

    if-gez v0, :cond_25a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") freeStorage = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    :try_start_240
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v6
    :try_end_244
    .catch Ljava/io/IOException; {:try_start_240 .. :try_end_244} :catch_253

    move-wide/from16 v32, v12

    mul-long v11, v22, v30

    :try_start_248
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6, v11, v12}, Lcom/android/server/pm/PackageManagerService;->freeStorage(ILjava/lang/String;J)V
    :try_end_250
    .catch Ljava/io/IOException; {:try_start_248 .. :try_end_250} :catch_251

    goto :goto_25c

    :catch_251
    move-exception v0

    goto :goto_256

    :catch_253
    move-exception v0

    move-wide/from16 v32, v12

    :goto_256
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25c

    :cond_25a
    move-wide/from16 v32, v12

    :goto_25c
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    if-nez v6, :cond_283

    new-instance v6, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    iput v7, v6, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    const-wide v11, 0x7fffffffffffffffL

    iput-wide v11, v6, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    iget-object v13, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v13, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_288

    :cond_283
    const-wide v11, 0x7fffffffffffffffL

    :goto_288
    invoke-virtual {v15}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v28

    move-object v13, v8

    invoke-virtual {v15}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v7

    sput-wide v28, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalBytes:J

    sput-wide v7, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    iget-object v15, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->dsm_yuva:Lcom/android/server/storage/DeviceStorageMonitorYuva;

    if-eqz v15, :cond_30a

    iget-boolean v11, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isSupported:Z

    if-eqz v11, :cond_30a

    if-eqz v11, :cond_30a

    iget-wide v11, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_15:J

    cmp-long v11, v7, v11

    const/16 v12, 0xf

    if-gez v11, :cond_2b8

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v11

    if-eqz v11, :cond_30a

    iget-boolean v11, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    if-nez v11, :cond_30a

    const/4 v11, 0x1

    iput-boolean v11, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    invoke-virtual {v15, v12}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendUserMemLowNotification(I)V

    goto :goto_30a

    :cond_2b8
    move-object v11, v13

    iget-wide v12, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_20:J

    cmp-long v12, v7, v12

    if-gez v12, :cond_2e4

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v12

    if-eqz v12, :cond_2d1

    iget-boolean v12, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    if-eqz v12, :cond_2d1

    const/4 v12, 0x0

    iput-boolean v12, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    const/16 v12, 0xf

    invoke-virtual {v15, v12}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendCancelUserMemLowNotification(I)V

    :cond_2d1
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v12

    if-eqz v12, :cond_30b

    iget-boolean v12, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    if-nez v12, :cond_30b

    const/4 v12, 0x1

    iput-boolean v12, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    const/16 v12, 0x14

    invoke-virtual {v15, v12}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendUserMemLowNotification(I)V

    goto :goto_30d

    :cond_2e4
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v12

    if-eqz v12, :cond_2f7

    iget-boolean v12, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    if-eqz v12, :cond_2f7

    const/4 v12, 0x0

    iput-boolean v12, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    const/16 v13, 0xf

    invoke-virtual {v15, v13}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendCancelUserMemLowNotification(I)V

    goto :goto_2f8

    :cond_2f7
    const/4 v12, 0x0

    :goto_2f8
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v13

    if-eqz v13, :cond_30b

    iget-boolean v13, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    if-eqz v13, :cond_30b

    iput-boolean v12, v15, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    const/16 v12, 0x14

    invoke-virtual {v15, v12}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendCancelUserMemLowNotification(I)V

    goto :goto_30d

    :cond_30a
    :goto_30a
    move-object v11, v13

    :cond_30b
    const/16 v12, 0x14

    :goto_30d
    cmp-long v13, v7, v16

    if-gtz v13, :cond_31c

    sget-boolean v15, Lcom/android/server/storage/DeviceStorageMonitorService$State;->isExhaustion:Z

    if-nez v15, :cond_31c

    const/4 v15, 0x1

    sput-boolean v15, Lcom/android/server/storage/DeviceStorageMonitorService$State;->isExhaustion:Z

    invoke-virtual {v1, v14, v15, v10}, Lcom/android/server/storage/DeviceStorageMonitorService;->updateExhaustionBroadcasts(Landroid/os/storage/VolumeInfo;ZI)V

    goto :goto_329

    :cond_31c
    const/4 v15, 0x1

    if-lez v13, :cond_329

    sget-boolean v13, Lcom/android/server/storage/DeviceStorageMonitorService$State;->isExhaustion:Z

    if-ne v13, v15, :cond_329

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/server/storage/DeviceStorageMonitorService$State;->isExhaustion:Z

    invoke-virtual {v1, v14, v13, v10}, Lcom/android/server/storage/DeviceStorageMonitorService;->updateExhaustionBroadcasts(Landroid/os/storage/VolumeInfo;ZI)V

    :cond_329
    :goto_329
    iget v13, v6, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    iget v15, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    const/4 v12, -0x1

    move-wide/from16 v16, v3

    if-eq v15, v12, :cond_337

    iget v13, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    move v15, v13

    move v13, v12

    goto :goto_35f

    :cond_337
    cmp-long v15, v7, v24

    if-gtz v15, :cond_33d

    const/4 v15, 0x4

    goto :goto_35f

    :cond_33d
    cmp-long v15, v7, v22

    if-gtz v15, :cond_343

    :goto_341
    const/4 v15, 0x3

    goto :goto_35f

    :cond_343
    sget-object v15, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v15, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_352

    sget-wide v22, Lcom/android/server/storage/DeviceStorageMonitorService;->BOOT_IMAGE_STORAGE_REQUIREMENT:J

    cmp-long v15, v7, v22

    if-gez v15, :cond_352

    goto :goto_341

    :cond_352
    cmp-long v15, v7, v32

    if-gtz v15, :cond_358

    const/4 v15, 0x2

    goto :goto_35f

    :cond_358
    cmp-long v15, v7, v16

    if-gtz v15, :cond_35e

    const/4 v15, 0x1

    goto :goto_35f

    :cond_35e
    const/4 v15, 0x0

    :goto_35f
    const-string v12, ")"

    const-string v3, ", newLevel:"

    const-string v4, ") oldLevel:"

    move-object/from16 v23, v9

    if-eqz v15, :cond_385

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v24, v11

    iget-object v11, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-static {v13, v11, v4, v3, v9}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " (usableBytes="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v9, v12, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_383
    move-object v9, v12

    goto :goto_388

    :cond_385
    move-object/from16 v24, v11

    goto :goto_383

    :goto_388
    iget-wide v11, v6, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    sub-long/2addr v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    sget-wide v31, Lcom/android/server/storage/DeviceStorageMonitorService;->DEFAULT_LOG_DELTA_BYTES:J

    cmp-long v11, v11, v31

    if-gtz v11, :cond_39f

    if-eq v13, v15, :cond_398

    goto :goto_39f

    :cond_398
    move-object/from16 v32, v0

    move-object/from16 v31, v2

    move-object/from16 v25, v9

    goto :goto_3c4

    :cond_39f
    :goto_39f
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v25, v9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v31, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v32, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v11, v12, v9, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xabd

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iput-wide v7, v6, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    :goto_3c4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateBroadcasts("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-static {v13, v7, v4, v3, v0}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", seq:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v8, "mUsableBytes : "

    const-string v9, ", mUsableFileNode : "

    const-string/jumbo v11, "seq"

    if-nez v4, :cond_3ff

    move-object/from16 v33, v0

    move-object/from16 v22, v5

    move-object/from16 v37, v6

    goto/16 :goto_6b5

    :cond_3ff
    new-instance v4, Landroid/os/StatFs;

    iget-object v12, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-direct {v4, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.intent.action.DEVICE_STORAGE_CAUTION_ON"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x4000000

    invoke-virtual {v4, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const/high16 v7, 0x1000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    new-instance v7, Landroid/content/Intent;

    move-object/from16 v33, v0

    const-string/jumbo v0, "com.samsung.intent.action.DEVICE_STORAGE_CAUTION_OFF"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/4 v7, 0x1

    invoke-static {v7, v13, v15}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisEntering(III)Z

    move-result v36

    if-eqz v36, :cond_475

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") sending intent : ACTION_DEVICE_STORAGE_CAUTION_ON"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v7, v13

    sget-wide v12, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v12, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v12}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    move-object v12, v5

    move-object/from16 v37, v6

    move v13, v7

    goto :goto_4c2

    :cond_475
    const/4 v7, 0x1

    invoke-static {v7, v13, v15}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisLeaving(III)Z

    move-result v12

    if-eqz v12, :cond_4bf

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ") sending intent : ACTION_DEVICE_STORAGE_CAUTION_OFF"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v12, v5

    move-object/from16 v37, v6

    sget-wide v5, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_4c2

    :cond_4bf
    move-object v12, v5

    move-object/from16 v37, v6

    :goto_4c2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.intent.action.DEVICE_STORAGE_WARNING_ON"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x4000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v5, 0x1000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.intent.action.DEVICE_STORAGE_WARNING_OFF"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5, v13, v15}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisEntering(III)Z

    move-result v6

    if-eqz v6, :cond_52a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") sending intent : ACTION_DEVICE_STORAGE_WARNING_ON"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v5, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_570

    :cond_52a
    const/4 v5, 0x2

    invoke-static {v5, v13, v15}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisLeaving(III)Z

    move-result v6

    if-eqz v6, :cond_570

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") sending intent : ACTION_DEVICE_STORAGE_WARNING_OFF"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v6, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_570
    :goto_570
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x5200000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5, v13, v15}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisEntering(III)Z

    move-result v6

    if-eqz v6, :cond_5d2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") sending intent : ACTION_DEVICE_STORAGE_LOW"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v5, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_618

    :cond_5d2
    const/4 v5, 0x3

    invoke-static {v5, v13, v15}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisLeaving(III)Z

    move-result v5

    if-eqz v5, :cond_618

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") sending intent : ACTION_DEVICE_STORAGE_OK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v6, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_618
    :goto_618
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x4000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    move-object/from16 v22, v12

    const-string/jumbo v12, "com.samsung.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const/4 v7, 0x4

    invoke-static {v7, v13, v15}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisEntering(III)Z

    move-result v12

    const-string/jumbo v7, "com.samsung.android.lool"

    move/from16 v29, v12

    const-string/jumbo v12, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    if-eqz v29, :cond_6ba

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") sending intent : ACTION_DEVICE_STORAGE_FULL"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v4, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v12, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_6b5
    :goto_6b5
    move v6, v10

    move-object v13, v11

    :goto_6b7
    move-object/from16 v0, v37

    goto :goto_715

    :cond_6ba
    const/4 v6, 0x4

    invoke-static {v6, v13, v15}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisLeaving(III)Z

    move-result v6

    if-eqz v6, :cond_6b5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") sending intent : ACTION_DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v6, v10

    move-object v13, v11

    sget-wide v10, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v10, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v10}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, v12, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_6b7

    :goto_715
    iput v15, v0, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    new-instance v0, Landroid/os/StatFs;

    iget-object v2, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalFileNode()J

    move-result-wide v4

    div-long v10, v4, v18

    mul-long v20, v20, v4

    div-long v20, v20, v18

    new-instance v2, Landroid/os/StatFs;

    const-string v7, "/data"

    invoke-direct {v2, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v12, Landroid/os/storage/StorageManager;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalFileNode()J

    move-result-wide v36

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getUsedF2fsFileNode()J

    move-result-wide v38

    const-wide/16 v40, -0x1

    cmp-long v2, v38, v40

    if-nez v2, :cond_755

    const-string v2, "Cannot get USED FILE NODE NUMBER!!!"

    move-object/from16 v12, v22

    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_750
    move-wide/from16 v36, v4

    move-wide/from16 v4, v40

    goto :goto_75a

    :cond_755
    move-object/from16 v12, v22

    sub-long v40, v36, v38

    goto :goto_750

    :goto_75a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Available File Node Number is ["

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "]"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v2, v4, v42

    if-gez v2, :cond_779

    invoke-virtual {v0}, Landroid/os/StatFs;->getFreeFileNode()J

    move-result-wide v4

    :cond_779
    sput-wide v10, Lcom/android/server/storage/DeviceStorageMonitorService;->mFullFileNodes:J

    sput-wide v20, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowFileNodes:J

    sput-wide v36, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalFileNode:J

    sput-wide v4, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnStates:Landroid/util/ArrayMap;

    move-object/from16 v2, v32

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;

    if-nez v0, :cond_79b

    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    iput v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->level:I

    iget-object v15, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnStates:Landroid/util/ArrayMap;

    invoke-virtual {v15, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_79c

    :cond_79b
    const/4 v7, 0x0

    :goto_79c
    iget v2, v0, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->level:I

    iget v15, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnForceLevel:I

    const/4 v7, -0x1

    if-eq v15, v7, :cond_7a8

    iget v2, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnForceLevel:I

    move v7, v2

    const/4 v2, -0x1

    goto :goto_7b5

    :cond_7a8
    cmp-long v7, v4, v10

    if-gtz v7, :cond_7ae

    const/4 v7, 0x2

    goto :goto_7b5

    :cond_7ae
    cmp-long v7, v4, v20

    if-gtz v7, :cond_7b4

    const/4 v7, 0x1

    goto :goto_7b5

    :cond_7b4
    const/4 v7, 0x0

    :goto_7b5
    const-string v10, ", fn_newLevel:"

    const-string v11, ") fn_oldLevel:"

    if-eqz v7, :cond_7da

    new-instance v15, Ljava/lang/StringBuilder;

    move/from16 v17, v6

    move-object/from16 v6, v31

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-static {v2, v6, v11, v10, v15}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (usableFileNode="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v4, v25

    invoke-static {v15, v4, v12}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7dc

    :cond_7da
    move/from16 v17, v6

    :goto_7dc
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    const/4 v15, 0x1

    if-lt v7, v15, :cond_7f3

    if-lt v2, v15, :cond_7f0

    const/4 v6, -0x1

    if-ne v2, v6, :cond_7f3

    :cond_7f0
    const/16 v30, 0x1

    goto :goto_7f5

    :cond_7f3
    const/16 v30, 0x0

    :goto_7f5
    const-string/jumbo v15, "updateNotifications_filenode("

    if-eqz v30, :cond_87a

    const v6, 0x104076b

    invoke-virtual {v4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v21, v5

    const v5, 0x104076a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v22, v13

    new-instance v13, Landroid/app/Notification$Builder;

    move-object/from16 v25, v0

    const-string v0, "ALERTS"

    invoke-direct {v13, v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x1080be2

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v13, 0x106001c

    invoke-virtual {v4, v13}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v4, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v4, "sys"

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget v4, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v0, Landroid/app/Notification;->flags:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") notifyAsUser"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual/range {v21 .. v21}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v13, 0x68

    invoke-virtual {v4, v5, v13, v0, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_8ab

    :cond_87a
    move-object/from16 v25, v0

    move-object/from16 v21, v5

    move-object/from16 v22, v13

    const/4 v4, 0x1

    if-ge v7, v4, :cond_8ab

    if-ge v2, v4, :cond_888

    const/4 v6, -0x1

    if-ne v2, v6, :cond_8ab

    :cond_888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") cancelAsUser"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual/range {v21 .. v21}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v13, 0x68

    invoke-virtual {v0, v4, v13, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_8ab
    :goto_8ab
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateBroadcasts_filenode("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-static {v2, v5, v11, v10, v0}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v33

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d7

    goto :goto_945

    :cond_8d7
    new-instance v0, Landroid/os/StatFs;

    iget-object v3, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.intent.action.DEVICE_FILENODE_FULL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x5200000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    move-object/from16 v13, v22

    invoke-virtual {v0, v13, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v10, "com.samsung.intent.action.DEVICE_FILENODE_NOT_FULL "

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v13, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const/4 v15, 0x1

    if-lt v7, v15, :cond_948

    if-lt v2, v15, :cond_90d

    const/4 v5, -0x1

    if-ne v2, v5, :cond_90b

    goto :goto_90d

    :cond_90b
    const/4 v15, 0x1

    goto :goto_948

    :cond_90d
    :goto_90d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") sending intent : ACTION_DEVICE_FILENODE_FULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_945
    :goto_945
    move-object/from16 v0, v25

    goto :goto_98f

    :cond_948
    :goto_948
    if-ge v7, v15, :cond_945

    if-ge v2, v15, :cond_94f

    const/4 v5, -0x1

    if-ne v2, v5, :cond_945

    :cond_94f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") sending intent : ACTION_DEVICE_FILENODE_NOT_FULL"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v4, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_945

    :goto_98f
    iput v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->level:I

    move-object/from16 v13, p0

    move v10, v6

    move-object v5, v12

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    const/4 v2, 0x1

    const-wide/32 v3, 0x2255100

    const-wide v6, 0x7fffffffffffffffL

    const/16 v11, 0x14

    const/4 v12, 0x2

    goto/16 :goto_c6

    :cond_9a7
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    const/4 v15, 0x1

    invoke-virtual {v0, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_9bc

    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    invoke-virtual {v0, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_9bc
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_9d1

    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x2255100

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_9d1
    :goto_9d1
    return-void
.end method
