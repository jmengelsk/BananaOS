.class public Lcom/android/server/power/LowPowerStandbyController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field static final DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;


# instance fields
.field public mActiveDuringMaintenance:Z

.field public final mActivityManager:Ljava/util/function/Supplier;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public final mBroadcastReceiver:Lcom/android/server/power/LowPowerStandbyController$1;

.field public final mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

.field public mEnableCustomPolicy:Z

.field public mEnableStandbyPorts:Z

.field public mEnabledByDefaultConfig:Z

.field public mForceActive:Z

.field public final mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

.field public mIdleSinceNonInteractive:Z

.field public mIsActive:Z

.field public mIsDeviceIdle:Z

.field public mIsEnabled:Z

.field public mIsInteractive:Z

.field public mLastInteractiveTimeElapsed:J

.field public final mLocalService:Lcom/android/server/power/LowPowerStandbyController$LocalService;

.field public final mLock:Ljava/lang/Object;

.field public final mLowPowerStandbyManagingPackages:Ljava/util/List;

.field public final mOnStandbyTimeoutExpired:Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda1;

.field public final mPackageBroadcastReceiver:Lcom/android/server/power/LowPowerStandbyController$1;

.field public final mPhoneCallServiceTracker:Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;

.field public mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

.field public final mPolicyFile:Ljava/io/File;

.field public mPowerManager:Landroid/os/PowerManager;

.field public final mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

.field public final mStandbyPortLocks:Ljava/util/List;

.field public mStandbyTimeoutConfig:I

.field public mSupportedConfig:Z

.field public final mTempAllowlistChangeListener:Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;

.field public final mUidAllowedReasons:Landroid/util/SparseIntArray;

.field public final mUserReceiver:Lcom/android/server/power/LowPowerStandbyController$1;


# direct methods
.method public static -$$Nest$maddToAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v1, :cond_b

    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_37

    :cond_b
    if-eqz p2, :cond_35

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    and-int/2addr v1, p2

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    or-int/2addr v1, p2

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_35

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    :cond_35
    monitor-exit v0

    return-void

    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_9

    throw p0
.end method

.method public static -$$Nest$mremoveFromAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;II)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v1, :cond_b

    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_47

    :cond_b
    if-eqz p2, :cond_45

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    and-int/2addr v1, p2

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-nez v1, :cond_24

    goto :goto_37

    :cond_24
    not-int v2, p2

    and-int/2addr v1, v2

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_37

    :cond_32
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    :goto_37
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_45

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    :cond_45
    monitor-exit v0

    return-void

    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_9

    throw p0
.end method

