.class public Lcom/android/server/policy/WindowWakeUpPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static mSdhmsService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;


# instance fields
.field public final mAllowTheaterModeWakeFromCameraLens:Z

.field public final mAllowTheaterModeWakeFromKey:Z

.field public final mAllowTheaterModeWakeFromLidSwitch:Z

.field public final mAllowTheaterModeWakeFromMotion:Z

.field public final mAllowTheaterModeWakeFromPowerKey:Z

.field public final mAllowTheaterModeWakeFromWakeGesture:Z

.field public final mBoosterLock:Ljava/lang/Object;

.field public final mClock:Lcom/android/internal/os/Clock;

.field public final mContext:Landroid/content/Context;

.field public mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mSemRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

.field public mSemWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/Clock;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mSemRotationBooster:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mSemWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mBoosterLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mPowerManager:Landroid/os/PowerManager;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mWindowManager:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x111002b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromKey:Z

    if-nez p2, :cond_1

    const p2, 0x111002f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    iput-boolean p2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromPowerKey:Z

    const p2, 0x111002d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromMotion:Z

    const p2, 0x1110028

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromCameraLens:Z

    const p2, 0x111002c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromLidSwitch:Z

    const p2, 0x111002a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromWakeGesture:Z

    new-instance p1, Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;

    invoke-direct {p1, p0}, Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;-><init>(Lcom/android/server/policy/WindowWakeUpPolicy;)V

    const-class p0, Lcom/android/server/policy/WindowWakeUpPolicyInternal;

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/policy/WindowWakeUpPolicy;->initSdhmsService()V

    return-void
.end method

.method public static boosterAcquireLocked(Lcom/samsung/android/os/SemDvfsManager;Ljava/lang/String;)V
    .locals 2

    const-string v0, " acquire()"

    const-string/jumbo v1, "WindowWakeUpPolicy"

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, " acquire is failed"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static initSdhmsService()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/android/server/policy/WindowWakeUpPolicy;->mSdhmsService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/WindowWakeUpPolicy;->mSdhmsService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static sendCommandToSdhms()V
    .locals 5

    const-string/jumbo v0, "WindowWakeUpPolicy"

    sget-object v1, Lcom/android/server/policy/WindowWakeUpPolicy;->mSdhmsService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/policy/WindowWakeUpPolicy;->initSdhmsService()V

    :cond_0
    sget-object v1, Lcom/android/server/policy/WindowWakeUpPolicy;->mSdhmsService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "WAKEUP"

    const-string/jumbo v4, "start"

    invoke-interface {v1, v3, v4}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    sput-object v2, Lcom/android/server/policy/WindowWakeUpPolicy;->mSdhmsService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    const-string/jumbo v2, "sendCommandToSdhms fail"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :goto_1
    sput-object v2, Lcom/android/server/policy/WindowWakeUpPolicy;->mSdhmsService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    invoke-static {}, Lcom/android/server/policy/WindowWakeUpPolicy;->initSdhmsService()V

    const-string/jumbo v2, "re-try to initSdhmsService"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/DeadObjectException;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method public final boostWakeUp()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mBoosterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mSemWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mContext:Landroid/content/Context;

    const-string v2, "DEVICE_WAKEUP"

    invoke-static {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mSemWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_0

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mSemWakeUpBooster:Lcom/samsung/android/os/SemDvfsManager;

    const-string v1, "HINT_DEVICE_WAKEUP"

    invoke-static {p0, v1}, Lcom/android/server/policy/WindowWakeUpPolicy;->boosterAcquireLocked(Lcom/samsung/android/os/SemDvfsManager;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final canWakeUp(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isOnState(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "theater_mode_on"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    if-nez p1, :cond_3

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public final wakeUp(IIJLjava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/policy/WindowWakeUpPolicy;->boostWakeUp()V

    invoke-static {}, Lcom/android/server/policy/WindowWakeUpPolicy;->sendCommandToSdhms()V

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDelayWhenLcdOnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PerProcessNandswap"

    const-string v2, "DeviceWakeupHint reported"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mLastDeviceWakeupTime:J

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    move v5, p1

    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo p0, "android.policy:"

    invoke-static {p0, p5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v3, p2

    move-wide v1, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;I)V

    return-void
.end method

.method public final wakeUp(JILjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/policy/WindowWakeUpPolicy;->boostWakeUp()V

    invoke-static {}, Lcom/android/server/policy/WindowWakeUpPolicy;->sendCommandToSdhms()V

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDelayWhenLcdOnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PerProcessNandswap"

    const-string v2, "DeviceWakeupHint reported"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mLastDeviceWakeupTime:J

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v0, "android.policy:"

    invoke-static {v0, p4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method
