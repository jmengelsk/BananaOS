.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_26

    move-object v0, p0

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_b
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->maybeResetWhilePluggedInLocked()V

    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_10

    throw p0

    :pswitch_13  #0x1
    move-object v0, p0

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_17
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeSyncLocked()V

    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1c

    throw p0

    :pswitch_1f  #0x0
    check-cast p0, Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1f  #00000000
        :pswitch_13  #00000001
    .end packed-switch
.end method
