.class public final Lcom/android/server/power/stats/BatteryStatsImpl$10;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic val$initialTimeMs:J

.field public final synthetic val$memStream:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/lang/Object;JI)V
    .registers 6

    iput p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->val$memStream:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->val$initialTimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->$r8$classId:I

    packed-switch v0, :pswitch_data_bc

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_49

    const/4 v3, 0x0

    :try_start_f
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->val$memStream:Ljava/lang/Object;

    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mFrameworkStatsLogger:Lcom/android/server/power/stats/BatteryStatsImpl$FrameworkStatsLogger;

    const-string/jumbo v5, "batterystats-checkin"

    iget-wide v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->val$initialTimeMs:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    add-long/2addr v6, v8

    sub-long/2addr v6, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_41} :catch_4d
    .catchall {:try_start_f .. :try_end_41} :catchall_4b

    :try_start_41
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->val$memStream:Ljava/lang/Object;

    check-cast p0, Landroid/os/Parcel;

    :goto_45
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_49

    goto :goto_61

    :catchall_49
    move-exception p0

    goto :goto_6b

    :catchall_4b
    move-exception v1

    goto :goto_63

    :catch_4d
    move-exception v1

    :try_start_4e
    const-string v2, "BatteryStats"

    const-string v4, "Error writing checkin battery statistics"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_5c
    .catchall {:try_start_4e .. :try_end_5c} :catchall_4b

    :try_start_5c
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->val$memStream:Ljava/lang/Object;

    check-cast p0, Landroid/os/Parcel;

    goto :goto_45

    :goto_61
    monitor-exit v0

    return-void

    :goto_63
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->val$memStream:Ljava/lang/Object;

    check-cast p0, Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    throw v1

    :goto_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_5c .. :try_end_6c} :catchall_49

    throw p0

    :pswitch_6d  #0x0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v0

    :try_start_72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_a6

    const/4 v3, 0x0

    :try_start_77
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mDailyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->val$memStream:Ljava/lang/Object;

    check-cast v4, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mDailyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mFrameworkStatsLogger:Lcom/android/server/power/stats/BatteryStatsImpl$FrameworkStatsLogger;

    const-string/jumbo v5, "batterystats-daily"

    iget-wide v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->val$initialTimeMs:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    add-long/2addr v6, v8

    sub-long/2addr v6, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_a5} :catch_a8
    .catchall {:try_start_77 .. :try_end_a5} :catchall_a6

    goto :goto_b7

    :catchall_a6
    move-exception p0

    goto :goto_b9

    :catch_a8
    move-exception v1

    :try_start_a9
    const-string v2, "BatteryStats"

    const-string v4, "Error writing battery daily items"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDailyFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_b7
    monitor-exit v0

    return-void

    :goto_b9
    monitor-exit v0
    :try_end_ba
    .catchall {:try_start_a9 .. :try_end_ba} :catchall_a6

    throw p0

    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_6d  #00000000
    .end packed-switch
.end method
