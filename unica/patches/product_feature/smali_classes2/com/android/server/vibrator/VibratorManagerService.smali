.class public Lcom/android/server/vibrator/VibratorManagerService;
.super Landroid/os/IVibratorManagerService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;


# instance fields
.field public final mAlwaysOnEffects:Landroid/util/SparseArray;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field final mAppOpsChangeListener:Landroid/app/AppOpsManager$OnOpChangedInternalListener;

.field public final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field public final mCapabilities:J

.field public mCombinedVibratorInfo:Landroid/os/VibratorInfo;

.field public mComposed:Landroid/os/VibrationEffect$Composed;

.field public final mContext:Landroid/content/Context;

.field public mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

.field public final mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

.field public final mExternalVibrationCallbacks:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;

.field public final mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

.field public mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

.field public final mHandler:Landroid/os/Handler;

.field public mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

.field public mHqmHelper:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

.field public final mHqmLoggingData:Lcom/samsung/android/server/vibrator/VibratorHqmData;

.field public final mInjector:Lcom/android/server/vibrator/VibratorManagerService$Injector;

.field public final mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public final mLock:Ljava/lang/Object;

.field public final mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

.field public mNextSession:Lcom/android/server/vibrator/VibrationSession;

.field public final mSamsungReceiver:Lcom/android/server/vibrator/VibratorManagerService$1;

.field public mServiceReady:Z

.field public final mVendorVibrationSessionCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;

.field public final mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

.field public final mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

.field final mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

.field public final mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

.field public final mVibrationThreadCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

.field public final mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

.field public final mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

.field public final mVibratorIds:[I

.field public mVibratorInfos:Landroid/util/SparseArray;

.field public final mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

.field public final mVibrators:Landroid/util/SparseArray;

.field public mVirtualVibSoundHelper:Lcom/android/server/vibrator/VirtualVibSoundHelper;


# direct methods
.method public static -$$Nest$mclearCurrentSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;)V
    .registers 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationSession;->unlinkToDeath()V

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationSession;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_18
    return-void
.end method

