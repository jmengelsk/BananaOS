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
    .locals 0

    iput p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->val$memStream:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->val$initialTimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
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
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->val$memStream:Ljava/lang/Object;

    check-cast p0, Landroid/os/Parcel;

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "BatteryStats"

    const-string v4, "Error writing checkin battery statistics"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->val$memStream:Ljava/lang/Object;

    check-cast p0, Landroid/os/Parcel;

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->val$memStream:Ljava/lang/Object;

    check-cast p0, Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    throw v1

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v3, 0x0

    :try_start_6
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
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception v1

    :try_start_7
    const-string v2, "BatteryStats"

    const-string v4, "Error writing battery daily items"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$10;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDailyFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_4
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
