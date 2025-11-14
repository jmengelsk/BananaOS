.class public final Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

.field public final mContext:Landroid/content/Context;

.field public final mSnapshotRepositories:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 4

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
    .registers 5

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
    .registers 6

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
    .registers 26

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

    if-nez v7, :cond_3b

    iget-object v7, v6, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    const/16 v12, 0x64

    if-lt v7, v12, :cond_2f

    const-string/jumbo v7, "add: Maximum number of snapshot is reached."

    invoke-static {v11, v7}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, -0x4

    :goto_2b
    const/16 v16, 0x1

    goto/16 :goto_10b

    :cond_2f
    new-instance v7, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    iget v12, v6, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->userId:I

    invoke-direct {v7, v12, v3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;-><init>(II)V

    iget-object v12, v6, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    invoke-virtual {v12, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_3b
    invoke-virtual {v7, v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v12

    if-eqz v12, :cond_5b

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

    goto :goto_2b

    :cond_5b
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

    if-nez v13, :cond_82

    new-instance v13, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    invoke-direct {v13}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;-><init>()V

    iget-object v14, v7, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v14, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_82
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

    :goto_9d
    if-ge v8, v15, :cond_106

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

    if-nez v8, :cond_ea

    const-string/jumbo v8, "lockscreen_wallpaper_sub"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_da

    goto :goto_ea

    :cond_da
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v5, v7, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ff

    :cond_ea
    :goto_ea
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setSettingsData: Skip ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ff
    add-int/lit8 v8, v17, 0x1

    move-object/from16 v12, v18

    move-object/from16 v7, v19

    goto :goto_9d

    :cond_106
    const/16 v16, 0x1

    iput-object v14, v13, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    move v7, v3

    :goto_10b
    if-gez v7, :cond_114

    const/4 v5, -0x3

    if-eq v7, v5, :cond_113

    invoke-virtual {v6, v3, v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->remove(II)V

    :cond_113
    return v7

    :cond_114
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v5, v5, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    const/4 v7, -0x2

    const-string/jumbo v8, "addSnapshot: Failed to copy backup file."

    const-string/jumbo v9, "SnapshotHelper"

    const-string v12, ", backupWallpaper ["

    const-string v13, ", key = "

    const-string v14, ", which = "

    if-eqz v5, :cond_1bd

    move/from16 v15, v16

    if-eq v5, v15, :cond_1bd

    const/4 v15, 0x4

    if-eq v5, v15, :cond_1bd

    const/4 v15, 0x7

    if-eq v5, v15, :cond_137

    const/16 v15, 0x8

    if-eq v5, v15, :cond_1bd

    goto/16 :goto_230

    :cond_137
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    if-eqz v5, :cond_230

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

    if-nez v4, :cond_17a

    const-string/jumbo v0, "saveBackupFileForLiveWallpaper: ComponentName is missed."

    invoke-static {v9, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11, v8}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3, v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->remove(II)V

    return v7

    :cond_17a
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.android.wallpaper.live"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saveBackupFileForLiveWallpaper: Package name is not [com.samsung.android.wallpaper.live], packageName = ["

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_230

    :cond_19e
    const/4 v4, 0x0

    invoke-static {v2, v1, v4}, Lcom/samsung/android/server/wallpaper/AssetFileManager;->getBaseAssetDir(IIZ)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1b1

    const-string/jumbo v2, "saveBackupFileForLiveWallpaper: No assets."

    invoke-static {v9, v2}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_230

    :cond_1b1
    invoke-static {v2, v1, v4}, Lcom/samsung/android/server/wallpaper/AssetFileManager;->getBaseAssetDir(IIZ)Ljava/io/File;

    move-result-object v4

    invoke-static {v1, v3, v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperAssetsDir(III)Ljava/io/File;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    goto :goto_230

    :cond_1bd
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

    if-eqz v5, :cond_226

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1fe

    goto :goto_226

    :cond_1fe
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

    if-nez v4, :cond_230

    const-string/jumbo v0, "saveBackupFile: Failed to copy file."

    invoke-static {v9, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11, v8}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v3, v2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->remove(II)V

    return v7

    :cond_226
    :goto_226
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    const-string/jumbo v2, "saveBackupFile: sourceFile is not exist."

    invoke-static {v9, v2}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_230
    :goto_230
    iget-object v0, v0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->mSnapshotRepositories:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v3
.end method

.method public final getPairedDlsSnapshotKey(II)I
    .registers 9

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object p2

    const/4 v0, -0x1

    if-nez p2, :cond_9

    goto/16 :goto_80

    :cond_9
    invoke-virtual {p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const-string/jumbo v3, "SnapshotManager"

    if-eq v1, v2, :cond_1e

    const-string/jumbo p0, "getPairedDlsSnapshotKey: Number of whiches is not 1."

    invoke-static {v3, p0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1e
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_PAIRED_DLS_SNAPSHOT:Z

    if-nez v2, :cond_2e

    goto :goto_34

    :cond_2e
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v2

    if-eqz v2, :cond_36

    :goto_34
    move p2, v1

    goto :goto_40

    :cond_36
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result p2

    if-eqz p2, :cond_3e

    const/4 p2, 0x6

    goto :goto_40

    :cond_3e
    const/16 p2, 0x12

    :goto_40
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getAll()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :cond_4c
    if-ge v1, p1, :cond_80

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    iget-object v4, v2, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->source:Ljava/lang/String;

    const-string/jumbo v5, "com.samsung.android.dynamiclock"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-virtual {v2, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v4

    if-eqz v4, :cond_4c

    iget-boolean v4, v2, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->isFromPairedService:Z

    if-eqz v4, :cond_4c

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "getPairedDlsSnapshotKey: key = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v2, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_80
    :goto_80
    return v0
.end method

.method public final getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->mSnapshotRepositories:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    if-nez v0, :cond_14

    new-instance v0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;-><init>(I)V

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->mSnapshotRepositories:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public final getSnapshot(II)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByKey(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object p0

    return-object p0
.end method

.method public final loadSettingsLockedForSnapshot(I)V
    .registers 26

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object v6

    iget-object v0, v6, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_10
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

    if-nez v10, :cond_52

    const-string/jumbo v0, "loadSettingsLockedForSnapshot: Backup data doesn\'t exist."

    invoke-static {v12, v0}, Lcom/samsung/android/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, -0x1

    goto/16 :goto_49d

    :cond_52
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x104068c

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    :try_start_60
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_65
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_65} :catch_335
    .catch Ljava/lang/NullPointerException; {:try_start_60 .. :try_end_65} :catch_32a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_60 .. :try_end_65} :catch_320
    .catch Ljava/lang/NumberFormatException; {:try_start_60 .. :try_end_65} :catch_316
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_65} :catch_30c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_60 .. :try_end_65} :catch_302

    :try_start_65
    invoke-static {v14}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0
    :try_end_6d
    .catch Ljava/io/FileNotFoundException; {:try_start_65 .. :try_end_6d} :catch_2f7
    .catch Ljava/lang/NullPointerException; {:try_start_65 .. :try_end_6d} :catch_2ec
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_65 .. :try_end_6d} :catch_2e1
    .catch Ljava/lang/NumberFormatException; {:try_start_65 .. :try_end_6d} :catch_2d6
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6d} :catch_2cb
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_65 .. :try_end_6d} :catch_2c0

    move v4, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_76
    if-eq v0, v5, :cond_2b9

    const-string v13, "Backup"

    const/4 v3, 0x2

    if-ne v0, v3, :cond_266

    :try_start_7d
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v21
    :try_end_85
    .catch Ljava/io/FileNotFoundException; {:try_start_7d .. :try_end_85} :catch_261
    .catch Ljava/lang/NullPointerException; {:try_start_7d .. :try_end_85} :catch_25c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7d .. :try_end_85} :catch_257
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_85} :catch_252
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_85} :catch_24d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7d .. :try_end_85} :catch_248

    sparse-switch v21, :sswitch_data_4a0

    goto/16 :goto_ee

    :sswitch_8a
    :try_start_8a
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    move/from16 v0, v16

    goto/16 :goto_ef

    :catch_94
    move-exception v0

    move/from16 v21, v5

    :goto_97
    move-object v13, v14

    goto/16 :goto_340

    :catch_9a
    move-exception v0

    move/from16 v21, v5

    :goto_9d
    move-object v13, v14

    goto/16 :goto_35b

    :catch_a0
    move-exception v0

    move/from16 v21, v5

    :goto_a3
    move-object v13, v14

    goto/16 :goto_374

    :catch_a6
    move-exception v0

    move/from16 v21, v5

    :goto_a9
    move-object v13, v14

    goto/16 :goto_38d

    :catch_ac
    move-exception v0

    move/from16 v21, v5

    :goto_af
    move-object v13, v14

    goto/16 :goto_3a6

    :catch_b2
    move-exception v0

    move/from16 v21, v5

    :goto_b5
    move-object v13, v14

    goto/16 :goto_3bf

    :sswitch_b8
    const-string/jumbo v13, "kwpSettings"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    const/4 v0, 0x4

    goto :goto_ef

    :sswitch_c3
    const-string/jumbo v13, "kwp"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    move v0, v3

    goto :goto_ef

    :sswitch_ce
    const-string/jumbo v13, "wp"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    move v0, v5

    goto :goto_ef

    :sswitch_d9
    const-string/jumbo v13, "wpSettings"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_e0
    .catch Ljava/io/FileNotFoundException; {:try_start_8a .. :try_end_e0} :catch_b2
    .catch Ljava/lang/NullPointerException; {:try_start_8a .. :try_end_e0} :catch_ac
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8a .. :try_end_e0} :catch_a6
    .catch Ljava/lang/NumberFormatException; {:try_start_8a .. :try_end_e0} :catch_a0
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_e0} :catch_9a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8a .. :try_end_e0} :catch_94

    if-eqz v0, :cond_ee

    const/4 v0, 0x3

    goto :goto_ef

    :sswitch_e4
    :try_start_e4
    const-string v13, "History"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_ea
    .catch Ljava/io/FileNotFoundException; {:try_start_e4 .. :try_end_ea} :catch_261
    .catch Ljava/lang/NullPointerException; {:try_start_e4 .. :try_end_ea} :catch_25c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e4 .. :try_end_ea} :catch_257
    .catch Ljava/lang/NumberFormatException; {:try_start_e4 .. :try_end_ea} :catch_252
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_ea} :catch_24d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e4 .. :try_end_ea} :catch_248

    if-eqz v0, :cond_ee

    const/4 v0, 0x5

    goto :goto_ef

    :cond_ee
    :goto_ee
    const/4 v0, -0x1

    :goto_ef
    if-eqz v0, :cond_21d

    iget-object v13, v1, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-eq v0, v5, :cond_201

    if-eq v0, v3, :cond_1e1

    move/from16 v21, v5

    const/4 v5, 0x3

    if-eq v0, v5, :cond_11b

    const/4 v3, 0x4

    if-eq v0, v3, :cond_11b

    const/4 v5, 0x5

    if-eq v0, v5, :cond_10b

    :goto_102
    move-object/from16 v19, v14

    move-object/from16 v13, v17

    move/from16 v14, v18

    const/4 v1, -0x1

    goto/16 :goto_1b6

    :cond_10b
    :try_start_10b
    invoke-static {v15, v6}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->parseSnapshotHistory(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;)V
    :try_end_10e
    .catch Ljava/io/FileNotFoundException; {:try_start_10b .. :try_end_10e} :catch_119
    .catch Ljava/lang/NullPointerException; {:try_start_10b .. :try_end_10e} :catch_117
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10b .. :try_end_10e} :catch_115
    .catch Ljava/lang/NumberFormatException; {:try_start_10b .. :try_end_10e} :catch_113
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_10e} :catch_111
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10b .. :try_end_10e} :catch_10f

    goto :goto_102

    :catch_10f
    move-exception v0

    goto :goto_97

    :catch_111
    move-exception v0

    goto :goto_9d

    :catch_113
    move-exception v0

    goto :goto_a3

    :catch_115
    move-exception v0

    goto :goto_a9

    :catch_117
    move-exception v0

    goto :goto_af

    :catch_119
    move-exception v0

    goto :goto_b5

    :cond_11b
    const/4 v5, 0x5

    :try_start_11c
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    :try_end_121
    .catch Ljava/io/FileNotFoundException; {:try_start_11c .. :try_end_121} :catch_1dd
    .catch Ljava/lang/NullPointerException; {:try_start_11c .. :try_end_121} :catch_1d9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11c .. :try_end_121} :catch_1d5
    .catch Ljava/lang/NumberFormatException; {:try_start_11c .. :try_end_121} :catch_1d1
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_121} :catch_1cd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11c .. :try_end_121} :catch_1c9

    :try_start_121
    const-string/jumbo v0, "which"

    const/4 v5, 0x0

    invoke-interface {v15, v5, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_12d
    .catch Ljava/lang/NumberFormatException; {:try_start_121 .. :try_end_12d} :catch_12f
    .catch Ljava/io/FileNotFoundException; {:try_start_121 .. :try_end_12d} :catch_119
    .catch Ljava/lang/NullPointerException; {:try_start_121 .. :try_end_12d} :catch_117
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_121 .. :try_end_12d} :catch_115
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_12d} :catch_111
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_121 .. :try_end_12d} :catch_10f

    move v5, v0

    goto :goto_134

    :catch_12f
    move-exception v0

    :try_start_130
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_133
    .catch Ljava/io/FileNotFoundException; {:try_start_130 .. :try_end_133} :catch_1dd
    .catch Ljava/lang/NullPointerException; {:try_start_130 .. :try_end_133} :catch_1d9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_130 .. :try_end_133} :catch_1d5
    .catch Ljava/lang/NumberFormatException; {:try_start_130 .. :try_end_133} :catch_1d1
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_133} :catch_1cd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_130 .. :try_end_133} :catch_1c9

    move v5, v4

    :goto_134
    :try_start_134
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
    :try_end_14b
    .catch Ljava/io/FileNotFoundException; {:try_start_134 .. :try_end_14b} :catch_1c7
    .catch Ljava/lang/NullPointerException; {:try_start_134 .. :try_end_14b} :catch_1c5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_134 .. :try_end_14b} :catch_1c3
    .catch Ljava/lang/NumberFormatException; {:try_start_134 .. :try_end_14b} :catch_1c1
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_14b} :catch_1bf
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_134 .. :try_end_14b} :catch_1bd

    move-object/from16 v19, v14

    :try_start_14d
    array-length v14, v1

    move-object/from16 v20, v1

    move/from16 v1, v16

    :goto_152
    if-ge v1, v14, :cond_18e

    aget-object v0, v20, v1
    :try_end_156
    .catch Ljava/io/FileNotFoundException; {:try_start_14d .. :try_end_156} :catch_17d
    .catch Ljava/lang/NullPointerException; {:try_start_14d .. :try_end_156} :catch_178
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14d .. :try_end_156} :catch_173
    .catch Ljava/lang/NumberFormatException; {:try_start_14d .. :try_end_156} :catch_189
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_156} :catch_16e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14d .. :try_end_156} :catch_169

    move/from16 v22, v1

    const/4 v1, 0x0

    :try_start_159
    invoke-interface {v15, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_168
    .catch Ljava/lang/NumberFormatException; {:try_start_159 .. :try_end_168} :catch_182
    .catch Ljava/io/FileNotFoundException; {:try_start_159 .. :try_end_168} :catch_17d
    .catch Ljava/lang/NullPointerException; {:try_start_159 .. :try_end_168} :catch_178
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_159 .. :try_end_168} :catch_173
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_168} :catch_16e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_159 .. :try_end_168} :catch_169

    goto :goto_186

    :catch_169
    move-exception v0

    :goto_16a
    move-object/from16 v13, v19

    goto/16 :goto_340

    :catch_16e
    move-exception v0

    :goto_16f
    move-object/from16 v13, v19

    goto/16 :goto_35b

    :catch_173
    move-exception v0

    :goto_174
    move-object/from16 v13, v19

    goto/16 :goto_38d

    :catch_178
    move-exception v0

    :goto_179
    move-object/from16 v13, v19

    goto/16 :goto_3a6

    :catch_17d
    move-exception v0

    :goto_17e
    move-object/from16 v13, v19

    goto/16 :goto_3bf

    :catch_182
    move-exception v0

    :try_start_183
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_186
    add-int/lit8 v1, v22, 0x1

    goto :goto_152

    :catch_189
    move-exception v0

    :goto_18a
    move-object/from16 v13, v19

    goto/16 :goto_374

    :cond_18e
    if-eqz v11, :cond_1aa

    iget v0, v11, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_197

    iput v5, v11, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    :cond_197
    iget-object v0, v11, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iput v5, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    move/from16 v14, v18

    invoke-static {v2, v14, v5}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperFile(III)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    invoke-virtual {v13, v5, v2, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestInitializeThumnailFile(IILcom/android/server/wallpaper/WallpaperData;)V

    :goto_1a7
    move-object/from16 v13, v17

    goto :goto_1ae

    :cond_1aa
    move/from16 v14, v18

    const/4 v1, -0x1

    goto :goto_1a7

    :goto_1ae
    if-eqz v13, :cond_1b6

    invoke-virtual {v13, v5, v11}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setWallpaperData(ILcom/android/server/wallpaper/WallpaperData;)V

    invoke-virtual {v13, v5, v3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setSettingsData(ILjava/util/HashMap;)V

    :cond_1b6
    :goto_1b6
    move-object/from16 v17, v13

    :goto_1b8
    move/from16 v18, v14

    const/4 v1, 0x0

    goto/16 :goto_2ad

    :catch_1bd
    move-exception v0

    goto :goto_1ca

    :catch_1bf
    move-exception v0

    goto :goto_1ce

    :catch_1c1
    move-exception v0

    goto :goto_1d2

    :catch_1c3
    move-exception v0

    goto :goto_1d6

    :catch_1c5
    move-exception v0

    goto :goto_1da

    :catch_1c7
    move-exception v0

    goto :goto_1de

    :catch_1c9
    move-exception v0

    :goto_1ca
    move-object/from16 v19, v14

    goto :goto_16a

    :catch_1cd
    move-exception v0

    :goto_1ce
    move-object/from16 v19, v14

    goto :goto_16f

    :catch_1d1
    move-exception v0

    :goto_1d2
    move-object/from16 v19, v14

    goto :goto_18a

    :catch_1d5
    move-exception v0

    :goto_1d6
    move-object/from16 v19, v14

    goto :goto_174

    :catch_1d9
    move-exception v0

    :goto_1da
    move-object/from16 v19, v14

    goto :goto_179

    :catch_1dd
    move-exception v0

    :goto_1de
    move-object/from16 v19, v14

    goto :goto_17e

    :cond_1e1
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

    :goto_1fe
    move-object/from16 v17, v5

    goto :goto_1b8

    :cond_201
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

    goto :goto_1fe

    :cond_21d
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

    if-eqz v13, :cond_240

    goto :goto_242

    :cond_240
    iput-object v5, v3, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->source:Ljava/lang/String;

    :goto_242
    move/from16 v18, v0

    move-object/from16 v17, v3

    goto/16 :goto_2ad

    :catch_248
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_1ca

    :catch_24d
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_1ce

    :catch_252
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_1d2

    :catch_257
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_1d6

    :catch_25c
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_1da

    :catch_261
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_1de

    :cond_266
    move/from16 v21, v5

    move-object/from16 v19, v14

    move-object/from16 v5, v17

    move/from16 v14, v18

    const/4 v1, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_290

    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28b

    invoke-virtual {v6}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->size()I

    move-result v0

    const/16 v3, 0x64

    if-ge v0, v3, :cond_28b

    invoke-virtual {v6, v5}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->add(Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)V

    if-le v10, v14, :cond_28a

    goto :goto_28b

    :cond_28a
    move v10, v14

    :cond_28b
    :goto_28b
    move-object/from16 v17, v5

    move/from16 v18, v14

    goto :goto_2ad

    :cond_290
    const/4 v3, 0x4

    if-ne v0, v3, :cond_28b

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

    goto :goto_28b

    :goto_2ad
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0
    :try_end_2b1
    .catch Ljava/io/FileNotFoundException; {:try_start_183 .. :try_end_2b1} :catch_17d
    .catch Ljava/lang/NullPointerException; {:try_start_183 .. :try_end_2b1} :catch_178
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_183 .. :try_end_2b1} :catch_173
    .catch Ljava/lang/NumberFormatException; {:try_start_183 .. :try_end_2b1} :catch_189
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_2b1} :catch_16e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_183 .. :try_end_2b1} :catch_169

    move-object/from16 v1, p0

    move-object/from16 v14, v19

    move/from16 v5, v21

    goto/16 :goto_76

    :cond_2b9
    move/from16 v21, v5

    move-object/from16 v19, v14

    move v11, v10

    goto/16 :goto_3c9

    :catch_2c0
    move-exception v0

    move/from16 v21, v5

    move-object/from16 v19, v14

    const/16 v16, 0x0

    move/from16 v10, v16

    goto/16 :goto_16a

    :catch_2cb
    move-exception v0

    move/from16 v21, v5

    move-object/from16 v19, v14

    const/16 v16, 0x0

    move/from16 v10, v16

    goto/16 :goto_16f

    :catch_2d6
    move-exception v0

    move/from16 v21, v5

    move-object/from16 v19, v14

    const/16 v16, 0x0

    move/from16 v10, v16

    goto/16 :goto_18a

    :catch_2e1
    move-exception v0

    move/from16 v21, v5

    move-object/from16 v19, v14

    const/16 v16, 0x0

    move/from16 v10, v16

    goto/16 :goto_174

    :catch_2ec
    move-exception v0

    move/from16 v21, v5

    move-object/from16 v19, v14

    const/16 v16, 0x0

    move/from16 v10, v16

    goto/16 :goto_179

    :catch_2f7
    move-exception v0

    move/from16 v21, v5

    move-object/from16 v19, v14

    const/16 v16, 0x0

    move/from16 v10, v16

    goto/16 :goto_17e

    :catch_302
    move-exception v0

    move/from16 v21, v5

    const/4 v1, 0x0

    const/16 v16, 0x0

    move-object v13, v1

    move/from16 v10, v16

    goto :goto_340

    :catch_30c
    move-exception v0

    move/from16 v21, v5

    const/4 v1, 0x0

    const/16 v16, 0x0

    move-object v13, v1

    move/from16 v10, v16

    goto :goto_35b

    :catch_316
    move-exception v0

    move/from16 v21, v5

    const/4 v1, 0x0

    const/16 v16, 0x0

    move-object v13, v1

    move/from16 v10, v16

    goto :goto_374

    :catch_320
    move-exception v0

    move/from16 v21, v5

    const/4 v1, 0x0

    const/16 v16, 0x0

    move-object v13, v1

    move/from16 v10, v16

    goto :goto_38d

    :catch_32a
    move-exception v0

    move/from16 v21, v5

    const/4 v1, 0x0

    const/16 v16, 0x0

    move-object v13, v1

    move/from16 v10, v16

    goto/16 :goto_3a6

    :catch_335
    move-exception v0

    move/from16 v21, v5

    const/4 v1, 0x0

    const/16 v16, 0x0

    move-object v13, v1

    move/from16 v10, v16

    goto/16 :goto_3bf

    :goto_340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :goto_358
    move v11, v10

    move-object v14, v13

    goto :goto_3c9

    :goto_35b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_358

    :goto_374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_358

    :goto_38d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_358

    :goto_3a6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_358

    :goto_3bf
    const-string/jumbo v1, "no backup data"

    invoke-static {v12, v1}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_358

    :goto_3c9
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    if-eqz v0, :cond_49d

    const/4 v1, 0x6

    new-array v0, v1, [I

    fill-array-data v0, :array_4ba

    move/from16 v3, v16

    :goto_3d8
    if-ge v3, v1, :cond_49d

    :try_start_3da
    aget v4, v0, v3

    invoke-static {v4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v5

    if-eqz v5, :cond_3ea

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v5

    goto :goto_3ee

    :catch_3e7
    move-exception v0

    goto/16 :goto_49a

    :cond_3ea
    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v5

    :goto_3ee
    invoke-static {v4}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperDirLegacy(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_496

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_464

    array-length v5, v4

    if-lez v5, :cond_464

    move/from16 v5, v16

    :goto_408
    array-length v8, v4

    if-ge v5, v8, :cond_464

    aget-object v8, v4, v5

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_461

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

    :cond_461
    add-int/lit8 v5, v5, 0x1

    goto :goto_408

    :cond_464
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

    if-nez v4, :cond_496

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "migrateFromOld: delete dir "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->deleteDirectory(Ljava/io/File;)Z
    :try_end_496
    .catch Ljava/lang/Exception; {:try_start_3da .. :try_end_496} :catch_3e7

    :cond_496
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3d8

    :goto_49a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_49d
    :goto_49d
    iput v11, v6, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->key:I

    return-void

    :sswitch_data_4a0
    .sparse-switch
        -0x6587838c -> :sswitch_e4
        -0x3a8eb9e4 -> :sswitch_d9
        0xed9 -> :sswitch_ce
        0x1a084 -> :sswitch_c3
        0x107fcc7 -> :sswitch_b8
        0x762561e2 -> :sswitch_8a
    .end sparse-switch

    :array_4ba
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
    .registers 12

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getIndex(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByIndex(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    if-nez v2, :cond_1f

    if-eqz v1, :cond_1f

    invoke-virtual {v1, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v3, v3, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    move-result-object v2

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    add-int/lit8 p2, p2, -0x1

    :goto_22
    if-ltz p2, :cond_e7

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByIndex(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v3

    const-string/jumbo v4, "SnapshotManager"

    if-nez v3, :cond_35

    const-string/jumbo v3, "migrateToPriorSnapshot: Something wrong!"

    invoke-static {v4, v3}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e3

    :cond_35
    invoke-virtual {v3, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v5

    if-eqz v5, :cond_e3

    invoke-virtual {v3, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p2

    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v0, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    invoke-virtual {p2, v0}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    move-result-object p2

    if-eqz v1, :cond_66

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

    :cond_66
    invoke-virtual {v3, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getConnectedSnapshotForLiveWallpaper(I)I

    move-result v0

    iget v5, v3, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    const/4 v6, -0x1

    if-eq v0, v6, :cond_86

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object p0

    invoke-static {p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getCorrespondingWhich(I)I

    move-result v0

    if-eqz p0, :cond_83

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v7

    if-eqz v7, :cond_83

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setConnectedSnapshotForLiveWallpaper(II)V

    goto :goto_86

    :cond_83
    invoke-virtual {v3, p3, v6}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setConnectedSnapshotForLiveWallpaper(II)V

    :cond_86
    :goto_86
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

    if-nez p0, :cond_c8

    if-eqz v2, :cond_be

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_ad

    goto :goto_be

    :cond_ad
    if-nez p2, :cond_b3

    invoke-static {p1, v5, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperFile(III)Ljava/io/File;

    move-result-object p2

    :cond_b3
    invoke-static {v2, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->saveFile(Ljava/io/File;Ljava/io/File;)Z

    invoke-virtual {v3, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    return-void

    :cond_be
    :goto_be
    const-string/jumbo p0, "migrateToPriorSnapshot: source does not exist."

    invoke-static {v4, p0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->deleteFile(Ljava/io/File;)V

    return-void

    :cond_c8
    if-eqz v1, :cond_d7

    iget p0, v1, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    invoke-static {p1, p0, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperDir(III)Ljava/io/File;

    move-result-object p0

    invoke-static {p1, v5, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperDir(III)Ljava/io/File;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->renameDirectory(Ljava/io/File;Ljava/io/File;)V

    :cond_d7
    invoke-virtual {v3, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p0

    invoke-static {p1, v5, p3}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperFile(III)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    return-void

    :cond_e3
    :goto_e3
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_22

    :cond_e7
    return-void
.end method

.method public final removeSnapshotByKey(II)Ljava/util/Map;
    .registers 19

    move/from16 v1, p2

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->removeByKey(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v0

    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    const-string/jumbo v3, "wallpaper_backup/"

    if-nez v2, :cond_64

    if-nez v0, :cond_14

    goto :goto_7b

    :cond_14
    invoke-virtual {v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1d
    if-ge v6, v5, :cond_7b

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

    goto :goto_1d

    :cond_64
    if-nez v0, :cond_67

    goto :goto_7b

    :cond_67
    iget v2, v0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->userId:I

    iget v5, v0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    new-instance v6, Ljava/io/File;

    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v5, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->deleteDirectory(Ljava/io/File;)Z

    :cond_7b
    :goto_7b
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x1

    if-eqz v0, :cond_a1

    invoke-virtual {v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_8c
    if-ge v7, v6, :cond_a1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8c

    :cond_a1
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    if-nez v0, :cond_135

    const-string/jumbo v3, "SnapshotHelper"

    if-gtz v1, :cond_ac

    goto/16 :goto_139

    :cond_ac
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

    :goto_bd
    if-ge v9, v6, :cond_139

    aget v10, v5, v9

    const/4 v11, 0x0

    :goto_c2
    if-ge v11, v7, :cond_12d

    aget v0, v8, v11

    or-int/2addr v0, v10

    move/from16 v12, p1

    :try_start_c9
    invoke-static {v12, v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->listBackupFiles(II)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_110

    array-length v13, v0

    const/4 v14, 0x0

    :goto_d1
    if-ge v14, v13, :cond_110

    aget-object v15, v0, v14
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_d5} :catch_10c

    const/16 p0, 0x0

    :try_start_d7
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_108

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_108

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteFilesByKeyLegacy: failed to delete "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_105} :catch_106

    goto :goto_108

    :catch_106
    move-exception v0

    goto :goto_113

    :cond_108
    :goto_108
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x2

    goto :goto_d1

    :catch_10c
    move-exception v0

    const/16 p0, 0x0

    goto :goto_113

    :cond_110
    const/16 p0, 0x0

    goto :goto_129

    :goto_113
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "deleteFilesByKeyLegacy: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_129
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x2

    goto :goto_c2

    :cond_12d
    move/from16 v12, p1

    const/16 p0, 0x0

    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x2

    goto :goto_bd

    :cond_135
    move/from16 v12, p1

    if-gtz v1, :cond_13a

    :cond_139
    :goto_139
    return-object v2

    :cond_13a
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
    .registers 12

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

    :cond_13
    :goto_13
    const/4 v5, 0x1

    if-ge v4, v2, :cond_6e

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

    if-eqz v7, :cond_48

    iget-object v8, v7, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget v8, v8, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    invoke-virtual {v7, v8}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->deleteFile(Ljava/io/File;)V

    invoke-virtual {v7}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->deleteFile(Ljava/io/File;)V

    :cond_48
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v7

    if-eqz v7, :cond_5f

    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {v6, v5}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    move-result v7

    if-eqz v7, :cond_5f

    invoke-virtual {v6, v5}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v7

    iput v5, v7, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    :cond_5f
    invoke-virtual {v6}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData()Z

    move-result v5

    if-nez v5, :cond_13

    iget v5, v6, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->removeByKey(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_6e
    const-string/jumbo p0, "deleteFilesByWhich: "

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    const-string/jumbo v2, "SnapshotHelper"

    if-nez v0, :cond_cf

    if-gtz p2, :cond_7c

    goto/16 :goto_158

    :cond_7c
    :try_start_7c
    invoke-static {p1, p2}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->listBackupFiles(II)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_158

    array-length p1, p0

    :goto_83
    if-ge v3, p1, :cond_158

    aget-object v0, p0, v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, p2, :cond_b8

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_b8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteFilesByWhichLegacy: failed to delete "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_b5} :catch_b6

    goto :goto_b8

    :catch_b6
    move-exception p0

    goto :goto_bb

    :cond_b8
    :goto_b8
    add-int/lit8 v3, v3, 0x1

    goto :goto_83

    :goto_bb
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "deleteFilesByWhichLegacy: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_158

    :cond_cf
    if-gtz p2, :cond_d3

    goto/16 :goto_158

    :cond_d3
    :try_start_d3
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v4, "wallpaper_backup"

    invoke-direct {v0, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_158

    array-length v0, p1

    if-lez v0, :cond_158

    move v0, v3

    :goto_e9
    array-length v4, p1

    if-ge v0, v4, :cond_158

    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_142

    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_132

    array-length v5, v4

    if-lez v5, :cond_132

    move v5, v3

    :goto_100
    array-length v6, v4

    if-ge v5, v6, :cond_132

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, p2, :cond_12f

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

    goto :goto_12f

    :catch_12d
    move-exception p1

    goto :goto_145

    :cond_12f
    :goto_12f
    add-int/lit8 v5, v5, 0x1

    goto :goto_100

    :cond_132
    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_13d

    array-length v4, v4

    if-gtz v4, :cond_142

    :cond_13d
    aget-object v4, p1, v0

    invoke-static {v4}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->deleteDirectory(Ljava/io/File;)Z
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_142} :catch_12d

    :cond_142
    add-int/lit8 v0, v0, 0x1

    goto :goto_e9

    :goto_145
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_158
    :goto_158
    return-object v1
.end method

.method public final saveSettingsLockedForSnapshot(I)V
    .registers 19

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

    :try_start_35
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3f} :catch_129
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_35 .. :try_end_3f} :catch_129
    .catch Ljava/lang/IllegalStateException; {:try_start_35 .. :try_end_3f} :catch_129
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_3f} :catch_129

    :try_start_3f
    invoke-static {v7}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v8

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v5, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->size()I

    move-result v10

    if-lez v10, :cond_103

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

    :goto_6a
    if-ltz v4, :cond_103

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByIndex(I)Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    move-result-object v10

    if-eqz v10, :cond_fd

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

    :goto_92
    if-ge v13, v12, :cond_fa

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v10, v14}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v15

    if-eqz v15, :cond_f7

    invoke-static {v14}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v16

    if-eqz v16, :cond_b5

    const-string/jumbo v16, "wp"

    :goto_af
    move-object/from16 v9, v16

    goto :goto_b9

    :catch_b2
    move-object v5, v7

    goto/16 :goto_129

    :cond_b5
    const-string/jumbo v16, "kwp"

    goto :goto_af

    :goto_b9
    invoke-static {v14}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v16

    if-nez v16, :cond_c5

    invoke-static {v14}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSupportLock(I)Z

    move-result v16

    if-eqz v16, :cond_f7

    :cond_c5
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

    if-eqz v5, :cond_df

    iget-object v5, v5, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    goto :goto_e0

    :cond_df
    const/4 v5, 0x0

    :goto_e0
    check-cast v5, Ljava/util/HashMap;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Settings"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5, v14}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->writeSnapshotSettingsData(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/HashMap;I)V

    :cond_f7
    const/4 v5, 0x0

    const/4 v9, 0x0

    goto :goto_92

    :cond_fa
    invoke-interface {v8, v5, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_fd
    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    goto/16 :goto_6a

    :cond_103
    iget-object v1, v0, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshotHistories:Ljava/util/ArrayList;

    if-eqz v1, :cond_10c

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto :goto_10d

    :cond_10c
    const/4 v9, 0x0

    :goto_10d
    if-lez v9, :cond_119

    const/4 v5, 0x0

    invoke-interface {v8, v5, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v8, v0}, Lcom/samsung/android/server/wallpaper/snapshot/SnapshotHelper;->writeSnapshotHistory(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/samsung/android/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;)V

    invoke-interface {v8, v5, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_119
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_128} :catch_b2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3f .. :try_end_128} :catch_b2
    .catch Ljava/lang/IllegalStateException; {:try_start_3f .. :try_end_128} :catch_b2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f .. :try_end_128} :catch_b2

    return-void

    :catch_129
    :goto_129
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->rollback()V

    return-void
.end method
