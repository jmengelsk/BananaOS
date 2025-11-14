.class public final Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;
.super Lcom/android/server/vibrator/GroupedAggregatedLogRecords;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final declared-synchronized dumpGroupHeader(Landroid/util/IndentingPrintWriter;I)V
    .locals 0

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    const-string/jumbo p2, "SCALE:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string/jumbo p2, "UNKNOWN:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized findGroupKeyProtoFieldId(I)J
    .locals 0

    monitor-enter p0

    monitor-exit p0

    const-wide p0, 0x20b0000001cL

    return-wide p0
.end method
