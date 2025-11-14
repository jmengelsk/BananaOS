.class public final synthetic Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;II)V
    .registers 4

    iput p3, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iput p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_32

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;->f$1:I

    const-string/jumbo v1, "procstate-change"

    invoke-virtual {v0, p0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(ILjava/lang/String;)V

    return-void

    :pswitch_10  #0x1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;->f$1:I

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    :try_start_17
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->clearRemovedUserUidsLocked(I)V

    monitor-exit v1

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_1e

    throw p0

    :pswitch_21  #0x0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;->f$1:I

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    :try_start_28
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->clearRemovedUserUidsLocked(I)V

    monitor-exit v1

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_2f

    throw p0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_21  #00000000
        :pswitch_10  #00000001
    .end packed-switch
.end method
