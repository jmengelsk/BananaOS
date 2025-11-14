.class public Lcom/android/server/usage/UsageStatsDatabase;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final BACKUP_VERSION:I = 0x4

.field static final MAX_FILES_PER_INTERVAL_TYPE:[I

.field public static final SELECTION_LOG_RETENTION_LEN:I


# instance fields
.field public final mBackupsDir:Ljava/io/File;

.field public final mCal:Lcom/android/server/usage/UnixCalendar;

.field public mCurrentVersion:I

.field public final mIntervalDirs:[Ljava/io/File;

.field public final mLock:Ljava/lang/Object;

.field public mNewUpdate:Z

.field public final mPackageMappingsFile:Ljava/io/File;

.field public final mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

.field final mSortedStatFiles:[Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/LongSparseArray<",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field

.field public final mUpdateBreadcrumb:Ljava/io/File;

.field public mUpgradePerformed:Z

.field public final mVersionFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0xc

    const/16 v1, 0xa

    const/16 v2, 0x64

    const/16 v3, 0x32

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/usage/UsageStatsDatabase;->MAX_FILES_PER_INTERVAL_TYPE:[I

    const-string/jumbo v0, "ro.usagestats.chooser.retention"

    const/16 v1, 0xe

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/usage/UsageStatsDatabase;->SELECTION_LOG_RETENTION_LEN:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/usage/PackagesTokenData;

    invoke-direct {v0}, Lcom/android/server/usage/PackagesTokenData;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "daily"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "weekly"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "monthly"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "yearly"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    iput p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    new-instance p2, Ljava/io/File;

    const-string/jumbo v1, "version"

    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    new-instance p2, Ljava/io/File;

    const-string/jumbo v1, "backups"

    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    new-instance p2, Ljava/io/File;

    const-string/jumbo v1, "breadcrumb"

    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    new-array p2, v0, [Landroid/util/LongSparseArray;

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    new-instance p2, Ljava/io/File;

    const-string/jumbo v0, "mappings"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    new-instance p1, Lcom/android/server/usage/UnixCalendar;

    invoke-direct {p1}, Lcom/android/server/usage/UnixCalendar;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    return-void
.end method

.method public static calculatePackagesUsedWithinTimeframe(Lcom/android/server/usage/IntervalStats;Ljava/util/Set;J)V
    .registers 7

    iget-object p0, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getLastTimePackageUsed()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-lez v1, :cond_a

    iget-object v0, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_27
    return-void
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .registers 6

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1c

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_19

    :cond_16
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;
    .registers 4

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0}, Landroid/app/usage/EventList;->clear()V

    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    iget-object p1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0, p1}, Landroid/app/usage/EventList;->merge(Landroid/app/usage/EventList;)V

    return-object p0
.end method

.method public static parseBeginTime(Ljava/io/File;)J
    .registers 5

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_20

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1c

    const/16 v3, 0x39

    if-le v2, v3, :cond_19

    goto :goto_1c

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    :goto_1c
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_20
    :try_start_20
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_24} :catch_25

    return-wide v0

    :catch_25
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static pruneFilesOlderThan(Ljava/io/File;J)V
    .registers 8

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_22

    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_22

    aget-object v2, p0, v1

    :try_start_c
    invoke-static {v2}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v3
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_11

    goto :goto_13

    :catch_11
    const-wide/16 v3, 0x0

    :goto_13
    cmp-long v3, v3, p1

    if-gez v3, :cond_1f

    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_22
    return-void
.end method

.method public static pruneStats(Ljava/util/HashMap;Lcom/android/server/usage/IntervalStats;)Z
    .registers 10

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_9
    if-ltz v0, :cond_30

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    iget-object v4, v3, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_27

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v3, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_2d

    :cond_27
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move v2, v1

    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_30
    if-eqz v2, :cond_37

    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_37
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0}, Landroid/app/usage/EventList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_3e
    if-ltz v0, :cond_63

    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v0}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_5a

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_60

    :cond_5a
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v2, v0}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    move v2, v1

    :cond_60
    add-int/lit8 v0, v0, -0x1

    goto :goto_3e

    :cond_63
    return v2
.end method

