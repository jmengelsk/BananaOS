.class public final Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;
.super Lcom/android/server/vibrator/GroupedAggregatedLogRecords;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final declared-synchronized dumpGroupHeader(Landroid/util/IndentingPrintWriter;I)V
    .registers 3

    monitor-enter p0

    if-nez p2, :cond_c

    :try_start_3
    const-string/jumbo p2, "SCALE:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    :catchall_a
    move-exception p1

    goto :goto_14

    :cond_c
    const-string/jumbo p2, "UNKNOWN:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_a

    :goto_12
    monitor-exit p0

    return-void

    :goto_14
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_a

    throw p1
.end method

.method public final declared-synchronized findGroupKeyProtoFieldId(I)J
    .registers 2

    monitor-enter p0

    monitor-exit p0

    const-wide p0, 0x20b0000001cL

    return-wide p0
.end method