.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/os/PowerManager$LowPowerStandbyPolicy;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const/4 v2, 0x1

    const-string v3, "DEFAULT_POLICY"

    invoke-direct {v0, v3, v1, v2, v1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;-><init>(Ljava/lang/String;Ljava/util/Set;ILjava/util/Set;)V

    sput-object v0, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/LowPowerStandbyController$Clock;Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;Ljava/util/function/Supplier;Ljava/io/File;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/android/server/power/LowPowerStandbyController$Clock;",
            "Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;",
            "Ljava/util/function/Supplier<",
            "Landroid/app/IActivityManager;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mOnStandbyTimeoutExpired:Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$LocalService;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLocalService:Lcom/android/server/power/LowPowerStandbyController$LocalService;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLowPowerStandbyManagingPackages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/LowPowerStandbyController$1;-><init>(Lcom/android/server/power/LowPowerStandbyController;I)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mBroadcastReceiver:Lcom/android/server/power/LowPowerStandbyController$1;

    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;

    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mTempAllowlistChangeListener:Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;

    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;

    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPhoneCallServiceTracker:Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;

    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/LowPowerStandbyController$1;-><init>(Lcom/android/server/power/LowPowerStandbyController;I)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPackageBroadcastReceiver:Lcom/android/server/power/LowPowerStandbyController$1;

    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/LowPowerStandbyController$1;-><init>(Lcom/android/server/power/LowPowerStandbyController;I)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mUserReceiver:Lcom/android/server/power/LowPowerStandbyController$1;

    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;-><init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    iput-object p3, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    new-instance p2, Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    invoke-direct {p2, p0, p1}, Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;-><init>(Lcom/android/server/power/LowPowerStandbyController;Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;)V

    iput-object p2, p0, Lcom/android/server/power/LowPowerStandbyController;->mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    iput-object p4, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    iput-object p5, p0, Lcom/android/server/power/LowPowerStandbyController;->mActivityManager:Ljava/util/function/Supplier;

    iput-object p6, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicyFile:Ljava/io/File;

    return-void
.end method

.method public static writeTagValue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public final acquireStandbyPorts(Landroid/os/IBinder;Ljava/util/List;I)V
    .registers 7

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$LowPowerStandbyPortDescription;

    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->getPortNumber()I

    move-result v1

    if-ltz v1, :cond_1c

    const v2, 0xffff

    if-gt v1, v2, :cond_1c

    goto :goto_4

    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "port out of range:"

    invoke-static {v1, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;-><init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/IBinder;ILjava/util/List;)V

    iget-object p2, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_31
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->findIndexOfStandbyPorts(Landroid/os/IBinder;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3c

    monitor-exit p2
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_3a

    return-void

    :catchall_3a
    move-exception p0

    goto :goto_73

    :cond_3c
    const/4 v1, 0x0

    :try_start_3d
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_40} :catch_68
    .catchall {:try_start_3d .. :try_end_40} :catchall_3a

    :try_start_40
    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableStandbyPorts:Z

    if-eqz p1, :cond_71

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_71

    invoke-virtual {p0, p3}, Lcom/android/server/power/LowPowerStandbyController;->isPackageExempt(I)Z

    move-result p1

    if-eqz p1, :cond_71

    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    const/4 p3, 0x5

    invoke-virtual {p1, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {p0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_71

    :catch_68
    const-string/jumbo p0, "LowPowerStandbyController"

    const-string/jumbo p1, "StandbyPorts token already died"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    :goto_71
    monitor-exit p2

    return-void

    :goto_73
    monitor-exit p2
    :try_end_74
    .catchall {:try_start_40 .. :try_end_74} :catchall_3a

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 6

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo p1, "Low Power Standby Controller:"

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_16
    const-string/jumbo v1, "mIsActive="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mIsEnabled="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mSupportedConfig="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mEnabledByDefaultConfig="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mStandbyTimeoutConfig="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v1, "mEnableCustomPolicy="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    if-nez v1, :cond_64

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eqz v1, :cond_90

    goto :goto_64

    :catchall_61
    move-exception p0

    goto/16 :goto_16d

    :cond_64
    :goto_64
    const-string/jumbo v1, "mIsInteractive="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mLastInteractiveTime="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    invoke-virtual {v0, v1, v2}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v1, "mIdleSinceNonInteractive="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mIsDeviceIdle="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    :cond_90
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getAllowlistUidsLocked()[I

    move-result-object v1

    const-string v2, "Allowed UIDs="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object v1

    if-eqz v1, :cond_f9

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v2, "mPolicy:"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v2, "mIdentifier="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "mExemptPackages="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "mAllowedReasons="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result v2

    invoke-static {v2}, Landroid/os/PowerManager;->lowPowerStandbyAllowedReasonsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "mAllowedFeatures="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedFeatures()Ljava/util/Set;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_f9
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "UID allowed reasons:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    move v2, v1

    :goto_107
    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_135

    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-lez v3, :cond_132

    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/PowerManager;->lowPowerStandbyAllowedReasonsToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_132
    add-int/lit8 v2, v2, 0x1

    goto :goto_107

    :cond_135
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getActiveStandbyPorts()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_168

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "Active standby ports locks:"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_153
    if-ge v1, v2, :cond_165

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Landroid/os/PowerManager$LowPowerStandbyPortDescription;

    invoke-virtual {v3}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_153

    :cond_165
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_168
    monitor-exit p1
    :try_end_169
    .catchall {:try_start_16 .. :try_end_169} :catchall_61

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :goto_16d
    :try_start_16d
    monitor-exit p1
    :try_end_16e
    .catchall {:try_start_16d .. :try_end_16e} :catchall_61

    throw p0
.end method

.method public final dumpProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide v1, 0x10b00000038L

    :try_start_8
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    const-wide v4, 0x10800000001L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    const-wide v4, 0x10800000002L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    const-wide v4, 0x10800000003L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    const-wide v4, 0x10800000004L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    const-wide v4, 0x10800000005L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-wide v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    const-wide v5, 0x10300000006L

    invoke-virtual {p1, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    const-wide v4, 0x10500000007L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    const-wide v4, 0x10800000008L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    const-wide v4, 0x10800000009L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getAllowlistUidsLocked()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_6c
    if-ge v5, v4, :cond_7d

    aget v6, v3, v5

    const-wide v7, 0x2050000000aL

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6c

    :catchall_7b
    move-exception p0

    goto :goto_e6

    :cond_7d
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p0

    if-eqz p0, :cond_e1

    const-wide v3, 0x10b0000000bL

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    const-wide v6, 0x10900000001L

    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-wide v7, 0x20900000002L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_a0

    :cond_b5
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result v5

    const-wide v6, 0x10500000003L

    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedFeatures()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_de

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-wide v6, 0x20900000004L

    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_c9

    :cond_de
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_e1
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    monitor-exit v0

    return-void

    :goto_e6
    monitor-exit v0
    :try_end_e7
    .catchall {:try_start_8 .. :try_end_e7} :catchall_7b

    throw p0
.end method

.method public final enqueueNotifyAllowlistChangedLocked()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getAllowlistUidsLocked()[I

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {p0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final findIndexOfStandbyPorts(Landroid/os/IBinder;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;

    iget-object v1, v1, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mToken:Landroid/os/IBinder;

    if-ne v1, p1, :cond_1a

    return v0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 p0, -0x1

    return p0
.end method

.method public final getActiveStandbyPorts()Ljava/util/List;
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_47

    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableStandbyPorts:Z

    if-nez v2, :cond_13

    goto :goto_47

    :cond_13
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getExemptPackageAppIdsLocked()Ljava/util/List;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_20
    :goto_20
    if-ge v4, v3, :cond_45

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;

    iget v6, v5, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v7, v2

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    iget-object v5, v5, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mPorts:Ljava/util/List;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_20

    :catchall_43
    move-exception p0

    goto :goto_49

    :cond_45
    monitor-exit v1

    return-object v0

    :cond_47
    :goto_47
    monitor-exit v1

    return-object v0

    :goto_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_8 .. :try_end_4a} :catchall_43

    throw p0
.end method

.method public final getAllowlistUidsLocked()[I
    .registers 11

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_24

    new-array p0, v3, [I

    return-object p0

    :cond_24
    invoke-virtual {v2}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result v2

    move v4, v3

    :goto_29
    iget-object v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_4a

    iget-object v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    and-int/2addr v6, v2

    if-eqz v6, :cond_47

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getExemptPackageAppIdsLocked()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :cond_55
    if-ge v4, v2, :cond_92

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v7, v6, [I

    move v8, v3

    :goto_6e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_83

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserHandle;

    invoke-virtual {v9, v5}, Landroid/os/UserHandle;->getUid(I)I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6e

    :cond_83
    move v5, v3

    :goto_84
    if-ge v5, v6, :cond_55

    aget v8, v7, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_84

    :cond_92
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p0

    new-array p0, p0, [I

    :goto_98
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v3, v0, :cond_ad

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_98

    :cond_ad
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    return-object p0
.end method

.method public final getExemptPackageAppIdsLocked()Ljava/util/List;
    .registers 6

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_12

    goto :goto_3c

    :cond_12
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_1a
    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide/16 v3, 0x0

    :try_start_28
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_3b} :catch_1a

    goto :goto_1a

    :cond_3c
    :goto_3c
    return-object v1
.end method

.method public final getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v1, :cond_c

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_a
    move-exception p0

    goto :goto_1c

    :cond_c
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    if-eqz v1, :cond_18

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    if-nez p0, :cond_16

    sget-object p0, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    :cond_16
    monitor-exit v0

    return-object p0

    :cond_18
    sget-object p0, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    monitor-exit v0

    return-object p0

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_a

    throw p0
.end method

.method public isActive()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isEnabled()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-eqz v1, :cond_f

    iget-boolean p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :catchall_d
    move-exception p0

    goto :goto_12

    :cond_f
    const/4 p0, 0x0

    :goto_10
    monitor-exit v0

    return p0

    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_d

    throw p0
.end method

.method public final isPackageExempt(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    goto :goto_22

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getExemptPackageAppIdsLocked()Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_c

    throw p0
.end method

.method public final loadPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;
    .registers 16

    const-string/jumbo v0, "LowPowerStandbyController"

    new-instance v1, Landroid/util/AtomicFile;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicyFile:Ljava/io/File;

    invoke-direct {v1, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_13

    goto/16 :goto_106

    :cond_13
    :try_start_13
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_17} :catch_106
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_60
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_17} :catch_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_17} :catch_60
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_17} :catch_60

    :try_start_17
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v2

    move v8, v6

    :cond_28
    :goto_28
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_db

    const/4 v11, 0x2

    if-eq v9, v11, :cond_33

    goto :goto_28

    :cond_33
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v9

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    if-ne v9, v10, :cond_66

    const-string/jumbo v9, "low-power-standby-policy"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid root tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_17 .. :try_end_5a} :catchall_63

    if-eqz p0, :cond_106

    :try_start_5c
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_5c .. :try_end_5f} :catch_106
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60
    .catch Ljava/lang/NullPointerException; {:try_start_5c .. :try_end_5f} :catch_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5c .. :try_end_5f} :catch_60
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5c .. :try_end_5f} :catch_60

    return-object v2

    :catch_60
    move-exception p0

    goto/16 :goto_f1

    :catchall_63
    move-exception v3

    goto/16 :goto_e6

    :cond_66
    :try_start_66
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v13, 0x3

    sparse-switch v9, :sswitch_data_108

    goto :goto_9b

    :sswitch_6f
    const-string/jumbo v9, "exempt-package"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9b

    move v9, v10

    goto :goto_9c

    :sswitch_7a
    const-string/jumbo v9, "allowed-reasons"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9b

    move v9, v11

    goto :goto_9c

    :sswitch_85
    const-string/jumbo v9, "allowed-features"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9b

    move v9, v13

    goto :goto_9c

    :sswitch_90
    const-string/jumbo v9, "identifier"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_97
    .catchall {:try_start_66 .. :try_end_97} :catchall_63

    if-eqz v9, :cond_9b

    move v9, v6

    goto :goto_9c

    :cond_9b
    :goto_9b
    const/4 v9, -0x1

    :goto_9c
    const-string/jumbo v14, "value"

    if-eqz v9, :cond_d5

    if-eq v9, v10, :cond_cc

    if-eq v9, v11, :cond_c6

    if-eq v9, v13, :cond_bd

    :try_start_a7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid tag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    :cond_bd
    invoke-interface {v5, v2, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :cond_c6
    invoke-interface {v5, v2, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    goto/16 :goto_28

    :cond_cc
    invoke-interface {v5, v2, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :cond_d5
    invoke-interface {v5, v2, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_28

    :cond_db
    new-instance v5, Landroid/os/PowerManager$LowPowerStandbyPolicy;

    invoke-direct {v5, v7, v3, v8, v4}, Landroid/os/PowerManager$LowPowerStandbyPolicy;-><init>(Ljava/lang/String;Ljava/util/Set;ILjava/util/Set;)V
    :try_end_e0
    .catchall {:try_start_a7 .. :try_end_e0} :catchall_63

    if-eqz p0, :cond_e5

    :try_start_e2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_e5
    .catch Ljava/io/FileNotFoundException; {:try_start_e2 .. :try_end_e5} :catch_106
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_60
    .catch Ljava/lang/NullPointerException; {:try_start_e2 .. :try_end_e5} :catch_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e2 .. :try_end_e5} :catch_60
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e2 .. :try_end_e5} :catch_60

    :cond_e5
    return-object v5

    :goto_e6
    if-eqz p0, :cond_f0

    :try_start_e8
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_ec

    goto :goto_f0

    :catchall_ec
    move-exception p0

    :try_start_ed
    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f0
    :goto_f0
    throw v3
    :try_end_f1
    .catch Ljava/io/FileNotFoundException; {:try_start_ed .. :try_end_f1} :catch_106
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f1} :catch_60
    .catch Ljava/lang/NullPointerException; {:try_start_ed .. :try_end_f1} :catch_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ed .. :try_end_f1} :catch_60
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ed .. :try_end_f1} :catch_60

    :goto_f1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to read policy file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_106
    :cond_106
    :goto_106
    return-object v2

    nop

    :sswitch_data_108
    .sparse-switch
        -0x60775357 -> :sswitch_90
        -0x2d963d3e -> :sswitch_85
        0x5007738a -> :sswitch_7a
        0x79ffd458 -> :sswitch_6f
    .end sparse-switch
.end method

.method public final onDisabledLocked()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mOnStandbyTimeoutExpired:Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mBroadcastReceiver:Lcom/android/server/power/LowPowerStandbyController$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPackageBroadcastReceiver:Lcom/android/server/power/LowPowerStandbyController$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mUserReceiver:Lcom/android/server/power/LowPowerStandbyController$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-class v0, Lcom/android/server/PowerAllowlistInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PowerAllowlistInternal;

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mTempAllowlistChangeListener:Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;

    invoke-interface {v0, v1}, Lcom/android/server/PowerAllowlistInternal;->unregisterTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    return-void
.end method

.method public final onInteractive()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mOnStandbyTimeoutExpired:Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final onNonInteractive()V
    .registers 13

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_a
    iput-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    iput-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    iput-wide v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    iget v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    if-lez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    move-result-wide v0

    iget v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    int-to-long v3, v3

    add-long v7, v0, v3

    iget-object v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v10, p0, Lcom/android/server/power/LowPowerStandbyController;->mOnStandbyTimeoutExpired:Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda1;

    iget-object v11, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    const-string/jumbo v9, "LowPowerStandbyController.StandbyTimeout"

    const/4 v6, 0x2

    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    monitor-exit v2

    return-void

    :catchall_31
    move-exception v0

    move-object p0, v0

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_31

    throw p0
.end method

.method public onSettingsChanged()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateSettingsLocked()V

    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eq v2, v1, :cond_2d

    if-eqz v2, :cond_21

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onInteractive()V

    goto :goto_1d

    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onNonInteractive()V

    :goto_1d
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->registerListeners()V

    goto :goto_24

    :cond_21
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onDisabledLocked()V

    :goto_24
    const-string/jumbo v1, "android.os.action.LOW_POWER_STANDBY_ENABLED_CHANGED"

    invoke-virtual {p0, v1}, Lcom/android/server/power/LowPowerStandbyController;->sendExplicitBroadcast(Ljava/lang/String;)V

    goto :goto_2d

    :catchall_2b
    move-exception p0

    goto :goto_2f

    :cond_2d
    :goto_2d
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2b

    throw p0
.end method

.method public final registerListeners()V
    .registers 6

    const-string/jumbo v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-static {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mBroadcastReceiver:Lcom/android/server/power/LowPowerStandbyController$1;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mPackageBroadcastReceiver:Lcom/android/server/power/LowPowerStandbyController$1;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mUserReceiver:Lcom/android/server/power/LowPowerStandbyController$1;

    invoke-virtual {v1, v4, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-class v0, Lcom/android/server/PowerAllowlistInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PowerAllowlistInternal;

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mTempAllowlistChangeListener:Lcom/android/server/power/LowPowerStandbyController$TempAllowlistChangeListener;

    invoke-interface {v0, v1}, Lcom/android/server/PowerAllowlistInternal;->registerTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPhoneCallServiceTracker:Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;

    iget-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mRegistered:Z

    if-eqz v0, :cond_66

    goto :goto_76

    :cond_66
    :try_start_66
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    iget-object v0, v0, Lcom/android/server/power/LowPowerStandbyController;->mActivityManager:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->registerForegroundServiceObserver(Landroid/app/IForegroundServiceObserver;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mRegistered:Z
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_76} :catch_76

    :catch_76
    :goto_76
    return-void
.end method

.method public final releaseStandbyPorts(Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->findIndexOfStandbyPorts(Landroid/os/IBinder;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_e

    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    goto :goto_42

    :cond_e
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyPortLocks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;

    iget-object v1, p1, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableStandbyPorts:Z

    if-eqz v1, :cond_40

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_40

    iget p1, p1, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mUid:I

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->isPackageExempt(I)Z

    move-result p1

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {p0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_40
    monitor-exit v0

    return-void

    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_c

    throw p0
.end method

.method public final sendExplicitBroadcast(Ljava/lang/String;)V
    .registers 9

    const/high16 v0, 0x50000000

    invoke-static {v0, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLowPowerStandbyManagingPackages:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_3d

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v6, "android.permission.MANAGE_LOW_POWER_STANDBY"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_20

    :cond_3d
    return-void
.end method

.method public setActiveDuringMaintenance(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v1, :cond_14

    const-string/jumbo p0, "LowPowerStandbyController"

    const-string/jumbo p1, "Low Power Standby settings cannot be changed because it is not supported on this device"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    goto :goto_25

    :cond_14
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power_standby_active_during_maintenance"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onSettingsChanged()V

    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_12

    throw p0
.end method

.method public final setEnabled(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v1, :cond_14

    const-string/jumbo p0, "LowPowerStandbyController"

    const-string/jumbo p1, "Low Power Standby cannot be enabled because it is not supported on this device"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    goto :goto_25

    :cond_14
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power_standby_enabled"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onSettingsChanged()V

    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_12

    throw p0
.end method

.method public final setPolicy(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v1, :cond_15

    const-string/jumbo p0, "LowPowerStandbyController"

    const-string/jumbo p1, "Low Power Standby policy cannot be changed because it is not supported on this device"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    goto/16 :goto_91

    :cond_15
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    if-nez v1, :cond_23

    const-string/jumbo p0, "LowPowerStandbyController"

    const-string p1, "Custom policies are not enabled."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_23
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    monitor-exit v0

    return-void

    :cond_2d
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    if-nez v1, :cond_33

    sget-object v1, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    :cond_33
    if-nez p1, :cond_38

    sget-object v2, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    goto :goto_39

    :cond_38
    move-object v2, p1

    :goto_39
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_3c
    iget-object v6, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_4e

    iget-object v6, p0, Lcom/android/server/power/LowPowerStandbyController;->mUidAllowedReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_4e
    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result v4

    invoke-virtual {v2}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getAllowedReasons()I

    move-result v6

    xor-int/2addr v4, v6

    invoke-virtual {v1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int v2, v4, v5

    if-nez v2, :cond_69

    if-nez v1, :cond_6a

    :cond_69
    const/4 v3, 0x1

    :cond_6a
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    new-instance v2, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/PowerManager$LowPowerStandbyPolicy;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v3, :cond_7b

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    :cond_7b
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {p0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    monitor-exit v0

    return-void

    :goto_91
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_3 .. :try_end_92} :catchall_12

    throw p0
.end method

.method public systemReady()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const v2, 0x11101f4

    :try_start_c
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v2, :cond_19

    monitor-exit v1

    return-void

    :catchall_16
    move-exception p0

    goto/16 :goto_11b

    :cond_19
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.permission.MANAGE_LOW_POWER_STANDBY"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x100000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mLowPowerStandbyManagingPackages:Ljava/util/List;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_46
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AlarmManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iput-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const v2, 0x10e00f0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    const v2, 0x11101f3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "low_power_standby_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "low_power_standby_active_during_maintenance"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "low_power_standby"

    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "low_power_standby"

    const-string/jumbo v2, "enable_policy"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mDeviceConfig:Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "low_power_standby"

    const-string/jumbo v2, "enable_standby_ports"

    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableStandbyPorts:Z

    iget-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnableCustomPolicy:Z

    if-eqz v0, :cond_ec

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->loadPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    goto :goto_f0

    :cond_ec
    sget-object v0, Lcom/android/server/power/LowPowerStandbyController;->DEFAULT_POLICY:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPolicy:Landroid/os/PowerManager$LowPowerStandbyPolicy;

    :goto_f0
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-eqz v2, :cond_108

    const-string/jumbo v2, "low_power_standby_enabled"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_108

    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_108
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateSettingsLocked()V

    iget-boolean v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eqz v0, :cond_112

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->registerListeners()V

    :cond_112
    monitor-exit v1
    :try_end_113
    .catchall {:try_start_c .. :try_end_113} :catchall_16

    const-class v0, Lcom/android/server/power/LowPowerStandbyController$LocalService;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLocalService:Lcom/android/server/power/LowPowerStandbyController$LocalService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :goto_11b
    :try_start_11b
    monitor-exit v1
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_16

    throw p0
.end method

.method public final updateActiveLocked()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    sub-long/2addr v1, v3

    iget v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_14

    move v1, v3

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    iget-boolean v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    if-eqz v4, :cond_1f

    iget-boolean v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    if-nez v4, :cond_1f

    move v4, v3

    goto :goto_20

    :cond_1f
    move v4, v2

    :goto_20
    iget-boolean v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mForceActive:Z

    if-nez v5, :cond_34

    iget-boolean v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eqz v5, :cond_35

    iget-boolean v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    if-nez v5, :cond_35

    if-eqz v1, :cond_35

    if-eqz v4, :cond_34

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mActiveDuringMaintenance:Z

    if-eqz v1, :cond_35

    :cond_34
    move v2, v3

    :cond_35
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    if-eq v1, v2, :cond_4c

    iput-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    invoke-virtual {p0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_4c
    return-void
.end method

.method public final updateSettingsLocked()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    const-string/jumbo v4, "low_power_standby_enabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v3

    :goto_1a
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    const-string/jumbo v1, "low_power_standby_active_during_maintenance"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    move v2, v3

    :goto_27
    iput-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mActiveDuringMaintenance:Z

    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    return-void
.end method
