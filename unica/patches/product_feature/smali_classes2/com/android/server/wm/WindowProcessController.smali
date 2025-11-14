.class public final Lcom/android/server/wm/WindowProcessController;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/ConfigurationContainerListener;


# static fields
.field public static final ACTIVITY_STATE_VISIBLE:I

.field public static final MAX_NUM_PERCEPTIBLE_FREEFORM:I


# instance fields
.field public final mActivities:Ljava/util/ArrayList;

.field public volatile mActivityStateFlags:I

.field public mAnimatingReasons:I

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

.field public mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mConfigTask:Lcom/android/server/wm/Task;

.field public volatile mCurAdj:I

.field public volatile mCurProcState:I

.field public volatile mCurSchedGroup:I

.field public volatile mDebugging:Z

.field public volatile mFgInteractionTime:J

.field public volatile mHasActivities:Z

.field public volatile mHasCachedConfiguration:Z

.field public volatile mHasClientActivities:Z

.field public mHasEverAttached:Z

.field public volatile mHasForegroundServices:Z

.field public volatile mHasImeService:Z

.field public volatile mHasOverlayUi:Z

.field public mHasPendingConfigurationChange:Z

.field public volatile mHasRecentTasks:Z

.field public volatile mHasTopUi:Z

.field public mInactiveActivities:Ljava/util/ArrayList;

.field public volatile mInfo:Landroid/content/pm/ApplicationInfo;

.field public volatile mInstrumentationSourceUid:I

.field public volatile mInstrumenting:Z

.field public volatile mInstrumentingWithBackgroundActivityStartPrivileges:Z

.field public volatile mInteractionEventTime:J

.field public volatile mIsActivityConfigOverrideAllowed:Z

.field public volatile mLastActivityFinishTime:J

.field public volatile mLastActivityLaunchTime:J

.field public final mLastReportedConfiguration:Landroid/content/res/Configuration;

.field public mLastTopActivityDeviceId:I

.field public final mListener:Lcom/android/server/am/ProcessRecord;

.field public final mName:Ljava/lang/String;

.field public final mOwner:Lcom/android/server/am/ProcessRecord;

.field public mPauseConfigurationDispatchCount:I

.field public volatile mPendingUiClean:Z

.field public volatile mPerceptible:Z

.field public volatile mPerceptibleTaskStoppedTimeMillis:J

.field public volatile mPersistent:Z

.field public volatile mPid:I

.field public final mPkgList:Ljava/util/ArrayList;

.field public mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field public mRapidActivityLaunchCount:I

.field public mReason:Ljava/lang/String;

.field public final mRecentTasks:Ljava/util/ArrayList;

.field public mRemoteActivities:Landroid/util/ArrayMap;

.field public volatile mRepProcState:I

.field public volatile mRequiredAbi:Ljava/lang/String;

.field public volatile mStoppedState:I

.field public mThread:Landroid/app/IApplicationThread;

.field public final mUid:I

.field public final mUserId:I

.field public volatile mUsingWrapper:Z

.field public mVrThreadTid:I

.field public volatile mWasStoppedLogged:Z

.field public volatile mWhenUnimportant:J

