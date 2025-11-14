.class public final synthetic Lcom/android/server/vibrator/VibratorManagerService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/vibrator/VibratorManagerService$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/vibrator/VibratorManagerService$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/vibrator/VibratorManagerService;

    check-cast p1, Lcom/android/server/vibrator/VibrationSession;

    packed-switch v2, :pswitch_data_ba

    sget-object v2, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_13

    goto :goto_1e

    :cond_13
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->checkAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I

    move-result p0

    if-eqz p0, :cond_1e

    move v0, v1

    :cond_1e
    :goto_1e
    return v0

    :pswitch_1f  #0x1
    sget-object v2, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_27

    goto :goto_34

    :cond_27
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->getUsageClass()I

    move-result p0

    if-ne p0, v1, :cond_34

    move v0, v1

    :cond_34
    :goto_34
    return v0

    :pswitch_35  #0x0
    if-nez p1, :cond_3b

    sget-object p0, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto/16 :goto_b6

    :cond_3b
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCreateUptimeMillis()J

    move-result-wide v3

    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_48
    iget-object v5, p0, Lcom/android/server/vibrator/VibrationSettings;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mSystemUiPackage:Ljava/lang/String;

    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_b7

    if-eqz v5, :cond_90

    invoke-virtual {v5}, Landroid/os/PowerManagerInternal;->getLastGoToSleep()Landroid/os/PowerManager$SleepData;

    move-result-object p1

    if-eqz p1, :cond_90

    iget-wide v5, p1, Landroid/os/PowerManager$SleepData;->goToSleepUptimeMillis:J

    cmp-long v3, v5, v3

    if-ltz v3, :cond_6b

    sget-object v3, Lcom/android/server/vibrator/VibrationSettings;->POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;

    iget v4, p1, Landroid/os/PowerManager$SleepData;->goToSleepReason:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    :cond_6b
    const-string/jumbo p0, "VibrationSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring screen off event triggered at uptime "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Landroid/os/PowerManager$SleepData;->goToSleepUptimeMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " for reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/PowerManager$SleepData;->goToSleepReason:I

    invoke-static {p1}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b6

    :cond_90
    sget-object p1, Lcom/android/server/vibrator/VibrationSettings;->SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;

    iget-object v3, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v3}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a5

    goto :goto_b5

    :cond_a5
    iget p1, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    const/16 v3, 0x3e8

    if-eq p1, v3, :cond_b6

    if-eqz p1, :cond_b6

    iget-object p1, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b6

    :goto_b5
    move v0, v1

    :cond_b6
    :goto_b6
    return v0

    :catchall_b7
    move-exception p0

    :try_start_b8
    monitor-exit p1
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    throw p0

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_35  #00000000
        :pswitch_1f  #00000001
    .end packed-switch
.end method
