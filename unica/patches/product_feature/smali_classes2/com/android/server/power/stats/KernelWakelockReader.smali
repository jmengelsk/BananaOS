.class public final Lcom/android/server/power/stats/KernelWakelockReader;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final PROC_WAKELOCKS_FORMAT:[I

.field public static final WAKEUP_SOURCES_FORMAT:[I

.field public static sKernelWakelockUpdateVersion:I


# instance fields
.field public final mKernelWakelockBuffer:[B

.field public final mProcWakelocksData:[J

.field public final mProcWakelocksName:[Ljava/lang/String;

.field public mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/server/power/stats/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/android/server/power/stats/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    return-void

    nop

    :array_12
    .array-data 4
        0x1409
        0x2009
        0x9
        0x2009
        0x9
        0x2009
    .end array-data

    :array_22
    .array-data 4
        0x1009
        0x2109
        0x109
        0x109
        0x109
        0x2109
        0x2109
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mProcWakelocksData:[J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    return-void
.end method


# virtual methods
.method public final getWakelockStatsFromSystemSuspend(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .registers 7

    iget-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    const/4 v1, 0x0

    const-string v2, "KernelWakelockReader"

    if-nez v0, :cond_2f

    const/4 v0, 0x0

    :goto_8
    :try_start_8
    const-string/jumbo v3, "suspend_control_internal"

    const/4 v4, 0x5

    if-ge v0, v4, :cond_22

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/system/suspend/internal/ISuspendControlServiceInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    if-eqz v3, :cond_1f

    iput-object v3, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    goto :goto_2f

    :catch_1d
    move-exception p0

    goto :goto_28

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_22
    new-instance p0, Landroid/os/ServiceManager$ServiceNotFoundException;

    invoke-direct {p0, v3}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_28
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_8 .. :try_end_28} :catch_1d

    :goto_28
    const-string/jumbo p1, "Required service suspend_control not available"

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_2f
    :goto_2f
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mSuspendControlService:Landroid/system/suspend/internal/ISuspendControlServiceInternal;

    invoke-interface {v0}, Landroid/system/suspend/internal/ISuspendControlServiceInternal;->getWakeLockStats()[Landroid/system/suspend/internal/WakeLockInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->updateWakelockStats([Landroid/system/suspend/internal/WakeLockInfo;Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_38} :catch_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_38} :catch_39

    return-object p1

    :catch_39
    move-exception p0

    goto :goto_3d

    :catch_3b
    move-exception p0

    goto :goto_44

    :goto_3d
    const-string/jumbo p1, "SuspendControlService got IllegalArgumentException"

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :goto_44
    const-string p1, "Failed to obtain wakelock stats from ISuspendControlService"

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public parseProcWakelocks([BIZLcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .registers 27

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v9, p4

    const/4 v10, 0x0

    move v2, v10

    :goto_8
    const/16 v11, 0xa

    if-ge v2, v0, :cond_15

    aget-byte v3, p1, v2

    if-eq v3, v11, :cond_15

    if-eqz v3, :cond_15

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_15
    const/4 v12, 0x1

    add-int/2addr v2, v12

    monitor-enter p0

    move v3, v2

    :goto_19
    if-ge v2, v0, :cond_ee

    move v4, v3

    :goto_1c
    if-ge v4, v0, :cond_2a

    :try_start_1e
    aget-byte v2, p1, v4

    if-eq v2, v11, :cond_2a

    if-eqz v2, :cond_2a

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :catchall_27
    move-exception v0

    goto/16 :goto_f0

    :cond_2a
    add-int/lit8 v2, v0, -0x1

    if-le v4, v2, :cond_30

    goto/16 :goto_ee

    :cond_30
    iget-object v6, v1, Lcom/android/server/power/stats/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/power/stats/KernelWakelockReader;->mProcWakelocksData:[J

    move v2, v3

    :goto_35
    if-ge v2, v4, :cond_44

    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_41

    const/16 v5, 0x3f

    aput-byte v5, p1, v2

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_44
    if-eqz p3, :cond_4a

    sget-object v2, Lcom/android/server/power/stats/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    :goto_48
    move-object v5, v2

    goto :goto_4d

    :cond_4a
    sget-object v2, Lcom/android/server/power/stats/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    goto :goto_48

    :goto_4d
    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v5

    aget-object v6, v6, v10

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aget-wide v13, v7, v12

    long-to-int v8, v13

    const/4 v13, 0x3

    const/4 v14, 0x2

    const-wide/16 v15, 0x3e8

    if-eqz p3, :cond_6f

    aget-wide v17, v7, v14

    mul-long v17, v17, v15

    aget-wide v13, v7, v13

    mul-long/2addr v13, v15

    :goto_6a
    move-wide/from16 v20, v17

    move-wide/from16 v18, v13

    goto :goto_7d

    :cond_6f
    aget-wide v17, v7, v14

    const-wide/16 v19, 0x1f4

    add-long v17, v17, v19

    div-long v17, v17, v15

    aget-wide v13, v7, v13

    add-long v13, v13, v19

    div-long/2addr v13, v15

    goto :goto_6a

    :goto_7d
    if-eqz v5, :cond_bf

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_bf

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_98

    new-instance v15, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    sget v17, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    move/from16 v16, v8

    invoke-direct/range {v15 .. v21}, Lcom/android/server/power/stats/KernelWakelockStats$Entry;-><init>(IIJJ)V

    invoke-virtual {v9, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e6

    :cond_98
    move v3, v8

    move-wide/from16 v13, v18

    move-wide/from16 v7, v20

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    iget v6, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->version:I

    sget v15, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-ne v6, v15, :cond_b6

    iget v6, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->count:I

    add-int/2addr v6, v3

    iput v6, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->count:I

    iget-wide v10, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->totalTimeUs:J

    add-long/2addr v10, v13

    iput-wide v10, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->totalTimeUs:J

    iput-wide v7, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->activeTimeUs:J

    goto :goto_e6

    :cond_b6
    iput v3, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->count:I

    iput-wide v13, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->totalTimeUs:J

    iput-wide v7, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->activeTimeUs:J

    iput v15, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->version:I
    :try_end_be
    .catchall {:try_start_1e .. :try_end_be} :catchall_27

    goto :goto_e6

    :cond_bf
    if-nez v5, :cond_e6

    :try_start_c1
    const-string v5, "KernelWakelockReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse proc line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/String;

    sub-int v10, v4, v3

    invoke-direct {v8, v2, v3, v10}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_de} :catch_df
    .catchall {:try_start_c1 .. :try_end_de} :catchall_27

    goto :goto_e6

    :catch_df
    :try_start_df
    const-string v3, "KernelWakelockReader"

    const-string v5, "Failed to parse proc line!"

    invoke-static {v3, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e6
    :goto_e6
    add-int/lit8 v3, v4, 0x1

    move v2, v4

    const/4 v10, 0x0

    const/16 v11, 0xa

    goto/16 :goto_19

    :cond_ee
    :goto_ee
    monitor-exit p0

    return-object v9

    :goto_f0
    monitor-exit p0
    :try_end_f1
    .catchall {:try_start_df .. :try_end_f1} :catchall_27

    throw v0
.end method

.method public final readKernelWakelockStats(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .registers 12

    const-string v0, "/sys/class/wakeup"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    const-class v0, Lcom/android/server/power/stats/KernelWakelockReader;

    monitor-enter v0

    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->updateVersion(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->getWakelockStatsFromSystemSuspend(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    move-result-object v2

    if-nez v2, :cond_20

    const-string p0, "KernelWakelockReader"

    const-string p1, "Failed to get wakelock stats from SystemSuspend"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v1

    :catchall_1e
    move-exception p0

    goto :goto_26

    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->removeOldStats(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_1e

    throw p0

    :cond_28
    iget-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    :try_start_36
    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/proc/wakelocks"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_3d} :catch_46
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3d} :catch_43
    .catchall {:try_start_36 .. :try_end_3d} :catchall_40

    move v6, v2

    move v7, v6

    goto :goto_4f

    :catchall_40
    move-exception p0

    goto/16 :goto_eb

    :catch_43
    move-exception p0

    goto/16 :goto_df

    :catch_46
    :try_start_46
    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/d/wakeup_sources"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_4d} :catch_d3
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4d} :catch_43
    .catchall {:try_start_46 .. :try_end_4d} :catchall_40

    const/4 v6, 0x1

    move v7, v2

    :goto_4f
    :try_start_4f
    iget-object v8, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    array-length v9, v8

    sub-int/2addr v9, v7

    invoke-virtual {v5, v8, v7, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    if-lez v8, :cond_5b

    add-int/2addr v7, v8

    goto :goto_4f

    :cond_5b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_5e} :catch_43
    .catchall {:try_start_4f .. :try_end_5e} :catchall_40

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x64

    cmp-long v3, v0, v3

    if-lez v3, :cond_86

    const-string v3, "KernelWakelockReader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Reading wakelock stats took "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    if-lez v7, :cond_b0

    iget-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    array-length v0, v0

    if-lt v7, v0, :cond_a3

    const-string v0, "KernelWakelockReader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Kernel wake locks exceeded mKernelWakelockBuffer size "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a3
    :goto_a3
    if-ge v2, v7, :cond_b0

    iget-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_ad

    move v7, v2

    goto :goto_b0

    :cond_ad
    add-int/lit8 v2, v2, 0x1

    goto :goto_a3

    :cond_b0
    :goto_b0
    const-class v1, Lcom/android/server/power/stats/KernelWakelockReader;

    monitor-enter v1

    :try_start_b3
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->updateVersion(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->getWakelockStatsFromSystemSuspend(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    move-result-object v0

    if-nez v0, :cond_c6

    const-string v0, "KernelWakelockReader"

    const-string v2, "Failed to get Native wakelock stats from SystemSuspend"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    :catchall_c4
    move-exception p0

    goto :goto_d1

    :cond_c6
    :goto_c6
    iget-object v0, p0, Lcom/android/server/power/stats/KernelWakelockReader;->mKernelWakelockBuffer:[B

    invoke-virtual {p0, v0, v7, v6, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->parseProcWakelocks([BIZLcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/KernelWakelockReader;->removeOldStats(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :goto_d1
    monitor-exit v1
    :try_end_d2
    .catchall {:try_start_b3 .. :try_end_d2} :catchall_c4

    throw p0

    :catch_d3
    :try_start_d3
    const-string p0, "KernelWakelockReader"

    const-string/jumbo p1, "neither /proc/wakelocks nor /d/wakeup_sources exists"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_db} :catch_43
    .catchall {:try_start_d3 .. :try_end_db} :catchall_40

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-object v1

    :goto_df
    :try_start_df
    const-string p1, "KernelWakelockReader"

    const-string/jumbo v2, "failed to read kernel wakelocks"

    invoke-static {p1, v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e7
    .catchall {:try_start_df .. :try_end_e7} :catchall_40

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-object v1

    :goto_eb
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw p0
.end method

.method public removeOldStats(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .registers 4

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    iget v0, v0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->version:I

    sget v1, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-eq v0, v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    :cond_1e
    return-object p1
.end method

.method public updateVersion(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .registers 2

    sget p0, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    iput p0, p1, Lcom/android/server/power/stats/KernelWakelockStats;->kernelWakelockVersion:I

    return-object p1
.end method

.method public updateWakelockStats([Landroid/system/suspend/internal/WakeLockInfo;Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;
    .registers 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_7b

    aget-object v4, v0, v3

    iget-object v5, v4, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3e8

    if-nez v5, :cond_32

    iget-object v5, v4, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    new-instance v10, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    iget-wide v11, v4, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    long-to-int v11, v11

    iget-wide v12, v4, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    mul-long v13, v12, v8

    iget-boolean v12, v4, Landroid/system/suspend/internal/WakeLockInfo;->isActive:Z

    if-eqz v12, :cond_28

    iget-wide v6, v4, Landroid/system/suspend/internal/WakeLockInfo;->activeTime:J

    mul-long/2addr v6, v8

    :cond_28
    move-wide v15, v6

    sget v12, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    invoke-direct/range {v10 .. v16}, Lcom/android/server/power/stats/KernelWakelockStats$Entry;-><init>(IIJJ)V

    invoke-virtual {v1, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    :cond_32
    iget-object v5, v4, Landroid/system/suspend/internal/WakeLockInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    iget-boolean v10, v4, Landroid/system/suspend/internal/WakeLockInfo;->isKernelWakelock:Z

    if-nez v10, :cond_61

    iget v10, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->version:I

    sget v11, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-ne v10, v11, :cond_61

    iget v10, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->count:I

    iget-wide v11, v4, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    long-to-int v11, v11

    add-int/2addr v10, v11

    iput v10, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->count:I

    iget-wide v10, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->totalTimeUs:J

    iget-wide v12, v4, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    mul-long/2addr v12, v8

    add-long/2addr v12, v10

    iput-wide v12, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->totalTimeUs:J

    iget-wide v10, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->activeTimeUs:J

    iget-boolean v12, v4, Landroid/system/suspend/internal/WakeLockInfo;->isActive:Z

    if-eqz v12, :cond_5d

    iget-wide v6, v4, Landroid/system/suspend/internal/WakeLockInfo;->activeTime:J

    mul-long/2addr v6, v8

    :cond_5d
    add-long/2addr v10, v6

    iput-wide v10, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->activeTimeUs:J

    goto :goto_78

    :cond_61
    iget-wide v10, v4, Landroid/system/suspend/internal/WakeLockInfo;->activeCount:J

    long-to-int v10, v10

    iput v10, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->count:I

    iget-wide v10, v4, Landroid/system/suspend/internal/WakeLockInfo;->totalTime:J

    mul-long/2addr v10, v8

    iput-wide v10, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->totalTimeUs:J

    iget-boolean v10, v4, Landroid/system/suspend/internal/WakeLockInfo;->isActive:Z

    if-eqz v10, :cond_72

    iget-wide v6, v4, Landroid/system/suspend/internal/WakeLockInfo;->activeTime:J

    mul-long/2addr v6, v8

    :cond_72
    iput-wide v6, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->activeTimeUs:J

    sget v4, Lcom/android/server/power/stats/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    iput v4, v5, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->version:I

    :goto_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7b
    return-object v1
.end method
