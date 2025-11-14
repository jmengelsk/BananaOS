.class public final Lcom/android/server/power/stats/wakeups/CpuWakeupStats;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final WAKEUP_WRITE_DELAY_MS:J


# instance fields
.field final mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

.field public final mHandler:Landroid/os/Handler;

.field public final mIrqDeviceMap:Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

.field public final mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

.field public final mReusableUidProcStates:Landroid/util/SparseIntArray;

.field public final mUidProcStates:Landroid/util/SparseIntArray;

.field final mWakeupAttribution:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;>;"
        }
    .end annotation
.end field

.field final mWakeupEvents:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->WAKEUP_WRITE_DELAY_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-wide v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKEUP_STATS_RETENTION_MS:J

    iput-wide v1, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_STATS_RETENTION_MS:J

    sget-wide v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKEUP_MATCHING_WINDOW_MS:J

    iput-wide v1, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_MATCHING_WINDOW_MS:J

    sget-wide v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKING_ACTIVITY_RETENTION_MS:J

    iput-wide v1, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKING_ACTIVITY_RETENTION_MS:J

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;->sInstanceMap:Landroid/util/LongSparseArray;

    const-class v0, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;->sInstanceMap:Landroid/util/LongSparseArray;

    const v2, 0x1170013

    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v5

    if-ltz v5, :cond_0

    invoke-virtual {v1, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    new-instance v0, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;-><init>(Landroid/content/res/XmlResourceParser;)V

    const-class p1, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    monitor-enter p1

    :try_start_1
    invoke-virtual {v1, v3, v4, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mIrqDeviceMap:Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    new-instance p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    new-instance v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/wakeups/CpuWakeupStats;)V

    invoke-direct {p1, v0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;-><init>(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;)V

    iput-object p1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    iput-object p2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mHandler:Landroid/os/Handler;

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static subsystemToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo p0, "N/A"

    return-object p0

    :pswitch_1
    const-string p0, "Bluetooth"

    return-object p0

    :pswitch_2
    const-string p0, "Cellular_data"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "Sensor"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "Sound_trigger"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "Wifi"

    return-object p0

    :pswitch_6
    const-string p0, "Alarm"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "Unknown"

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final declared-synchronized attemptAttributionFor(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mResponsibleSubsystems:Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    iget-wide v2, p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    iget-wide v3, p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    iget-wide v2, v2, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_MATCHING_WINDOW_MS:J

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    iget-wide v5, p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    sub-long v8, v5, v2

    add-long v10, v5, v2

    iget-object v6, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->removeBetween(IJJ)Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-virtual {v1, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized attemptAttributionWith(IJLandroid/util/SparseIntArray;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    iget-wide v0, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_MATCHING_WINDOW_MS:J

    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    sub-long v3, p2, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->firstIndexOnOrAfter(J)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    add-long/2addr p2, v0

    invoke-virtual {v3, p2, p3}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    move-result p2

    :goto_0
    const/4 p3, 0x0

    if-gt v2, p2, :cond_4

    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    iget-object v1, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mResponsibleSubsystems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    iget-wide v1, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {p2, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SparseArray;

    if-nez p2, :cond_0

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    iget-wide v2, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v1, v2, v3, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_1
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    if-nez v0, :cond_1

    invoke-virtual {p4}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_1
    :goto_2
    invoke-virtual {p4}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-ge p3, p1, :cond_2

    invoke-virtual {p4, p3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    invoke-virtual {p4, p3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    monitor-exit p0

    return p3

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized dump(Landroid/util/IndentingPrintWriter;J)V
    .locals 11

    const-string v0, "Current proc-state map ("

    monitor-enter p0

    :try_start_0
    const-string v1, "CPU wakeup stats:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mIrqDeviceMap:Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    const-string/jumbo v2, "Wakeup events:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_8

    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-static {v3, v4, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v3, ":"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string v4, "Attribution: "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    iget-wide v5, v3, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v4, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    if-nez v3, :cond_2

    const-string/jumbo v3, "N/A"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_2
    move v4, v0

    :goto_3
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    if-lez v4, :cond_3

    const-string v5, ", "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v0, v0}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v7

    invoke-static {v5, v6}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->subsystemToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " ["

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseIntArray;

    if-eqz v6, :cond_6

    move v8, v0

    :goto_4
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    if-lez v8, :cond_4

    const-string v9, ", "

    invoke-virtual {p1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v6, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    invoke-static {p1, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    invoke-static {v10}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    :cond_6
    const-string/jumbo v6, "]"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v7, v5}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/SparseLongArray;->put(IJ)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "Attribution stats:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_6
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result p2

    if-ge v0, p2, :cond_9

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "Subsystem "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result p3

    invoke-static {p3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->subsystemToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ": "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "Total: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p3}, Landroid/util/LongSparseArray;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized noteWakeupTimeAndReason(JJLjava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mIrqDeviceMap:Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    move-wide v1, p1

    move-wide v3, p3

    move-object v0, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->parseWakeup(Ljava/lang/String;JJLcom/android/server/power/stats/wakeups/IrqDeviceMap;)Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p2, v1, v2, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->attemptAttributionFor(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V

    iget-object p2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    iget-wide p2, p2, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_STATS_RETENTION_MS:J

    iget-object p4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    sub-long p2, v1, p2

    invoke-virtual {p4, p2, p3}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    move-result p4

    :goto_0
    if-ltz p4, :cond_1

    iget-object p5, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p5, p4}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_1
    iget-object p4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    invoke-virtual {p4, p2, p3}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    move-result p2

    :goto_1
    if-ltz p2, :cond_2

    iget-object p3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    invoke-virtual {p3, p2}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/wakeups/CpuWakeupStats;Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V

    sget-wide p4, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->WAKEUP_WRITE_DELAY_MS:J

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final varargs declared-synchronized noteWakingActivity(J[II)V
    .locals 5

    monitor-enter p0

    if-nez p3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    aget v2, p3, v0

    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->attemptAttributionWith(IJLandroid/util/SparseIntArray;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {p3, p4, p1, p2, v0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->recordActivity(IJLandroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized systemServicesReady()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "battery_stats"

    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    sget-object v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->PROPERTY_NAMES:[Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
