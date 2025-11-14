.class public final Lcom/android/server/wm/TspStateController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final URI_SETTING_TSP_DEBUG:Landroid/net/Uri;

.field public static final URI_SETTING_TSP_THRESHOLD:Landroid/net/Uri;

.field public static final URI_SETTING_TSP_THRESHOLD_COVER:Landroid/net/Uri;


# instance fields
.field public final clearDeadzoneHole:Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda1;

.field public final m3rdPartyGameTspCommand:Lcom/android/server/wm/TspGripCommand;

.field public final m3rdPartyTspCommand:Lcom/android/server/wm/TspGripCommand;

.field public final m3rdPartyTspCommandForIme:Lcom/android/server/wm/TspGripCommand;

.field public mAwake:Z

.field public final mContext:Landroid/content/Context;

.field public final mCoverDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

.field public final mCurrentCommand:Lcom/android/server/wm/TspGripCommand;

.field public final mCustomTspCommand:Lcom/android/server/wm/TspGripCommand;

.field public final mCustomTspCommandCover:Lcom/android/server/wm/TspGripCommand;

.field public final mDeadzoneHoleMap:Landroid/util/ArrayMap;

.field public final mDeviceDefaultTspCommand:Lcom/android/server/wm/TspGripCommand;

.field public final mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

.field public final mFlipCover3rdPartyCommand:Lcom/android/server/wm/TspGripCommand;

.field public final mFlipCoverDefaultCommand:Lcom/android/server/wm/TspGripCommand;

.field public mFocusedWindow:Ljava/lang/String;

.field public mGameManager:Lcom/samsung/android/game/SemGameManager;

.field public final mH:Lcom/android/server/wm/TspStateController$H;

.field public mImeTargetWindow:Lcom/android/server/wm/WindowState;

.field public mImeWindow:Lcom/android/server/wm/WindowState;

.field public mImeWindowVisible:Z

.field public mIsEnabledCustomSetting:Z

.field public mIsImmShowing:Z

.field public mIsPortrait:Z

.field public mLastDeadzoneHole:Ljava/lang/String;

.field public mLastFocusedWindow:Lcom/android/server/wm/WindowState;

.field public mLastLandCmd:Ljava/lang/String;

.field public mLastNoteMode:Z

.field public mLastPortCmd:Ljava/lang/String;

.field public final mPackageReceiver:Lcom/android/server/wm/TspStateController$1;

.field public mReserveLandCmd:Ljava/lang/String;

.field public mReservePortCmd:Ljava/lang/String;

.field public mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field public final mTspDebug:Lcom/android/server/wm/TspStateController$TspDebug;

