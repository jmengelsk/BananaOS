.class public final Lcom/android/server/power/ScreenOnKeeper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mClock:Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda2;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsScreenOnKeeperEnabled:Z

.field public final mKeepScreenOnDuration:J

.field public mLastScreenTouchTime:J

.field public final mLock:Ljava/lang/Object;

.field public final mScreenLockCountSupplier:Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda14;

.field public mSettingsObserver:Lcom/android/server/power/ScreenOnKeeper$SettingsObserver;

.field public final mSystemProperties:Lcom/android/server/power/PowerManagerService$Injector$1;

.field public final mTouchOutCheckDuration:J

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWakefulness:I


# direct methods
.method public static -$$Nest$mhandleSettingsChangedLocked(Lcom/android/server/power/ScreenOnKeeper;)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "ScreenOnKeeper"

    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, Lcom/android/server/power/ScreenOnKeeper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_on_keeper"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_14
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_14} :catch_15

    goto :goto_28

    :catch_15
    move-exception v2

    sget v3, Lcom/android/server/power/Slog;->$r8$clinit:I

    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_PMS_LOG:Z

    if-eqz v3, :cond_21

    const-string v3, "D ScreenOnKeeper: handleSettingsChangedLocked: SettingNotFoundException="

    invoke-static {v3}, Lcom/android/server/power/Slog;->addPMSLogList(Ljava/lang/String;)V

    :cond_21
    const-string/jumbo v3, "handleSettingsChangedLocked: SettingNotFoundException="

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    :goto_28
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleSettingsChangedLocked: screenOnKeeperSettingValue="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-lez v2, :cond_3f

    move v2, v3

    goto :goto_40

    :cond_3f
    move v2, v1

    :goto_40
    iput-boolean v2, p0, Lcom/android/server/power/ScreenOnKeeper;->mIsScreenOnKeeperEnabled:Z

    if-eqz v2, :cond_6b

    iget v2, p0, Lcom/android/server/power/ScreenOnKeeper;->mWakefulness:I

    invoke-static {v2}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v2

    if-nez v2, :cond_6b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleSettingsChangedLocked: disable keep screen on mWakefulness="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/power/ScreenOnKeeper;->mWakefulness:I

    invoke-static {v3}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/power/ScreenOnKeeper;->disableScreenOnKeeper()V

    invoke-virtual {p0, v1}, Lcom/android/server/power/ScreenOnKeeper;->notifyScreenOnKeeperDisabledLocked(I)V

    goto :goto_b2

    :cond_6b
    iget-object v1, p0, Lcom/android/server/power/ScreenOnKeeper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v2, p0, Lcom/android/server/power/ScreenOnKeeper;->mIsScreenOnKeeperEnabled:Z

    if-eqz v2, :cond_9c

    const-string/jumbo v2, "handleSettingsChangedLocked: enable/extend keep screen on"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/ScreenOnKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_88

    iget-object v0, p0, Lcom/android/server/power/ScreenOnKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_88
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/ScreenOnKeeper;->mClock:Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/power/ScreenOnKeeper;->mKeepScreenOnDuration:J

    add-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_b2

    :cond_9c
    const-string/jumbo v2, "handleSettingsChangedLocked: disable keep screen on"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/ScreenOnKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_af
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :goto_b2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Looper;ILcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda14;Lcom/android/server/power/PowerManagerService$Injector$1;)V
    .registers 12

    new-instance v0, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "-1"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ScreenOnKeeper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/power/ScreenOnKeeper;->mLock:Ljava/lang/Object;

    new-instance p2, Landroid/os/Handler;

    new-instance v2, Lcom/android/server/power/ScreenOnKeeper$ScreenOnKeeperHandlerCallback;

    invoke-direct {v2, p0}, Lcom/android/server/power/ScreenOnKeeper$ScreenOnKeeperHandlerCallback;-><init>(Lcom/android/server/power/ScreenOnKeeper;)V

    invoke-direct {p2, p3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/android/server/power/ScreenOnKeeper;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/power/ScreenOnKeeper;->mClock:Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda2;

    iput p4, p0, Lcom/android/server/power/ScreenOnKeeper;->mWakefulness:I

    iput-object p5, p0, Lcom/android/server/power/ScreenOnKeeper;->mScreenLockCountSupplier:Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda14;

    iput-object p6, p0, Lcom/android/server/power/ScreenOnKeeper;->mSystemProperties:Lcom/android/server/power/PowerManagerService$Injector$1;

    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/16 p2, 0xa

    const-string p3, "DA_ScreenOnKeeper"

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/ScreenOnKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 p1, 0x927c0

    const-wide/32 p3, 0x1b7740

    :try_start_3b
    const-string/jumbo p5, "persist.debug.power.keep_screen_on_duration"

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p5, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    int-to-long p5, p5

    const-string/jumbo v0, "persist.debug.power.touch_out_duration"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, p5, v2

    if-ltz v4, :cond_5d

    goto :goto_5e

    :cond_5d
    move-wide p5, p3

    :goto_5e
    iput-wide p5, p0, Lcom/android/server/power/ScreenOnKeeper;->mKeepScreenOnDuration:J

    cmp-long p5, v0, v2

    if-ltz p5, :cond_65

    goto :goto_66

    :cond_65
    move-wide v0, p1

    :goto_66
    iput-wide v0, p0, Lcom/android/server/power/ScreenOnKeeper;->mTouchOutCheckDuration:J
    :try_end_68
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_68} :catch_69

    goto :goto_83

    :catch_69
    move-exception p5

    new-instance p6, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "NumberFormatException: check SystemProperties "

    invoke-direct {p6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string/jumbo p6, "ScreenOnKeeper"

    invoke-static {p6, p5}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p3, p0, Lcom/android/server/power/ScreenOnKeeper;->mKeepScreenOnDuration:J

    iput-wide p1, p0, Lcom/android/server/power/ScreenOnKeeper;->mTouchOutCheckDuration:J

    :goto_83
    invoke-virtual {p0}, Lcom/android/server/power/ScreenOnKeeper;->disableScreenOnKeeper()V

    iget-object p1, p0, Lcom/android/server/power/ScreenOnKeeper;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda1;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/ScreenOnKeeper;I)V

    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper;->mClock:Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final disableScreenOnKeeper()V
    .registers 3

    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_on_keeper"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 6

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "Screen On Keeper"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mKeepScreenOnDuration="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/power/ScreenOnKeeper;->mKeepScreenOnDuration:J

    const-string v3, "  mTouchOutCheckDuration="

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/ScreenOnKeeper;->mTouchOutCheckDuration:J

    const-string v3, "  mIsScreenOnKeeperEnabled="

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/ScreenOnKeeper;->mIsScreenOnKeeperEnabled:Z

    const-string v2, "  mLastScreenTouchTime="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/ScreenOnKeeper;->mLastScreenTouchTime:J

    const-string v3, "  mWakeLock.isHeld()="

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final notifyKeepScreenOnExpiredLocked()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/power/ScreenOnKeeper;->mScreenLockCountSupplier:Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda14;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda14;->getAsLong()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    const-string/jumbo v1, "ScreenOnKeeper"

    if-nez v0, :cond_48

    const-string/jumbo v0, "notifyKeepScreenOnExpiredLocked: send expired intent"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.KEEP_SCREEN_ON_EXPIRED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.displayassistant"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/power/ScreenOnKeeper;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ScreenOnKeeper;Landroid/content/Intent;I)V

    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper;->mClock:Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x2

    invoke-virtual {v1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x15f90

    add-long/2addr v2, v4

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_48
    const-string/jumbo v0, "notifyKeepScreenOnExpiredLocked: disable directly, wakelock exist"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/power/ScreenOnKeeper;->disableScreenOnKeeper()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/power/ScreenOnKeeper;->notifyScreenOnKeeperDisabledLocked(I)V

    return-void
.end method

.method public final notifyScreenOnKeeperDisabledLocked(I)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SCREEN_ON_KEEPER_DISABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.displayassistant"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/power/ScreenOnKeeper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ScreenOnKeeper;Landroid/content/Intent;I)V

    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper;->mClock:Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method