.field public mWindowSession:Lcom/android/server/wm/Session;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "persist.wm.max_num_perceptible_freeform"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/wm/WindowProcessController;->MAX_NUM_PERCEPTIBLE_FREEFORM:I

    const/high16 v0, 0x110000

    sput v0, Lcom/android/server/wm/WindowProcessController;->ACTIVITY_STATE_VISIBLE:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;IILcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V
    .registers 13

    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mCurAdj:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentationSourceUid:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastTopActivityDeviceId:I

    iput-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    const v1, 0xffff

    iput v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const-wide/high16 v3, -0x8000000000000000L

    iput-wide v3, p0, Lcom/android/server/wm/WindowProcessController;->mPerceptibleTaskStoppedTimeMillis:J

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mReason:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iput p5, p0, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iput-object p6, p0, Lcom/android/server/wm/WindowProcessController;->mOwner:Lcom/android/server/am/ProcessRecord;

    iput-object p7, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    new-instance p3, Lcom/android/server/wm/BackgroundLaunchProcessController;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p5, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda3;

    invoke-direct {p5, p1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iget-object p6, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mBackgroundActivityStartCallback:Lcom/android/server/notification/NotificationManagerService$3;

    invoke-direct {p3, p5, p6}, Lcom/android/server/wm/BackgroundLaunchProcessController;-><init>(Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda3;Lcom/android/server/notification/NotificationManagerService$3;)V

    iput-object p3, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getSysUiServiceComponentLocked()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_79

    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    const/16 p2, 0x3e8

    if-ne p1, p2, :cond_78

    goto :goto_79

    :cond_78
    return-void

    :cond_79
    :goto_79
    iput-boolean v2, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    return-void
.end method

.method public static applyConfigGenderOverride(Landroid/content/res/Configuration;ILcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;I)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1f

    const/16 v2, 0x3e8

    if-ne p3, v2, :cond_a

    move p3, v1

    goto :goto_1b

    :cond_a
    new-instance v2, Landroid/content/AttributionSource$Builder;

    invoke-direct {v2, p3}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    invoke-virtual {v2}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    move-result-object p3

    iget-object v2, p2, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    iget-object v2, v2, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mPermissionManager:Landroid/permission/PermissionManager;

    invoke-static {v2, p3}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionUtils;->checkSystemGrammaticalGenderPermission(Landroid/permission/PermissionManager;Landroid/content/AttributionSource;)Z

    move-result p3

    :goto_1b
    if-eqz p3, :cond_1f

    move p3, v1

    goto :goto_20

    :cond_1f
    move p3, v0

    :goto_20
    if-eqz p1, :cond_23

    goto :goto_32

    :cond_23
    if-eqz p3, :cond_27

    const/4 p1, -0x1

    goto :goto_32

    :cond_27
    if-eqz p2, :cond_31

    const-string/jumbo p1, "persist.sys.grammatical_gender"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_32

    :cond_31
    move p1, v0

    :goto_32
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getGrammaticalGenderRaw()I

    move-result p2

    if-ne p2, p1, :cond_39

    return v0

    :cond_39
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setGrammaticalGender(I)V

    return v1
.end method


# virtual methods
.method public final addAnimatingReason(I)V
    .registers 4

    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    if-nez v0, :cond_14

    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowProcessController;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public final addBoundClientUid(ILjava/lang/String;J)V
    .registers 8

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v0, 0xf8fa52e

    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v0, v1, p2, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p2

    if-eqz p2, :cond_1c

    const-wide/16 v0, 0x200

    and-long p2, p3, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_35

    :cond_1c
    iget-object p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    if-nez p2, :cond_27

    new-instance p2, Landroid/util/IntArray;

    invoke-direct {p2}, Landroid/util/IntArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    :cond_27
    iget-object p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    invoke-virtual {p2, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_35

    iget-object p0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->add(I)V

    :cond_35
    return-void
.end method

.method public final addToPendingTop()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/ActivityManagerInternal;->addPendingTopUid(IILandroid/app/IApplicationThread;)V

    return-void
.end method

.method public final appEarlyNotResponding(Ljava/lang/String;Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-nez v1, :cond_15

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_13
    move-exception p0

    goto :goto_3f

    :cond_15
    const/4 v2, 0x0

    :try_start_16
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-interface {v1, v3, v4, p1}, Landroid/app/IActivityController;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    if-gez p1, :cond_27

    iget p1, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_24} :catch_2a
    .catchall {:try_start_16 .. :try_end_24} :catchall_13

    if-eq p1, p0, :cond_27

    goto :goto_28

    :cond_27
    move-object p2, v2

    :goto_28
    move-object v2, p2

    goto :goto_35

    :catch_2a
    :try_start_2a
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;->run()V

    :cond_3e
    return-void

    :goto_3f
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final appNotResponding(Ljava/lang/String;Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;)Z
    .registers 10

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    const/4 v2, 0x0

    if-nez v1, :cond_16

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_14
    move-exception p0

    goto :goto_49

    :cond_16
    const/4 v3, 0x0

    :try_start_17
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-interface {v1, v4, v5, p1}, Landroid/app/IActivityController;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2c

    if-gez p1, :cond_2a

    iget p1, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_27} :catch_39
    .catchall {:try_start_17 .. :try_end_27} :catchall_14

    if-eq p1, p0, :cond_2a

    goto :goto_2d

    :cond_2a
    move-object p2, p3

    goto :goto_2d

    :cond_2c
    move-object p2, v3

    :goto_2d
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz p2, :cond_38

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0

    :cond_38
    return v2

    :catch_39
    :try_start_39
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :goto_49
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final areBackgroundActivityStartsAllowed(ILcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    iget v4, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget-object v5, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v7, 0x400000

    and-int/2addr v6, v7

    if-eqz v6, :cond_17

    const/4 v6, 0x1

    goto :goto_18

    :cond_17
    const/4 v6, 0x0

    :goto_18
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v8

    iget-boolean v9, v0, Lcom/android/server/wm/WindowProcessController;->mInstrumentingWithBackgroundActivityStartPrivileges:Z

    iget-object v10, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-wide v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mLastStopAppSwitchesTime:J

    iget-wide v12, v0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    iget-wide v14, v0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v2, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkOtherExemptions:Z

    if-eqz v0, :cond_39

    if-eqz v9, :cond_39

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 v1, 0x6

    const-string/jumbo v2, "process instrumenting with background activity starts privileges"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_39
    if-eqz v0, :cond_11d

    iget-boolean v0, v2, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->isCheckingForFgsStart:Z

    const-string/jumbo v9, "process allowed by callback (token: "

    const/16 v16, 0x1

    const-string/jumbo v7, "process allowed by callback (token ignored) tokens: "

    monitor-enter v3

    move/from16 p0, v0

    :try_start_48
    iget-object v0, v3, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_52
    move/from16 v17, v6

    goto/16 :goto_111

    :cond_56
    const/16 v0, 0xc

    if-eqz p0, :cond_88

    iget-object v4, v3, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    :goto_60
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_84

    iget-object v4, v3, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v4}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundFgsStarts()Z

    move-result v4

    if-eqz v4, :cond_82

    new-instance v4, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string/jumbo v5, "process allowed by token"

    invoke-direct {v4, v0, v5}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    monitor-exit v3

    :goto_7b
    move/from16 v17, v6

    goto/16 :goto_114

    :catchall_7f
    move-exception v0

    goto/16 :goto_11b

    :cond_82
    move v4, v5

    goto :goto_60

    :cond_84
    sget-object v4, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    monitor-exit v3

    goto :goto_7b

    :cond_88
    iget-object v0, v3, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/notification/NotificationManagerService$3;

    if-nez v0, :cond_b6

    iget-object v0, v3, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_92
    add-int/lit8 v4, v0, -0x1

    if-lez v0, :cond_b2

    iget-object v0, v3, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v0

    if-eqz v0, :cond_b0

    new-instance v4, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string/jumbo v0, "process allowed by token"

    const/16 v5, 0xc

    invoke-direct {v4, v5, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    monitor-exit v3

    goto :goto_7b

    :cond_b0
    move v0, v4

    goto :goto_92

    :cond_b2
    sget-object v4, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    monitor-exit v3

    goto :goto_7b

    :cond_b6
    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundLaunchProcessController;->getOriginatingTokensThatAllowBal()Ljava/util/List;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_c8

    sget-object v4, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    monitor-exit v3

    goto :goto_7b

    :cond_c8
    move/from16 v17, v6

    iget-object v6, v3, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/notification/NotificationManagerService$3;

    invoke-virtual {v6, v4, v5, v0}, Lcom/android/server/notification/NotificationManagerService$3;->isActivityStartAllowed(ILjava/lang/String;Ljava/util/Collection;)Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;

    move-result-object v4

    iget-boolean v5, v4, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->allowed:Z

    if-nez v5, :cond_d8

    sget-object v4, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    monitor-exit v3

    goto :goto_114

    :cond_d8
    iget-object v5, v4, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->token:Landroid/os/IBinder;

    if-nez v5, :cond_f1

    new-instance v4, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0xc

    invoke-direct {v4, v5, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    monitor-exit v3

    goto :goto_114

    :cond_f1
    new-instance v5, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") tokens: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xc

    invoke-direct {v5, v4, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    monitor-exit v3

    move-object v4, v5

    goto :goto_114

    :goto_111
    sget-object v4, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    monitor-exit v3
    :try_end_114
    .catchall {:try_start_48 .. :try_end_114} :catchall_7f

    :goto_114
    invoke-virtual {v4}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v0

    if-eqz v0, :cond_121

    return-object v4

    :goto_11b
    :try_start_11b
    monitor-exit v3
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_7f

    throw v0

    :cond_11d
    move/from16 v17, v6

    const/16 v16, 0x1

    :cond_121
    iget-boolean v0, v2, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkVisibility:Z

    if-eqz v0, :cond_159

    if-eqz v1, :cond_159

    monitor-enter v3

    :try_start_128
    iget-object v0, v3, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    if-eqz v0, :cond_155

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_132
    if-ltz v0, :cond_155

    iget-object v4, v3, Lcom/android/server/wm/BackgroundLaunchProcessController;->mUidHasActiveVisibleWindowPredicate:Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda3;

    iget-object v5, v3, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    invoke-virtual {v5, v0}, Landroid/util/IntArray;->get(I)I

    move-result v5

    iget-object v4, v4, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->hasActiveVisibleWindow(I)Z

    move-result v4

    if-eqz v4, :cond_152

    monitor-exit v3
    :try_end_145
    .catchall {:try_start_128 .. :try_end_145} :catchall_150

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/16 v1, 0xd

    const-string/jumbo v2, "process bound by foreground uid"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v0

    :catchall_150
    move-exception v0

    goto :goto_157

    :cond_152
    add-int/lit8 v0, v0, -0x1

    goto :goto_132

    :cond_155
    :try_start_155
    monitor-exit v3

    goto :goto_159

    :goto_157
    monitor-exit v3
    :try_end_158
    .catchall {:try_start_155 .. :try_end_158} :catchall_150

    throw v0

    :cond_159
    :goto_159
    iget-boolean v0, v2, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->isCheckingForFgsStart:Z

    if-nez v0, :cond_15f

    if-nez v8, :cond_172

    :cond_15f
    iget-boolean v0, v2, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkOtherExemptions:Z

    if-eqz v0, :cond_172

    if-eqz v17, :cond_172

    if-eqz v1, :cond_172

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/16 v1, 0x9

    const-string/jumbo v2, "process has activity in foreground task"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_172
    iget-boolean v0, v2, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->checkOtherExemptions:Z

    if-eqz v0, :cond_1ad

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1ad

    cmp-long v0, v12, v10

    if-gtz v0, :cond_181

    cmp-long v0, v14, v10

    if-lez v0, :cond_1ad

    :cond_181
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_1ad

    new-instance v2, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "within 10000ms grace period ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object v2

    :cond_1ad
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object v0
.end method

.method public final canCloseSystemDialogsByToken()Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget-object v1, v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/notification/NotificationManagerService$3;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    monitor-enter v0

    :try_start_b
    iget-object v1, v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_37

    :cond_16
    iget-object v1, v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/notification/NotificationManagerService$3;

    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundLaunchProcessController;->getOriginatingTokensThatAllowBal()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-wide/32 v3, 0x9fe8a20

    invoke-static {v3, v4, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-nez p0, :cond_33

    const/4 v2, 0x1

    :cond_33
    monitor-exit v0

    return v2

    :catchall_35
    move-exception p0

    goto :goto_39

    :cond_37
    :goto_37
    monitor-exit v0

    return v2

    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_b .. :try_end_3a} :catchall_35

    throw p0
.end method

.method public final computeProcessActivityState()V
    .registers 21

    move-object/from16 v0, p0

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    iget v2, v0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    const/4 v5, 0x1

    if-eqz v2, :cond_e

    move v2, v5

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    iget v6, v0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    sget v7, Lcom/android/server/wm/WindowProcessController;->ACTIVITY_STATE_VISIBLE:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_18

    move v6, v5

    goto :goto_19

    :cond_18
    const/4 v6, 0x0

    :goto_19
    iget-object v7, v0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    const v8, 0x7fffffff

    const-wide/high16 v9, -0x8000000000000000L

    move v15, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2a
    if-ltz v7, :cond_de

    move/from16 v16, v3

    iget-object v3, v0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    const/16 v17, 0x0

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v4, :cond_3f

    const/high16 v4, 0x100000

    or-int/2addr v11, v4

    :cond_3f
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v4, :cond_65

    const-string v4, "ActivityTaskManager"

    move/from16 v18, v5

    new-instance v5, Ljava/lang/StringBuilder;

    move/from16 v19, v2

    const-string/jumbo v2, "Unexpected detached "

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d4

    :cond_65
    move/from16 v19, v2

    move/from16 v18, v5

    iget v2, v4, Lcom/android/server/wm/Task;->mLayerRank:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_71

    const/high16 v2, 0x400000

    or-int/2addr v11, v2

    :cond_71
    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-eqz v5, :cond_aa

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v2, v5, :cond_9e

    or-int v2, v11, v16

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    const/4 v5, 0x6

    if-ne v3, v5, :cond_90

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTaskWithAdjacent()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_90

    const/high16 v2, 0xa00000

    or-int/2addr v11, v2

    goto :goto_9e

    :cond_90
    const/4 v5, 0x5

    if-ne v3, v5, :cond_9d

    iget v3, v4, Lcom/android/server/wm/Task;->mNonOccludedFreeformAreaRatio:I

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v11, v2

    move/from16 v12, v18

    goto :goto_9e

    :cond_9d
    move v11, v2

    :cond_9e
    :goto_9e
    if-lez v8, :cond_a7

    iget v2, v4, Lcom/android/server/wm/Task;->mLayerRank:I

    if-ltz v2, :cond_a7

    if-le v8, v2, :cond_a7

    move v8, v2

    :cond_a7
    move/from16 v13, v18

    goto :goto_d4

    :cond_aa
    if-nez v13, :cond_d4

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v1, v5, :cond_d4

    if-ne v2, v5, :cond_b4

    :goto_b2
    move-object v1, v5

    goto :goto_d4

    :cond_b4
    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v2, v5, :cond_b9

    goto :goto_b2

    :cond_b9
    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v2, v5, :cond_c1

    iget-boolean v1, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    and-int/2addr v15, v1

    goto :goto_b2

    :cond_c1
    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v1, v5, :cond_d4

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v2, v5, :cond_d4

    iget-boolean v2, v4, Lcom/android/server/wm/Task;->mIsPerceptible:Z

    if-eqz v2, :cond_d4

    iget-wide v2, v3, Lcom/android/server/wm/ActivityRecord;->mStoppedTime:J

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v2

    move-wide v9, v2

    :cond_d4
    :goto_d4
    add-int/lit8 v7, v7, -0x1

    move/from16 v3, v16

    move/from16 v5, v18

    move/from16 v2, v19

    goto/16 :goto_2a

    :cond_de
    move/from16 v19, v2

    move/from16 v16, v3

    move/from16 v18, v5

    const/16 v17, 0x0

    iget-object v2, v0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    const/high16 v3, 0x10000

    if-eqz v2, :cond_116

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_f2
    if-ltz v2, :cond_116

    iget-object v4, v0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aget v4, v4, v17

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_113

    iget-object v4, v0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_113

    or-int v4, v11, v3

    move v11, v4

    :cond_113
    add-int/lit8 v2, v2, -0x1

    goto :goto_f2

    :cond_116
    if-eqz v12, :cond_12d

    move/from16 v2, v18

    if-le v8, v2, :cond_12d

    sget v4, Lcom/android/server/wm/WindowProcessController;->MAX_NUM_PERCEPTIBLE_FREEFORM:I

    add-int/2addr v4, v2

    if-le v8, v4, :cond_12a

    const/16 v2, 0x5a

    if-lt v14, v2, :cond_126

    goto :goto_12a

    :cond_126
    const/high16 v2, 0x2000000

    :goto_128
    or-int/2addr v11, v2

    goto :goto_12d

    :cond_12a
    :goto_12a
    const/high16 v2, 0x1000000

    goto :goto_128

    :cond_12d
    :goto_12d
    const v2, 0xffff

    and-int/2addr v2, v8

    or-int/2addr v2, v11

    if-eqz v13, :cond_136

    or-int/2addr v2, v3

    goto :goto_151

    :cond_136
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v1, v3, :cond_14e

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v1, v3, :cond_13f

    goto :goto_14e

    :cond_13f
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v1, v3, :cond_151

    const/high16 v1, 0x40000

    or-int/2addr v1, v2

    if-eqz v15, :cond_14c

    const/high16 v1, 0xc0000

    :goto_14a
    or-int/2addr v2, v1

    goto :goto_151

    :cond_14c
    move v2, v1

    goto :goto_151

    :cond_14e
    :goto_14e
    const/high16 v1, 0x20000

    goto :goto_14a

    :cond_151
    :goto_151
    iput v2, v0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    iput-wide v9, v0, Lcom/android/server/wm/WindowProcessController;->mPerceptibleTaskStoppedTimeMillis:J

    sget v1, Lcom/android/server/wm/WindowProcessController;->ACTIVITY_STATE_VISIBLE:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_15c

    const/4 v2, 0x1

    goto :goto_15e

    :cond_15c
    move/from16 v2, v17

    :goto_15e
    if-nez v6, :cond_194

    if-eqz v2, :cond_194

    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;-><init>(Lcom/android/server/wm/VisibleActivityProcessTracker;Lcom/android/server/wm/WindowProcessController;)V

    iget-object v3, v1, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_171
    iget-object v4, v1, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_177
    .catchall {:try_start_171 .. :try_end_177} :catchall_191

    iget v3, v0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    and-int v3, v3, v16

    if-eqz v3, :cond_186

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mShouldGetCpuTime:Z

    iget-object v1, v1, Lcom/android/server/wm/VisibleActivityProcessTracker;->mBgExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_187

    :cond_186
    const/4 v3, 0x1

    :goto_187
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {v1, v0, v3}, Lcom/android/server/wm/WindowManagerService;->onProcessActivityVisibilityChanged(IZ)V

    return-void

    :catchall_191
    move-exception v0

    :try_start_192
    monitor-exit v3
    :try_end_193
    .catchall {:try_start_192 .. :try_end_193} :catchall_191

    throw v0

    :cond_194
    if-eqz v6, :cond_1c2

    if-nez v2, :cond_1c2

    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    iget-object v2, v1, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_19f
    iget-object v3, v1, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;

    monitor-exit v2
    :try_end_1a8
    .catchall {:try_start_19f .. :try_end_1a8} :catchall_1bf

    if-eqz v3, :cond_1b3

    iget-boolean v2, v3, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mShouldGetCpuTime:Z

    if-eqz v2, :cond_1b3

    iget-object v1, v1, Lcom/android/server/wm/VisibleActivityProcessTracker;->mBgExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1b3
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    move/from16 v2, v17

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/WindowManagerService;->onProcessActivityVisibilityChanged(IZ)V

    return-void

    :catchall_1bf
    move-exception v0

    :try_start_1c0
    monitor-exit v2
    :try_end_1c1
    .catchall {:try_start_1c0 .. :try_end_1c1} :catchall_1bf

    throw v0

    :cond_1c2
    if-eqz v6, :cond_1ee

    if-nez v19, :cond_1ee

    iget v1, v0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    and-int v1, v1, v16

    if-eqz v1, :cond_1ee

    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    iget-object v2, v1, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_1d3
    iget-object v3, v1, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;

    monitor-exit v2
    :try_end_1dc
    .catchall {:try_start_1d3 .. :try_end_1dc} :catchall_1eb

    if-eqz v0, :cond_1ee

    iget-boolean v2, v0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mShouldGetCpuTime:Z

    if-nez v2, :cond_1ee

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;->mShouldGetCpuTime:Z

    iget-object v1, v1, Lcom/android/server/wm/VisibleActivityProcessTracker;->mBgExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1eb
    move-exception v0

    :try_start_1ec
    monitor-exit v2
    :try_end_1ed
    .catchall {:try_start_1ec .. :try_end_1ed} :catchall_1eb

    throw v0

    :cond_1ee
    return-void
.end method

.method public final computeRelaunchReason()I
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_28

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    if-eqz v2, :cond_25

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_23
    move-exception p0

    goto :goto_2e

    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_28
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :goto_2e
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final containsPackage(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final dispatchConfiguration(Landroid/content/res/Configuration;)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_21

    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_40

    iget-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    if-eqz p1, :cond_40

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unable to send config for IME proc "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    const-string v0, ": no app thread"

    const-string v1, "ActivityTaskManager"

    invoke-static {p1, p0, v0, v1}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_21
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    iput v2, p1, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setLastReportedConfiguration(Landroid/content/res/Configuration;)V

    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_41

    iput-boolean v3, p0, Lcom/android/server/wm/WindowProcessController;->mHasCachedConfiguration:Z

    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    if-lt v1, v2, :cond_41

    :cond_40
    return-void

    :cond_41
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChangePreScheduled(Landroid/content/res/Configuration;)V

    new-instance v1, Landroid/app/servertransaction/ConfigurationChangeItem;

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastTopActivityDeviceId:I

    invoke-direct {v1, p1, v2}, Landroid/app/servertransaction/ConfigurationChangeItem;-><init>(Landroid/content/res/Configuration;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowProcessController;->scheduleClientTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_39

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Activities:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v2

    :goto_1a
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_39

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  - "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :catchall_36
    move-exception p0

    goto/16 :goto_205

    :cond_39
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    if-eqz v1, :cond_90

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_90

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Remote Activities:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_54
    if-ltz v1, :cond_90

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  - "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, " flags="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aget v3, v3, v2

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_80

    const-string/jumbo v4, "host "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_80
    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8a

    const-string/jumbo v3, "embedded"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_54

    :cond_90
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Recent Tasks:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_ad
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_d5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_ad

    :cond_d5
    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    if-eqz v1, :cond_e7

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mVrThreadTid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    :cond_e7
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/BackgroundLaunchProcessController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_ed
    .catchall {:try_start_8 .. :try_end_ed} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OverrideConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mLastReportedConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasCachedConfiguration:Z

    if-eqz v1, :cond_148

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(cached) "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_14a

    :cond_148
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    :goto_14a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    if-eqz v0, :cond_178

    const-string v1, " mAnimatingReasons="

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_16b

    const-string/jumbo v1, "remote-animation|"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_16b
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_175

    const-string/jumbo v0, "wakefulness|"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_175
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_178
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const v0, 0xffff

    if-eq p0, v0, :cond_204

    const-string v1, " mActivityStateFlags="

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/high16 p2, 0x100000

    and-int/2addr p2, p0

    if-eqz p2, :cond_193

    const-string/jumbo p2, "W|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_193
    const/high16 p2, 0x10000

    and-int/2addr p2, p0

    if-eqz p2, :cond_1c0

    const-string/jumbo p2, "V|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/high16 p2, 0x200000

    and-int/2addr p2, p0

    if-eqz p2, :cond_1e1

    const-string/jumbo p2, "R|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/high16 p2, 0x800000

    and-int/2addr p2, p0

    if-eqz p2, :cond_1b4

    const-string/jumbo p2, "RS|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1b4
    const/high16 p2, 0x1000000

    and-int/2addr p2, p0

    if-eqz p2, :cond_1e1

    const-string/jumbo p2, "PF|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1e1

    :cond_1c0
    const/high16 p2, 0x20000

    and-int/2addr p2, p0

    if-eqz p2, :cond_1cc

    const-string/jumbo p2, "P|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1e1

    :cond_1cc
    const/high16 p2, 0x40000

    and-int/2addr p2, p0

    if-eqz p2, :cond_1e1

    const-string/jumbo p2, "S|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/high16 p2, 0x80000

    and-int/2addr p2, p0

    if-eqz p2, :cond_1e1

    const-string p2, "F|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1e1
    :goto_1e1
    const/high16 p2, 0x400000

    and-int/2addr p2, p0

    if-eqz p2, :cond_1ec

    const-string/jumbo p2, "VT|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1ec
    and-int/2addr p0, v0

    if-eq p0, v0, :cond_201

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "taskLayer="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_201
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_204
    return-void

    :goto_205
    :try_start_205
    monitor-exit v0
    :try_end_206
    .catchall {:try_start_205 .. :try_end_206} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getChildCount()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDisplayContextsWithErrorDialogs(Ljava/util/List;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_18
    if-ltz v3, :cond_3b

    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    new-instance v5, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda15;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda15;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v5, :cond_38

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    move-object v5, p1

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    :cond_3b
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_43
    if-ltz v2, :cond_7b

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    if-eqz v5, :cond_60

    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    goto :goto_61

    :cond_60
    const/4 v4, 0x0

    :goto_61
    if-eqz v4, :cond_78

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_78

    move-object v3, p1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_78

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    :catchall_76
    move-exception p0

    goto :goto_80

    :cond_78
    :goto_78
    add-int/lit8 v2, v2, -0x1

    goto :goto_43

    :cond_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_8 .. :try_end_7c} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_80
    :try_start_80
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getInputDispatchingTimeoutMillis()J
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_8
    iget-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    if-nez v1, :cond_17

    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mUsingWrapper:Z

    if-eqz p0, :cond_11

    goto :goto_17

    :cond_11
    sget p0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v1, p0

    goto :goto_1a

    :catchall_15
    move-exception p0

    goto :goto_1f

    :cond_17
    :goto_17
    const-wide/32 v1, 0xea60

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-wide v1

    :goto_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getPackageList()Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    return-object p0
.end method

.method public final getRemoteActivityFlags(Lcom/android/server/wm/ActivityRecord;)[I
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_1d

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-object v0
.end method

.method public final getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    add-int/lit8 v0, v0, -0x2

    :goto_20
    if-ltz v0, :cond_3b

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    if-lez v5, :cond_38

    if-eqz v4, :cond_38

    move-object v1, v3

    move-object v2, v4

    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    :cond_3b
    return-object v2
.end method

.method public final handleAppCrash()Z
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    const/4 v2, 0x0

    :goto_e
    if-ltz p0, :cond_4e

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  Force finishing activity "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_45

    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v4, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v4, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v6, 0x2

    const/16 v7, 0x10

    invoke-virtual {v5, v6, v7, v2, v4}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/Task;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    move v2, v1

    :cond_45
    const-string/jumbo v4, "handleAppCrashed"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    add-int/lit8 p0, p0, -0x1

    goto :goto_e

    :cond_4e
    return v2
.end method

.method public final handleAppDied$1()Z
    .registers 16

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-static {v1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;)V

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-static {v1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;)V

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    move v0, v2

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    iget-boolean v3, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-nez v3, :cond_2c

    if-eqz v0, :cond_29

    goto :goto_2c

    :cond_29
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    goto :goto_31

    :cond_2c
    :goto_2c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_31
    iget-boolean v4, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-eqz v4, :cond_3a

    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3a
    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    if-eqz v0, :cond_5a

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_4c
    if-ltz v0, :cond_5a

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4c

    :cond_5a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move v4, v1

    :goto_60
    const/4 v5, 0x0

    if-ltz v0, :cond_201

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v7

    if-nez v7, :cond_79

    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-nez v7, :cond_79

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v7

    if-eqz v7, :cond_7a

    :cond_79
    move v4, v2

    :cond_7a
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v7

    if-eqz v7, :cond_a3

    iget-object v8, v7, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v8, :cond_97

    iget-object v9, v8, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v9, p0, :cond_97

    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-string v10, "App died while pausing: %s"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v10, v8}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v5, v7, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    move v8, v2

    goto :goto_98

    :cond_97
    move v8, v1

    :goto_98
    iget-object v9, v7, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v9, :cond_a2

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v9, p0, :cond_a2

    iput-object v5, v7, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_a2
    or-int/2addr v4, v8

    :cond_a3
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v5

    const/4 v7, 0x2

    if-eqz v5, :cond_b0

    :cond_ae
    :goto_ae
    move v5, v2

    goto :goto_f8

    :cond_b0
    iget v5, v6, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    const/4 v8, 0x3

    if-eq v5, v2, :cond_b7

    if-ne v5, v7, :cond_c1

    :cond_b7
    iget v9, v6, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    if-ge v9, v8, :cond_c1

    iget-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v9, :cond_c1

    :cond_bf
    :goto_bf
    move v5, v1

    goto :goto_f8

    :cond_c1
    if-ne v5, v8, :cond_cc

    iget v5, v6, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    if-ge v5, v8, :cond_cc

    iget-boolean v5, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v5, :cond_cc

    goto :goto_bf

    :cond_cc
    iget-boolean v5, v6, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    if-nez v5, :cond_dc

    iget-boolean v5, v6, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    if-nez v5, :cond_dc

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v5

    if-eqz v5, :cond_ae

    :cond_dc
    iget-boolean v5, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_e1

    goto :goto_ae

    :cond_e1
    iget-boolean v5, v6, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-nez v5, :cond_bf

    iget v5, v6, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    if-le v5, v7, :cond_bf

    iget-wide v8, v6, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0xea60

    sub-long/2addr v10, v12

    cmp-long v5, v8, v10

    if-lez v5, :cond_bf

    goto :goto_ae

    :goto_f8
    if-eqz v5, :cond_184

    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    aget-boolean v7, v8, v7

    if-eqz v7, :cond_136

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    iget-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    iget-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget-object v11, v6, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v11, 0x5

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object v9, v7

    filled-new-array/range {v8 .. v13}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v8, 0x826bc31d70d318aL

    const/16 v10, 0xcc

    invoke-static {v14, v8, v9, v10, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_136
    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_144

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v7, :cond_184

    iget-object v7, v7, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    iget-boolean v7, v7, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    if-eqz v7, :cond_184

    :cond_144
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Force removing "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": app died, no saved state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ActivityTaskManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v9, :cond_169

    iget v9, v9, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_16a

    :cond_169
    const/4 v9, -0x1

    :goto_16a
    iget-object v10, v6, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string/jumbo v11, "proc died without state saved"

    filled-new-array {v7, v8, v9, v10, v11}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x7531

    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_184
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v7, :cond_1a6

    iget-boolean v8, v7, Lcom/android/server/wm/Task;->mKillProcessesOnDestroyed:Z

    if-eqz v8, :cond_1a6

    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getBasePackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a6

    iput-boolean v1, v7, Lcom/android/server/wm/Task;->mKillProcessesOnDestroyed:Z

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v9, 0xce

    invoke-virtual {v8, v9, v7}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_1a6
    if-eqz v5, :cond_1b5

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v7, :cond_1b5

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v7

    if-ne v7, v2, :cond_1b5

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_1b6

    :cond_1b5
    move-object v7, v6

    :goto_1b6
    iget-object v8, v6, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v8, v7}, Lcom/android/server/wm/TransitionController;->requestCloseTransitionIfNeeded(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    move-result-object v8

    if-eqz v8, :cond_1c2

    invoke-virtual {v8, v7}, Lcom/android/server/wm/Transition;->collectClose(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_1d3

    :cond_1c2
    iget-object v8, v6, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v8

    if-eqz v8, :cond_1d3

    iget-object v8, v6, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/wm/Transition;->collectClose(Lcom/android/server/wm/WindowContainer;)V

    :cond_1d3
    :goto_1d3
    invoke-virtual {v6, v2, v2}, Lcom/android/server/wm/ActivityRecord;->cleanUp(ZZ)V

    if-eqz v5, :cond_1fd

    iget-object v5, v6, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v5, :cond_1f7

    iget-boolean v5, v6, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v5, :cond_1f7

    iget-object v5, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v5, :cond_1f7

    invoke-virtual {v5, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_1f7

    iget-boolean v7, v5, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-nez v7, :cond_1f7

    invoke-virtual {v5, v1}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    move-result v7

    if-eqz v7, :cond_1f7

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityRecord;->transferStartingWindow(Lcom/android/server/wm/ActivityRecord;)Z

    :cond_1f7
    const-string/jumbo v5, "appDied"

    invoke-virtual {v6, v5}, Lcom/android/server/wm/ActivityRecord;->removeFromHistory(Ljava/lang/String;)V

    :cond_1fd
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_60

    :cond_201
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_208
    if-ltz v0, :cond_218

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->clearRootProcess()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_208

    :cond_218
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    iput-object v5, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowProcessController;->updateActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V

    return v4
.end method

.method public final hasStartedActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1d

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    if-ne p1, v2, :cond_15

    goto :goto_1a

    :cond_15
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-nez v2, :cond_1a

    return v1

    :cond_1a
    :goto_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public final hasThread()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final onConfigurationChangePreScheduled(Landroid/content/res/Configuration;)V
    .registers 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x403e6aeb7d63ce3bL  # -0.13736206414649935

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_20
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    if-eqz v0, :cond_46

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Sending to IME proc "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " new config "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    iput-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasCachedConfiguration:Z

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    goto :goto_30

    :cond_e
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_15
    if-ltz p1, :cond_30

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_2d

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    goto :goto_30

    :cond_2d
    add-int/lit8 p1, p1, -0x1

    goto :goto_15

    :cond_30
    :goto_30
    const/4 p1, 0x0

    if-eqz v1, :cond_42

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_42

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getDeviceIdForDisplayId(I)I

    move-result v1

    goto :goto_43

    :cond_42
    move v1, p1

    :goto_43
    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastTopActivityDeviceId:I

    if-eq v1, v2, :cond_4a

    iput v1, p0, Lcom/android/server/wm/WindowProcessController;->mLastTopActivityDeviceId:I

    move p1, v0

    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    xor-int/2addr p1, v0

    and-int/2addr p1, v2

    if-eqz p1, :cond_77

    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_76

    iget-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    if-eqz p1, :cond_76

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Current config: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " unchanged for IME proc "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    const-string v0, "ActivityTaskManager"

    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    return-void

    :cond_77
    iget p1, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    if-lez p1, :cond_7e

    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    return-void

    :cond_7e
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowProcessController;->dispatchConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onTopProcChanged()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    iget v0, v0, Lcom/android/server/wm/VrController;->mVrState:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda4;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda4;-><init>(ILcom/android/server/wm/WindowProcessController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_17
    return-void
.end method

.method public final registerActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    if-eqz p1, :cond_23

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ConfigurationContainer;->containsListener(Lcom/android/server/wm/ConfigurationContainerListener;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    if-nez v0, :cond_d

    goto :goto_23

    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterActivityConfigurationListener()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterDisplayAreaConfigurationListener()V

    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigTask:Lcom/android/server/wm/Task;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ConfigurationContainer;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-nez p1, :cond_23

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    :cond_23
    :goto_23
    return-void
.end method

.method public registeredForActivityConfigChanges()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final releaseSomeActivities()V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_58

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_7b

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_7b

    :cond_22
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-nez v4, :cond_55

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-eqz v4, :cond_55

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    if-eqz v4, :cond_55

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v4

    if-eqz v4, :cond_55

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/wm/ActivityRecord;->isState$1(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v4

    if-eqz v4, :cond_45

    goto :goto_55

    :cond_45
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-eqz v4, :cond_55

    if-nez v0, :cond_52

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_52
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_58
    if-eqz v0, :cond_7b

    new-instance p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v2, 0x1

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_6b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    const-string/jumbo v3, "low-mem"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    add-int/lit8 p0, p0, -0x1

    if-gtz p0, :cond_6b

    :cond_7b
    :goto_7b
    return-void
.end method

.method public final removeActivity(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 3

    if-eqz p2, :cond_1d

    iget-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    if-nez p2, :cond_11

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_11
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_24

    iget-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_1d
    iget-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    if-eqz p2, :cond_24

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_24
    :goto_24
    iget-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->updateActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public final removeAnimatingReason(I)V
    .registers 4

    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    if-eqz v0, :cond_17

    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowProcessController;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_17
    return-void
.end method

.method public final removeRemoteActivityFlags(ILcom/android/server/wm/ActivityRecord;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    if-nez v0, :cond_5

    goto :goto_22

    :cond_5
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p2

    if-gez p2, :cond_c

    goto :goto_22

    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    aget v2, v0, v1

    not-int p1, p1

    and-int/2addr p1, v2

    aput p1, v0, v1

    if-nez p1, :cond_22

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_22
    :goto_22
    return-void
.end method

.method public final resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 14

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->assetsSeq:I

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    iget v3, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-le v3, v1, :cond_f

    iput v2, v0, Landroid/content/res/Configuration;->assetsSeq:I

    :cond_f
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v0, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v2}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    iput v0, v7, Landroid/content/res/Configuration;->seq:I

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v7, v0}, Landroid/content/res/Configuration;->overrideUndefinedFrom(Landroid/content/res/Configuration;)V

    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2d

    return-void

    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    :goto_37
    move-object v4, v0

    goto :goto_3b

    :cond_39
    const/4 v0, 0x0

    goto :goto_37

    :goto_3b
    iget-object v5, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    invoke-static/range {v4 .. v11}, Lcom/android/server/wm/ConfigurationContainer;->applySizeOverrideIfNeeded(Lcom/android/server/wm/DisplayContent;Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZZZLcom/android/server/wm/Task;)V

    return-void
.end method

.method public final resumeConfigurationDispatch()Z
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    return p0
.end method

.method public final scheduleClientTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mWindowSession:Lcom/android/server/wm/Session;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_2e

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v0, :cond_14

    :try_start_6
    iget-object v0, v0, Lcom/android/server/wm/Session;->mAddedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    return-void

    :cond_14
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/app/servertransaction/ClientTransaction;

    invoke-direct {v1, p1}, Landroid/app/servertransaction/ClientTransaction;-><init>(Landroid/app/IApplicationThread;)V

    invoke-virtual {v1, p2}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)Z

    move-result p1

    if-eqz p1, :cond_28

    goto :goto_4b

    :cond_28
    new-instance p1, Landroid/os/DeadObjectException;

    invoke-direct {p1}, Landroid/os/DeadObjectException;-><init>()V

    throw p1
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_2e} :catch_2e

    :catch_2e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed for dead process. ClientTransactionItem="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " owner="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mOwner:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4b
    return-void
.end method

.method public scheduleClientTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_1a

    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_19

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unable to send transaction to client proc "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    const-string v0, ": no app thread"

    const-string v1, "ActivityTaskManager"

    invoke-static {p1, p0, v0, v1}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void

    :cond_1a
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowProcessController;->scheduleClientTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V

    return-void
.end method

.method public final scheduleUpdateOomAdj()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    invoke-static {v1, p0, v2, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setLastReportedConfiguration(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final setOverrideGender(Landroid/content/res/Configuration;I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGrammaticalManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {p1, p2, v0, p0}, Lcom/android/server/wm/WindowProcessController;->applyConfigGenderOverride(Landroid/content/res/Configuration;ILcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;I)Z

    move-result p0

    return p0
.end method

.method public final setThread(Landroid/app/IApplicationThread;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setLastReportedConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_23

    :catchall_11
    move-exception p0

    goto :goto_28

    :cond_13
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    iget-object v1, p1, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    monitor-enter v1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_11

    :try_start_1a
    iget-object p1, p1, Lcom/android/server/wm/VisibleActivityProcessTracker;->mProcMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_25

    :goto_23
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_11

    return-void

    :catchall_25
    move-exception p0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw p0

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_11

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mOwner:Lcom/android/server/am/ProcessRecord;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public final unregisterActivityConfigurationListener()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ConfigurationContainer;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    if-nez v0, :cond_20

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setPopOverState(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_20
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public unregisterDisplayAreaConfigurationListener()V
    .registers 1

    return-void
.end method

.method public final updateActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    if-nez v0, :cond_5

    goto :goto_14

    :cond_5
    if-eqz p1, :cond_15

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mConfigTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->registerActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1d
    if-ltz p1, :cond_32

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_2f

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->registerActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    :cond_2f
    add-int/lit8 p1, p1, -0x1

    goto :goto_1d

    :cond_32
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterActivityConfigurationListener()V

    return-void
.end method

.method public final updateActivityInfo(Landroid/content/pm/ApplicationInfo;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_44

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_3f

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_23

    goto :goto_3f

    :cond_23
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    goto :goto_3c

    :catchall_3a
    move-exception p0

    goto :goto_49

    :cond_3c
    :goto_3c
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_3f
    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_44
    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_49
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final updateAssetConfiguration(I)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    if-nez v0, :cond_9

    goto :goto_3d

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_11
    if-ltz v0, :cond_3c

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput p1, v2, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v2, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_39

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_3c
    return-void

    :cond_3d
    :goto_3d
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput p1, v0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final updateProcessInfo(ZZZZ)V
    .registers 6

    if-eqz p4, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->addToPendingTop()V

    :cond_5
    iget-object p4, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz p3, :cond_13

    iget-object v0, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->rankTaskLayers()V

    iget-object v0, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->computeProcessActivityStateBatch()Z

    :cond_13
    new-instance v0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    iget-object p1, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
