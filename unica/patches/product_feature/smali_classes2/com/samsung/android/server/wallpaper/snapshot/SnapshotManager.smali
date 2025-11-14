.class public final Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

.field public final mContext:Landroid/content/Context;

.field public final mSnapshotRepositories:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->mSnapshotRepositories:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    return-void
.end method


# virtual methods
.method public final addHistory(II)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p1, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->type:I

    iput p2, p1, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->key:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->time:Ljava/lang/String;

    const-string/jumbo p2, "No snapshot"

    iput-object p2, p1, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->desc:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->addHistory(Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;)V

    return-void
.end method

.method public final addHistory(IIILjava/util/Map;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput p2, p1, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->type:I

    iput p3, p1, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->key:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->time:Ljava/lang/String;

    iput-object p4, p1, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->results:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->addHistory(Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;)V

    return-void
.end method

.method public final addSnapshot(Landroid/content/Context;IIILcom/android/server/wallpaper/WallpaperData;)I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByKey(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v7

    const-string/jumbo v10, "]"

    const-string/jumbo v11, "SnapshotManager"

    if-nez v7, :cond_1

    iget-object v7, v6, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    const/16 v12, 0x64

    if-lt v7, v12, :cond_0

    const-string/jumbo v7, "add: Maximum number of snapshot is reached."

    invoke-static {v11, v7}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x4

    :goto_0
    const/16 v16, 0x1

    goto/16 :goto_4

    :cond_0
    new-instance v7, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    iget v12, v6, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->userId:I

    invoke-direct {v7, v12, v3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;-><init>(II)V

    iget-object v12, v6, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    invoke-virtual {v12, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v7, v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "add: Already has WallpaperData for which ["

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "]."

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x3

    goto :goto_0

    :cond_2
    invoke-virtual {v7, v2, v4}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setWallpaperData(ILcom/android/server/wallpaper/WallpaperData;)V

    invoke-static {v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    move-result v12

    iget-object v13, v7, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    if-nez v13, :cond_3

    new-instance v13, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    invoke-direct {v13}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;-><init>()V

    iget-object v14, v7, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v14, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    sget-object v15, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->settingsData:Ljava/util/Map;

    invoke-static {v12}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    move-result v12

    sget-object v15, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->settingsData:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    check-cast v15, Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    array-length v15, v12

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v15, :cond_6

    const/16 v16, 0x1

    aget-object v5, v12, v8

    const-string/jumbo v9, "setSettingsData: name = "

    move/from16 v17, v8

    const-string v8, ", value = "

    invoke-static {v9, v5, v8}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    move-object/from16 v18, v12

    iget v12, v7, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->userId:I

    move-object/from16 v19, v7

    const/4 v7, -0x1

    invoke-static {v9, v5, v7, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "lockscreen_wallpaper"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v8, "lockscreen_wallpaper_sub"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v5, v7, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setSettingsData: Skip ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v8, v17, 0x1

    move-object/from16 v12, v18

    move-object/from16 v7, v19

    goto :goto_1

    :cond_6
    const/16 v16, 0x1

    iput-object v14, v13, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    move v7, v3

    :goto_4
    if-gez v7, :cond_8

    const/4 v5, -0x3

    if-eq v7, v5, :cond_7

    invoke-virtual {v6, v3, v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->remove(II)V

    :cond_7
    return v7

    :cond_8
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v5, v5, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    const/4 v7, -0x2

    const-string/jumbo v8, "addSnapshot: Failed to copy backup file."

    const-string/jumbo v9, "SnapshotHelper"

    const-string v12, ", backupWallpaper ["

    const-string v13, ", key = "

    const-string v14, ", which = "

    if-eqz v5, :cond_d

    move/from16 v15, v16

    if-eq v5, v15, :cond_d

    const/4 v15, 0x4

    if-eq v5, v15, :cond_d

    const/4 v15, 0x7

    if-eq v5, v15, :cond_9

    const/16 v15, 0x8

    if-eq v5, v15, :cond_d

    goto/16 :goto_6

    :cond_9
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    if-eqz v5, :cond_10

    invoke-static {v4}, Lcom/samsung/android/server/wallpaper/PreloadedLiveWallpaperHelper;->recoverComponentNameIfMissed(Lcom/android/server/wallpaper/WallpaperData;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "saveBackupFileForLiveWallpaper: userId = "

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperData;->mDescription:Landroid/app/wallpaper/WallpaperDescription;

    invoke-virtual {v4}, Landroid/app/wallpaper/WallpaperDescription;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_a

    const-string/jumbo v0, "saveBackupFileForLiveWallpaper: ComponentName is missed."

    invoke-static {v9, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11, v8}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3, v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->remove(II)V

    return v7

    :cond_a
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.android.wallpaper.live"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saveBackupFileForLiveWallpaper: Package name is not [com.samsung.android.wallpaper.live], packageName = ["

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_b
    const/4 v4, 0x0

    invoke-static {v2, v1, v4}, Lcom/samsung/android/server/wallpaper/AssetFileManager;->getBaseAssetDir(IIZ)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_c

    const-string/jumbo v2, "saveBackupFileForLiveWallpaper: No assets."

    invoke-static {v9, v2}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_c
    invoke-static {v2, v1, v4}, Lcom/samsung/android/server/wallpaper/AssetFileManager;->getBaseAssetDir(IIZ)Ljava/io/File;

    move-result-object v4

    invoke-static {v1, v3, v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperAssetsDir(III)Ljava/io/File;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    goto :goto_6

    :cond_d
    const-string/jumbo v5, "saveBackupFile: userId = "

    invoke-static {v1, v2, v5, v14, v13}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v5, v5, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    invoke-virtual {v4, v5}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    move-result-object v5

    invoke-static {v1, v3, v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperFile(III)Ljava/io/File;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "saveBackupFile: sourceFile = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_e

    goto :goto_5

    :cond_e
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "saveBackupFile: targetFile = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    invoke-static {v5, v10}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->saveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string/jumbo v0, "saveBackupFile: Failed to copy file."

    invoke-static {v9, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11, v8}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3, v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->remove(II)V

    return v7

    :cond_f
    :goto_5
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    const-string/jumbo v2, "saveBackupFile: sourceFile is not exist."

    invoke-static {v9, v2}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_6
    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->mSnapshotRepositories:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v3
.end method

.method public final getPairedDlsSnapshotKey(II)I
    .locals 6

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object p2

    const/4 v0, -0x1

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const-string/jumbo v3, "SnapshotManager"

    if-eq v1, v2, :cond_1

    const-string/jumbo p0, "getPairedDlsSnapshotKey: Number of whiches is not 1."

    invoke-static {v3, p0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_PAIRED_DLS_SNAPSHOT:Z

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    move p2, v1

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x6

    goto :goto_1

    :cond_4
    const/16 p2, 0x12

    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getAll()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :cond_5
    if-ge v1, p1, :cond_6

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    iget-object v4, v2, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->source:Ljava/lang/String;

    const-string/jumbo v5, "com.samsung.android.dynamiclock"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, v2, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->isFromPairedService:Z

    if-eqz v4, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "getPairedDlsSnapshotKey: key = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v2, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_6
    :goto_2
    return v0
.end method

.method public final getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->mSnapshotRepositories:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;-><init>(I)V

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->mSnapshotRepositories:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final getSnapshot(II)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByKey(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object p0

    return-object p0
.end method

.method public final loadSettingsLockedForSnapshot(I)V
    .locals 24

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object v6

    iget-object v0, v6, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->mContext:Landroid/content/Context;

    const-string v7, " "

    const-string/jumbo v8, "failed parsing "

    new-instance v9, Ljava/io/File;

    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v10

    const-string/jumbo v11, "wallpaper_backup_info.xml"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/internal/util/JournaledFile;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    const-string v13, ".tmp"

    invoke-static {v9, v13}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11, v12}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v10}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    const-string/jumbo v12, "SnapshotHelper"

    if-nez v10, :cond_1

    const-string/jumbo v0, "loadSettingsLockedForSnapshot: Backup data doesn\'t exist."

    invoke-static {v12, v0}, Lcom/samsung/android/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, -0x1

    goto/16 :goto_2d

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x104068c

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_31
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_30
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2c

    :try_start_1
    invoke-static {v14}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_29
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_27
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_26

    move v4, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_0
    if-eq v0, v5, :cond_11

    const-string v13, "Backup"

    const/4 v3, 0x2

    if-ne v0, v3, :cond_d

    :try_start_2
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v21
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_23
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_22
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_21
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_20

    sparse-switch v21, :sswitch_data_0

    goto/16 :goto_7

    :sswitch_0
    :try_start_3
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move/from16 v0, v16

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move/from16 v21, v5

    :goto_1
    move-object v13, v14

    goto/16 :goto_21

    :catch_1
    move-exception v0

    move/from16 v21, v5

    :goto_2
    move-object v13, v14

    goto/16 :goto_23

    :catch_2
    move-exception v0

    move/from16 v21, v5

    :goto_3
    move-object v13, v14

    goto/16 :goto_24

    :catch_3
    move-exception v0

    move/from16 v21, v5

    :goto_4
    move-object v13, v14

    goto/16 :goto_25

    :catch_4
    move-exception v0

    move/from16 v21, v5

    :goto_5
    move-object v13, v14

    goto/16 :goto_26

    :catch_5
    move-exception v0

    move/from16 v21, v5

    :goto_6
    move-object v13, v14

    goto/16 :goto_27

    :sswitch_1
    const-string/jumbo v13, "kwpSettings"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_8

    :sswitch_2
    const-string/jumbo v13, "kwp"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_8

    :sswitch_3
    const-string/jumbo v13, "wp"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_8

    :sswitch_4
    const-string/jumbo v13, "wpSettings"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_8

    :sswitch_5
    :try_start_4
    const-string v13, "History"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_23
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_22
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_21
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_20

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_8

    :cond_2
    :goto_7
    const/4 v0, -0x1

    :goto_8
    if-eqz v0, :cond_b

    iget-object v13, v1, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-eq v0, v5, :cond_a

    if-eq v0, v3, :cond_9

    move/from16 v21, v5

    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    const/4 v5, 0x5

    if-eq v0, v5, :cond_3

    :goto_9
    move-object/from16 v19, v14

    move-object/from16 v13, v17

    move/from16 v14, v18

    const/4 v1, -0x1

    goto/16 :goto_15

    :cond_3
    :try_start_5
    invoke-static {v15, v6}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->parseSnapshotHistory(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_9

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v0

    goto :goto_4

    :catch_a
    move-exception v0

    goto :goto_5

    :catch_b
    move-exception v0

    goto :goto_6

    :cond_4
    const/4 v5, 0x5

    :try_start_6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1f
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1a

    :try_start_7
    const-string/jumbo v0, "which"

    const/4 v5, 0x0

    invoke-interface {v15, v5, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_6

    move v5, v0

    goto :goto_a

    :catch_c
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1f
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_1a

    move v5, v4

    :goto_a
    :try_start_9
    sget-object v0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->settingsData:Ljava/util/Map;

    invoke-static {v5}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    move-result v0

    sget-object v19, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->settingsData:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, v19

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_17
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_16
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_14

    move-object/from16 v19, v14

    :try_start_a
    array-length v14, v1

    move-object/from16 v20, v1

    move/from16 v1, v16

    :goto_b
    if-ge v1, v14, :cond_5

    aget-object v0, v20, v1
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_13
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_d

    move/from16 v22, v1

    const/4 v1, 0x0

    :try_start_b
    invoke-interface {v15, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_12
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    :goto_c
    move-object/from16 v13, v19

    goto/16 :goto_21

    :catch_e
    move-exception v0

    :goto_d
    move-object/from16 v13, v19

    goto/16 :goto_23

    :catch_f
    move-exception v0

    :goto_e
    move-object/from16 v13, v19

    goto/16 :goto_25

    :catch_10
    move-exception v0

    :goto_f
    move-object/from16 v13, v19

    goto/16 :goto_26

    :catch_11
    move-exception v0

    :goto_10
    move-object/from16 v13, v19

    goto/16 :goto_27

    :catch_12
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_11
    add-int/lit8 v1, v22, 0x1

    goto :goto_b

    :catch_13
    move-exception v0

    :goto_12
    move-object/from16 v13, v19

    goto/16 :goto_24

    :cond_5
    if-eqz v11, :cond_7

    iget v0, v11, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iput v5, v11, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    :cond_6
    iget-object v0, v11, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iput v5, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    move/from16 v14, v18

    invoke-static {v2, v14, v5}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperFile(III)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    invoke-virtual {v13, v5, v2, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestInitializeThumnailFile(IILcom/android/server/wallpaper/WallpaperData;)V

    :goto_13
    move-object/from16 v13, v17

    goto :goto_14

    :cond_7
    move/from16 v14, v18

    const/4 v1, -0x1

    goto :goto_13

    :goto_14
    if-eqz v13, :cond_8

    invoke-virtual {v13, v5, v11}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setWallpaperData(ILcom/android/server/wallpaper/WallpaperData;)V

    invoke-virtual {v13, v5, v3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setSettingsData(ILjava/util/HashMap;)V

    :cond_8
    :goto_15
    move-object/from16 v17, v13

    :goto_16
    move/from16 v18, v14

    const/4 v1, 0x0

    goto/16 :goto_20

    :catch_14
    move-exception v0

    goto :goto_17

    :catch_15
    move-exception v0

    goto :goto_18

    :catch_16
    move-exception v0

    goto :goto_19

    :catch_17
    move-exception v0

    goto :goto_1a

    :catch_18
    move-exception v0

    goto :goto_1b

    :catch_19
    move-exception v0

    goto :goto_1c

    :catch_1a
    move-exception v0

    :goto_17
    move-object/from16 v19, v14

    goto :goto_c

    :catch_1b
    move-exception v0

    :goto_18
    move-object/from16 v19, v14

    goto :goto_d

    :catch_1c
    move-exception v0

    :goto_19
    move-object/from16 v19, v14

    goto :goto_12

    :catch_1d
    move-exception v0

    :goto_1a
    move-object/from16 v19, v14

    goto :goto_e

    :catch_1e
    move-exception v0

    :goto_1b
    move-object/from16 v19, v14

    goto :goto_f

    :catch_1f
    move-exception v0

    :goto_1c
    move-object/from16 v19, v14

    goto :goto_10

    :cond_9
    move/from16 v21, v5

    move-object/from16 v19, v14

    move-object/from16 v5, v17

    move/from16 v14, v18

    const/4 v1, -0x1

    new-instance v11, Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {v11, v2, v3}, Lcom/android/server/wallpaper/WallpaperData;-><init>(II)V

    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    iget-object v0, v11, Lcom/android/server/wallpaper/WallpaperData;->mCropFiles:Landroid/util/SparseArray;

    iget v1, v11, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v13, v15, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestParseWallpaperAttributes(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperData;)V

    move v4, v3

    :goto_1d
    move-object/from16 v17, v5

    goto :goto_16

    :cond_a
    move/from16 v21, v5

    move-object/from16 v19, v14

    move-object/from16 v5, v17

    move/from16 v14, v18

    new-instance v11, Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {v11, v2, v4}, Lcom/android/server/wallpaper/WallpaperData;-><init>(II)V

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    iget-object v0, v11, Lcom/android/server/wallpaper/WallpaperData;->mCropFiles:Landroid/util/SparseArray;

    iget v3, v11, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v13, v15, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestParseWallpaperAttributes(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperData;)V

    goto :goto_1d

    :cond_b
    move/from16 v21, v5

    move-object/from16 v19, v14

    const-string/jumbo v0, "key"

    const/4 v1, 0x0

    invoke-interface {v15, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    invoke-direct {v3, v2, v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;-><init>(II)V

    const-string/jumbo v5, "source"

    invoke-interface {v15, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c

    goto :goto_1e

    :cond_c
    iput-object v5, v3, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->source:Ljava/lang/String;

    :goto_1e
    move/from16 v18, v0

    move-object/from16 v17, v3

    goto/16 :goto_20

    :catch_20
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_17

    :catch_21
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_18

    :catch_22
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_19

    :catch_23
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_1a

    :catch_24
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_1b

    :catch_25
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_1c

    :cond_d
    move/from16 v21, v5

    move-object/from16 v19, v14

    move-object/from16 v5, v17

    move/from16 v14, v18

    const/4 v1, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_10

    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v6}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->size()I

    move-result v0

    const/16 v3, 0x64

    if-ge v0, v3, :cond_f

    invoke-virtual {v6, v5}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->add(Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)V

    if-le v10, v14, :cond_e

    goto :goto_1f

    :cond_e
    move v10, v14

    :cond_f
    :goto_1f
    move-object/from16 v17, v5

    move/from16 v18, v14

    goto :goto_20

    :cond_10
    const/4 v3, 0x4

    if-ne v0, v3, :cond_f

    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "loadSettingsLockedForSnapshot: text = "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :goto_20
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_d

    move-object/from16 v1, p0

    move-object/from16 v14, v19

    move/from16 v5, v21

    goto/16 :goto_0

    :cond_11
    move/from16 v21, v5

    move-object/from16 v19, v14

    move v11, v10

    goto/16 :goto_28

    :catch_26
    move-exception v0

    move/from16 v21, v5

    move-object/from16 v19, v14

    const/16 v16, 0x0

    move/from16 v10, v16

    goto/16 :goto_c

    :catch_27
    move-exception v0

    move/from16 v21, v5

    move-object/from16 v19, v14

    const/16 v16, 0x0

    move/from16 v10, v16

    goto/16 :goto_d

    :catch_28
    move-exception v0

    move/from16 v21, v5

    move-object/from16 v19, v14

    const/16 v16, 0x0

    move/from16 v10, v16

    goto/16 :goto_12

    :catch_29
    move-exception v0

    move/from16 v21, v5

    move-object/from16 v19, v14

    const/16 v16, 0x0

    move/from16 v10, v16

    goto/16 :goto_e

    :catch_2a
    move-exception v0

    move/from16 v21, v5

    move-object/from16 v19, v14

    const/16 v16, 0x0

    move/from16 v10, v16

    goto/16 :goto_f

    :catch_2b
    move-exception v0

    move/from16 v21, v5

    move-object/from16 v19, v14

    const/16 v16, 0x0

    move/from16 v10, v16

    goto/16 :goto_10

    :catch_2c
    move-exception v0

    move/from16 v21, v5

    const/4 v1, 0x0

    const/16 v16, 0x0

    move-object v13, v1

    move/from16 v10, v16

    goto :goto_21

    :catch_2d
    move-exception v0

    move/from16 v21, v5

    const/4 v1, 0x0

    const/16 v16, 0x0

    move-object v13, v1

    move/from16 v10, v16

    goto :goto_23

    :catch_2e
    move-exception v0

    move/from16 v21, v5

    const/4 v1, 0x0

    const/16 v16, 0x0

    move-object v13, v1

    move/from16 v10, v16

    goto :goto_24

    :catch_2f
    move-exception v0

    move/from16 v21, v5

    const/4 v1, 0x0

    const/16 v16, 0x0

    move-object v13, v1

    move/from16 v10, v16

    goto :goto_25

    :catch_30
    move-exception v0

    move/from16 v21, v5

    const/4 v1, 0x0

    const/16 v16, 0x0

    move-object v13, v1

    move/from16 v10, v16

    goto/16 :goto_26

    :catch_31
    move-exception v0

    move/from16 v21, v5

    const/4 v1, 0x0

    const/16 v16, 0x0

    move-object v13, v1

    move/from16 v10, v16

    goto/16 :goto_27

    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :goto_22
    move v11, v10

    move-object v14, v13

    goto :goto_28

    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    :goto_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_22

    :goto_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_22

    :goto_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_22

    :goto_27
    const-string/jumbo v1, "no backup data"

    invoke-static {v12, v1}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_22

    :goto_28
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    if-eqz v0, :cond_16

    const/4 v1, 0x6

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    move/from16 v3, v16

    :goto_29
    if-ge v3, v1, :cond_16

    :try_start_d
    aget v4, v0, v3

    invoke-static {v4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v5

    goto :goto_2a

    :catch_32
    move-exception v0

    goto/16 :goto_2c

    :cond_12
    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v5

    :goto_2a
    invoke-static {v4}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperDirLegacy(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_14

    array-length v5, v4

    if-lez v5, :cond_14

    move/from16 v5, v16

    :goto_2b
    array-length v8, v4

    if-ge v5, v8, :cond_14

    aget-object v8, v4, v5

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_13

    aget-object v8, v4, v5

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v9, v8, v16

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aget-object v8, v8, v21

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v2, v9, v8}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperFile(III)Ljava/io/File;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "migrateFromOld: from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v4, v5

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v9, v4, v5

    invoke-static {v9, v8}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->saveFile(Ljava/io/File;Ljava/io/File;)Z

    aget-object v8, v4, v5

    invoke-static {v8}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->deleteFile(Ljava/io/File;)V

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_14
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v8

    const-string/jumbo v9, "wallpaper_backup"

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "migrateFromOld: delete dir "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->deleteDirectory(Ljava/io/File;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_32

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_29

    :goto_2c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16
    :goto_2d
    iput v11, v6, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->key:I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6587838c -> :sswitch_5
        -0x3a8eb9e4 -> :sswitch_4
        0xed9 -> :sswitch_3
        0x1a084 -> :sswitch_2
        0x107fcc7 -> :sswitch_1
        0x762561e2 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0x5
        0x11
        0x9
        0x6
        0x12
        0xa
    .end array-data
.end method

.method public final migrateToPriorSnapshot(III)V
    .locals 8

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getIndex(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByIndex(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v3, v3, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_b

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByIndex(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v3

    const-string/jumbo v4, "SnapshotManager"

    if-nez v3, :cond_1

    const-string/jumbo v3, "migrateToPriorSnapshot: Something wrong!"

    invoke-static {v4, v3}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v3, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v3, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p2

    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    invoke-virtual {p2, v0}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    move-result-object p2

    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    invoke-virtual {v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->clone()Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    move-result-object v0

    iget-object v5, v3, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v3, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getConnectedSnapshotForLiveWallpaper(I)I

    move-result v0

    iget v5, v3, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    const/4 v6, -0x1

    if-eq v0, v6, :cond_4

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object p0

    invoke-static {p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getCorrespondingWhich(I)I

    move-result v0

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setConnectedSnapshotForLiveWallpaper(II)V

    goto :goto_2

    :cond_3
    invoke-virtual {v3, p3, v6}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setConnectedSnapshotForLiveWallpaper(II)V

    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "migrateToPriorSnapshot: source = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", target = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    if-nez p0, :cond_8

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    if-nez p2, :cond_6

    invoke-static {p1, v5, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperFile(III)Ljava/io/File;

    move-result-object p2

    :cond_6
    invoke-static {v2, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->saveFile(Ljava/io/File;Ljava/io/File;)Z

    invoke-virtual {v3, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    return-void

    :cond_7
    :goto_3
    const-string/jumbo p0, "migrateToPriorSnapshot: source does not exist."

    invoke-static {v4, p0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->deleteFile(Ljava/io/File;)V

    return-void

    :cond_8
    if-eqz v1, :cond_9

    iget p0, v1, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    invoke-static {p1, p0, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperDir(III)Ljava/io/File;

    move-result-object p0

    invoke-static {p1, v5, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperDir(III)Ljava/io/File;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->renameDirectory(Ljava/io/File;Ljava/io/File;)V

    :cond_9
    invoke-virtual {v3, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p0

    invoke-static {p1, v5, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperFile(III)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    return-void

    :cond_a
    :goto_4
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_1

    :cond_b
    return-void
.end method

.method public final removeSnapshotByKey(II)Ljava/util/Map;
    .locals 16

    move/from16 v1, p2

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->removeByKey(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v0

    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    const-string/jumbo v3, "wallpaper_backup/"

    if-nez v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v8

    iget-object v9, v8, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v9, v9, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    invoke-virtual {v8, v9}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "removeBackupFiles: which = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",wallpaperFile  = "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", cropFile = "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "SnapshotManager"

    invoke-static {v8, v7}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->deleteFile(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget v2, v0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->userId:I

    iget v5, v0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    new-instance v6, Ljava/io/File;

    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v5, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->deleteDirectory(Ljava/io/File;)Z

    :cond_3
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_4

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    if-nez v0, :cond_9

    const-string/jumbo v3, "SnapshotHelper"

    if-gtz v1, :cond_5

    goto/16 :goto_9

    :cond_5
    const/4 v6, 0x2

    filled-new-array {v5, v6}, [I

    move-result-object v5

    const/16 v0, 0x10

    const/4 v7, 0x4

    const/16 v8, 0x8

    const/16 v9, 0x20

    filled-new-array {v7, v0, v8, v9}, [I

    move-result-object v8

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v6, :cond_a

    aget v10, v5, v9

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v7, :cond_8

    aget v0, v8, v11

    or-int/2addr v0, v10

    move/from16 v12, p1

    :try_start_0
    invoke-static {v12, v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->listBackupFiles(II)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    array-length v13, v0

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v13, :cond_7

    aget-object v15, v0, v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p0, 0x0

    :try_start_1
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_6

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteFilesByKeyLegacy: failed to delete "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_6
    :goto_6
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x2

    goto :goto_5

    :catch_1
    move-exception v0

    const/16 p0, 0x0

    goto :goto_7

    :cond_7
    const/16 p0, 0x0

    goto :goto_8

    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "deleteFilesByKeyLegacy: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x2

    goto :goto_4

    :cond_8
    move/from16 v12, p1

    const/16 p0, 0x0

    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x2

    goto :goto_3

    :cond_9
    move/from16 v12, p1

    if-gtz v1, :cond_b

    :cond_a
    :goto_9
    return-object v2

    :cond_b
    new-instance v0, Ljava/io/File;

    invoke-static {v12}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v1, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->deleteDirectory(Ljava/io/File;)Z

    return-object v2
.end method

.method public final removeSnapshotByWhich(II)Ljava/util/ArrayList;
    .locals 9

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getAll()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    move-result v7

    iget-object v8, v6, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v8, v7, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v8, v8, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    invoke-virtual {v7, v8}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->deleteFile(Ljava/io/File;)V

    invoke-virtual {v7}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->deleteFile(Ljava/io/File;)V

    :cond_1
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {v6, v5}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, v5}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v7

    iput v5, v7, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    :cond_2
    invoke-virtual {v6}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, v6, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->removeByKey(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string/jumbo p0, "deleteFilesByWhich: "

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    const-string/jumbo v2, "SnapshotHelper"

    if-nez v0, :cond_6

    if-gtz p2, :cond_4

    goto/16 :goto_8

    :cond_4
    :try_start_0
    invoke-static {p1, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->listBackupFiles(II)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_c

    array-length p1, p0

    :goto_1
    if-ge v3, p1, :cond_c

    aget-object v0, p0, v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, p2, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteFilesByWhichLegacy: failed to delete "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "deleteFilesByWhichLegacy: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :cond_6
    if-gtz p2, :cond_7

    goto/16 :goto_8

    :cond_7
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v4, "wallpaper_backup"

    invoke-direct {v0, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_c

    array-length v0, p1

    if-lez v0, :cond_c

    move v0, v3

    :goto_4
    array-length v4, p1

    if-ge v0, v4, :cond_c

    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_b

    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_9

    array-length v5, v4

    if-lez v5, :cond_9

    move v5, v3

    :goto_5
    array-length v6, v4

    if-ge v5, v6, :cond_9

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, p2, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v6, v4, v5

    invoke-static {v6}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->deleteDirectory(Ljava/io/File;)Z

    goto :goto_6

    :catch_1
    move-exception p1

    goto :goto_7

    :cond_8
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_a

    array-length v4, v4

    if-gtz v4, :cond_b

    :cond_a
    aget-object v4, p1, v0

    invoke-static {v4}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->deleteDirectory(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :goto_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_8
    return-object v1
.end method

.method public final saveSettingsLockedForSnapshot(I)V
    .locals 17

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    const-string v2, "History"

    const-string v3, "Backup"

    const-string/jumbo v4, "saveSettingsLockedForSnapshot: Backup data size = "

    new-instance v5, Ljava/io/File;

    invoke-static/range {p1 .. p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "wallpaper_backup_info.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/internal/util/JournaledFile;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    const-string v9, ".tmp"

    invoke-static {v5, v9}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v8}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    const/4 v5, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v7}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v8

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v5, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->size()I

    move-result v10

    if-lez v10, :cond_6

    const-string/jumbo v10, "SnapshotHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->size()I

    move-result v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_6

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByIndex(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-interface {v8, v5, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "key"

    iget v12, v10, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v5, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "source"

    iget-object v12, v10, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->source:Ljava/lang/String;

    invoke-interface {v8, v5, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v10}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v9

    :goto_1
    if-ge v13, v12, :cond_4

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v10, v14}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-static {v14}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v16

    if-eqz v16, :cond_0

    const-string/jumbo v16, "wp"

    :goto_2
    move-object/from16 v9, v16

    goto :goto_3

    :catch_0
    move-object v5, v7

    goto/16 :goto_6

    :cond_0
    const-string/jumbo v16, "kwp"

    goto :goto_2

    :goto_3
    invoke-static {v14}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-static {v14}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSupportLock(I)Z

    move-result v16

    if-eqz v16, :cond_3

    :cond_1
    invoke-virtual {v1, v8, v9, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestWriteWallpaperAttributes(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperData;)V

    invoke-static {v14}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    move-result v15

    iget-object v5, v10, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    if-eqz v5, :cond_2

    iget-object v5, v5, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    goto :goto_4

    :cond_2
    const/4 v5, 0x0

    :goto_4
    check-cast v5, Ljava/util/HashMap;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Settings"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5, v14}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->writeSnapshotSettingsData(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/HashMap;I)V

    :cond_3
    const/4 v5, 0x0

    const/4 v9, 0x0

    goto :goto_1

    :cond_4
    invoke-interface {v8, v5, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_6
    iget-object v1, v0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshotHistories:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    :goto_5
    if-lez v9, :cond_8

    const/4 v5, 0x0

    invoke-interface {v8, v5, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v8, v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->writeSnapshotHistory(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;)V

    invoke-interface {v8, v5, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_1
    :goto_6
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->rollback()V

    return-void
.end method