.method public static readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z
    .registers 8

    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_4} :catch_21

    :try_start_4
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z

    move-result p2

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide p3

    iput-wide p3, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    :try_start_18
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1b

    :catch_1b
    return p2

    :catchall_1c
    move-exception p0

    :try_start_1d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_20

    :catch_20
    :try_start_20
    throw p0
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_21} :catch_21

    :catch_21
    move-exception p0

    const-string/jumbo p1, "UsageStatsDatabase"

    invoke-static {p1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p0
.end method

.method public static readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z
    .registers 23

    move-object/from16 v1, p1

    move/from16 v0, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "UsageStatsDatabase"

    if-eq v0, v4, :cond_294

    const/4 v6, 0x2

    if-eq v0, v6, :cond_294

    const/4 v6, 0x3

    if-eq v0, v6, :cond_294

    const/4 v6, 0x4

    const-string/jumbo v7, "Unable to read interval stats from proto."

    if-eq v0, v6, :cond_288

    const/4 v6, 0x5

    if-ne v0, v6, :cond_26a

    move-object/from16 v8, p0

    move/from16 v9, p4

    :try_start_20
    invoke-static {v8, v1, v9}, Lcom/android/server/usage/UsageStatsProtoV2;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;Z)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception v0

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v5, v1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v7, v3

    move v8, v7

    :goto_35
    const/4 v9, 0x0

    if-ge v7, v5, :cond_de

    iget-object v10, v1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    iget-object v11, v1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/usage/UsageStats;

    iget-object v12, v2, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    if-nez v12, :cond_51

    goto :goto_57

    :cond_51
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    :goto_57
    iput-object v9, v11, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    if-nez v9, :cond_69

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 p0, v0

    move v8, v4

    move/from16 v16, v8

    goto/16 :goto_d4

    :cond_69
    iget-object v9, v11, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    move v12, v3

    :goto_70
    if-ge v12, v9, :cond_c9

    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    iget-object v14, v11, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v2, v10, v14}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_88

    move-object/from16 p0, v0

    move/from16 v16, v4

    goto :goto_c0

    :cond_88
    iget-object v15, v11, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v15, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseIntArray;

    move/from16 v16, v4

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    move v6, v3

    :goto_97
    if-ge v6, v4, :cond_b9

    invoke-virtual {v15, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v10, v3}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a6

    move-object/from16 p0, v0

    goto :goto_b3

    :cond_a6
    invoke-virtual {v15, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v17

    move-object/from16 p0, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b3
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    const/4 v3, 0x0

    goto :goto_97

    :cond_b9
    move-object/from16 p0, v0

    iget-object v0, v11, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c0
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v16

    const/4 v3, 0x0

    const/4 v6, 0x5

    goto :goto_70

    :cond_c9
    move-object/from16 p0, v0

    move/from16 v16, v4

    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    iget-object v3, v11, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d4
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v16

    const/4 v3, 0x0

    const/4 v6, 0x5

    goto/16 :goto_35

    :cond_de
    move-object/from16 p0, v0

    move/from16 v16, v4

    const-string v0, "IntervalStats"

    if-eqz v8, :cond_100

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to parse usage stats packages: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_100
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iget-object v4, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v4}, Landroid/app/usage/EventList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    :goto_10e
    if-ltz v4, :cond_246

    iget-object v6, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v6, v4}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v6

    iget v7, v6, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    iget-object v10, v2, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    if-nez v10, :cond_125

    move-object v10, v9

    const/4 v11, 0x0

    goto :goto_12c

    :cond_125
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    :goto_12c
    iput-object v10, v6, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-nez v10, :cond_141

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v5, v4}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    move/from16 v5, v16

    const/4 v12, 0x5

    goto/16 :goto_242

    :cond_141
    iget v10, v6, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    const/4 v12, -0x1

    if-eq v10, v12, :cond_14c

    invoke-virtual {v2, v7, v10}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    :cond_14c
    iget v10, v6, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    if-eq v10, v12, :cond_156

    invoke-virtual {v2, v7, v10}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    :cond_156
    iget v10, v6, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    if-eq v10, v12, :cond_160

    invoke-virtual {v2, v7, v10}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    :cond_160
    iget v10, v6, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v12, 0x5

    if-eq v10, v12, :cond_237

    const/16 v13, 0xc

    const-string v14, " for package "

    if-eq v10, v13, :cond_20c

    const/16 v13, 0x1e

    if-eq v10, v13, :cond_1e2

    const/4 v13, 0x7

    if-eq v10, v13, :cond_1a5

    const/16 v13, 0x8

    if-eq v10, v13, :cond_178

    goto/16 :goto_242

    :cond_178
    iget v10, v6, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    invoke-virtual {v2, v7, v10}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-nez v10, :cond_242

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Unable to parse shortcut "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v6, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v5, v4}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    :goto_1a1
    move/from16 v5, v16

    goto/16 :goto_242

    :cond_1a5
    iget-object v10, v6, Landroid/app/usage/UsageEvents$Event;->mUserInteractionExtrasToken:Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    if-eqz v10, :cond_242

    iget v10, v10, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mCategoryToken:I

    invoke-virtual {v2, v7, v10}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v10

    iget-object v13, v6, Landroid/app/usage/UsageEvents$Event;->mUserInteractionExtrasToken:Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    iget v13, v13, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mActionToken:I

    invoke-virtual {v2, v7, v13}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1dc

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1c4

    goto :goto_1dc

    :cond_1c4
    new-instance v13, Landroid/os/PersistableBundle;

    invoke-direct {v13}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v13, v6, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    const-string/jumbo v14, "android.app.usage.extra.EVENT_CATEGORY"

    invoke-virtual {v13, v14, v10}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v6, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    const-string/jumbo v13, "android.app.usage.extra.EVENT_ACTION"

    invoke-virtual {v10, v13, v7}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v6, Landroid/app/usage/UsageEvents$Event;->mUserInteractionExtrasToken:Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    goto :goto_242

    :cond_1dc
    :goto_1dc
    iget-object v5, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v5, v4}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    goto :goto_1a1

    :cond_1e2
    iget v10, v6, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    invoke-virtual {v2, v7, v10}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    if-nez v10, :cond_242

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Unable to parse locus "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v6, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v5, v4}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    goto :goto_1a1

    :cond_20c
    iget v10, v6, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    invoke-virtual {v2, v7, v10}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-nez v10, :cond_242

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Unable to parse notification channel "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v6, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v5, v4}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    goto/16 :goto_1a1

    :cond_237
    iget-object v7, v6, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v7, :cond_242

    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7}, Landroid/content/res/Configuration;-><init>()V

    iput-object v7, v6, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    :cond_242
    :goto_242
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_10e

    :cond_246
    const/4 v11, 0x0

    if-eqz v5, :cond_263

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to parse event packages: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_263
    if-nez v8, :cond_267

    if-eqz v5, :cond_2a8

    :cond_267
    move/from16 v3, v16

    goto :goto_2a9

    :cond_26a
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unhandled UsageStatsDatabase version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on read."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_288
    move-object/from16 v8, p0

    move v11, v3

    :try_start_28b
    invoke-static/range {p0 .. p1}, Lcom/android/server/usage/UsageStatsProto;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_28e
    .catch Ljava/lang/Exception; {:try_start_28b .. :try_end_28e} :catch_28f

    goto :goto_2a8

    :catch_28f
    move-exception v0

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a8

    :cond_294
    move-object/from16 v8, p0

    move v11, v3

    const-string/jumbo v2, "Reading UsageStats as XML; database version: "

    invoke-static {v0, v2, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_29d
    invoke-static/range {p0 .. p1}, Lcom/android/server/usage/UsageStatsXml;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_2a0
    .catch Ljava/lang/Exception; {:try_start_29d .. :try_end_2a0} :catch_2a1

    goto :goto_2a8

    :catch_2a1
    move-exception v0

    const-string/jumbo v1, "Unable to read interval stats from XML"

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a8
    :goto_2a8
    move v3, v11

    :goto_2a9
    return v3
.end method

.method public static writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    .registers 5

    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    :try_start_4
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_14
    .catchall {:try_start_4 .. :try_end_a} :catchall_f

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :catchall_f
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw p1

    :catch_14
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void
.end method

.method public static writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    .registers 7

    const/4 v0, 0x1

    const-string/jumbo v1, "UsageStatsDatabase"

    if-eq p2, v0, :cond_48

    const/4 v0, 0x2

    if-eq p2, v0, :cond_48

    const/4 v0, 0x3

    if-eq p2, v0, :cond_48

    const/4 v0, 0x4

    const-string/jumbo v2, "Unable to write interval stats to proto."

    if-eq p2, v0, :cond_3f

    const/4 v0, 0x5

    if-ne p2, v0, :cond_21

    invoke-virtual {p1, p3}, Lcom/android/server/usage/IntervalStats;->obfuscateData(Lcom/android/server/usage/PackagesTokenData;)V

    :try_start_18
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsProtoV2;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p0

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p0

    :cond_21
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Unhandled UsageStatsDatabase version: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on write."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    :try_start_3f
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsProto;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_43

    return-void

    :catch_43
    move-exception p0

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p0

    :cond_48
    const-string p0, "Attempting to write UsageStats as XML with version "

    invoke-static {p2, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applyRestoredPayload(Ljava/lang/String;[B)Ljava/util/Set;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    const-string/jumbo v0, "usage_stats"

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11a

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v9

    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_104

    :try_start_29
    new-instance v11, Ljava/io/DataInputStream;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    move-object/from16 v13, p2

    invoke-direct {v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v11, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    if-lt v12, v4, :cond_106

    const/4 v13, 0x4

    if-le v12, v13, :cond_40

    goto/16 :goto_106

    :cond_40
    move v13, v0

    :goto_41
    iget-object v14, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v15, v14

    if-ge v13, v15, :cond_62

    aget-object v14, v14, v13

    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v14

    array-length v15, v14

    move v8, v0

    :goto_4e
    if-ge v8, v15, :cond_58

    aget-object v16, v14, v8

    invoke-static/range {v16 .. v16}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4e

    :cond_58
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x3

    goto :goto_41

    :catchall_5c
    move-exception v0

    goto/16 :goto_116

    :catch_5f
    move-exception v0

    goto/16 :goto_10b

    :cond_62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v16, v7

    const-wide/16 v6, 0x5a

    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long/2addr v13, v6

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    move v7, v0

    :goto_76
    if-ge v7, v6, :cond_9a

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    new-array v15, v8, [B

    invoke-virtual {v11, v15, v0, v8}, Ljava/io/DataInputStream;->read([BII)I

    invoke-virtual {v1, v12, v15}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats(I[B)Lcom/android/server/usage/IntervalStats;

    move-result-object v8

    invoke-static {v8, v10, v13, v14}, Lcom/android/server/usage/UsageStatsDatabase;->calculatePackagesUsedWithinTimeframe(Lcom/android/server/usage/IntervalStats;Ljava/util/Set;J)V

    iget-object v15, v8, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-static {v8, v3}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    invoke-virtual {v1, v0, v8}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_76

    :cond_9a
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v6, v0

    :goto_9f
    if-ge v6, v3, :cond_ba

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    new-array v8, v7, [B

    invoke-virtual {v11, v8, v0, v7}, Ljava/io/DataInputStream;->read([BII)I

    invoke-virtual {v1, v12, v8}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats(I[B)Lcom/android/server/usage/IntervalStats;

    move-result-object v7

    invoke-static {v7, v10, v13, v14}, Lcom/android/server/usage/UsageStatsDatabase;->calculatePackagesUsedWithinTimeframe(Lcom/android/server/usage/IntervalStats;Ljava/util/Set;J)V

    invoke-static {v7, v5}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    invoke-virtual {v1, v4, v7}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9f

    :cond_ba
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v4, v0

    :goto_bf
    if-ge v4, v3, :cond_df

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    new-array v6, v5, [B

    invoke-virtual {v11, v6, v0, v5}, Ljava/io/DataInputStream;->read([BII)I

    invoke-virtual {v1, v12, v6}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats(I[B)Lcom/android/server/usage/IntervalStats;

    move-result-object v5

    invoke-static {v5, v10, v13, v14}, Lcom/android/server/usage/UsageStatsDatabase;->calculatePackagesUsedWithinTimeframe(Lcom/android/server/usage/IntervalStats;Ljava/util/Set;J)V

    move-object/from16 v6, v16

    invoke-static {v5, v6}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    const/4 v15, 0x2

    invoke-virtual {v1, v15, v5}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v16, v6

    goto :goto_bf

    :cond_df
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v4, v0

    :goto_e4
    if-ge v4, v3, :cond_100

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    new-array v6, v5, [B

    invoke-virtual {v11, v6, v0, v5}, Ljava/io/DataInputStream;->read([BII)I

    invoke-virtual {v1, v12, v6}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats(I[B)Lcom/android/server/usage/IntervalStats;

    move-result-object v5

    invoke-static {v5, v10, v13, v14}, Lcom/android/server/usage/UsageStatsDatabase;->calculatePackagesUsedWithinTimeframe(Lcom/android/server/usage/IntervalStats;Ljava/util/Set;J)V

    invoke-static {v5, v9}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    const/4 v6, 0x3

    invoke-virtual {v1, v6, v5}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_fd} :catch_5f
    .catchall {:try_start_29 .. :try_end_fd} :catchall_5c

    add-int/lit8 v4, v4, 0x1

    goto :goto_e4

    :cond_100
    :goto_100
    :try_start_100
    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    goto :goto_114

    :catchall_104
    move-exception v0

    goto :goto_11e

    :cond_106
    :goto_106
    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    monitor-exit v2
    :try_end_10a
    .catchall {:try_start_100 .. :try_end_10a} :catchall_104

    return-object v10

    :goto_10b
    :try_start_10b
    const-string/jumbo v3, "UsageStatsDatabase"

    const-string v4, "Failed to read data from input stream"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_113
    .catchall {:try_start_10b .. :try_end_113} :catchall_5c

    goto :goto_100

    :goto_114
    :try_start_114
    monitor-exit v2

    return-object v10

    :goto_116
    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    throw v0

    :cond_11a
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    monitor-exit v2

    return-object v0

    :goto_11e
    monitor-exit v2
    :try_end_11f
    .catchall {:try_start_114 .. :try_end_11f} :catchall_104

    throw v0
.end method

.method public final checkVersionAndBuildLocked()V
    .registers 18

    move-object/from16 v1, p0

    const-string v2, "\n"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "ro.csc.sales_code"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ril.official_cscver"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    const/4 v5, 0x0

    :try_start_59
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    iget-object v7, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_65} :catch_8b
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_65} :catch_8b

    :try_start_65
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7d

    iput-boolean v5, v1, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z
    :try_end_79
    .catchall {:try_start_65 .. :try_end_79} :catchall_7a

    goto :goto_7d

    :catchall_7a
    move-exception v0

    move-object v7, v0

    goto :goto_82

    :cond_7d
    :goto_7d
    :try_start_7d
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_80} :catch_8b
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_8b

    move v6, v0

    goto :goto_8c

    :goto_82
    :try_start_82
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    goto :goto_8a

    :catchall_86
    move-exception v0

    :try_start_87
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8a
    throw v7
    :try_end_8b
    .catch Ljava/lang/NumberFormatException; {:try_start_87 .. :try_end_8b} :catch_8b
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8b} :catch_8b

    :catch_8b
    move v6, v5

    :goto_8c
    iget v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const-string/jumbo v7, "UsageStatsDatabase"

    if-eq v6, v0, :cond_c9

    const-string/jumbo v0, "Upgrading from version "

    const-string v8, " to "

    invoke-static {v6, v0, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v9, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-static {v0, v9, v7}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c3

    :try_start_a9
    invoke-virtual {v1, v6}, Lcom/android/server/usage/UsageStatsDatabase;->doUpgradeLocked(I)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ac} :catch_ad

    goto :goto_c9

    :catch_ad
    move-exception v0

    const-string v2, "Failed to upgrade from version "

    invoke-static {v6, v2, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v6, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    return-void

    :cond_c3
    const-string/jumbo v0, "Version upgrade breadcrumb found on disk! Continuing version upgrade"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c9
    :goto_c9
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1cd

    :try_start_d1
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    iget-object v9, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_dd
    .catch Ljava/lang/NumberFormatException; {:try_start_d1 .. :try_end_dd} :catch_1b5
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_dd} :catch_1b5

    :try_start_dd
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_ed
    .catchall {:try_start_dd .. :try_end_ed} :catchall_1b7

    :try_start_ed
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_f0
    .catch Ljava/lang/NumberFormatException; {:try_start_ed .. :try_end_f0} :catch_1b5
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_1b5

    iget v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v11, 0x4

    if-lt v8, v11, :cond_1a1

    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    const/4 v11, 0x3

    if-gt v0, v11, :cond_107

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Reading UsageStats as XML; current database version: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-static {v11, v12, v7}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_107
    new-instance v11, Ljava/io/File;

    iget-object v12, v1, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v12, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v9, 0x5

    if-lt v0, v9, :cond_118

    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsDatabase;->readMappingsLocked()V

    :cond_118
    move v10, v5

    :goto_119
    iget-object v12, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v12, v12

    if-ge v10, v12, :cond_192

    new-instance v12, Ljava/io/File;

    iget-object v13, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v13, v13, v10

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v11, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_18a

    move v13, v5

    :goto_132
    array-length v14, v12

    if-ge v13, v14, :cond_18a

    :try_start_135
    new-instance v14, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v14}, Lcom/android/server/usage/IntervalStats;-><init>()V

    new-instance v15, Landroid/util/AtomicFile;

    aget-object v4, v12, v13

    invoke-direct {v15, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-static {v15, v14, v0, v8, v5}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z

    iget v4, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    if-lt v4, v9, :cond_14f

    invoke-virtual {v14, v8}, Lcom/android/server/usage/IntervalStats;->obfuscateData(Lcom/android/server/usage/PackagesTokenData;)V

    goto :goto_14f

    :catch_14c
    move/from16 v16, v10

    goto :goto_16b

    :cond_14f
    :goto_14f
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v15, Ljava/io/File;

    iget-object v5, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v5, v5, v10
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_157} :catch_14c

    move/from16 v16, v10

    :try_start_159
    iget-wide v9, v14, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v15, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v15}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iget v5, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-static {v4, v14, v5, v8}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_16a} :catch_16b

    goto :goto_182

    :catch_16b
    :goto_16b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to upgrade backup file : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v12, v13

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_182
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v16

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x5

    goto :goto_132

    :cond_18a
    move/from16 v16, v10

    add-int/lit8 v10, v16, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x5

    goto :goto_119

    :cond_192
    iget v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v4, 0x5

    if-lt v0, v4, :cond_1cd

    :try_start_197
    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_19a
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_19a} :catch_19b

    goto :goto_1cd

    :catch_19b
    const-string v0, "Failed to write the tokens mappings file."

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cd

    :cond_1a1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Attempting to upgrade to an unsupported version: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cd

    :catch_1b5
    move-exception v0

    goto :goto_1c2

    :catchall_1b7
    move-exception v0

    move-object v1, v0

    :try_start_1b9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_1bc
    .catchall {:try_start_1b9 .. :try_end_1bc} :catchall_1bd

    goto :goto_1c1

    :catchall_1bd
    move-exception v0

    :try_start_1be
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1c1
    throw v1
    :try_end_1c2
    .catch Ljava/lang/NumberFormatException; {:try_start_1be .. :try_end_1c2} :catch_1b5
    .catch Ljava/io/IOException; {:try_start_1be .. :try_end_1c2} :catch_1b5

    :goto_1c2
    const-string v1, "Failed read version upgrade breadcrumb"

    invoke-static {v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1cd
    :goto_1cd
    iget v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    if-ne v6, v0, :cond_1d5

    iget-boolean v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    if-eqz v0, :cond_1f9

    :cond_1d5
    :try_start_1d5
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    iget-object v5, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1e1
    .catch Ljava/io/IOException; {:try_start_1d5 .. :try_end_1e1} :catch_21b

    :try_start_1e1
    iget v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1f6
    .catchall {:try_start_1e1 .. :try_end_1f6} :catchall_21d

    :try_start_1f6
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_1f9
    .catch Ljava/io/IOException; {:try_start_1f6 .. :try_end_1f9} :catch_21b

    :cond_1f9
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_20a

    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpgradePerformed:Z

    goto :goto_20b

    :cond_20a
    const/4 v2, 0x1

    :goto_20b
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_21a

    iput-boolean v2, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpgradePerformed:Z

    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    :cond_21a
    return-void

    :catch_21b
    move-exception v0

    goto :goto_228

    :catchall_21d
    move-exception v0

    move-object v1, v0

    :try_start_21f
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_222
    .catchall {:try_start_21f .. :try_end_222} :catchall_223

    goto :goto_227

    :catchall_223
    move-exception v0

    :try_start_224
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_227
    throw v1
    :try_end_228
    .catch Ljava/io/IOException; {:try_start_224 .. :try_end_228} :catch_21b

    :goto_228
    const-string v1, "Failed to write new version"

    invoke-static {v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final deserializeIntervalStats(I[B)Lcom/android/server/usage/IntervalStats;
    .registers 6

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    :try_start_f
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, p0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_1c

    return-object v0

    :catch_1c
    move-exception p0

    const-string/jumbo p1, "UsageStatsDatabase"

    const-string p2, "DeSerializing IntervalStats Failed"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final doUpgradeLocked(I)V
    .registers 19

    move-object/from16 v1, p0

    const-string v0, "\n"

    const/4 v2, 0x2

    const-string/jumbo v3, "UsageStatsDatabase"

    const/4 v4, 0x0

    move/from16 v5, p1

    if-ge v5, v2, :cond_30

    const-string v0, "Deleting all usage stats files"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    :goto_13
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v3, v2

    if-ge v0, v3, :cond_2f

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2c

    array-length v3, v2

    move v5, v4

    :goto_22
    if-ge v5, v3, :cond_2c

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2f
    return-void

    :cond_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v2, Ljava/io/File;

    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_149

    :try_start_48
    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    iget-object v10, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v9

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/nio/file/CopyOption;

    sget-object v12, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v12, v11, v4

    invoke-static {v8, v9, v11}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_67} :catch_12b

    move v8, v4

    :goto_68
    iget-object v9, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v9, v9

    if-ge v8, v9, :cond_eb

    new-instance v9, Ljava/io/File;

    iget-object v11, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v11, v11, v8

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v2, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_d3

    iget-object v11, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v11, v11, v8

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_d0

    move v12, v4

    :goto_8e
    array-length v13, v11

    if-ge v12, v13, :cond_d0

    new-instance v13, Ljava/io/File;

    aget-object v14, v11, v12

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v9, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_9c
    aget-object v14, v11, v12

    invoke-virtual {v14}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v14

    invoke-virtual {v13}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v13

    new-array v15, v10, [Ljava/nio/file/CopyOption;

    sget-object v16, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v16, v15, v4

    invoke-static {v14, v13, v15}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_af} :catch_b2

    add-int/lit8 v12, v12, 0x1

    goto :goto_8e

    :catch_b2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to back up file : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v11, v12

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_d0
    add-int/lit8 v8, v8, 0x1

    goto :goto_68

    :cond_d3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create interval backup directory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_eb
    const/4 v2, 0x0

    :try_start_ec
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_f8} :catch_11b
    .catchall {:try_start_ec .. :try_end_f8} :catchall_119

    :try_start_f8
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_10f} :catch_116
    .catchall {:try_start_f8 .. :try_end_10f} :catchall_113

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_113
    move-exception v0

    move-object v2, v4

    goto :goto_127

    :catch_116
    move-exception v0

    move-object v2, v4

    goto :goto_11c

    :catchall_119
    move-exception v0

    goto :goto_127

    :catch_11b
    move-exception v0

    :goto_11c
    :try_start_11c
    const-string v1, "Failed to write new version upgrade breadcrumb"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_127
    .catchall {:try_start_11c .. :try_end_127} :catchall_119

    :goto_127
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catch_12b
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to back up version file : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_149
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create backup directory "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "UsageStatsDatabase:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "Database Summary:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v1, 0x0

    move v2, v1

    :goto_1f
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    array-length v4, v3

    if-ge v2, v4, :cond_94

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    invoke-static {v2}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " stats files: "

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v5, ", sorted list of files:"

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v5, v1

    :goto_42
    if-ge v5, v4, :cond_8e

    invoke-virtual {v3, v5}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    if-eqz p2, :cond_54

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_60

    :catchall_52
    move-exception p0

    goto :goto_99

    :cond_54
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v6, v7, v9}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v8, v6}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    :goto_60
    invoke-virtual {v3, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "byte"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    :cond_8e
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_94
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    monitor-exit v0

    return-void

    :goto_99
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_3 .. :try_end_9a} :catchall_52

    throw p0
.end method

.method public final dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8

    const-string/jumbo v0, "Removed Package Tokens: "

    const-string/jumbo v1, "Tokens Map Size: "

    const-string v2, "Counter: "

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_b
    const-string/jumbo v4, "Obfuscated Packages Mappings:"

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget v2, v2, Lcom/android/server/usage/PackagesTokenData;->counter:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v1, v1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v1, v1, Lcom/android/server/usage/PackagesTokenData;->removedPackageTokens:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_66

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v0, v0, Lcom/android/server/usage/PackagesTokenData;->removedPackageTokens:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_66

    :catchall_64
    move-exception p0

    goto :goto_b7

    :cond_66
    :goto_66
    const/4 v0, 0x0

    :goto_67
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v1, v1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_af

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v1, v1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    const-string v2, ", "

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v4, v4, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v2, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": ["

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    :cond_af
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    monitor-exit v3

    return-void

    :goto_b7
    monitor-exit v3
    :try_end_b8
    .catchall {:try_start_b .. :try_end_b8} :catchall_64

    throw p0
.end method

.method public forceIndexFiles()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public getBackupPayload(Ljava/lang/String;I)[B
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lt p2, v2, :cond_10

    if-gt p2, v1, :cond_10

    const-string/jumbo p0, "UsageStatsDatabase"

    const-string p1, "Attempting to backup UsageStats as XML with version "

    invoke-static {p2, p1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_10
    if-lt p2, v2, :cond_e9

    const/4 v3, 0x4

    if-le p2, v3, :cond_17

    goto/16 :goto_e9

    :cond_17
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1a
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string/jumbo v4, "usage_stats"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 p1, 0x0

    invoke-virtual {p0, v4, v5, p1}, Lcom/android/server/usage/UsageStatsDatabase;->prune(JZ)V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_35
    .catchall {:try_start_1a .. :try_end_35} :catchall_5e

    :try_start_35
    invoke-virtual {v4, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v5, p1

    :goto_44
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_64

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v6, v6, p1

    invoke-virtual {v6, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    invoke-virtual {p0, v4, v6, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    :catchall_5e
    move-exception p0

    goto/16 :goto_e7

    :catch_61
    move-exception p0

    goto/16 :goto_d6

    :cond_64
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v5, p1

    :goto_70
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_8a

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v6, v6, v2

    invoke-virtual {v6, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    invoke-virtual {p0, v4, v6, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    :cond_8a
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v2, p1

    :goto_97
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_b1

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v6, v6, v5

    invoke-virtual {v6, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    invoke-virtual {p0, v4, v6, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_97

    :cond_b1
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_bc
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge p1, v2, :cond_e1

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;

    invoke-virtual {p0, v4, v2, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_d3} :catch_61
    .catchall {:try_start_35 .. :try_end_d3} :catchall_5e

    add-int/lit8 p1, p1, 0x1

    goto :goto_bc

    :goto_d6
    :try_start_d6
    const-string/jumbo p1, "UsageStatsDatabase"

    const-string p2, "Failed to write data to output stream"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_e1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    monitor-exit v3

    return-object p0

    :goto_e7
    monitor-exit v3
    :try_end_e8
    .catchall {:try_start_d6 .. :try_end_e8} :catchall_5e

    throw p0

    :cond_e9
    :goto_e9
    const-string/jumbo p0, "UsageStatsDatabase"

    const-string p1, "Attempting to backup UsageStats with an unknown version: "

    invoke-static {p2, p1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;
    .registers 6

    const-string v0, "Bad interval type "

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-ltz p1, :cond_3d

    :try_start_7
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v2, v2

    if-ge p1, v2, :cond_3d

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_19

    return-object v2

    :catchall_19
    move-exception p0

    goto :goto_4f

    :cond_1b
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object p1, v3, p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/AtomicFile;

    new-instance v0, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_30} :catch_32
    .catchall {:try_start_1b .. :try_end_30} :catchall_19

    :try_start_30
    monitor-exit v1

    return-object v0

    :catch_32
    move-exception p0

    const-string/jumbo p1, "UsageStatsDatabase"

    const-string v0, "Failed to read usage stats file"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v1

    return-object v2

    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_30 .. :try_end_50} :catchall_19

    throw p0
.end method

.method public final indexFilesLocked()V
    .registers 13

    new-instance v0, Lcom/android/server/usage/UsageStatsDatabase$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    array-length v4, v3

    if-ge v2, v4, :cond_8d

    aget-object v4, v3, v2

    if-nez v4, :cond_18

    new-instance v4, Landroid/util/LongSparseArray;

    invoke-direct {v4}, Landroid/util/LongSparseArray;-><init>()V

    aput-object v4, v3, v2

    goto :goto_1b

    :cond_18
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->clear()V

    :goto_1b
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_89

    array-length v4, v3

    move v5, v1

    :goto_27
    const-string/jumbo v6, "UsageStatsDatabase"

    if-ge v5, v4, :cond_59

    aget-object v7, v3, v5

    new-instance v8, Landroid/util/AtomicFile;

    invoke-direct {v8, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_33
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v9, v9, v2

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_42} :catch_43

    goto :goto_56

    :catch_43
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "failed to index file: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_56
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_59
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    sget-object v4, Lcom/android/server/usage/UsageStatsDatabase;->MAX_FILES_PER_INTERVAL_TYPE:[I

    aget v4, v4, v2

    sub-int/2addr v3, v4

    if-lez v3, :cond_89

    move v4, v1

    :goto_69
    if-ge v4, v3, :cond_82

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v5, v5, v2

    invoke-virtual {v5, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->delete()V

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v5, v5, v2

    invoke-virtual {v5, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    :cond_82
    const-string v4, "Deleted "

    const-string v5, " stat files for interval "

    invoke-static {v3, v2, v4, v5, v6}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_89
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_8d
    return-void
.end method

.method public final prune(JZ)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    iput-wide p1, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    if-nez p3, :cond_14

    const/4 v2, -0x2

    int-to-long v2, v2

    const-wide v4, 0x757b12c00L

    mul-long/2addr v2, v4

    add-long/2addr v2, p1

    iput-wide v2, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    :cond_14
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iget-wide v3, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    invoke-static {v2, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    iput-wide p1, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    if-nez p3, :cond_2f

    const/4 v2, -0x6

    int-to-long v2, v2

    const-wide v4, 0x9a7ec800L

    mul-long/2addr v2, v4

    add-long/2addr v2, p1

    iput-wide v2, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    :cond_2f
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget-wide v3, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    invoke-static {v2, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    iput-wide p1, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    if-nez p3, :cond_48

    const/4 v2, -0x4

    int-to-long v2, v2

    const-wide/32 v4, 0x240c8400

    mul-long/2addr v2, v4

    add-long/2addr v2, p1

    iput-wide v2, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    :cond_48
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-wide v3, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    invoke-static {v2, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    iput-wide p1, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    const-wide/32 v2, 0x5265c00

    if-nez p3, :cond_62

    const/16 v4, -0xa

    int-to-long v4, v4

    mul-long/2addr v4, v2

    add-long/2addr v4, p1

    iput-wide v4, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    :cond_62
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-wide v6, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    invoke-static {v4, v6, v7}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    iput-wide p1, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    if-nez p3, :cond_7d

    sget p3, Lcom/android/server/usage/UsageStatsDatabase;->SELECTION_LOG_RETENTION_LEN:I

    neg-int p3, p3

    int-to-long v6, p3

    mul-long/2addr v6, v2

    add-long/2addr v6, p1

    iput-wide v6, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    goto :goto_7d

    :catchall_7b
    move-exception p0

    goto :goto_93

    :cond_7d
    :goto_7d
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length p2, p1

    if-ge v5, p2, :cond_8e

    aget-object p1, p1, v5

    iget-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    iget-wide p2, p2, Lcom/android/server/usage/UnixCalendar;->mTime:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneChooserCountsOlderThan(Ljava/io/File;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7d

    :cond_8e
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    monitor-exit v0

    return-void

    :goto_93
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_3 .. :try_end_94} :catchall_7b

    throw p0
.end method

.method public final pruneChooserCountsOlderThan(Ljava/io/File;J)V
    .registers 12

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_52

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_52

    aget-object v3, p1, v2

    :try_start_d
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v4
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_12

    goto :goto_14

    :catch_12
    const-wide/16 v4, 0x0

    :goto_14
    cmp-long v4, v4, p2

    if-gez v4, :cond_4f

    :try_start_18
    new-instance v4, Landroid/util/AtomicFile;

    invoke-direct {v4, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    new-instance v3, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    invoke-virtual {p0, v4, v3, v1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V

    iget-object v5, v3, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v1

    :goto_2c
    if-ge v6, v5, :cond_43

    iget-object v7, v3, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/UsageStats;

    iget-object v7, v7, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v7, :cond_40

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    goto :goto_40

    :catch_3e
    move-exception v3

    goto :goto_47

    :cond_40
    :goto_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    :cond_43
    invoke-virtual {p0, v4, v3}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_46} :catch_3e

    goto :goto_4f

    :goto_47
    const-string/jumbo v4, "UsageStatsDatabase"

    const-string v5, "Failed to delete chooser counts from usage stats file"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4f
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_52
    return-void
.end method

.method public final prunePackagesDataOnUpgrade(Ljava/util/HashMap;)V
    .registers 11

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_66

    :cond_7
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    :try_start_c
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v4, v3

    if-ge v2, v4, :cond_65

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1a

    goto :goto_62

    :cond_1a
    move v4, v1

    :goto_1b
    array-length v5, v3
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_40

    if-ge v4, v5, :cond_62

    :try_start_1e
    new-instance v5, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v5}, Lcom/android/server/usage/IntervalStats;-><init>()V

    new-instance v6, Landroid/util/AtomicFile;

    aget-object v7, v3, v4

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v6, v5, v7, v8, v1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z

    invoke-static {p1, v5}, Lcom/android/server/usage/UsageStatsDatabase;->pruneStats(Ljava/util/HashMap;Lcom/android/server/usage/IntervalStats;)Z

    move-result v7

    if-nez v7, :cond_38

    goto :goto_5f

    :cond_38
    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v6, v5, v7, v8}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3f} :catch_42
    .catchall {:try_start_1e .. :try_end_3f} :catchall_40

    goto :goto_5f

    :catchall_40
    move-exception p0

    goto :goto_67

    :catch_42
    :try_start_42
    const-string/jumbo v5, "UsageStatsDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to prune data from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v4

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_62
    :goto_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_65
    monitor-exit v0

    :goto_66
    return-void

    :goto_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_42 .. :try_end_68} :catchall_40

    throw p0
.end method

.method public final putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    .registers 9

    const-string v0, "Bad interval type "

    if-nez p2, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-ltz p1, :cond_48

    :try_start_a
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    array-length v2, v2

    if-ge p1, v2, :cond_48

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v0, v0, p1

    iget-wide v2, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    if-nez v0, :cond_3d

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    aget-object v3, v3, p1

    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object p1, v2, p1

    iget-wide v2, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {p1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3d

    :catchall_3b
    move-exception p0

    goto :goto_5a

    :cond_3d
    :goto_3d
    invoke-virtual {p0, v0, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide p0

    iput-wide p0, p2, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    monitor-exit v1

    return-void

    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_a .. :try_end_5b} :catchall_3b

    throw p0
.end method

.method public final readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;
    .registers 8

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v1}, Lcom/android/server/usage/IntervalStats;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_19

    const/4 v2, 0x0

    :try_start_9
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object p1, v3, p1

    invoke-virtual {p1, p2, p3, v2}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/AtomicFile;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_1b
    .catchall {:try_start_9 .. :try_end_17} :catchall_19

    :try_start_17
    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception p0

    goto :goto_1d

    :catch_1b
    monitor-exit v0

    return-object v2

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_19

    throw p0
.end method

.method public final readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V
    .registers 6

    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Reading UsageStats as XML; current database version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UsageStatsDatabase"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {p1, p2, v0, p0, p3}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z

    return-void
.end method

.method public final readMappingsLocked()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_69

    :cond_b
    :try_start_b
    new-instance v1, Landroid/util/AtomicFile;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    invoke-direct {v1, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_76

    :try_start_16
    invoke-static {p0, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->readObfuscatedData(Ljava/io/InputStream;Lcom/android/server/usage/PackagesTokenData;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_6a

    if-eqz p0, :cond_1e

    :try_start_1b
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_76

    :cond_1e
    iget-object p0, v0, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_26
    if-ge v3, v1, :cond_69

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    :goto_49
    if-ge v4, v7, :cond_5b

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    :cond_5b
    iget-object v4, v0, Lcom/android/server/usage/PackagesTokenData;->packagesToTokensMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_69
    :goto_69
    return-void

    :catchall_6a
    move-exception v0

    if-eqz p0, :cond_75

    :try_start_6d
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    goto :goto_75

    :catchall_71
    move-exception p0

    :try_start_72
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_75
    :goto_75
    throw v0
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_76} :catch_76

    :catch_76
    move-exception p0

    const-string/jumbo v0, "UsageStatsDatabase"

    const-string v1, "Failed to read the obfuscated packages mapping file."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V
    .registers 9

    const-string/jumbo v0, "UsageStatsDatabase"

    new-instance v1, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v1}, Lcom/android/server/usage/IntervalStats;-><init>()V

    const/4 v2, 0x0

    :try_start_9
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_44

    const/4 p2, 0x0

    iput-object p2, v1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object p2, v1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->clear()V

    iget-object p2, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p2}, Landroid/app/usage/EventList;->clear()V

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_23
    iget-wide v3, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v2, v1, p3, p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2d} :catch_2e

    goto :goto_38

    :catch_2e
    move-exception p0

    const-string/jumbo p3, "Serializing IntervalStats Failed"

    invoke-static {v0, p3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    :goto_38
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    array-length p2, p0

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->write([B)V

    return-void

    :catch_44
    move-exception p0

    const-string p2, "Failed to read usage stats file"

    invoke-static {v0, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public final writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    .registers 5

    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1c

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Attempting to write UsageStats as XML with version "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "UsageStatsDatabase"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {p1, p2, v0, p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V

    return-void
.end method

.method public final writeMappingsLocked()V
    .registers 5

    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    :try_start_b
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {v1, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->writeObfuscatedData(Ljava/io/OutputStream;Lcom/android/server/usage/PackagesTokenData;)V

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_1a
    .catchall {:try_start_b .. :try_end_13} :catchall_18

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :catchall_18
    move-exception p0

    goto :goto_28

    :catch_1a
    move-exception p0

    :try_start_1b
    const-string/jumbo v2, "UsageStatsDatabase"

    const-string/jumbo v3, "Unable to write obfuscated data to proto."

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_18

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :goto_28
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw p0
.end method
