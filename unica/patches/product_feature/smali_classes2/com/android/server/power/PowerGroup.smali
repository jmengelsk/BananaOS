.class public final Lcom/android/server/power/PowerGroup;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDimDuration:J

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public final mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

.field public final mGroupId:I

.field public mIsSandmanSummoned:Z

.field public mLastGoToSleepReason:I

.field public mLastPowerOnTime:J

.field public mLastSleepReason:I

.field public mLastSleepTime:J

.field public mLastUserActivityEvent:I

.field public mLastUserActivityTime:J

.field public mLastUserActivityTimeNoChangeLights:J

.field public mLastWakeReason:I

.field public mLastWakeTime:J

.field public final mNotifier:Lcom/android/server/power/Notifier;

.field public mPoweringOn:Z

.field public mReady:Z

.field public final mScreenOffTimeout:J

.field public final mSupportsSandman:Z

.field public final mSuspendBlockerMonitor:Lcom/android/server/power/SuspendBlockerMonitor;

.field public mUserActivitySummary:I

.field public mWakeLockSummary:I

.field public mWakefulness:I

.field public final mWakefulnessListener:Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;


# direct methods
.method public constructor <init>(ILcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;ZJLcom/android/server/power/feature/PowerManagerFlags;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerGroup;->mLastWakeReason:I

    const/16 v1, 0xe

    iput v1, p0, Lcom/android/server/power/PowerGroup;->mLastSleepReason:I

    new-instance v1, Lcom/android/server/power/SuspendBlockerMonitor;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/PowerGroup;->mSuspendBlockerMonitor:Lcom/android/server/power/SuspendBlockerMonitor;

    iput p1, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    iput-object p2, p0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

    iput-object p3, p0, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    iput-object p4, p0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    iput-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    iput-boolean p5, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    iput-wide p6, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    iput-wide p6, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    iput-object p8, p0, Lcom/android/server/power/PowerGroup;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    if-eqz p1, :cond_0

    const-class p2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz p2, :cond_0

    invoke-virtual {p4, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdsForGroup(I)[I

    move-result-object p1

    if-eqz p1, :cond_0

    array-length p3, p1

    if-lez p3, :cond_0

    aget p1, p1, v0

    move-object p3, p2

    check-cast p3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    iget-object p3, p3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    iget-object p4, p3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    invoke-virtual {p4, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->getDeviceIdForDisplayId(I)I

    move-result p1

    iget-object p3, p3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    invoke-virtual {p3, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->isValidVirtualDeviceId(I)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDimDurationMillisForDeviceId(I)J

    move-result-wide p3

    invoke-virtual {p2, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getScreenOffTimeoutMillisForDeviceId(I)J

    move-result-wide p1

    const-wide/16 p5, 0x0

    cmp-long p5, p3, p5

    if-lez p5, :cond_1

    cmp-long p5, p3, p1

    if-lez p5, :cond_1

    move-wide p3, p1

    goto :goto_0

    :cond_0
    const-wide/16 p3, -0x1

    move-wide p1, p3

    :cond_1
    :goto_0
    iput-wide p3, p0, Lcom/android/server/power/PowerGroup;->mDimDuration:J

    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mScreenOffTimeout:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;JLcom/android/server/power/feature/PowerManagerFlags;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerGroup;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerGroup;->mLastWakeReason:I

    const/16 v1, 0xe

    iput v1, p0, Lcom/android/server/power/PowerGroup;->mLastSleepReason:I

    new-instance v1, Lcom/android/server/power/SuspendBlockerMonitor;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/PowerGroup;->mSuspendBlockerMonitor:Lcom/android/server/power/SuspendBlockerMonitor;

    iput v0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    iput-object p1, p0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

    iput-object p2, p0, Lcom/android/server/power/PowerGroup;->mNotifier:Lcom/android/server/power/Notifier;

    iput-object p3, p0, Lcom/android/server/power/PowerGroup;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    iput-boolean v0, p0, Lcom/android/server/power/PowerGroup;->mReady:Z

    iput-boolean p1, p0, Lcom/android/server/power/PowerGroup;->mSupportsSandman:Z

    iput-wide p4, p0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    iput-wide p4, p0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    iput-object p6, p0, Lcom/android/server/power/PowerGroup;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mDimDuration:J

    iput-wide p1, p0, Lcom/android/server/power/PowerGroup;->mScreenOffTimeout:J

    return-void
.end method


# virtual methods
.method public final getGroupId()I
    .locals 0

    iget p0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    return p0
.end method

.method public final getLastUserActivityTimeLocked()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    return-wide v0
.end method

.method public final getLastUserActivityTimeNoChangeLightsLocked()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/PowerGroup;->mLastUserActivityTimeNoChangeLights:J

    return-wide v0
.end method

.method public final getSuspendBlockerMonitorInfo()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/PowerGroup;->mSuspendBlockerMonitor:Lcom/android/server/power/SuspendBlockerMonitor;

    iget v1, v0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    and-int/lit16 v1, v1, 0xf0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    [Group] Id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/power/SuspendBlockerMonitor;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public final getUserActivitySummaryLocked()I
    .locals 0

    iget p0, p0, Lcom/android/server/power/PowerGroup;->mUserActivitySummary:I

    return p0
.end method

.method public final getWakeLockSummaryLocked()I
    .locals 0

    iget p0, p0, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    return p0
.end method

.method public final hasWakeLockKeepingScreenOnLocked()Z
    .locals 0

    iget p0, p0, Lcom/android/server/power/PowerGroup;->mWakeLockSummary:I

    and-int/lit8 p0, p0, 0x26

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setWakefulnessLocked(IJIIILjava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-wide/from16 v4, p2

    move/from16 v1, p5

    iget v3, v0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    if-eq v3, v2, :cond_d

    iget-object v6, v0, Lcom/android/server/power/PowerGroup;->mFeatureFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    const/4 v10, 0x1

    if-ne v2, v10, :cond_0

    iput-wide v4, v0, Lcom/android/server/power/PowerGroup;->mLastPowerOnTime:J

    iput-boolean v10, v0, Lcom/android/server/power/PowerGroup;->mPoweringOn:Z

    iput-wide v4, v0, Lcom/android/server/power/PowerGroup;->mLastWakeTime:J

    iget-object v3, v6, Lcom/android/server/power/feature/PowerManagerFlags;->mPolicyReasonInDisplayPowerRequest:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iput v1, v0, Lcom/android/server/power/PowerGroup;->mLastWakeReason:I

    goto :goto_0

    :cond_0
    invoke-static {v3}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v3

    if-nez v3, :cond_1

    iput-wide v4, v0, Lcom/android/server/power/PowerGroup;->mLastSleepTime:J

    iget-object v3, v6, Lcom/android/server/power/feature/PowerManagerFlags;->mPolicyReasonInDisplayPowerRequest:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iput v1, v0, Lcom/android/server/power/PowerGroup;->mLastSleepReason:I

    :cond_1
    :goto_0
    iput v2, v0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    iget-object v11, v0, Lcom/android/server/power/PowerGroup;->mWakefulnessListener:Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;

    iget-object v12, v11, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean v10, v12, Lcom/android/server/power/PowerManagerService;->mWakefulnessChanging:Z

    iget v3, v12, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/4 v13, 0x2

    or-int/2addr v3, v13

    iput v3, v12, Lcom/android/server/power/PowerManagerService;->mDirty:I

    iget-object v3, v12, Lcom/android/server/power/PowerManagerService;->mInjector:Lcom/android/server/power/PowerManagerService$Injector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/PowerManager;->invalidateIsInteractiveCaches()V

    const/4 v14, 0x0

    iget-object v3, v11, Lcom/android/server/power/PowerManagerService$PowerGroupWakefulnessChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v0, v0, Lcom/android/server/power/PowerGroup;->mGroupId:I

    if-ne v2, v10, :cond_3

    const/16 v6, 0xd

    if-ne v1, v6, :cond_2

    move v8, v10

    goto :goto_1

    :cond_2
    move v8, v14

    :goto_1
    iget-object v6, v3, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerGroup;

    const/4 v7, 0x0

    move-wide/from16 v16, v4

    move-object v4, v6

    move-wide/from16 v5, v16

    move/from16 v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    :cond_3
    move-object v15, v3

    iget-object v3, v12, Lcom/android/server/power/PowerManagerService;->mScreenTimeoutOverridePolicy:Lcom/android/server/power/ScreenTimeoutOverridePolicy;

    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    iget v4, v12, Lcom/android/server/power/PowerManagerService;->mWakeLockSummary:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_4

    if-eq v2, v10, :cond_4

    invoke-virtual {v3, v10}, Lcom/android/server/power/ScreenTimeoutOverridePolicy;->releaseAllWakeLocks(I)V

    :cond_4
    iget v3, v12, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/high16 v4, 0x10000

    or-int/2addr v3, v4

    iput v3, v12, Lcom/android/server/power/PowerManagerService;->mDirty:I

    const/4 v6, 0x4

    if-nez v0, :cond_8

    iget-object v3, v12, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-static {v2}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v4

    iget-object v3, v3, Lcom/android/server/power/Notifier;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    iget-object v3, v3, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v3, v3, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {v3, v4}, Lcom/android/server/input/NativeInputManagerService;->setInteractiveForInternalDisplay(Z)V

    iget-boolean v3, v12, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    if-eqz v3, :cond_5

    invoke-static {v2}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v3

    if-nez v3, :cond_5

    if-ne v1, v6, :cond_5

    iget-object v3, v12, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/power/PowerManagerService$LocalService$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v11}, Lcom/android/server/power/PowerManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iget-object v5, v12, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_5
    iget-boolean v3, v12, Lcom/android/server/power/PowerManagerService;->mSmartStayEnabledSetting:Z

    if-eqz v3, :cond_6

    iget-object v3, v12, Lcom/android/server/power/PowerManagerService;->mSmartStayController:Lcom/android/server/power/SmartStayController;

    iput v2, v3, Lcom/android/server/power/SmartStayController;->mWakefulness:I

    if-eq v2, v10, :cond_6

    iget-object v4, v3, Lcom/android/server/power/SmartStayController;->mFaceDetectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-boolean v14, v3, Lcom/android/server/power/SmartStayController;->mFaceDetected:Z

    :cond_6
    iget-object v3, v12, Lcom/android/server/power/PowerManagerService;->mScreenCurtainController:Lcom/android/server/power/ScreenCurtainController;

    if-eqz v3, :cond_7

    iput v2, v3, Lcom/android/server/power/ScreenCurtainController;->mWakefulness:I

    :cond_7
    iget-object v3, v12, Lcom/android/server/power/PowerManagerService;->mScreenOnKeeper:Lcom/android/server/power/ScreenOnKeeper;

    if-eqz v3, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onWakefulnessChangedLocked: wakefulness="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ScreenOnKeeper"

    invoke-static {v5, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, v3, Lcom/android/server/power/ScreenOnKeeper;->mWakefulness:I

    iget-boolean v4, v3, Lcom/android/server/power/ScreenOnKeeper;->mIsScreenOnKeeperEnabled:Z

    if-eqz v4, :cond_8

    invoke-static {v2}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3}, Lcom/android/server/power/ScreenOnKeeper;->disableScreenOnKeeper()V

    invoke-virtual {v3, v14}, Lcom/android/server/power/ScreenOnKeeper;->notifyScreenOnKeeperDisabledLocked(I)V

    :cond_8
    move v1, v0

    iget-object v0, v12, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    move-wide/from16 v4, p2

    move/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/Notifier;->onGroupWakefulnessChangeStarted(IIIJ)V

    move v11, v2

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DEX_DUAL_VIEW:Z

    if-eqz v0, :cond_a

    if-nez v1, :cond_9

    if-ne v11, v10, :cond_9

    iget-boolean v0, v12, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    if-eqz v0, :cond_9

    iget-object v0, v12, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v12, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerGroup;

    const/4 v9, 0x0

    const/16 v4, 0xb

    move v2, v1

    move-object v1, v0

    move-object v0, v12

    move v12, v2

    move-wide/from16 v2, p2

    move/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v7, p7

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;IZ)V

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide/from16 v2, p2

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    goto :goto_2

    :cond_9
    move-object v0, v12

    move v12, v1

    :goto_2
    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    if-eqz v1, :cond_b

    if-ne v12, v13, :cond_b

    if-ne v11, v10, :cond_b

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    const/4 v9, 0x0

    const/16 v4, 0xb

    move-wide/from16 v2, p2

    move/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v7, p7

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;IZ)V

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide/from16 v2, p2

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    goto :goto_3

    :cond_a
    move-object v0, v12

    move v12, v1

    :cond_b
    :goto_3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->CARLIFE_DISPLAY_GROUP:Z

    if-eqz v1, :cond_c

    if-nez v12, :cond_c

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v10, 0x4

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    const/4 v9, 0x0

    const/16 v4, 0xb

    move-wide/from16 v2, p2

    move/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v7, p7

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/PowerManagerService;->wakePowerGroupLocked(Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;IZ)V

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide/from16 v2, p2

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(Lcom/android/server/power/PowerGroup;JIII)Z

    :cond_c
    move-object v8, v0

    move-wide/from16 v6, p2

    move/from16 v2, p4

    move/from16 v1, p5

    move/from16 v5, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object v0, v15

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/PowerManagerService;->updateGlobalWakefulnessLocked(IILjava/lang/String;Ljava/lang/String;IJ)V

    invoke-virtual {v8}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_d
    return-void
.end method