.field public mTspThresholdSetting:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "setting_tsp_threshold"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/TspStateController;->URI_SETTING_TSP_THRESHOLD:Landroid/net/Uri;

    const-string/jumbo v0, "setting_tsp_threshold_cover"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/TspStateController;->URI_SETTING_TSP_THRESHOLD_COVER:Landroid/net/Uri;

    const-string/jumbo v0, "setting_tsp_debug"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/TspStateController;->URI_SETTING_TSP_DEBUG:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/TspGripCommand;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_d

    move v4, v2

    goto :goto_e

    :cond_d
    move v4, v3

    :goto_e
    invoke-direct {v0, v4}, Lcom/android/server/wm/TspGripCommand;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mDeviceDefaultTspCommand:Lcom/android/server/wm/TspGripCommand;

    new-instance v0, Lcom/android/server/wm/TspGripCommand;

    if-eqz v1, :cond_19

    const/4 v4, 0x6

    goto :goto_1a

    :cond_19
    const/4 v4, 0x4

    :goto_1a
    invoke-direct {v0, v4}, Lcom/android/server/wm/TspGripCommand;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommand:Lcom/android/server/wm/TspGripCommand;

    new-instance v0, Lcom/android/server/wm/TspGripCommand;

    if-eqz v1, :cond_26

    const/16 v1, 0x9

    goto :goto_27

    :cond_26
    const/4 v1, 0x7

    :goto_27
    invoke-direct {v0, v1}, Lcom/android/server/wm/TspGripCommand;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommandForIme:Lcom/android/server/wm/TspGripCommand;

    new-instance v0, Lcom/android/server/wm/TspGripCommand;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/wm/TspGripCommand;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyGameTspCommand:Lcom/android/server/wm/TspGripCommand;

    new-instance v0, Lcom/android/server/wm/TspGripCommand;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/android/server/wm/TspGripCommand;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mFlipCoverDefaultCommand:Lcom/android/server/wm/TspGripCommand;

    new-instance v0, Lcom/android/server/wm/TspGripCommand;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/android/server/wm/TspGripCommand;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mFlipCover3rdPartyCommand:Lcom/android/server/wm/TspGripCommand;

    new-instance v0, Lcom/android/server/wm/TspGripCommand;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/android/server/wm/TspGripCommand;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mCustomTspCommand:Lcom/android/server/wm/TspGripCommand;

    new-instance v0, Lcom/android/server/wm/TspGripCommand;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TspGripCommand;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mCustomTspCommandCover:Lcom/android/server/wm/TspGripCommand;

    new-instance v0, Lcom/android/server/wm/TspGripCommand;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TspGripCommand;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mCurrentCommand:Lcom/android/server/wm/TspGripCommand;

    iput-boolean v3, p0, Lcom/android/server/wm/TspStateController;->mLastNoteMode:Z

    iput-boolean v3, p0, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mIsEnabledCustomSetting:Z

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TspStateController;->mDeadzoneHoleMap:Landroid/util/ArrayMap;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/wm/TspStateController;->mTspThresholdSetting:Ljava/lang/String;

    new-instance v1, Lcom/android/server/wm/TspStateController$H;

    invoke-direct {v1, p0}, Lcom/android/server/wm/TspStateController$H;-><init>(Lcom/android/server/wm/TspStateController;)V

    iput-object v1, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/TspStateController;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    new-instance v5, Lcom/android/server/wm/TspStateController$1;

    invoke-direct {v5, p0}, Lcom/android/server/wm/TspStateController$1;-><init>(Lcom/android/server/wm/TspStateController;)V

    iput-object v5, p0, Lcom/android/server/wm/TspStateController;->mPackageReceiver:Lcom/android/server/wm/TspStateController$1;

    new-instance v5, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TspStateController;)V

    iput-object v5, p0, Lcom/android/server/wm/TspStateController;->clearDeadzoneHole:Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda1;

    iput-boolean v3, p0, Lcom/android/server/wm/TspStateController;->mAwake:Z

    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/wm/TspStateController$SettingsObserver;

    invoke-direct {v5, p0, v1}, Lcom/android/server/wm/TspStateController$SettingsObserver;-><init>(Lcom/android/server/wm/TspStateController;Lcom/android/server/wm/TspStateController$H;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v6, Lcom/android/server/wm/TspStateController;->URI_SETTING_TSP_THRESHOLD:Landroid/net/Uri;

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v0, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-object v6, Lcom/android/server/wm/TspStateController;->URI_SETTING_TSP_THRESHOLD_COVER:Landroid/net/Uri;

    invoke-virtual {v1, v6, v0, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-object v6, Lcom/android/server/wm/TspStateController;->URI_SETTING_TSP_DEBUG:Landroid/net/Uri;

    invoke-virtual {v1, v6, v0, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "setting_tsp_threshold"

    invoke-static {v1, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TspStateController;->mTspThresholdSetting:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "setting_tsp_debug"

    invoke-static {v1, v5, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    new-instance v1, Lcom/android/server/wm/TspStateController$DeviceSize;

    invoke-direct {v1}, Lcom/android/server/wm/TspStateController$DeviceSize;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    new-instance v6, Lcom/android/server/wm/TspStateController$DeviceSize;

    invoke-direct {v6}, Lcom/android/server/wm/TspStateController$DeviceSize;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/TspStateController;->mCoverDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->initDefaultValues()V

    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->updateCustomValue()V

    new-instance v6, Lcom/android/server/wm/TspStateController$TspDebug;

    iget v7, v1, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    iget v1, v1, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput v7, v6, Lcom/android/server/wm/TspStateController$TspDebug;->mInitDisplayWidth:I

    iput v1, v6, Lcom/android/server/wm/TspStateController$TspDebug;->mInitDisplayHeight:I

    iput-object v6, p0, Lcom/android/server/wm/TspStateController;->mTspDebug:Lcom/android/server/wm/TspStateController$TspDebug;

    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v5, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_ec

    goto :goto_ed

    :cond_ec
    move v3, v0

    :goto_ed
    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mTspDebug:Lcom/android/server/wm/TspStateController$TspDebug;

    iput-boolean v3, v1, Lcom/android/server/wm/TspStateController$TspDebug;->mEnabled:Z

    const-string/jumbo v1, "tspstatemanager"

    const-string/jumbo v3, "init"

    invoke-static {v1, v3}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "0,0,0,0"

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    const-string/jumbo p0, "semcustomdump"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;

    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/sepunion/SemCustomDumpManager;->setDumpState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final initDefaultValues()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mDeviceDefaultTspCommand:Lcom/android/server/wm/TspGripCommand;

    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommand:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommandForIme:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_USE_SMALLER_GRIPZONE_ON_GAME:Z

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyGameTspCommand:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    :cond_1c
    return-void
.end method

.method public final registerEdgeTouchUninstallReceiver()V
    .registers 8

    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mIsEnabledCustomSetting:Z

    if-eqz v0, :cond_1d

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/server/wm/TspStateController;->mPackageReceiver:Lcom/android/server/wm/TspStateController$1;

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1d
    return-void
.end method

.method public final setOrientation(ZZ)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    if-ne v0, p1, :cond_8

    if-eqz p2, :cond_7

    goto :goto_8

    :cond_7
    return-void

    :cond_8
    :goto_8
    iput-boolean p1, p0, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mDeadzoneHoleMap:Landroid/util/ArrayMap;

    monitor-enter p1

    :try_start_d
    iget-object p2, p0, Lcom/android/server/wm/TspStateController;->mDeadzoneHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->clear()V

    monitor-exit p1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_a3

    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    iget-object p2, p0, Lcom/android/server/wm/TspStateController;->clearDeadzoneHole:Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda1;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_26

    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    iget-object p2, p0, Lcom/android/server/wm/TspStateController;->clearDeadzoneHole:Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda1;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_26
    iget-boolean p1, p0, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_73

    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    if-nez p1, :cond_39

    const-string/jumbo p0, "TspStateManager"

    const-string/jumbo p1, "setOrientation mReservePortCmd is null."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_39
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mLastPortCmd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_63

    const-string/jumbo p1, "tspstatemanager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setOrientation TSP_COMMAND_TYPE_PORT : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastPortCmd:Ljava/lang/String;

    return-void

    :cond_63
    const-string/jumbo p1, "tspstatemanager"

    const-string/jumbo v0, "setOrientation TSP_COMMAND_TYPE_SAME"

    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "2,0"

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    return-void

    :cond_73
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    if-nez p1, :cond_81

    const-string/jumbo p0, "TspStateManager"

    const-string/jumbo p1, "setOrientation mReserveLandCmd is null."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_81
    const-string/jumbo p1, "tspstatemanager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setOrientation TSP_COMMAND_TYPE_LAND : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastLandCmd:Ljava/lang/String;

    return-void

    :catchall_a3
    move-exception p0

    :try_start_a4
    monitor-exit p1
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    throw p0
.end method

.method public final updateCustomValue()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mTspThresholdSetting:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_15
    const-string/jumbo v1, "updateCustomValue customSetting="

    const-string/jumbo v2, "TspStateManager"

    invoke-static {v1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/TspStateController;->mIsEnabledCustomSetting:Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    return-void

    :cond_28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, ";"

    if-eqz v2, :cond_32

    goto :goto_39

    :cond_32
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    if-gtz v5, :cond_3b

    :goto_39
    move-object v2, v3

    goto :goto_3d

    :cond_3b
    aget-object v2, v2, v1

    :goto_3d
    iget-object v5, p0, Lcom/android/server/wm/TspStateController;->mCustomTspCommand:Lcom/android/server/wm/TspGripCommand;

    iget-object v6, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    invoke-virtual {v5, v6, v2, v1}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/TspStateController;->mIsEnabledCustomSetting:Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4e

    goto :goto_59

    :cond_4e
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_57

    goto :goto_59

    :cond_57
    aget-object v3, v0, v4

    :goto_59
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommand:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {v0, v6, v3, v1}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommandForIme:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {p0, v6, v3, v1}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    return-void
.end method

.method public final updateTspCommand(Lcom/android/server/wm/TspGripCommand;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mIsEnabledCustomSetting:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mCustomTspCommand:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TspGripCommand;->set(Lcom/android/server/wm/TspGripCommand;)V

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE_V3:Z

    if-eqz v2, :cond_43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/TspStateController;->mLastPortCmd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5a

    iget-boolean v2, p0, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    if-eqz v2, :cond_5a

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mLastPortCmd:Ljava/lang/String;

    :cond_5a
    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "2,1,"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/TspGripCommand;->mLandTopRejectWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/TspGripCommand;->mLandBottomRejectWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/TspGripCommand;->mLandTopGripWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/wm/TspGripCommand;->mLandBottomGripWidth:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mLastLandCmd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    if-nez v0, :cond_a6

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastLandCmd:Ljava/lang/String;

    :cond_a6
    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    return-void
.end method

.method public final updateWindowPolicy(Lcom/android/server/wm/WindowState;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_e
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_18
    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final writeDeadzoneHoleCmd(III)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2c

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/TspStateController;->mLastDeadzoneHole:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    return-void

    :cond_25
    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastDeadzoneHole:Ljava/lang/String;

    const-string/jumbo p1, "tspstatemanager"

    const-string/jumbo p2, "setDeadzoneHole"

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastDeadzoneHole:Ljava/lang/String;

    const/4 p2, 0x0

    const/4 p3, 0x3

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    return-void
.end method

.method public final writeTspCommandToSysfsInner(ILjava/lang/String;Z)V
    .registers 6

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TspStateController;ZILjava/lang/String;)V

    const-string/jumbo p0, "tspStateManager"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
