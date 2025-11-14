.class public final synthetic Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/LowPowerStandbyController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/LowPowerStandbyController;

    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/LowPowerStandbyController;

    sget-object v0, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