.method public static -$$Nest$mmaybeClearCurrentAndNextSessionsLocked(Lcom/android/server/vibrator/VibratorManagerService;Ljava/util/function/Predicate;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v1, v0, Lcom/android/server/vibrator/ExternalVibrationSession;

    if-nez v1, :cond_10

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    :cond_10
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v1, v0, Lcom/android/server/vibrator/ExternalVibrationSession;

    if-nez v1, :cond_2b

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {p1, p2}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;)V

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVirtualVibSoundHelper:Lcom/android/server/vibrator/VirtualVibSoundHelper;

    if-eqz p0, :cond_2b

    const-string/jumbo p1, "cancel"

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VirtualVibSoundHelper;->stopVirtualSound(Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method public static -$$Nest$mmaybeStartNextSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v1, v0, Lcom/android/server/vibrator/SingleVibrationSession;

    const-string/jumbo v2, "VibratorManagerService"

    const/4 v3, 0x0

    if-eqz v1, :cond_26

    check-cast v0, Lcom/android/server/vibrator/SingleVibrationSession;

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationOnThreadLocked(Lcom/android/server/vibrator/SingleVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v1

    if-eqz v1, :cond_43

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error starting next vibration "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/vibrator/SingleVibrationSession;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-wide v5, v5, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-static {v4, v5, v6, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    return-void

    :cond_26
    instance-of v1, v0, Lcom/android/server/vibrator/VendorVibrationSession;

    if-eqz v1, :cond_43

    check-cast v0, Lcom/android/server/vibrator/VendorVibrationSession;

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->startVendorSessionLocked(Lcom/android/server/vibrator/VendorVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v1

    if-eqz v1, :cond_43

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error starting next session "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    invoke-static {v4, v5, v6, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    :cond_43
    return-void
.end method

.method public static -$$Nest$mreportVibrationInfo(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    if-eqz v0, :cond_45

    iget-object v1, v0, Lcom/samsung/android/server/audio/GoodCatchManager;->mModule:Ljava/lang/String;

    const-string/jumbo v2, "VibratorService"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-boolean v0, v0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrationFunc:Z

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_45

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->isRepeating()Z

    move-result p1

    if-eqz p1, :cond_35

    const-string/jumbo v0, "com.android.server.telecom"

    :cond_35
    move-object v3, v0

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    iget-object v1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    const-string/jumbo v2, "vibration"

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_45
    return-void
.end method

.method public static -$$Nest$msetAchMagnitude(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/ExternalVibrationSession;)V
    .registers 8

    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ACH:Z

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v1, p1, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v1}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentMagnitude(I)I

    move-result v0

    iget-object v1, p1, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v1}, Landroid/os/ExternalVibration;->getVibrationAttributesWithTags()Landroid/os/VibrationAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string/jumbo v3, "VibratorManagerService"

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "HAPTIC_INTENSITY"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v5, v2, v4

    if-eqz v5, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ach intensity : "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v2, v4

    invoke-static {v0, v5, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_22

    :cond_58
    const-string/jumbo v1, "getCurrentMagnitude : "

    invoke-static {v0, v1, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_6e

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object v1

    if-eqz v1, :cond_6e

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    move-result-object p0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibratorController;->setIntensity(J)V

    :cond_6e
    iget-object p0, p1, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    const/4 p1, 0x0

    iput p1, p0, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    :cond_73
    return-void
.end method

.method public static -$$Nest$msetExternalControl(Lcom/android/server/vibrator/VibratorManagerService;ZLcom/android/server/vibrator/VibrationStats;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v1, p1}, Lcom/android/server/vibrator/VibratorController;->setExternalControl(Z)V

    iget v1, p2, Lcom/android/server/vibrator/VibrationStats;->mVibratorSetExternalControlCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lcom/android/server/vibrator/VibrationStats;->mVibratorSetExternalControlCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vibrator/VibratorManagerService$Injector;)V
    .registers 13

    invoke-direct {p0}, Landroid/os/IVibratorManagerService$Stub;-><init>()V

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    new-instance v7, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    invoke-direct {v7, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    iput-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThreadCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mExternalVibrationCallbacks:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;

    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVendorVibrationSessionCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/vibrator/VibratorManagerService$1;-><init>(Lcom/android/server/vibrator/VibratorManagerService;I)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Lcom/android/server/vibrator/VibratorManagerService$2;

    invoke-direct {v8, p0}, Lcom/android/server/vibrator/VibratorManagerService$2;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    iput-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOpsChangeListener:Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    new-instance v0, Lcom/samsung/android/server/vibrator/VibratorHqmData;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHqmLoggingData:Lcom/samsung/android/server/vibrator/VibratorHqmData;

    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/vibrator/VibratorManagerService$1;-><init>(Lcom/android/server/vibrator/VibratorManagerService;I)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mSamsungReceiver:Lcom/android/server/vibrator/VibratorManagerService$1;

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInjector:Lcom/android/server/vibrator/VibratorManagerService$Injector;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    const/16 v1, 0xa

    const/16 v2, 0x12c

    invoke-direct {v5, p2, v1, v2}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;-><init>(Landroid/os/Handler;II)V

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    sget-object v1, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    if-nez v1, :cond_73

    new-instance v1, Lcom/samsung/android/server/vibrator/VibratorHelper;

    invoke-direct {v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;-><init>()V

    sput-object v1, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    :cond_73
    sget-object v1, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    const-string/jumbo v1, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    const-string/jumbo v3, "android.intent.action.ACTION_SHUTDOWN"

    const-string/jumbo v4, "com.sec.media.action.VIBRTOR_LOGGING"

    const-string/jumbo v9, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-static {v1, v2, v3, v4, v9}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.launcher3.quickstep.closeall"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v9, 0x4

    invoke-virtual {p1, v0, v1, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v0, Lcom/android/server/vibrator/VibratorManagerInternal;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/server/vibrator/VibratorManagerInternal;->mServiceWeakReference:Ljava/lang/ref/WeakReference;

    const-class v1, Lcom/android/server/vibrator/VibratorManagerInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/vibrator/VibrationConfig;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    new-instance v4, Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {v4, p1, p2, v0}, Lcom/android/server/vibrator/VibrationSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/vibrator/VibrationConfig;)V

    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    new-instance v3, Lcom/android/server/vibrator/VibrationScaler;

    invoke-direct {v3, v0, v4}, Lcom/android/server/vibrator/VibrationScaler;-><init>(Landroid/os/vibrator/VibrationConfig;Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    new-instance v0, Lcom/android/server/vibrator/VibratorControlService;

    new-instance v2, Lcom/android/server/vibrator/VibratorControllerHolder;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vibrator/VibratorControlService;-><init>(Landroid/content/Context;Lcom/android/server/vibrator/VibratorControllerHolder;Lcom/android/server/vibrator/VibrationScaler;Lcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    new-instance p1, Lcom/android/server/vibrator/InputDeviceDelegate;

    invoke-direct {p1, v1, p2}, Lcom/android/server/vibrator/InputDeviceDelegate;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    new-instance p1, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;-><init>(I)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p1, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/Object;

    new-instance p2, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-direct {p2}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;-><init>()V

    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {p2, p1}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->init(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerNativeCallbacks;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e013b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0137

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0136

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    new-instance v4, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    invoke-direct {v4, v0, v2, v3}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;-><init>(III)V

    iput-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    const-string/jumbo v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v8}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v2, "*vibrator*"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v2, Lcom/android/server/vibrator/VibrationThread;

    invoke-direct {v2, v0, v7}, Lcom/android/server/vibrator/VibrationThread;-><init>(Landroid/os/PowerManager$WakeLock;Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;)V

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    iget-wide v2, p2, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v2, v3}, Lcom/android/server/vibrator/VibratorManagerService;->nativeGetCapabilities(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCapabilities:J

    iget-wide v2, p2, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v2, v3}, Lcom/android/server/vibrator/VibratorManagerService;->nativeGetVibratorIds(J)[I

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_172

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    goto :goto_194

    :cond_172
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    new-instance v2, Landroid/util/SparseArray;

    array-length v3, p2

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    array-length v2, p2

    move v3, v0

    :goto_17e
    if-ge v3, v2, :cond_194

    aget v4, p2, v3

    new-instance v5, Lcom/android/server/vibrator/VibratorController;

    new-instance v6, Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-direct {v6}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;-><init>()V

    invoke-direct {v5, v4, p1, v6}, Lcom/android/server/vibrator/VibratorController;-><init>(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;Lcom/android/server/vibrator/VibratorController$NativeWrapper;)V

    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17e

    :cond_194
    :goto_194
    new-instance p1, Lcom/android/server/vibrator/DeviceAdapter;

    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-direct {p1, p2, v2}, Lcom/android/server/vibrator/DeviceAdapter;-><init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/util/SparseArray;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->cancelSynced()V

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->clearSessions()V

    move p1, v0

    :goto_1aa
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_1c3

    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p2, v0}, Lcom/android/server/vibrator/VibratorController;->setExternalControl(Z)V

    invoke-virtual {p2}, Lcom/android/server/vibrator/VibratorController;->off()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1aa

    :cond_1c3
    const-string/jumbo p1, "android.intent.action.SCREEN_OFF"

    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    invoke-static {}, Lcom/android/server/pm/UserManagerInternal;->shouldShowNotificationForBackgroundUserSounds()Z

    move-result p2

    if-eqz p2, :cond_1d6

    const-string/jumbo p2, "com.android.server.ACTION_MUTE_BG_USER"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1d6
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p2, p1, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance p1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;

    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    const-string/jumbo p2, "external_vibrator_service"

    invoke-static {p2, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo p1, "android.frameworks.vibrator.IVibratorControlService/default"

    invoke-static {p1}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1f4

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_1f4
    return-void
.end method

.method public static createVibrationAttemptDebugInfo(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/Vibration$DebugInfoImpl;
    .registers 12

    new-instance v0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;

    const/4 v1, 0x1

    if-nez p0, :cond_7

    :cond_5
    :goto_5
    move v3, v1

    goto :goto_1e

    :cond_7
    invoke-virtual {p0}, Landroid/os/CombinedVibration;->hasVendorEffects()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x4

    goto :goto_5

    :cond_f
    invoke-virtual {p0}, Landroid/os/CombinedVibration;->getDuration()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    const/4 v1, 0x2

    goto :goto_5

    :goto_1e
    new-instance v4, Lcom/android/server/vibrator/VibrationStats;

    invoke-direct {v4}, Lcom/android/server/vibrator/VibrationStats;-><init>()V

    const/high16 v8, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p0

    move-object v2, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;ILcom/android/server/vibrator/VibrationStats;Landroid/os/CombinedVibration;Landroid/os/CombinedVibration;IF)V

    return-object v0
.end method

.method public static getVibrationImportance(Lcom/android/server/vibrator/VibrationSession;)I
    .registers 4

    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    const/16 v1, 0x21

    if-nez v0, :cond_18

    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession;->isRepeating()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_18

    :cond_16
    const/16 v0, 0x12

    :cond_18
    :goto_18
    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession;->isRepeating()Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_4d

    :cond_1f
    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object p0

    if-eq v0, v1, :cond_4f

    const/16 v1, 0x22

    if-eq v0, v1, :cond_65

    const/16 v1, 0x31

    if-eq v0, v1, :cond_40

    const/16 p0, 0x32

    if-eq v0, p0, :cond_65

    const/16 p0, 0x41

    if-eq v0, p0, :cond_65

    const/16 p0, 0x42

    if-eq v0, p0, :cond_65

    packed-switch v0, :pswitch_data_6a

    const/4 p0, 0x0

    return p0

    :pswitch_3e  #0x11
    const/4 p0, 0x4

    return p0

    :cond_40
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHelper;

    const-string/jumbo v0, "com.nttdocomo.android.phonemotion"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_65

    :goto_4d
    const/4 p0, 0x6

    return p0

    :cond_4f
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    const-string/jumbo v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const-string/jumbo v0, "VIBRATE_CALL"

    invoke-virtual {p0, v0}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_67

    :cond_65
    :pswitch_65  #0x12, 0x13
    const/4 p0, 0x3

    return p0

    :cond_67
    const/4 p0, 0x5

    return p0

    nop

    :pswitch_data_6a
    .packed-switch 0x11
        :pswitch_3e  #00000011
        :pswitch_65  #00000012
        :pswitch_65  #00000013
    .end packed-switch
.end method

.method public static isEffectValid(Landroid/os/CombinedVibration;)Z
    .registers 6

    const/4 v0, 0x0

    const-string/jumbo v1, "VibratorManagerService"

    if-nez p0, :cond_d

    const-string/jumbo p0, "effect must not be null"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Landroid/os/CombinedVibration;->validate()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_12

    const/4 p0, 0x1

    return p0

    :catch_12
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Encountered issue when verifying vibration: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static native nativeCancelSynced(J)V
.end method

.method public static native nativeClearSessions(J)V
.end method

.method public static native nativeEndSession(JJZ)V
.end method

.method public static native nativeGetCapabilities(J)J
.end method

.method public static native nativeGetFinalizer()J
.end method

.method public static native nativeGetVibratorIds(J)[I
.end method

.method public static native nativeInit(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerNativeCallbacks;)J
.end method

.method public static native nativePrepareSynced(J[I)Z
.end method

.method public static native nativeStartSession(JJ[I)Z
.end method

.method public static native nativeTriggerSynced(JJ)Z
.end method

.method public static shouldCancelSession(Lcom/android/server/vibrator/VibrationSession;ILandroid/os/IBinder;)Z
    .registers 4

    if-nez p0, :cond_3

    goto :goto_28

    :cond_3
    instance-of v0, p0, Lcom/android/server/vibrator/VendorVibrationSession;

    if-eqz v0, :cond_8

    goto :goto_28

    :cond_8
    if-eqz p2, :cond_11

    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession;->getCallerToken()Landroid/os/IBinder;

    move-result-object v0

    if-eq p2, v0, :cond_11

    goto :goto_28

    :cond_11
    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p0

    if-nez p0, :cond_23

    if-eqz p1, :cond_26

    const/4 p0, -0x1

    if-ne p1, p0, :cond_28

    goto :goto_26

    :cond_23
    and-int/2addr p1, p0

    if-ne p1, p0, :cond_28

    :cond_26
    :goto_26
    const/4 p0, 0x1

    return p0

    :cond_28
    :goto_28
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldIgnoreForOngoing(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;
    .registers 4

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getVibrationImportance(Lcom/android/server/vibrator/VibrationSession;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->getVibrationImportance(Lcom/android/server/vibrator/VibrationSession;)I

    move-result v1

    if-le v0, v1, :cond_b

    goto :goto_31

    :cond_b
    if-le v1, v0, :cond_19

    new-instance p0, Lcom/android/server/vibrator/Vibration$EndInfo;

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_HIGHER_IMPORTANCE:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    return-object p0

    :cond_19
    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->isRepeating()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession;->isRepeating()Z

    move-result p0

    if-nez p0, :cond_31

    new-instance p0, Lcom/android/server/vibrator/Vibration$EndInfo;

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_ONGOING:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    return-object p0

    :cond_31
    :goto_31
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final addCustomDump()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\nVibrator information\n  Motor type : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorController;->getMotorType()I

    move-result v1

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    invoke-static {v1}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getMotorTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  Motor group : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getSupportedVibratorGroup()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_46

    const/4 v3, 0x3

    if-eq v1, v3, :cond_42

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3e

    const-string/jumbo v1, "SEM_SUPPORTED_VIBRATION_NONE"

    goto :goto_4d

    :cond_3e
    const-string/jumbo v1, "SEM_SUPPORTED_VIBRATION_TYPE_D"

    goto :goto_4d

    :cond_42
    const-string/jumbo v1, "SEM_SUPPORTED_VIBRATION_TYPE_C"

    goto :goto_4d

    :cond_46
    const-string/jumbo v1, "SEM_SUPPORTED_VIBRATION_TYPE_B"

    goto :goto_4d

    :cond_4a
    const-string/jumbo v1, "SEM_SUPPORTED_VIBRATION_TYPE_A"

    :goto_4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    prebakedHapticPattern : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    iget-boolean v1, v1, Lcom/android/server/vibrator/VibratorController;->mSupportPrebakedHapticPattern:Z

    goto :goto_69

    :cond_68
    move v1, v2

    :goto_69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    hapticEngine : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_84

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    iget-boolean v1, v1, Lcom/android/server/vibrator/VibratorController;->mSupportHapticEngine:Z

    goto :goto_85

    :cond_84
    move v1, v2

    :goto_85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    enhancedSamsungHapticPattern : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a0

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    iget-boolean v1, v1, Lcom/android/server/vibrator/VibratorController;->mSupportEnhancedSamsungHapticPattern:Z

    goto :goto_a1

    :cond_a0
    move v1, v2

    :goto_a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    intensityControl : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_bc

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    iget-boolean v1, v1, Lcom/android/server/vibrator/VibratorController;->mSupportIntensityControl:Z

    goto :goto_bd

    :cond_bc
    move v1, v2

    :goto_bd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    indexWideBand : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d8

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    iget-boolean v1, v1, Lcom/android/server/vibrator/VibratorController;->mSupportIndexWideBand:Z

    goto :goto_d9

    :cond_d8
    move v1, v2

    :goto_d9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n  supportAch : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ACH:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n  supportFoldState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_109

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    iget-object v3, v1, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_fe
    iget-object v1, v1, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsFoldState()Z

    move-result v2

    monitor-exit v3

    goto :goto_109

    :catchall_106
    move-exception p0

    monitor-exit v3
    :try_end_108
    .catchall {:try_start_fe .. :try_end_108} :catchall_106

    throw p0

    :cond_109
    :goto_109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "VibrationSettings information\n  mIsHapticSupported = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsHapticSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n  mIsEnableIntensity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mIsEnableIntensity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n  mCallMagnitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mCallMagnitude:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n  mNotiMagnitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mNotiMagnitude:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n  mTouchMagnitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mTouchMagnitude:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n  mMediaMagnitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mMediaMagnitude:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n  LEVEL_TO_MAGNITUDE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_MAGNITUDE:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n  LEVEL_TO_TOUCH_MAGNITUDE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->LEVEL_TO_TOUCH_MAGNITUDE:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final cancelVibrate(ILandroid/os/IBinder;)V
    .registers 11

    const-string/jumbo v0, "cancelVibrate"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_9
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.VIBRATE"

    const-string/jumbo v4, "cancelVibrate"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_87

    :try_start_17
    const-string/jumbo v3, "VibratorManagerService"

    const-string v4, "Canceling vibration"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_66

    :try_start_23
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v6, v5, Lcom/android/server/vibrator/ExternalVibrationSession;

    const/4 v7, 0x0

    if-eqz v6, :cond_2c

    move-object v6, v7

    goto :goto_2d

    :cond_2c
    move-object v6, p2

    :goto_2d
    invoke-static {v5, p1, v6}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelSession(Lcom/android/server/vibrator/VibrationSession;ILandroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_3b

    sget-object v5, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {p0, v5, v7}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    goto :goto_3b

    :catchall_39
    move-exception p0

    goto :goto_81

    :cond_3b
    :goto_3b
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of v6, v5, Lcom/android/server/vibrator/ExternalVibrationSession;

    if-eqz v6, :cond_42

    move-object p2, v7

    :cond_42
    invoke-static {v5, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldCancelSession(Lcom/android/server/vibrator/VibrationSession;ILandroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_79

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    instance-of p2, p1, Lcom/android/server/vibrator/ExternalVibrationSession;

    if-eqz p2, :cond_68

    check-cast p1, Lcom/android/server/vibrator/ExternalVibrationSession;

    invoke-virtual {p1}, Lcom/android/server/vibrator/ExternalVibrationSession;->isRepeating()Z

    move-result p1

    if-eqz p1, :cond_68

    const-string/jumbo p0, "VibratorManagerService"

    const-string p1, "Keep ongoing external vibration"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_23 .. :try_end_5e} :catchall_39

    :try_start_5e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_66

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_66
    move-exception p0

    goto :goto_85

    :cond_68
    :try_start_68
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    sget-object p2, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_USER:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-interface {p1, p2}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;)V

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVirtualVibSoundHelper:Lcom/android/server/vibrator/VirtualVibSoundHelper;

    if-eqz p0, :cond_79

    const-string/jumbo p1, "cancel"

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VirtualVibSoundHelper;->stopVirtualSound(Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_68 .. :try_end_79} :catchall_39

    :cond_79
    :try_start_79
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_66

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_81
    :try_start_81
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_81 .. :try_end_86} :catchall_66

    :try_start_86
    throw p0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_87

    :catchall_87
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final checkAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I
    .registers 8

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getAudioUsage()I

    move-result v1

    const/4 v2, 0x3

    iget v3, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v4, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/AppOpsManager;->checkAudioOpNoThrow(IIILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    const-string v1, "Check AppOp mode VIBRATE for uid "

    const-string v2, " and package "

    const-string v5, " returned audio="

    invoke-static {v3, v1, v2, v4, v5}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", op="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v2, p0

    const-string/jumbo v2, "VibratorManagerService"

    invoke-static {v1, p0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const/4 p1, 0x1

    if-ne v0, p1, :cond_42

    invoke-virtual {p0, p1}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result p0

    if-eqz p0, :cond_42

    const/4 p0, 0x0

    goto :goto_43

    :cond_42
    move p0, v0

    :goto_43
    if-eq v0, p0, :cond_4c

    if-nez p0, :cond_4c

    const-string p1, "Bypassing DND for vibrate from uid "

    invoke-static {v3, p1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4c
    return p0
.end method

.method public final clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dropping pending vibration from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v1}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VibratorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    :cond_2e
    return-void
.end method

.method public final createVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/DeviceAdapter;Z)Lcom/android/server/vibrator/VibrationStepConductor;
    .registers 18

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    iget-object v3, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v3, v3, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v3}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_d
    iget-object v5, v0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    iget-object v5, v5, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    if-nez v5, :cond_19

    monitor-exit v4

    const/4 v0, 0x0

    goto :goto_20

    :catchall_16
    move-exception v0

    goto/16 :goto_f6

    :cond_19
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorControlService;->mRequestVibrationParamsForUsages:[I

    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    monitor-exit v4
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_16

    :goto_20
    const/4 v3, 0x0

    if-eqz v0, :cond_df

    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v5, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v6, v6, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v6}, Landroid/os/vibrator/VibrationConfig;->getRequestVibrationParamsTimeoutMs()I

    move-result v6

    const-string/jumbo v7, "Unable to request vibration params. The provided usage "

    iget-object v8, v4, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_3d
    iget-object v9, v4, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    iget-object v9, v9, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    if-nez v9, :cond_52

    const-string/jumbo v0, "VibratorControlService"

    const-string/jumbo v4, "Unable to request vibration params. There is no registered IVibrationController."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    goto/16 :goto_df

    :catchall_4f
    move-exception v0

    goto/16 :goto_e1

    :cond_52
    const/4 v10, -0x1

    const/4 v11, 0x1

    if-eqz v0, :cond_91

    const/16 v12, 0x21

    if-eq v0, v12, :cond_8f

    const/16 v12, 0x22

    if-eq v0, v12, :cond_8c

    const/16 v12, 0x31

    if-eq v0, v12, :cond_8a

    const/16 v12, 0x32

    if-eq v0, v12, :cond_8c

    const/16 v12, 0x41

    if-eq v0, v12, :cond_8a

    const/16 v12, 0x42

    if-eq v0, v12, :cond_8c

    packed-switch v0, :pswitch_data_f8

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Unrecognized vibration usage "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "VibratorControlService"

    invoke-static {v13, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v10

    goto :goto_93

    :pswitch_88  #0x11
    move v12, v11

    goto :goto_93

    :cond_8a
    const/4 v12, 0x2

    goto :goto_93

    :cond_8c
    :pswitch_8c  #0x12
    const/16 v12, 0x8

    goto :goto_93

    :cond_8f
    const/4 v12, 0x4

    goto :goto_93

    :cond_91
    :pswitch_91  #0x13
    const/16 v12, 0x10

    :goto_93
    if-ne v12, v10, :cond_ae

    const-string/jumbo v4, "VibratorControlService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is unrecognized."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    goto :goto_df

    :cond_ae
    iget-object v7, v4, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    if-eqz v7, :cond_ba

    iget v10, v7, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->usage:I

    if-ne v10, v0, :cond_ba

    iget-object v3, v7, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->future:Ljava/util/concurrent/CompletableFuture;

    monitor-exit v8
    :try_end_b9
    .catchall {:try_start_3d .. :try_end_b9} :catchall_4f

    goto :goto_df

    :cond_ba
    :try_start_ba
    invoke-virtual {v4, v11}, Lcom/android/server/vibrator/VibratorControlService;->endOngoingRequestVibrationParamsLocked(Z)V

    new-instance v7, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    invoke-direct {v7, v5, v0}, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;-><init>(II)V

    iput-object v7, v4, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    int-to-long v5, v6

    iget-object v0, v7, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->token:Landroid/os/IBinder;

    check-cast v9, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;

    invoke-virtual {v9, v0, v5, v6, v12}, Landroid/frameworks/vibrator/IVibratorController$Stub$Proxy;->requestVibrationParams(Landroid/os/IBinder;JI)V

    iget-object v0, v4, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    iget-object v3, v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;->future:Ljava/util/concurrent/CompletableFuture;
    :try_end_d0
    .catch Landroid/os/RemoteException; {:try_start_ba .. :try_end_d0} :catch_d2
    .catchall {:try_start_ba .. :try_end_d0} :catchall_4f

    :try_start_d0
    monitor-exit v8

    goto :goto_df

    :catch_d2
    move-exception v0

    const-string/jumbo v5, "VibratorControlService"

    const-string v6, "Failed to request vibration params."

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v4, v11}, Lcom/android/server/vibrator/VibratorControlService;->endOngoingRequestVibrationParamsLocked(Z)V

    monitor-exit v8

    :cond_df
    :goto_df
    move-object v7, v3

    goto :goto_e3

    :goto_e1
    monitor-exit v8
    :try_end_e2
    .catchall {:try_start_d0 .. :try_end_e2} :catchall_4f

    throw v0

    :goto_e3
    new-instance v0, Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    iget-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThreadCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    move-object v1, p1

    move-object/from16 v4, p2

    move/from16 v2, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/VibrationStepConductor;-><init>(Lcom/android/server/vibrator/HalVibration;ZLcom/android/server/vibrator/VibrationSettings;Lcom/android/server/vibrator/DeviceAdapter;Lcom/android/server/vibrator/VibrationScaler;Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;Ljava/util/concurrent/CompletableFuture;Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;)V

    return-object v0

    :goto_f6
    :try_start_f6
    monitor-exit v4
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_16

    throw v0

    :pswitch_data_f8
    .packed-switch 0x11
        :pswitch_88  #00000011
        :pswitch_8c  #00000012
        :pswitch_91  #00000013
    .end packed-switch
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "VibratorManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ge v3, v2, :cond_23

    aget-object v5, p3, v3

    const-string v6, "--proto"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    const/4 v4, 0x1

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_23
    if-eqz v4, :cond_2b

    :try_start_25
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_2e

    :catchall_29
    move-exception p0

    goto :goto_32

    :cond_2b
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->dumpText(Ljava/io/PrintWriter;)V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_29

    :goto_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final dumpProto(Ljava/io/FileDescriptor;)V
    .registers 8

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const-string/jumbo p1, "VibratorManagerService"

    const-string v1, "Dumping vibrator manager service to proto..."

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_10
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibrationSettings;->dump(Landroid/util/proto/ProtoOutputStream;)V

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    iget v1, v1, Lcom/android/server/vibrator/VibrationScaler;->mDefaultVibrationAmplitude:I

    const-wide v2, 0x1050000001aL

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v1, :cond_34

    invoke-interface {v1}, Lcom/android/server/vibrator/VibrationSession;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object v1

    const-wide v2, 0x10b00000002L

    invoke-interface {v1, v0, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_34

    :catchall_32
    move-exception p0

    goto :goto_7d

    :cond_34
    :goto_34
    const/4 v1, 0x0

    move v2, v1

    :goto_36
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4f

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    const-wide v4, 0x20500000001L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_4f
    monitor-exit p1
    :try_end_50
    .catchall {:try_start_10 .. :try_end_50} :catchall_32

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    monitor-enter v2

    :try_start_53
    iget-object p1, v2, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/proto/ProtoOutputStream;)V
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_7a

    monitor-exit v2

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_5e
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    iget-object v2, v2, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    if-eqz v2, :cond_65

    const/4 v1, 0x1

    :cond_65
    monitor-exit p1
    :try_end_66
    .catchall {:try_start_5e .. :try_end_66} :catchall_77

    const-wide v2, 0x1050000001bL

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_77
    move-exception p0

    :try_start_78
    monitor-exit p1
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw p0

    :catchall_7a
    move-exception p0

    :try_start_7b
    monitor-exit v2
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw p0

    :goto_7d
    :try_start_7d
    monitor-exit p1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_32

    throw p0
.end method

.method public final dumpText(Ljava/io/PrintWriter;)V
    .registers 8

    const-string/jumbo v0, "VibratorManagerService"

    const-string v1, "Dumping vibrator manager service to text..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_12
    const-string/jumbo v1, "VibratorManagerService:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibrationSettings;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibrationScaler;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "Vibrators:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    move v2, v1

    :goto_36
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4f

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v3, v0}, Lcom/android/server/vibrator/VibratorController;->dump(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :catchall_4c
    move-exception p0

    goto/16 :goto_132

    :cond_4f
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "CurrentVibration:"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v2, :cond_69

    invoke-interface {v2}, Lcom/android/server/vibrator/VibrationSession;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_6f

    :cond_69
    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_6f
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v2, "NextVibration:"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v2, :cond_8a

    invoke-interface {v2}, Lcom/android/server/vibrator/VibrationSession;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_90

    :cond_8a
    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_90
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    monitor-exit p1
    :try_end_94
    .catchall {:try_start_12 .. :try_end_94} :catchall_4c

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    monitor-enter v2

    :try_start_9d
    const-string/jumbo p1, "Recent vibrations:"

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p1, v2, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p1, "Aggregated vibration history:"

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p1, v2, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mAggregatedVibrationHistory:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_c4
    .catchall {:try_start_9d .. :try_end_c4} :catchall_12f

    monitor-exit v2

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorControlService:Lcom/android/server/vibrator/VibratorControlService;

    iget-object v3, p1, Lcom/android/server/vibrator/VibratorControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_d0
    iget-object v2, p1, Lcom/android/server/vibrator/VibratorControlService;->mVibratorControllerHolder:Lcom/android/server/vibrator/VibratorControllerHolder;

    iget-object v2, v2, Lcom/android/server/vibrator/VibratorControllerHolder;->mVibratorController:Landroid/frameworks/vibrator/IVibratorController;

    const/4 v4, 0x1

    if-eqz v2, :cond_d9

    move v2, v4

    goto :goto_da

    :cond_d9
    move v2, v1

    :goto_da
    iget-object v5, p1, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamRequest:Lcom/android/server/vibrator/VibratorControlService$VibrationParamRequest;

    if-eqz v5, :cond_df

    move v1, v4

    :cond_df
    monitor-exit v3
    :try_end_e0
    .catchall {:try_start_d0 .. :try_end_e0} :catchall_12c

    const-string/jumbo v3, "VibratorControlService:"

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isVibratorControllerRegistered = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "hasPendingVibrationParamsRequest = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "Vibration parameters update history:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p1, p1, Lcom/android/server/vibrator/VibratorControlService;->mVibrationParamsRecords:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords;

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->addCustomDump()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_12c
    move-exception p0

    :try_start_12d
    monitor-exit v3
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_12c

    throw p0

    :catchall_12f
    move-exception p0

    :try_start_130
    monitor-exit v2
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_12f

    throw p0

    :goto_132
    :try_start_132
    monitor-exit p1
    :try_end_133
    .catchall {:try_start_132 .. :try_end_133} :catchall_4c

    throw p0
.end method

.method public final endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .registers 5

    const/4 v0, 0x0

    invoke-interface {p1, p2, p3, v0}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    return-void
.end method

.method public final enforceUpdateAppOpsStatsPermission(I)V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    goto :goto_11

    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_12

    :goto_11
    return-void

    :cond_12
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public final executeVibrationDebugCommand(Lcom/samsung/android/vibrator/VibrationDebugInfo;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Lcom/samsung/android/vibrator/VibrationDebugInfo;->getCommand()I

    move-result v0

    if-eqz v0, :cond_ec

    const/4 v1, 0x1

    const/4 v2, -0x1

    const-string/jumbo v3, "fail"

    if-eq v0, v1, :cond_87

    const/4 v1, 0x2

    const-string/jumbo v4, "success"

    if-eq v0, v1, :cond_48

    const/4 p1, 0x3

    if-eq v0, p1, :cond_18

    const/4 p0, 0x0

    return-object p0

    :cond_18
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    iget-object p1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mChangedPatternHash:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/vibrator/PatternInfo;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    :cond_42
    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mChangedPatternHash:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-object v4

    :cond_48
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    invoke-virtual {p1}, Lcom/samsung/android/vibrator/VibrationDebugInfo;->getDuration()I

    move-result p1

    iget v0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSepIndex:I

    if-eq v0, v2, :cond_86

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->copyPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;

    move-result-object v0

    if-nez v0, :cond_59

    goto :goto_86

    :cond_59
    iget-object v1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mChangedPatternHash:Ljava/util/HashMap;

    iget v2, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSepIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_72

    iget-object v1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mChangedPatternHash:Ljava/util/HashMap;

    iget v2, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSepIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_72
    iget v0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSepIndex:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/vibrator/VibratorHelper;->copyPatternInfo(I)Lcom/samsung/android/server/vibrator/PatternInfo;

    move-result-object v0

    iput p1, v0, Lcom/samsung/android/server/vibrator/PatternInfo;->duration:I

    iget-object p1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    iget p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSepIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :cond_86
    :goto_86
    return-object v3

    :cond_87
    invoke-virtual {p1}, Lcom/samsung/android/vibrator/VibrationDebugInfo;->getIndex()I

    move-result v0

    const v1, 0xc368

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->isValidatedVibeIndex(I)Z

    move-result v0

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    invoke-virtual {p1}, Lcom/samsung/android/vibrator/VibrationDebugInfo;->getIndex()I

    move-result p1

    iput p1, v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSepIndex:I

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    iget p1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSepIndex:I

    if-eq p1, v2, :cond_eb

    iget-object v0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c0

    iget-object p1, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    iget v0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSepIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/vibrator/PatternInfo;

    iget p1, p1, Lcom/samsung/android/server/vibrator/PatternInfo;->duration:I

    goto :goto_c2

    :cond_c0
    const/16 p1, 0x1388

    :goto_c2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Sep index : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSepIndex:I

    add-int/2addr v2, v1

    invoke-static {v2}, Lcom/samsung/android/vibrator/SemHapticFeedbackConstants;->getPatternTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSepIndex:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")\nduration : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_eb
    return-object v3

    :cond_ec
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->addCustomDump()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finish AppOp mode VIBRATE for uid "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    const-string/jumbo v2, "VibratorManagerService"

    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v0, 0x3

    iget p1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    return-void
.end method

.method public final fixupAlwaysOnEffectsLocked(Landroid/os/CombinedVibration;)Landroid/util/SparseArray;
    .registers 11

    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    check-cast p1, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {p1}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p1

    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;-><init>(Landroid/os/VibrationEffect;)V

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService;->transformAllVibratorsLocked(Ljava/util/function/Function;)Landroid/util/SparseArray;

    move-result-object p1

    goto :goto_1f

    :cond_15
    instance-of v0, p1, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_87

    check-cast p1, Landroid/os/CombinedVibration$Stereo;

    invoke-virtual {p1}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object p1

    :goto_1f
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_26
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_7f

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect;

    instance-of v5, v4, Landroid/os/VibrationEffect$Composed;

    if-eqz v5, :cond_54

    check-cast v4, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_54

    invoke-virtual {v4}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v5, v4, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v5, :cond_54

    check-cast v4, Landroid/os/vibrator/PrebakedSegment;

    goto :goto_55

    :cond_54
    move-object v4, v1

    :goto_55
    if-nez v4, :cond_61

    const-string/jumbo p0, "VibratorManagerService"

    const-string/jumbo p1, "Only prebaked effects supported for always-on."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_61
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/vibrator/VibratorController;

    if-eqz v6, :cond_7c

    iget-object v6, v6, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v7, 0x40

    invoke-virtual {v6, v7, v8}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v6

    if-eqz v6, :cond_7c

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_7f
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-nez p0, :cond_86

    goto :goto_87

    :cond_86
    return-object v0

    :cond_87
    :goto_87
    return-object v1
.end method

.method public final fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;
    .registers 5

    if-nez p1, :cond_4

    sget-object p1, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    :cond_4
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    if-nez v0, :cond_14

    if-eqz p2, :cond_14

    invoke-virtual {p2}, Landroid/os/CombinedVibration;->isHapticFeedbackCandidate()Z

    move-result p2

    if-eqz p2, :cond_14

    const/16 v0, 0x12

    :cond_14
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result p2

    and-int/lit8 v1, p2, 0x3

    if-eqz v1, :cond_39

    const-string/jumbo v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string/jumbo v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_39

    and-int/lit8 p2, p2, -0x4

    :cond_39
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p0

    if-ne v0, p0, :cond_46

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result p0

    if-ne p2, p0, :cond_46

    return-object p1

    :cond_46
    new-instance p0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {p0, p1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    invoke-virtual {p0, v0}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/os/VibrationAttributes$Builder;->setFlags(II)Landroid/os/VibrationAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0
.end method

.method public final getAmplitudeList(I)[I
    .registers 4

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_14
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getAmplitudeList(I)[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1c

    throw p0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCapabilities()I
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCapabilities:J

    long-to-int p0, v0

    return p0
.end method

.method public final getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;
    .registers 2

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    return-object p0
.end method

.method public final getHapticVibrationProvider()Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;
    .registers 6

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    if-eqz v1, :cond_b

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception p0

    goto :goto_32

    :cond_b
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_9

    :try_start_e
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCombinedVibratorInfo:Landroid/os/VibratorInfo;

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_2f

    if-nez v2, :cond_16

    const/4 p0, 0x0

    :try_start_14
    monitor-exit v0

    return-object p0

    :cond_16
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInjector:Lcom/android/server/vibrator/VibratorManagerService$Injector;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    new-instance v4, Lcom/android/server/vibrator/HapticFeedbackCustomization;

    invoke-direct {v4, v3, v2}, Lcom/android/server/vibrator/HapticFeedbackCustomization;-><init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)V

    invoke-direct {v1, v3, v2, v4}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;-><init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;Lcom/android/server/vibrator/HapticFeedbackCustomization;)V

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHapticFeedbackVibrationProvider:Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_9

    return-object v1

    :catchall_2f
    move-exception p0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw p0

    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_9

    throw p0
.end method

.method public final getSupportedVibratorGroup()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    iget p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorGroup:I

    return p0

    :cond_14
    return v1
.end method

.method public final getVibratorIds()[I
    .registers 2

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public final getVibratorInfo(I)Landroid/os/VibratorInfo;
    .registers 4

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/vibrator/VibratorController;

    if-nez p1, :cond_b

    goto :goto_1e

    :cond_b
    iget-object v0, p1, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_10
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mServiceReady:Z

    if-eqz p0, :cond_18

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception p0

    goto :goto_20

    :cond_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_16

    iget-boolean p0, p1, Lcom/android/server/vibrator/VibratorController;->mVibratorInfoLoadSuccessful:Z

    if-eqz p0, :cond_1e

    return-object v0

    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    return-object p0

    :goto_20
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_16

    throw p0
.end method

.method public final hasPermission(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final isVibrating(I)Z
    .registers 2

    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->isVibrating_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    if-eqz p0, :cond_15

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/VibratorController$VibratorState;

    sget-object p1, Lcom/android/server/vibrator/VibratorController$VibratorState;->IDLE:Lcom/android/server/vibrator/VibratorController$VibratorState;

    if-eq p0, p1, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public final logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    invoke-interface {p1, v0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->logMetrics(Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;)V

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getStatus()Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const-string/jumbo v4, "VibratorManagerService"

    const/16 v5, 0xd

    if-eq v3, v5, :cond_a2

    const/16 v5, 0x12

    if-eq v3, v5, :cond_88

    const/16 v5, 0x19

    if-eq v3, v5, :cond_76

    const/16 v5, 0x1c

    if-eq v3, v5, :cond_64

    packed-switch v3, :pswitch_data_c8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Vibration for uid="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and with attrs="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ended with status "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    :pswitch_52  #0x17
    const-string v0, "Ignoring incoming vibration in favor of repeating vibration"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    :pswitch_58  #0x16
    const-string v0, "Ignoring incoming vibration in favor of ongoing vibration with higher importance"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    :pswitch_5e  #0x15
    const-string v0, "Ignoring incoming vibration for current external vibration"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    :cond_64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring incoming vibration because it came from a virtual device, attrs= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    :cond_76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring incoming vibration because of ringer mode, attrs="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    :cond_88
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring incoming vibration as process with uid= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is background, attrs= "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    :cond_a2
    const-string/jumbo v1, "Would be an error: vibrate from uid "

    invoke-static {v0, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_a8
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorManagerRecords:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;

    monitor-enter p0

    :try_start_ab
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    new-instance v1, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;

    invoke-direct {v1, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;-><init>(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->add(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    move-result-object p1

    if-eqz p1, :cond_c4

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mAggregatedVibrationHistory:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    iget-object p1, p1, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    check-cast p1, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->add(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;
    :try_end_c1
    .catchall {:try_start_ab .. :try_end_c1} :catchall_c2

    goto :goto_c4

    :catchall_c2
    move-exception p1

    goto :goto_c6

    :cond_c4
    :goto_c4
    monitor-exit p0

    return-void

    :goto_c6
    :try_start_c6
    monitor-exit p0
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c2

    throw p1

    :pswitch_data_c8
    .packed-switch 0x15
        :pswitch_5e  #00000015
        :pswitch_58  #00000016
        :pswitch_52  #00000017
    .end packed-switch
.end method

.method public final onCustomSystemReady()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v4, 0x4

    const/16 v5, 0x14

    const/4 v1, 0x1

    const v3, 0x1070190

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x1e

    const/4 v1, 0x2

    const v3, 0x1070191

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/4 v4, 0x2

    const/16 v5, 0x64

    const/4 v1, 0x3

    const v3, 0x1070192

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/4 v4, 0x3

    const/16 v5, 0xb4

    const/4 v1, 0x4

    const v3, 0x1070193

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/4 v4, 0x1

    const/16 v5, 0xbc

    const/4 v1, 0x5

    const v3, 0x1070194

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/4 v4, 0x4

    const/16 v5, 0x14

    const/4 v1, 0x6

    const v3, 0x1070195

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/4 v4, 0x2

    const/16 v5, 0x1db

    const/4 v1, 0x7

    const v3, 0x1070196

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/4 v4, 0x0

    const/16 v5, 0x29e

    const/16 v1, 0x8

    const v3, 0x1070197

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x5dc

    const/16 v1, 0x9

    const v3, 0x1070198

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x3e8

    const/16 v1, 0xa

    const v3, 0x1070199

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0xdac

    const/16 v1, 0xb

    const v3, 0x107019a

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x7d0

    const/16 v1, 0xc

    const v3, 0x107019b

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x640

    const/16 v1, 0xd

    const v3, 0x107019c

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x1e

    const/16 v1, 0xe

    const v3, 0x107019d

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v1, 0xf

    const v3, 0x107019e

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v1, 0x10

    const v3, 0x107019f

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0xbb8

    const/16 v1, 0x11

    const v3, 0x10701a0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0xc1c

    const/16 v1, 0x12

    const v3, 0x10701a1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x125c

    const/16 v1, 0x13

    const v3, 0x10701a2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0xc1c

    const/16 v1, 0x14

    const v3, 0x10701a3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0xcbc

    const/16 v1, 0x15

    const v3, 0x10701a4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x19

    const/16 v1, 0x16

    const v3, 0x10701b0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x14

    const/16 v1, 0x17

    const v3, 0x10701b1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v1, 0x18

    const v3, 0x10701b2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/4 v5, 0x0

    const/16 v1, 0x19

    const v3, 0x10701b3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x14

    const/16 v1, 0x1a

    const v3, 0x10701b4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x8c

    const/16 v1, 0x1b

    const v3, 0x10701b5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/4 v5, 0x0

    const/16 v1, 0x1c

    const v3, 0x10701b6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v1, 0x1d

    const v3, 0x10701b7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v1, 0x1e

    const v3, 0x10701b8

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v1, 0x1f

    const v3, 0x10701b9

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x19

    const/16 v1, 0x20

    const v3, 0x10701ba

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x14

    const/16 v1, 0x21

    const v3, 0x10701bb

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0xc8

    const/16 v1, 0x22

    const v3, 0x10701bc

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/4 v5, 0x0

    const/16 v1, 0x23

    const v3, 0x10701bd

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x1f4

    const/16 v1, 0x24

    const v3, 0x10701be

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x14

    const/16 v1, 0x25

    const v3, 0x10701bf

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v1, 0x26

    const v3, 0x10701c0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x1e

    const/16 v1, 0x27

    const v3, 0x10701c1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x14

    const/16 v1, 0x28

    const v3, 0x10701c2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0xa

    const/16 v1, 0x29

    const v3, 0x10701c3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x14

    const/16 v1, 0x2a

    const v3, 0x10701c4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v1, 0x2b

    const v3, 0x10701c5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v1, 0x2c

    const v3, 0x10701c6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x9b

    const/16 v1, 0x2d

    const v3, 0x10701c7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0xbe

    const/16 v1, 0x2e

    const v3, 0x10701c8

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x8c

    const/16 v1, 0x2f

    const v3, 0x10701c9

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x1f4

    const/16 v1, 0x30

    const v3, 0x10701ca

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x14

    const/16 v1, 0x31

    const v3, 0x10701cb

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0xa

    const/16 v1, 0x32

    const v3, 0x10701cc

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x1e

    const/16 v1, 0x33

    const v3, 0x10701cd

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v1, 0x34

    const v3, 0x10701ce

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x7d0

    const/16 v1, 0x38

    const v3, 0x10701cf

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v1, 0x39

    const v3, 0x10701d0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v1, 0x3a

    const v3, 0x10701d1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v1, 0x3b

    const v3, 0x10701d2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/4 v5, 0x0

    const/16 v1, 0x3c

    const v3, 0x10701d3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x320

    const/16 v1, 0x54

    const v3, 0x10701d4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v1, 0x55

    const v3, 0x10701d5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v1, 0x56

    const v3, 0x10701d6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x258

    const/16 v1, 0x57

    const v3, 0x10701d7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x140

    const/16 v1, 0x58

    const v3, 0x10701d8

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x28a

    const/16 v1, 0x59

    const v3, 0x10701d9

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x2ee

    const/16 v1, 0x5a

    const v3, 0x10701da

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0xbea

    const/16 v1, 0x5b

    const v3, 0x10701db

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0xcb2

    const/16 v1, 0x5c

    const v3, 0x10701dc

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x19

    const/16 v1, 0x6c

    const v3, 0x10701a5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v1, 0x6d

    const v3, 0x10701a6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x8c

    const/16 v1, 0x6e

    const v3, 0x10701a7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x11d

    const/16 v1, 0x6f

    const v3, 0x10701a8

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x20d

    const/16 v1, 0x70

    const v3, 0x10701a9

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0xbe

    const/16 v1, 0x71

    const v3, 0x10701aa

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x1e0

    const/16 v1, 0x72

    const v3, 0x10701ab

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x14

    const/16 v1, 0x77

    const v3, 0x10701ac

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0x226

    const/16 v1, 0x7d

    const v3, 0x10701ad

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v5, 0xc8

    const/16 v1, 0x7e

    const v3, 0x10701ae

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v1, 0x7f

    const v3, 0x10701af

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createPatternInfo(ILandroid/content/res/Resources;III)V

    const/16 v1, 0x40

    const/16 v2, 0x640

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x42

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x44

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x45

    const/16 v2, 0x7d

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x46

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x47

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x48

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x49

    const/16 v2, 0x145

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x4a

    const/16 v2, 0xe1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x4b

    const/16 v2, 0x7d

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x4c

    const/16 v2, 0x145

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x4d

    const/16 v2, 0xe1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x4e

    const/16 v2, 0xaf

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x4f

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x50

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x51

    const/16 v2, 0xaa

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x52

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x53

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x5d

    const/16 v2, 0x294

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x5e

    const/16 v2, 0xdc

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x5f

    const/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x60

    const/16 v2, 0x163

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x61

    const/16 v2, 0x2d0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x62

    const/16 v2, 0x3f7

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x63

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x65

    const/16 v2, 0xded

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x66

    const/16 v2, 0xdc5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x67

    const/16 v2, 0xe1a

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x68

    const/16 v2, 0xeb0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x69

    const/16 v2, 0x1540

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x6a

    const/16 v2, 0xf46

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x6b

    const/16 v2, 0xdc5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x73

    const/16 v2, 0x6a4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x74

    const/16 v2, 0x514

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x75

    const/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x76

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x78

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x79

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x7a

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x7b

    const/16 v2, 0x82

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    const/16 v1, 0x7c

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->createIndexDurationInfo(II)V

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_42d

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    const-string v2, "HYBRID_PATTERN_COMMON_INPUTFF"

    iget-object v3, v0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_421
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    invoke-virtual {v0, v2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v3

    goto :goto_42e

    :catchall_429
    move-exception v0

    move-object p0, v0

    monitor-exit v3
    :try_end_42c
    .catchall {:try_start_421 .. :try_end_42c} :catchall_429

    throw p0

    :cond_42d
    move v0, v1

    :goto_42e
    invoke-static {v0}, Lcom/samsung/android/vibrator/VibRune;->SET_HYBRID_HAPTIC(Z)V

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_444

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    iget-boolean v0, v0, Lcom/android/server/vibrator/VibratorController;->mSupportFrequencyControl:Z

    goto :goto_445

    :cond_444
    move v0, v1

    :goto_445
    sput-boolean v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->sIsFrequencySupported:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "frequency supported is : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/samsung/android/server/vibrator/VibratorHelper;->sIsFrequencySupported:Z

    const-string/jumbo v3, "VibratorHelper"

    invoke-static {v3, v0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_46a

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    iget-boolean v0, v0, Lcom/android/server/vibrator/VibratorController;->mSupportHapticEngine:Z

    goto :goto_46b

    :cond_46a
    move v0, v1

    :goto_46b
    sput-boolean v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->sIsHapticEngineSupported:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "haptic engine supported is : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/samsung/android/server/vibrator/VibratorHelper;->sIsHapticEngineSupported:Z

    invoke-static {v3, v0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_48f

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getMotorType()I

    move-result v0

    goto :goto_490

    :cond_48f
    move v0, v1

    :goto_490
    sput v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->sMotorType:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vibrator motor type is : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/samsung/android/server/vibrator/VibratorHelper;->sMotorType:I

    invoke-static {v2}, Lcom/samsung/android/server/vibrator/VibratorHelper;->getMotorTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->getAmplitudeList(I)[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setRingAmplitudes amplitudes="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mRingAmplitudes:[I

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->getAmplitudeList(I)[I

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setSystemAmplitudes amplitudes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, v0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mSystemAmplitudes:[I

    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;

    invoke-virtual {p5}, Landroid/os/ShellCallback;->getShellCallbackBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final performHapticFeedback(IILjava/lang/String;ILjava/lang/String;II)V
    .registers 20

    const-string/jumbo v0, "performHapticFeedback"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object v9, p0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v10, p6

    move/from16 v11, p7

    :try_start_16
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/vibrator/VibratorManagerService;->performHapticFeedbackInternal(IILjava/lang/String;ILjava/lang/String;Landroid/os/IBinder;II)Lcom/android/server/vibrator/HalVibration;
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1d

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1d
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final performHapticFeedbackForInputDevice(IILjava/lang/String;IIILjava/lang/String;II)V
    .registers 24

    const-string/jumbo v0, "performHapticFeedbackForInputDevice"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object v11, p0

    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v12, p8

    move/from16 v13, p9

    :try_start_1c
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/vibrator/VibratorManagerService;->performHapticFeedbackForInputDeviceInternal(IILjava/lang/String;IIILjava/lang/String;Landroid/os/IBinder;II)Lcom/android/server/vibrator/HalVibration;
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_23

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_23
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public performHapticFeedbackForInputDeviceInternal(IILjava/lang/String;IIILjava/lang/String;Landroid/os/IBinder;II)Lcom/android/server/vibrator/HalVibration;
    .registers 20

    move/from16 v1, p9

    const-string/jumbo v2, "performHapticFeedbackForInputDevice(constant="

    const-string v3, ", inputDeviceId="

    const-string v4, ", inputSource="

    invoke-static {p4, p5, v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p7

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getHapticVibrationProvider()Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    move-result-object p5

    invoke-virtual {p0, p4, v5, p5}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreHapticFeedback(ILjava/lang/String;Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v7, 0x0

    if-eqz v6, :cond_3e

    new-instance v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-static {v2}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v0, v6}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationAttemptDebugInfo(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/Vibration$DebugInfoImpl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    return-object v7

    :cond_3e
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    if-eq p4, v3, :cond_4d

    const/16 v3, 0x9

    if-eq p4, v3, :cond_4a

    const/4 v3, 0x1

    goto :goto_4e

    :cond_4a
    iget-boolean v3, p5, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticTextHandleEnabled:Z

    goto :goto_4e

    :cond_4d
    move v3, v2

    :goto_4e
    const/high16 v4, 0x400000

    if-nez v3, :cond_53

    goto :goto_86

    :cond_53
    and-int v3, p6, v4

    iget-object p5, p5, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticFeedbackCustomization:Lcom/android/server/vibrator/HapticFeedbackCustomization;

    if-eqz v3, :cond_63

    iget-object v3, p5, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizationsForSourceRotary:Landroid/util/SparseArray;

    invoke-virtual {v3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/os/VibrationEffect;

    goto :goto_70

    :cond_63
    and-int/lit16 v3, p6, 0x1002

    if-eqz v3, :cond_70

    iget-object v3, p5, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizationsForSourceTouchScreen:Landroid/util/SparseArray;

    invoke-virtual {v3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/os/VibrationEffect;

    :cond_70
    :goto_70
    if-nez v7, :cond_7c

    iget-object p5, p5, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizations:Landroid/util/SparseArray;

    invoke-virtual {p5, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/os/VibrationEffect;

    move-object v7, p5

    goto :goto_7f

    :cond_7c
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_7f
    if-eqz v7, :cond_82

    goto :goto_86

    :cond_82
    invoke-static {p4}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationForHapticFeedback(I)Landroid/os/VibrationEffect;

    move-result-object v7

    :goto_86
    packed-switch p4, :pswitch_data_c0

    move/from16 p5, p10

    invoke-static {p4, v1, p5}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationAttributes(III)Landroid/os/VibrationAttributes;

    move-result-object p5

    :goto_8f
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v8, p5

    move-object/from16 v6, p8

    goto :goto_bb

    :pswitch_98  #0x12, 0x13, 0x14
    if-ne p6, v4, :cond_9d

    sget-object p5, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_9f

    :cond_9d
    sget-object p5, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    :goto_9f
    const/4 v0, 0x2

    and-int/2addr v1, v0

    if-eqz v1, :cond_a4

    move v2, v0

    :cond_a4
    packed-switch p4, :pswitch_data_ca

    goto :goto_aa

    :pswitch_a8  #0x12, 0x13, 0x14
    or-int/lit8 v2, v2, 0x1

    :goto_aa
    if-nez v2, :cond_ad

    goto :goto_8f

    :cond_ad
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0, p5}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    invoke-virtual {v0, v2}, Landroid/os/VibrationAttributes$Builder;->setFlags(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p5

    invoke-virtual {p5}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p5

    goto :goto_8f

    :goto_bb
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/vibrator/VibratorManagerService;->performHapticFeedbackWithEffect(IILjava/lang/String;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/HalVibration;

    move-result-object p0

    return-object p0

    :pswitch_data_c0
    .packed-switch 0x12
        :pswitch_98  #00000012
        :pswitch_98  #00000013
        :pswitch_98  #00000014
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x12
        :pswitch_a8  #00000012
        :pswitch_a8  #00000013
        :pswitch_a8  #00000014
    .end packed-switch
.end method

.method public performHapticFeedbackInternal(IILjava/lang/String;ILjava/lang/String;Landroid/os/IBinder;II)Lcom/android/server/vibrator/HalVibration;
    .registers 14

    const-string/jumbo v0, "performHapticFeedback(constant="

    const-string v1, "): "

    invoke-static {p4, v0, v1, p5}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->getHapticVibrationProvider()Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    move-result-object v0

    invoke-virtual {p0, p4, p5, v0}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreHapticFeedback(ILjava/lang/String;Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2a

    move-object p6, p5

    move-object p5, p3

    move p3, p1

    new-instance p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move p4, p2

    invoke-static {v2}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object p2

    invoke-direct/range {p1 .. p6}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, p1, v1}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationAttemptDebugInfo(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/Vibration$DebugInfoImpl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    return-object v3

    :cond_2a
    move-object v4, p3

    move p3, p1

    move-object p1, p6

    move-object p6, p5

    move-object p5, v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    if-eq p4, v1, :cond_3d

    const/16 v1, 0x9

    if-eq p4, v1, :cond_3b

    const/4 v2, 0x1

    goto :goto_3d

    :cond_3b
    iget-boolean v2, v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticTextHandleEnabled:Z

    :cond_3d
    :goto_3d
    if-nez v2, :cond_40

    goto :goto_52

    :cond_40
    iget-object v0, v0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->mHapticFeedbackCustomization:Lcom/android/server/vibrator/HapticFeedbackCustomization;

    iget-object v0, v0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizations:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/VibrationEffect;

    if-eqz v3, :cond_4e

    goto :goto_52

    :cond_4e
    invoke-static {p4}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationForHapticFeedback(I)Landroid/os/VibrationEffect;

    move-result-object v3

    :goto_52
    invoke-static {p4, p7, p8}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;->getVibrationAttributes(III)Landroid/os/VibrationAttributes;

    move-result-object p8

    move-object p7, p6

    move-object p6, p1

    move p1, p3

    move-object p3, p5

    move-object p5, p7

    move-object p7, v3

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/vibrator/VibratorManagerService;->performHapticFeedbackWithEffect(IILjava/lang/String;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/HalVibration;

    move-result-object p0

    return-object p0
.end method

.method public final performHapticFeedbackWithEffect(IILjava/lang/String;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/HalVibration;
    .registers 17

    if-nez p7, :cond_29

    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v3

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1, v2, v1}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationAttemptDebugInfo(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/Vibration$DebugInfoImpl;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "performHapticFeedbackWithEffect; vibration absent for constant "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "VibratorManagerService"

    invoke-static {p0, p4, p2}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-object p1

    :cond_29
    invoke-static {p7}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v4

    sget-object v2, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationParamRequestLatencyHistogram:Lcom/android/modules/expresslog/Histogram;

    const/4 v2, 0x3

    if-eq p4, v2, :cond_3e

    const/4 v2, 0x7

    if-eq p4, v2, :cond_3e

    :goto_35
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v5, p8

    goto :goto_45

    :cond_3e
    const-string/jumbo v0, "vibrator.value_perform_haptic_feedback_keyboard"

    invoke-static {v0, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_35

    :goto_45
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateInternal(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;

    move-result-object p0

    return-object p0
.end method

.method public final registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 8

    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->registerVibratorStateListener_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    const/4 p1, 0x0

    if-nez p0, :cond_f

    return p1

    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_13
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_42

    :try_start_16
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v3

    if-nez v3, :cond_25

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_23

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_23
    move-exception p0

    goto :goto_40

    :cond_25
    :try_start_25
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mCurrentState:Lcom/android/server/vibrator/VibratorController$VibratorState;

    sget-object v3, Lcom/android/server/vibrator/VibratorController$VibratorState;->IDLE:Lcom/android/server/vibrator/VibratorController$VibratorState;
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_23

    const/4 v4, 0x1

    if-eq p0, v3, :cond_2d

    move p1, v4

    :cond_2d
    :try_start_2d
    invoke-interface {p2, p1}, Landroid/os/IVibratorStateListener;->onVibrating(Z)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_30} :catch_31
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_30} :catch_31
    .catchall {:try_start_2d .. :try_end_30} :catchall_23

    goto :goto_3b

    :catch_31
    move-exception p0

    :try_start_32
    const-string/jumbo p1, "VibratorController"

    const-string/jumbo p2, "Vibrator state listener failed to call"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_23

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :goto_40
    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_23

    :try_start_41
    throw p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final reportVibrationInfo(Lcom/android/server/vibrator/HalVibration;Landroid/os/VibrationAttributes;)V
    .registers 10

    invoke-virtual {p2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    const/16 v1, 0x12

    if-eq v1, v0, :cond_70

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    if-eqz v0, :cond_70

    iget-object v1, v0, Lcom/samsung/android/server/audio/GoodCatchManager;->mModule:Ljava/lang/String;

    const-string/jumbo v2, "VibratorService"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    iget-boolean v0, v0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrationFunc:Z

    goto :goto_1c

    :cond_1b
    move v0, v2

    :goto_1c
    if-eqz v0, :cond_70

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    iget-object p1, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v0, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->reason:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x31

    if-eq v0, v3, :cond_38

    if-eqz v0, :cond_38

    const/16 v3, 0x21

    if-ne v0, v3, :cond_5d

    :cond_38
    const-string/jumbo v0, "reason: Notification ("

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x29

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    :goto_5b
    move-object v3, v0

    goto :goto_60

    :cond_5d
    iget-object v0, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    goto :goto_5b

    :goto_60
    invoke-virtual {p2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v4

    iget-object v1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    const-string/jumbo v2, "vibration"

    const-string v5, ""

    iget-object v6, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->reason:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_70
    return-void
.end method

.method public final semGetNumberOfSupportedPatterns()I
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorHelper:Lcom/samsung/android/server/vibrator/VibratorHelper;

    iget-object p0, p0, Lcom/samsung/android/server/vibrator/VibratorHelper;->mVibePatternHash:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    return p0
.end method

.method public final setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z
    .registers 19

    move/from16 v0, p3

    move-object/from16 v1, p4

    const-string/jumbo v2, "setAlwaysOnEffect"

    const-wide/32 v3, 0x800000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_d
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.VIBRATE_ALWAYS_ON"

    const-string/jumbo v6, "setAlwaysOnEffect"

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_51

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_4e

    :try_start_1f
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->delete(I)V

    :goto_24
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_45

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    iget-object v6, v1, Lcom/android/server/vibrator/VibratorController;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v7, 0x40

    invoke-virtual {v6, v7, v8}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v6

    if-eqz v6, :cond_42

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6}, Lcom/android/server/vibrator/VibratorController;->updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V

    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_45
    monitor-exit p1
    :try_end_46
    .catchall {:try_start_1f .. :try_end_46} :catchall_4a

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return v2

    :catchall_4a
    move-exception v0

    move-object p0, v0

    :try_start_4c
    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4a

    :try_start_4d
    throw p0

    :catchall_4e
    move-exception v0

    move-object p0, v0

    goto :goto_8f

    :cond_51
    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->isEffectValid(Landroid/os/CombinedVibration;)Z

    move-result v6
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_4e

    if-nez v6, :cond_5b

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return v5

    :cond_5b
    move-object/from16 v6, p5

    :try_start_5d
    invoke-virtual {p0, v6, v1}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object v7

    iget-object v12, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_4e

    :try_start_64
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->fixupAlwaysOnEffectsLocked(Landroid/os/CombinedVibration;)Landroid/util/SparseArray;

    move-result-object v1

    if-nez v1, :cond_72

    monitor-exit v12
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_6f

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return v5

    :catchall_6f
    move-exception v0

    move-object p0, v0

    goto :goto_8d

    :cond_72
    :try_start_72
    new-instance v5, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;

    new-instance v6, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move v8, p1

    move-object v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v0, v6, v1}, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;-><init>(ILcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/util/SparseArray;)V

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, v5}, Lcom/android/server/vibrator/VibratorManagerService;->updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V

    monitor-exit v12
    :try_end_89
    .catchall {:try_start_72 .. :try_end_89} :catchall_6f

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return v2

    :goto_8d
    :try_start_8d
    monitor-exit v12
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_6f

    :try_start_8e
    throw p0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_4e

    :goto_8f
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final shouldIgnoreForOngoingLocked(Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;
    .registers 3

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v0, :cond_b

    invoke-static {p1, v0}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreForOngoing(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Lcom/android/server/vibrator/VibrationSession;->wasEndRequested()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1d

    :cond_16
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-static {p1, p0}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreForOngoing(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object p0

    return-object p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final shouldIgnoreHapticFeedback(ILjava/lang/String;Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;)Lcom/android/server/vibrator/VibrationSession$Status;
    .registers 4

    if-nez p3, :cond_1c

    const-string/jumbo p0, "VibratorManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; haptic vibration provider not ready."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    :cond_1c
    const/16 p3, 0x2714

    if-eq p1, p3, :cond_25

    const/16 p3, 0x2715

    if-eq p1, p3, :cond_25

    goto :goto_4b

    :cond_25
    const-string/jumbo p3, "android.permission.VIBRATE_SYSTEM_CONSTANTS"

    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_4b

    const-string/jumbo p0, "VibratorManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; no permission for system constant "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_MISSING_PERMISSION:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    :cond_4b
    :goto_4b
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_50
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mHapticFeedbackEnabled:Z

    monitor-exit p1
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_63

    if-nez p0, :cond_61

    const-string/jumbo p0, "VibratorManagerService"

    const-string/jumbo p1, "performHapticFeedback; haptic feedback is disabled"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    :cond_61
    const/4 p0, 0x0

    return-object p0

    :catchall_63
    move-exception p0

    :try_start_64
    monitor-exit p1
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw p0
.end method

.method public final shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;
    .registers 12

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Failed to call NotificationManager : "

    iget-object v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_10
    iget-object v4, v0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    iget v5, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    monitor-enter v4
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_4d

    :try_start_15
    iget-object v6, v4, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;->mProcStatesCache:Landroid/util/SparseArray;

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v7, :cond_2b

    move v5, v6

    goto :goto_2c

    :cond_2b
    const/4 v5, 0x0

    :goto_2c
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_144

    const/4 v4, 0x2

    const/4 v7, 0x0

    if-nez v5, :cond_55

    :try_start_31
    sget-object v5, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    iget-object v0, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const-string v1, "ALLOWED_IN_BACKGROUND_PROCESS"

    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    monitor-exit v3

    :goto_4a
    move-object v0, v7

    goto/16 :goto_132

    :catchall_4d
    move-exception p0

    goto/16 :goto_147

    :cond_50
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_BACKGROUND:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v3

    goto/16 :goto_132

    :cond_55
    iget v5, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->deviceId:I

    const/4 v8, -0x1

    if-eqz v5, :cond_61

    if-eq v5, v8, :cond_61

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FROM_VIRTUAL_DEVICE:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v3

    goto/16 :goto_132

    :cond_61
    if-ne v5, v8, :cond_7b

    iget v5, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v8, v0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_68
    .catchall {:try_start_31 .. :try_end_68} :catchall_4d

    :try_start_68
    iget-object v9, v0, Lcom/android/server/vibrator/VibrationSettings;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    monitor-exit v8
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_78

    if-eqz v9, :cond_7b

    :try_start_6d
    invoke-virtual {v9, v5}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isAppRunningOnAnyVirtualDevice(I)Z

    move-result v5

    if-eqz v5, :cond_7b

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FROM_VIRTUAL_DEVICE:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v3
    :try_end_76
    .catchall {:try_start_6d .. :try_end_76} :catchall_4d

    goto/16 :goto_132

    :catchall_78
    move-exception p0

    :try_start_79
    monitor-exit v8
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    :try_start_7a
    throw p0

    :cond_7b
    iget-boolean v5, v0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    if-eqz v5, :cond_92

    sget-object v5, Lcom/android/server/vibrator/VibrationSettings;->BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_92

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_POWER:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v3

    goto/16 :goto_132

    :cond_92
    iget-object v5, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v5, v4}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v5

    if-nez v5, :cond_d0

    iget-object v5, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v5}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v8

    if-nez v8, :cond_c5

    iget-object v8, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const-string v9, "INTENSITY_MAX"

    invoke-virtual {v8, v9}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d0

    iget-object v8, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const-string v9, "INTENSITY_MIN"

    invoke-virtual {v8, v9}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d0

    iget-object v8, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const-string v9, "INDIVIDUAL_INTENSITY"

    invoke-virtual {v8, v9}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c5

    goto :goto_d0

    :cond_c5
    invoke-virtual {v0, v5}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v5

    if-eqz v5, :cond_cc

    goto :goto_d0

    :cond_cc
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v3

    goto :goto_132

    :cond_d0
    :goto_d0
    iget-object v5, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v5, v6}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v5

    const/16 v6, 0x31

    if-nez v5, :cond_f8

    const/16 v5, 0x21

    if-eq v2, v5, :cond_e1

    if-eq v2, v6, :cond_e1

    goto :goto_f8

    :cond_e1
    iget v5, v0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    if-eqz v5, :cond_e6

    goto :goto_f8

    :cond_e6
    iget-object v0, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const-string/jumbo v1, "VIBRATE_CALL"

    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f4

    monitor-exit v3

    goto/16 :goto_4a

    :cond_f4
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_RINGER_MODE:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v3

    goto :goto_132

    :cond_f8
    :goto_f8
    iget-object v5, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v5}, Landroid/os/vibrator/VibrationConfig;->ignoreVibrationsOnWirelessCharger()Z

    move-result v5

    if-eqz v5, :cond_108

    iget-boolean v5, v0, Lcom/android/server/vibrator/VibrationSettings;->mOnWirelessCharger:Z

    if-eqz v5, :cond_108

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ON_WIRELESS_CHARGER:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v3
    :try_end_107
    .catchall {:try_start_7a .. :try_end_107} :catchall_4d

    goto :goto_132

    :cond_108
    :try_start_108
    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSettings;->mNotificationManager:Landroid/app/INotificationManager;

    if-eqz v0, :cond_12f

    if-ne v2, v6, :cond_12f

    iget-object v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-interface {v0, v2, v5}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_12f

    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_DISABLED_NOTIFICATION:Lcom/android/server/vibrator/VibrationSession$Status;
    :try_end_11a
    .catch Landroid/os/RemoteException; {:try_start_108 .. :try_end_11a} :catch_11c
    .catchall {:try_start_108 .. :try_end_11a} :catchall_4d

    :try_start_11a
    monitor-exit v3

    goto :goto_132

    :catch_11c
    move-exception v0

    const-string/jumbo v2, "VibrationSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12f
    monitor-exit v3
    :try_end_130
    .catchall {:try_start_11a .. :try_end_130} :catchall_4d

    goto/16 :goto_4a

    :goto_132
    if-eqz v0, :cond_135

    return-object v0

    :cond_135
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->checkAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I

    move-result p0

    if-eqz p0, :cond_143

    if-ne p0, v4, :cond_140

    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    :cond_140
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    :cond_143
    return-object v7

    :catchall_144
    move-exception p0

    :try_start_145
    monitor-exit v4
    :try_end_146
    .catchall {:try_start_145 .. :try_end_146} :catchall_144

    :try_start_146
    throw p0

    :goto_147
    monitor-exit v3
    :try_end_148
    .catchall {:try_start_146 .. :try_end_148} :catchall_4d

    throw p0
.end method

.method public final shouldPipelineVibrationLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/HalVibration;)Z
    .registers 7

    instance-of v0, p1, Lcom/android/server/vibrator/SingleVibrationSession;

    if-eqz v0, :cond_3d

    check-cast p1, Lcom/android/server/vibrator/SingleVibrationSession;

    iget-object p1, p1, Lcom/android/server/vibrator/SingleVibrationSession;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getVibrationPipelineMaxDurationMs()I

    iget-object p0, p1, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-virtual {p0}, Landroid/os/CombinedVibration;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p0, v0, v2

    if-nez p0, :cond_1d

    goto :goto_3d

    :cond_1d
    iget-object p0, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget p1, p0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v0, p2, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    if-ne p1, v0, :cond_3d

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result p0

    if-eqz p0, :cond_3d

    iget-object p0, p2, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p0, p1}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result p0

    if-eqz p0, :cond_3d

    const/4 p0, 0x1

    return p0

    :cond_3d
    :goto_3d
    const/4 p0, 0x0

    return p0
.end method

.method public final startAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I
    .registers 7

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v0, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Start AppOp mode VIBRATE for uid "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    const-string v3, " and package "

    const-string v4, " returned "

    invoke-static {v1, v3, v2, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    sget-object v1, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, p0

    const-string/jumbo v2, "VibratorManagerService"

    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const/4 v0, 0x1

    if-ne p0, v0, :cond_32

    invoke-virtual {p1, v0}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result p1

    if-eqz p1, :cond_32

    const/4 p0, 0x0

    :cond_32
    return p0
.end method

.method public final startVendorSessionLocked(Lcom/android/server/vibrator/VendorVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;
    .registers 13

    const-string v0, "Error starting session "

    const-string/jumbo v1, "Start AppOpsManager operation errored for uid "

    const-string/jumbo v2, "Starting session "

    const-string/jumbo v3, "startSessionLocked"

    const-wide/32 v4, 0x800000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_11
    iget-wide v6, p1, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    const-string/jumbo v3, "VibratorManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " in HAL"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->isEnded()Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object p0, p1, Lcom/android/server/vibrator/VendorVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_33
    .catchall {:try_start_11 .. :try_end_33} :catchall_4e

    :try_start_33
    iget-object p1, p1, Lcom/android/server/vibrator/VendorVibrationSession;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3a

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object p1

    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw p1

    :cond_3d
    iget-object v2, p1, Lcom/android/server/vibrator/VendorVibrationSession;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->startAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I

    move-result v3

    if-eqz v3, :cond_6b

    const/4 p0, 0x2

    if-eq v3, p0, :cond_51

    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;
    :try_end_4a
    .catchall {:try_start_3c .. :try_end_4a} :catchall_4e

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_4e
    move-exception p0

    goto/16 :goto_e1

    :cond_51
    :try_start_51
    const-string/jumbo p0, "VibratorManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;
    :try_end_67
    .catchall {:try_start_51 .. :try_end_67} :catchall_4e

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :cond_6b
    :try_start_6b
    const-string/jumbo v1, "vibration"

    const/4 v3, 0x0

    invoke-static {v4, v5, v1, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    iget-object v1, p1, Lcom/android/server/vibrator/VendorVibrationSession;->mCallback:Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;

    monitor-enter v1
    :try_end_77
    .catchall {:try_start_6b .. :try_end_77} :catchall_4e

    const/4 v3, 0x0

    :try_start_78
    iget-object v8, v1, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

    invoke-interface {v8}, Landroid/os/vibrator/IVibrationSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v8, p1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_81} :catch_86
    .catchall {:try_start_78 .. :try_end_81} :catchall_84

    :try_start_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_4e

    const/4 v3, 0x1

    goto :goto_90

    :catchall_84
    move-exception p0

    goto :goto_df

    :catch_86
    move-exception v8

    :try_start_87
    const-string/jumbo v9, "VendorVibrationSession"

    const-string v10, "Error linking session to token death"

    invoke-static {v9, v10, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8f
    .catchall {:try_start_87 .. :try_end_8f} :catchall_84

    :try_start_8f
    monitor-exit v1

    :goto_90
    const/4 v1, 0x0

    if-nez v3, :cond_9e

    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;
    :try_end_9a
    .catchall {:try_start_8f .. :try_end_9a} :catchall_4e

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :cond_9e
    :try_start_9e
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNativeWrapper:Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    iget-object v8, p1, Lcom/android/server/vibrator/VendorVibrationSession;->mVibratorIds:[I

    iget-wide v9, v3, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    invoke-static {v9, v10, v6, v7, v8}, Lcom/android/server/vibrator/VibratorManagerService;->nativeStartSession(JJ[I)Z

    move-result v3

    if-nez v3, :cond_d8

    const-string/jumbo v3, "VibratorManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " on vibrators "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/vibrator/VendorVibrationSession;->mVibratorIds:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->unlinkToDeath()V

    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;
    :try_end_d4
    .catchall {:try_start_9e .. :try_end_d4} :catchall_4e

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :cond_d8
    :try_start_d8
    invoke-virtual {p1}, Lcom/android/server/vibrator/VendorVibrationSession;->notifyStart()V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_4e

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1

    :goto_df
    :try_start_df
    monitor-exit v1
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_84

    :try_start_e0
    throw p0
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_4e

    :goto_e1
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final startVendorVibrationSession(IILjava/lang/String;[ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/vibrator/IVibrationSessionCallback;)Landroid/os/ICancellationSignal;
    .registers 11

    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->startVendorVibrationSession_enforcePermission()V

    const-wide/32 v1, 0x800000

    const-string/jumbo v0, "startVibrationSession"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_c
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/vibrator/VibratorManagerService;->startVendorVibrationSessionInternal(IILjava/lang/String;[ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/vibrator/IVibrationSessionCallback;)Lcom/android/server/vibrator/VendorVibrationSession;

    move-result-object p0

    if-nez p0, :cond_14

    const/4 p0, 0x0

    goto :goto_16

    :cond_14
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession;->mCancellationSignal:Landroid/os/ICancellationSignal;
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1a

    :goto_16
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_1a
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final startVendorVibrationSessionInternal(IILjava/lang/String;[ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/vibrator/IVibrationSessionCallback;)Lcom/android/server/vibrator/VendorVibrationSession;
    .registers 27

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-object/from16 v2, p5

    invoke-virtual {v0, v2, v1}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object v3

    new-instance v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    if-nez p7, :cond_3f

    const-string/jumbo v3, "VibratorManagerService"

    const-string/jumbo v4, "session callback must not be null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;

    new-instance v4, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    move-object v6, v2

    invoke-direct/range {v4 .. v18}, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;JJJJJZLjava/util/List;)V

    invoke-virtual {v0, v4}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    return-object v1

    :cond_3f
    const/4 v4, 0x0

    if-nez p4, :cond_45

    new-array v5, v4, [I

    goto :goto_47

    :cond_45
    move-object/from16 v5, p4

    :goto_47
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/vibrator/VibratorManagerService;->enforceUpdateAppOpsStatsPermission(I)V

    new-instance v6, Landroid/util/SparseArray;

    array-length v7, v5

    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    array-length v7, v5

    move v8, v4

    :goto_52
    if-ge v8, v7, :cond_66

    aget v9, v5, v8

    iget-object v10, v0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/vibrator/VibratorController;

    if-eqz v10, :cond_63

    invoke-virtual {v6, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_63
    add-int/lit8 v8, v8, 0x1

    goto :goto_52

    :cond_66
    new-instance v7, Lcom/android/server/vibrator/DeviceAdapter;

    iget-object v8, v0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {v7, v8, v6}, Lcom/android/server/vibrator/DeviceAdapter;-><init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/util/SparseArray;)V

    new-instance v6, Lcom/android/server/vibrator/VendorVibrationSession;

    iget-object v8, v0, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    iget-object v9, v0, Lcom/android/server/vibrator/VibratorManagerService;->mVendorVibrationSessionCallbacks:Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;

    move-object/from16 p6, p7

    move-object/from16 p2, v2

    move-object/from16 p1, v6

    move-object/from16 p5, v7

    move-object/from16 p3, v8

    move-object/from16 p4, v9

    invoke-direct/range {p1 .. p6}, Lcom/android/server/vibrator/VendorVibrationSession;-><init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/Handler;Lcom/android/server/vibrator/VibratorManagerService$VendorVibrationSessionCallbacks;Lcom/android/server/vibrator/DeviceAdapter;Landroid/os/vibrator/IVibrationSessionCallback;)V

    move-object/from16 v7, p1

    move-object/from16 v6, p5

    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v3

    if-eqz v3, :cond_92

    iget-object v3, v0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    :cond_92
    iget-object v3, v0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_95
    const-string/jumbo v8, "VibratorManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Starting vendor session "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v7, Lcom/android/server/vibrator/VendorVibrationSession;->mSessionId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v8, v0, Lcom/android/server/vibrator/VibratorManagerService;->mCapabilities:J

    const-wide/16 v10, 0x100

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_c9

    const-string/jumbo v8, "VibratorManagerService"

    const-string/jumbo v9, "Missing capability to start sessions, ignoring request"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    goto :goto_ca

    :catchall_c6
    move-exception v0

    goto/16 :goto_146

    :cond_c9
    move-object v8, v1

    :goto_ca
    if-nez v8, :cond_100

    array-length v9, v5

    if-eqz v9, :cond_d5

    array-length v9, v5

    iget-object v6, v6, Lcom/android/server/vibrator/DeviceAdapter;->mAvailableVibratorIds:[I

    array-length v6, v6

    if-eq v9, v6, :cond_100

    :cond_d5
    const-string/jumbo v6, "VibratorManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad vibrator ids to start session, ignoring request. requested="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " available="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorIds:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    :cond_100
    if-nez v8, :cond_106

    invoke-virtual {v0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v8

    :cond_106
    if-nez v8, :cond_112

    invoke-virtual {v0, v7}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreForOngoingLocked(Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object v5

    if-eqz v5, :cond_112

    iget-object v8, v5, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/VibrationSession$Status;

    iget-object v1, v5, Lcom/android/server/vibrator/Vibration$EndInfo;->endedBy:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    :cond_112
    if-nez v8, :cond_13f

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_118
    .catchall {:try_start_95 .. :try_end_118} :catchall_c6

    :try_start_118
    sget-object v9, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v0, v9, v2}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    iget-object v10, v0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v10, :cond_129

    iput-object v7, v0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v10, v9, v2, v4}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V

    goto :goto_12d

    :catchall_127
    move-exception v0

    goto :goto_13b

    :cond_129
    invoke-virtual {v0, v7}, Lcom/android/server/vibrator/VibratorManagerService;->startVendorSessionLocked(Lcom/android/server/vibrator/VendorVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v8

    :goto_12d
    iget-object v2, v0, Lcom/android/server/vibrator/VibratorManagerService;->mVirtualVibSoundHelper:Lcom/android/server/vibrator/VirtualVibSoundHelper;

    if-eqz v2, :cond_137

    const-string/jumbo v4, "cancel"

    invoke-virtual {v2, v4}, Lcom/android/server/vibrator/VirtualVibSoundHelper;->stopVirtualSound(Ljava/lang/String;)V
    :try_end_137
    .catchall {:try_start_118 .. :try_end_137} :catchall_127

    :cond_137
    :try_start_137
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_13f

    :goto_13b
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_13f
    :goto_13f
    if-eqz v8, :cond_144

    invoke-virtual {v0, v7, v8, v1}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    :cond_144
    monitor-exit v3

    return-object v7

    :goto_146
    monitor-exit v3
    :try_end_147
    .catchall {:try_start_137 .. :try_end_147} :catchall_c6

    throw v0
.end method

.method public final startVibrationLocked(Lcom/android/server/vibrator/SingleVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;
    .registers 6

    const-string/jumbo v0, "startVibrationLocked"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_9
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    iget-object v3, v0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_33

    :try_start_e
    iget-object v0, v0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_45

    if-eqz v0, :cond_27

    :try_start_1c
    iget-object p1, p1, Lcom/android/server/vibrator/SingleVibrationSession;->mVibration:Lcom/android/server/vibrator/HalVibration;

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationOnInputDevicesLocked(Lcom/android/server/vibrator/HalVibration;)V

    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->FORWARDED_TO_INPUT_DEVICES:Lcom/android/server/vibrator/VibrationSession$Status;
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_33

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-nez v0, :cond_35

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationOnThreadLocked(Lcom/android/server/vibrator/SingleVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object p0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_33

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_33
    move-exception p0

    goto :goto_48

    :cond_35
    :try_start_35
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    iget-object v3, p1, Lcom/android/server/vibrator/SingleVibrationSession;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object v3, v3, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mNextSession:Lcom/android/server/vibrator/VibrationSession;
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_33

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return-object p0

    :catchall_45
    move-exception p0

    :try_start_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    throw p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_33

    :goto_48
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final startVibrationOnInputDevicesLocked(Lcom/android/server/vibrator/HalVibration;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/HalVibration;->scaleEffects(Lcom/android/server/vibrator/VibrationScaler;)V

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v4, p1, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    iget-object p1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v1, 0x0

    move v7, v1

    :goto_10
    :try_start_10
    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v7, v1, :cond_31

    iget-object v1, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibratorManager;

    iget v2, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v3, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->reason:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual/range {v1 .. v6}, Landroid/os/VibratorManager;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :catchall_2e
    move-exception v0

    move-object p0, v0

    goto :goto_38

    :cond_31
    iget-object p0, p0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputDeviceVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    monitor-exit p1

    return-void

    :goto_38
    monitor-exit p1
    :try_end_39
    .catchall {:try_start_10 .. :try_end_39} :catchall_2e

    throw p0
.end method

.method public final startVibrationOnThreadLocked(Lcom/android/server/vibrator/SingleVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Starting vibration "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/vibrator/SingleVibrationSession;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-wide v1, v1, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " on thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VibratorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/server/vibrator/SingleVibrationSession;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mDeviceAdapter:Lcom/android/server/vibrator/DeviceAdapter;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationStepConductor(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/DeviceAdapter;Z)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/vibrator/SingleVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2a
    iput-object v0, p1, Lcom/android/server/vibrator/SingleVibrationSession;->mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_a1

    iget-object v2, p1, Lcom/android/server/vibrator/SingleVibrationSession;->mVibration:Lcom/android/server/vibrator/HalVibration;

    iget-object v2, v2, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->startAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)I

    move-result v4

    if-eqz v4, :cond_4d

    const/4 p0, 0x2

    if-eq v4, p0, :cond_3d

    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    :cond_3d
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Start AppOpsManager operation errored for uid "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-static {p0, p1, v1}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_APP_OPS:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    :cond_4d
    const-wide/32 v4, 0x800000

    const-string/jumbo v1, "vibration"

    invoke-static {v4, v5, v1, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    :try_start_58
    iget-object v1, p1, Lcom/android/server/vibrator/SingleVibrationSession;->mCallerToken:Landroid/os/IBinder;

    invoke-interface {v1, p1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5d} :catch_5f

    const/4 v3, 0x1

    goto :goto_68

    :catch_5f
    move-exception v1

    const-string/jumbo v4, "SingleVibrationSession"

    const-string v5, "Error linking vibration to token death"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_68
    const/4 v1, 0x0

    if-nez v3, :cond_73

    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    :cond_73
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationThread:Lcom/android/server/vibrator/VibrationThread;

    invoke-virtual {v3, v0}, Lcom/android/server/vibrator/VibrationThread;->runVibrationOnVibrationThread(Lcom/android/server/vibrator/VibrationStepConductor;)Z

    move-result v0

    if-nez v0, :cond_91

    iget-object v0, p1, Lcom/android/server/vibrator/SingleVibrationSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7e
    iput-object v1, p1, Lcom/android/server/vibrator/SingleVibrationSession;->mConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_8e

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession;->unlinkToDeath()V

    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->finishAppOpModeLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_SCHEDULING:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0

    :catchall_8e
    move-exception p0

    :try_start_8f
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw p0

    :cond_91
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVirtualVibSoundHelper:Lcom/android/server/vibrator/VirtualVibSoundHelper;

    if-eqz p0, :cond_a0

    iget-object v0, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p1}, Lcom/android/server/vibrator/SingleVibrationSession;->isRepeating()Z

    move-result p1

    iget-object v2, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/server/vibrator/VirtualVibSoundHelper;->playVirtualSoundIfNeeded(Ljava/lang/String;Landroid/os/VibrationAttributes;Z)V

    :cond_a0
    return-object v1

    :catchall_a1
    move-exception p0

    :try_start_a2
    monitor-exit v2
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw p0
.end method

.method public systemReady()V
    .registers 8

    const-string/jumbo v0, "VibratorManagerService"

    const-string v1, "Initializing VibratorManager service..."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "systemReady"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x0

    move v3, v0

    :goto_13
    const/4 v4, 0x1

    :try_start_14
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_2c

    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v5}, Lcom/android/server/vibrator/VibratorController;->reloadVibratorInfoIfNeeded()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :catchall_2a
    move-exception v0

    goto :goto_a1

    :cond_2c
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_2a

    :try_start_2f
    new-instance v5, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v5}, Lcom/android/server/vibrator/VibratorManagerService;->transformAllVibratorsLocked(Ljava/util/function/Function;)Landroid/util/SparseArray;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorInfos:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    new-array v5, v5, [Landroid/os/VibratorInfo;

    :goto_40
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorInfos:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_57

    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibratorInfos:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/VibratorInfo;

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :catchall_55
    move-exception v0

    goto :goto_9f

    :cond_57
    const/4 v0, -0x1

    invoke-static {v0, v5}, Landroid/os/vibrator/VibratorInfoFactory;->create(I[Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCombinedVibratorInfo:Landroid/os/VibratorInfo;

    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_2f .. :try_end_5f} :catchall_55

    :try_start_5f
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->onCustomSystemReady()V

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationSettings;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    iget-object v3, v0, Lcom/android/server/vibrator/InputDeviceDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6c
    .catchall {:try_start_5f .. :try_end_6c} :catchall_2a

    :try_start_6c
    iget-object v5, v0, Lcom/android/server/vibrator/InputDeviceDelegate;->mContext:Landroid/content/Context;

    const-class v6, Landroid/hardware/input/InputManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/InputManager;

    iput-object v5, v0, Lcom/android/server/vibrator/InputDeviceDelegate;->mInputManager:Landroid/hardware/input/InputManager;

    monitor-exit v3
    :try_end_79
    .catchall {:try_start_6c .. :try_end_79} :catchall_9c

    :try_start_79
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    new-instance v3, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/vibrator/VibratorManagerService;)V

    invoke-virtual {v0, v3}, Lcom/android/server/vibrator/VibrationSettings;->addListener(Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda2;)V

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->updateServiceState()V
    :try_end_86
    .catchall {:try_start_79 .. :try_end_86} :catchall_2a

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_89
    iput-boolean v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mServiceReady:Z

    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_99

    const-string/jumbo p0, "VibratorManagerService"

    const-string/jumbo v0, "VibratorManager service initialized"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_99
    move-exception p0

    :try_start_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw p0

    :catchall_9c
    move-exception v0

    :try_start_9d
    monitor-exit v3
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    :try_start_9e
    throw v0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_2a

    :goto_9f
    :try_start_9f
    monitor-exit v3
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_55

    :try_start_a0
    throw v0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_2a

    :goto_a1
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_a4
    iput-boolean v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mServiceReady:Z

    monitor-exit v3
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_b4

    const-string/jumbo p0, "VibratorManagerService"

    const-string/jumbo v3, "VibratorManager service initialized"

    invoke-static {p0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :catchall_b4
    move-exception p0

    :try_start_b5
    monitor-exit v3
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw p0
.end method

.method public final transformAllVibratorsLocked(Ljava/util/function/Function;)Landroid/util/SparseArray;
    .registers 6

    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    :goto_c
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorController;

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_2c
    return-object v0
.end method

.method public final unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/os/IVibratorManagerService$Stub;->unregisterVibratorStateListener_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorController;

    if-nez p0, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_13
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorController;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1d

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_44

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrators:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    iget-object v2, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->effects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/PrebakedSegment;

    if-nez v1, :cond_22

    goto :goto_41

    :cond_22
    iget-object v3, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v4

    if-nez v4, :cond_3b

    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationScaler:Lcom/android/server/vibrator/VibrationScaler;

    iget-object v3, v3, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v3}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/server/vibrator/VibrationScaler;->getEffectStrength(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/vibrator/PrebakedSegment;->applyEffectStrength(I)Landroid/os/vibrator/PrebakedSegment;

    move-result-object v2

    goto :goto_3c

    :cond_3b
    const/4 v2, 0x0

    :goto_3c
    iget v3, p1, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;->alwaysOnId:I

    invoke-virtual {v1, v3, v2}, Lcom/android/server/vibrator/VibratorController;->updateAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)V

    :goto_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_44
    return-void
.end method

.method public updateServiceState()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "VibratorManagerService"

    const-string/jumbo v2, "Updating device state..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mInputDeviceDelegate:Lcom/android/server/vibrator/InputDeviceDelegate;

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-boolean v2, v2, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    invoke-virtual {v1, v2}, Lcom/android/server/vibrator/InputDeviceDelegate;->updateInputDeviceVibrators(Z)Z

    move-result v1

    const/4 v2, 0x0

    :goto_17
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2f

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibratorManagerService;->updateAlwaysOnLocked(Lcom/android/server/vibrator/VibratorManagerService$AlwaysOnVibration;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :catchall_2d
    move-exception p0

    goto :goto_76

    :cond_2f
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-nez v2, :cond_35

    monitor-exit v0

    return-void

    :cond_35
    instance-of v3, v2, Lcom/android/server/vibrator/ExternalVibrationSession;

    if-eqz v3, :cond_3b

    monitor-exit v0

    return-void

    :cond_3b
    invoke-interface {v2}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v2

    if-nez v1, :cond_47

    if-eqz v2, :cond_74

    :cond_47
    const-string/jumbo v1, "VibratorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Canceling vibration because settings changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_59

    const-string/jumbo v2, "input devices changed"

    :cond_59
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    sget-object v2, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BY_SETTINGS_UPDATE:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-interface {v1, v2}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;)V

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVirtualVibSoundHelper:Lcom/android/server/vibrator/VirtualVibSoundHelper;

    if-eqz p0, :cond_74

    const-string/jumbo v1, "cancel"

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VirtualVibSoundHelper;->stopVirtualSound(Ljava/lang/String;)V

    :cond_74
    monitor-exit v0

    return-void

    :goto_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_3 .. :try_end_77} :catchall_2d

    throw p0
.end method

.method public final vibrate(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 11

    const-string/jumbo v0, "vibrate"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_9
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateWithPermissionCheck(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_10

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_10
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final vibrateInternal(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v4, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    const-string/jumbo v9, "Pipelining vibration "

    const-string/jumbo v10, "Starting vibrate for vibration "

    instance-of v3, v4, Landroid/os/CombinedVibration$Mono;

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v3, :cond_1e

    move-object v3, v4

    check-cast v3, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {v3}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect$Composed;

    goto :goto_36

    :cond_1e
    instance-of v3, v4, Landroid/os/CombinedVibration$Stereo;

    if-nez v3, :cond_29

    instance-of v3, v4, Landroid/os/CombinedVibration$Sequential;

    if-eqz v3, :cond_27

    goto :goto_29

    :cond_27
    move-object v3, v12

    goto :goto_36

    :cond_29
    :goto_29
    move-object v3, v4

    check-cast v3, Landroid/os/CombinedVibration$Stereo;

    invoke-virtual {v3}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect$Composed;

    :goto_36
    iput-object v3, v0, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    const/4 v5, -0x1

    if-nez v3, :cond_3f

    invoke-virtual {v0, v5, v2}, Lcom/android/server/vibrator/VibratorManagerService;->cancelVibrate(ILandroid/os/IBinder;)V

    return-object v12

    :cond_3f
    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v3

    const/4 v13, 0x4

    const/16 v6, 0x12

    const/4 v7, 0x2

    if-nez v3, :cond_6c

    sget-object v8, Lcom/android/server/vibrator/VibratorManagerService$4;->$SwitchMap$android$os$VibrationEffect$SemMagnitudeType:[I

    iget-object v14, v0, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v14}, Landroid/os/VibrationEffect$Composed;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/VibrationEffect$SemMagnitudeType;->ordinal()I

    move-result v14

    aget v8, v8, v14

    const/4 v14, 0x1

    if-eq v8, v14, :cond_6b

    if-eq v8, v7, :cond_68

    const/4 v14, 0x3

    if-eq v8, v14, :cond_65

    if-eq v8, v13, :cond_62

    goto :goto_6c

    :cond_62
    const/16 v3, 0x13

    goto :goto_6c

    :cond_65
    const/16 v3, 0x21

    goto :goto_6c

    :cond_68
    const/16 v3, 0x31

    goto :goto_6c

    :cond_6b
    move v3, v6

    :cond_6c
    :goto_6c
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "converted usage = "

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "("

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v14, "VibratorManagerService"

    invoke-static {v14, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v0, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v8}, Landroid/os/VibrationEffect$Composed;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v8

    sget-object v14, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    if-ne v8, v14, :cond_9f

    const-string v6, "INTENSITY_MAX"

    goto :goto_b8

    :cond_9f
    iget-object v8, v0, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v8}, Landroid/os/VibrationEffect$Composed;->semGetMagnitudeType()Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object v8

    sget-object v14, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MIN:Landroid/os/VibrationEffect$SemMagnitudeType;

    if-eq v8, v14, :cond_b6

    iget-object v8, v0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v8, v8, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    iget v8, v8, Lcom/android/server/vibrator/VibrationCustomSettings;->mAudioMode:I

    if-ne v8, v7, :cond_b4

    if-ne v3, v6, :cond_b4

    goto :goto_b6

    :cond_b4
    move-object v6, v12

    goto :goto_b8

    :cond_b6
    :goto_b6
    const-string v6, "INTENSITY_MIN"

    :goto_b8
    if-eqz v6, :cond_cd

    new-instance v7, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v7, v1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    invoke-virtual {v7, v3}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/VibrationAttributes$Builder;->semAddTag(Ljava/lang/String;)Landroid/os/VibrationAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v1

    :goto_cb
    move-object v15, v1

    goto :goto_db

    :cond_cd
    new-instance v6, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v6, v1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    invoke-virtual {v6, v3}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v1

    goto :goto_cb

    :goto_db
    new-instance v14, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move/from16 v16, p1

    move/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p6

    invoke-direct/range {v14 .. v19}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_fd

    const-string/jumbo v1, "VibratorManagerService"

    const-string/jumbo v2, "token must not be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {v4, v14, v1}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationAttemptDebugInfo(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/Vibration$DebugInfoImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    return-object v12

    :cond_fd
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/vibrator/VibratorManagerService;->enforceUpdateAppOpsStatsPermission(I)V

    invoke-static {v4}, Lcom/android/server/vibrator/VibratorManagerService;->isEffectValid(Landroid/os/CombinedVibration;)Z

    move-result v1

    if-nez v1, :cond_110

    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {v4, v14, v1}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationAttemptDebugInfo(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/Vibration$DebugInfoImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    return-object v12

    :cond_110
    invoke-virtual {v4}, Landroid/os/CombinedVibration;->hasVendorEffects()Z

    move-result v1

    if-eqz v1, :cond_132

    const-string/jumbo v1, "android.permission.VIBRATE_VENDOR_EFFECTS"

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_132

    const-string/jumbo v1, "VibratorManagerService"

    const-string/jumbo v2, "vibrate; no permission for vendor effects"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_MISSING_PERMISSION:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {v4, v14, v1}, Lcom/android/server/vibrator/VibratorManagerService;->createVibrationAttemptDebugInfo(Landroid/os/CombinedVibration;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Lcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/Vibration$DebugInfoImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->logAndRecordVibration(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    return-object v12

    :cond_132
    const-string/jumbo v1, "VibratorManagerService"

    const-string/jumbo v3, "vibrate - uid: "

    const-string v6, ", opPkg: "

    const-string v7, ", effect: "

    move/from16 v8, p1

    move-object/from16 v16, v12

    move-object/from16 v12, p3

    invoke-static {v8, v3, v6, v12, v7}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", attrs: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", reason: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", token: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/vibrator/SingleVibrationSession;

    const-string v3, "INTENSITY_MAX"

    invoke-virtual {v15, v3}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17c

    iget-object v3, v0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v3, v3, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    iget v3, v3, Lcom/android/server/vibrator/VibrationCustomSettings;->mMaxMagnitude:I

    :goto_17a
    move v5, v3

    goto :goto_1a5

    :cond_17c
    const-string v3, "INTENSITY_MIN"

    invoke-virtual {v15, v3}, Landroid/os/VibrationAttributes;->hasTag(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18b

    iget-object v3, v0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v3, v3, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    iget v3, v3, Lcom/android/server/vibrator/VibrationCustomSettings;->mMinMagnitude:I

    goto :goto_17a

    :cond_18b
    iget-object v3, v0, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->semGetMagnitude()I

    move-result v3

    if-ne v3, v5, :cond_19e

    invoke-virtual {v15}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v3

    iget-object v5, v0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v5, v3}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentMagnitude(I)I

    move-result v3

    goto :goto_17a

    :cond_19e
    iget-object v3, v0, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->semGetMagnitude()I

    move-result v3

    goto :goto_17a

    :goto_1a5
    iget-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    iget-object v8, v0, Lcom/android/server/vibrator/VibratorManagerService;->mComposed:Landroid/os/VibrationEffect$Composed;

    move-object v3, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/server/vibrator/SingleVibrationSession;-><init>(Landroid/os/IBinder;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;ILandroid/content/Context;Lcom/android/server/vibrator/VibrationSettings;Landroid/os/VibrationEffect$Composed;)V

    iget-object v2, v1, Lcom/android/server/vibrator/SingleVibrationSession;->mVibration:Lcom/android/server/vibrator/HalVibration;

    if-nez v2, :cond_1bd

    const-string/jumbo v0, "VibratorManagerService"

    const-string/jumbo v1, "Vibration was not generated normally."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    :cond_1bd
    iget-object v3, v0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iget-object v3, v2, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/vibrator/HalVibration;->fillFallbacksForEffect(Landroid/os/CombinedVibration;Ljava/util/function/IntFunction;)V

    invoke-virtual {v15, v13}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v3

    if-eqz v3, :cond_1d7

    iget-object v3, v0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    :cond_1d7
    iget-object v3, v0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1da
    const-string/jumbo v4, "VibratorManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v2, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v14}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v4

    if-nez v4, :cond_202

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->shouldIgnoreForOngoingLocked(Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object v5

    if-eqz v5, :cond_202

    iget-object v4, v5, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/VibrationSession$Status;

    iget-object v12, v5, Lcom/android/server/vibrator/Vibration$EndInfo;->endedBy:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    goto :goto_204

    :catchall_1ff
    move-exception v0

    goto/16 :goto_279

    :cond_202
    move-object/from16 v12, v16

    :goto_204
    if-nez v4, :cond_262

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_20a
    .catchall {:try_start_1da .. :try_end_20a} :catchall_1ff

    :try_start_20a
    iget-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-eqz v6, :cond_246

    invoke-virtual {v0, v6, v2}, Lcom/android/server/vibrator/VibratorManagerService;->shouldPipelineVibrationLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/HalVibration;)Z

    move-result v6

    if-eqz v6, :cond_22b

    const-string/jumbo v6, "VibratorManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v2, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_246

    :catchall_229
    move-exception v0

    goto :goto_25e

    :cond_22b
    iget-object v6, v2, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-object v7, v0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    invoke-interface {v7}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v7

    iget v8, v6, Lcom/android/server/vibrator/VibrationStats;->mInterruptedUsage:I

    if-gez v8, :cond_23f

    iget-object v7, v7, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v7}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v7

    iput v7, v6, Lcom/android/server/vibrator/VibrationStats;->mInterruptedUsage:I

    :cond_23f
    iget-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    sget-object v7, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-interface {v6, v7, v14, v11}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V

    :cond_246
    :goto_246
    iget-object v6, v0, Lcom/android/server/vibrator/VibratorManagerService;->mVirtualVibSoundHelper:Lcom/android/server/vibrator/VirtualVibSoundHelper;

    if-eqz v6, :cond_250

    const-string/jumbo v7, "cancel"

    invoke-virtual {v6, v7}, Lcom/android/server/vibrator/VirtualVibSoundHelper;->stopVirtualSound(Ljava/lang/String;)V

    :cond_250
    sget-object v6, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v0, v6, v14}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextSessionLocked(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationLocked(Lcom/android/server/vibrator/SingleVibrationSession;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v6
    :try_end_259
    .catchall {:try_start_20a .. :try_end_259} :catchall_229

    :try_start_259
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v4, v6

    goto :goto_262

    :goto_25e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_262
    :goto_262
    if-eqz v4, :cond_267

    invoke-virtual {v0, v1, v4, v12}, Lcom/android/server/vibrator/VibratorManagerService;->endSessionLocked(Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    :cond_267
    invoke-virtual {v0, v2, v15}, Lcom/android/server/vibrator/VibratorManagerService;->reportVibrationInfo(Lcom/android/server/vibrator/HalVibration;Landroid/os/VibrationAttributes;)V

    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService;->mHqmLoggingData:Lcom/samsung/android/server/vibrator/VibratorHqmData;

    iget-object v1, v2, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v1, v1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/vibrator/VibratorHqmData;->increaseCount(I)V

    monitor-exit v3

    return-object v2

    :goto_279
    monitor-exit v3
    :try_end_27a
    .catchall {:try_start_259 .. :try_end_27a} :catchall_1ff

    throw v0
.end method

.method public vibrateWithPermissionCheck(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;
    .registers 11

    invoke-virtual {p0, p5, p4}, Lcom/android/server/vibrator/VibratorManagerService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object p5

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.VIBRATE"

    const-string/jumbo v2, "vibrate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/vibrator/VibratorManagerService;->vibrateInternal(IILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)Lcom/android/server/vibrator/HalVibration;

    move-result-object p0

    return-object p0
.end method

.method public final waitForCurrentSessionEnd()Z
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v2, v0

    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :goto_a
    :try_start_a
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentSession:Lcom/android/server/vibrator/VibrationSession;

    if-nez v5, :cond_13

    monitor-exit v4

    const/4 p0, 0x1

    return p0

    :catchall_11
    move-exception p0

    goto :goto_30

    :cond_13
    cmp-long v5, v0, v2

    if-ltz v5, :cond_1a

    monitor-exit v4
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_11

    const/4 p0, 0x0

    return p0

    :cond_1a
    :try_start_1a
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_21} :catch_22
    .catchall {:try_start_1a .. :try_end_21} :catchall_11

    goto :goto_2b

    :catch_22
    :try_start_22
    const-string/jumbo v0, "VibratorManagerService"

    const-string/jumbo v1, "VibratorManagerService interrupted waiting to stop, continuing"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_a

    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_11

    throw p0
.end method
