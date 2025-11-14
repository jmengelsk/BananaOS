.class public final Lcom/android/server/wm/ActivityTaskSupervisor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/RecentTasks$Callbacks;


# static fields
.field public static final ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

.field public static final IDLE_TIMEOUT:I

.field public static final LAUNCH_TIMEOUT:I

.field public static final SLEEP_TIMEOUT:I


# instance fields
.field public mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

.field public final mActivityStateChangedProcs:Ljava/util/ArrayList;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppVisibilitiesChangedSinceLastPause:Z

.field public mBalController:Lcom/android/server/wm/BackgroundActivityStartController;

.field public final mCurTaskIdForUser:Landroid/util/SparseIntArray;

.field public mDeferResumeCount:I

.field public mDeferRootVisibilityUpdate:Z

.field public final mFinishingActivities:Ljava/util/ArrayList;

.field public mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

.field public mInitialized:Z

.field public mKeyguardController:Lcom/android/server/wm/KeyguardController;

.field public mLastReportedTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field public mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

.field public mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

.field public mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mLooper:Landroid/os/Looper;

.field public final mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

.field public final mNoAnimActivities:Ljava/util/ArrayList;

.field public final mNoHistoryActivities:Ljava/util/ArrayList;

.field public final mOpaqueContainerHelper:Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;

.field public mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field public final mPipModeChangedActivities:Ljava/util/ArrayList;

.field public mPipModeChangedTargetRootTaskBounds:Landroid/graphics/Rect;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field public mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public mRunningTasks:Lcom/android/server/wm/RunningTasks;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mStartingUsers:Ljava/util/ArrayList;

.field public final mStoppingActivities:Ljava/util/ArrayList;

.field public mSystemChooserActivity:Landroid/content/ComponentName;

.field public mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

.field public final mTaskInfoHelper:Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;

.field public mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field public mTopResumedActivityWaitingForPrev:Z

.field public mUserLeaving:Z

.field public mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public mVisibilityTransactionDepth:I

.field public final mWaitingActivityLaunched:Ljava/util/ArrayList;

.field public mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v1, v0, 0x2710

    sput v1, Lcom/android/server/wm/ActivityTaskSupervisor;->IDLE_TIMEOUT:I

    mul-int/lit16 v1, v0, 0x1388

    sput v1, Lcom/android/server/wm/ActivityTaskSupervisor;->SLEEP_TIMEOUT:I

    mul-int/lit16 v0, v0, 0x2710

    sput v0, Lcom/android/server/wm/ActivityTaskSupervisor;->LAUNCH_TIMEOUT:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityTaskSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    const-string/jumbo v2, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "android.provider.action.MOTION_PHOTO_CAPTURE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "android.intent.action.CALL"

    const-string/jumbo v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskInfoHelper:Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;

    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mOpaqueContainerHelper:Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLooper:Landroid/os/Looper;

    new-instance p1, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    return-void
.end method

.method public static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 17

    move-object/from16 v0, p2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move-object/from16 v15, p6

    move v6, v1

    move v14, v2

    move-object/from16 v16, v3

    :goto_0
    if-ltz v6, :cond_0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    const-string v8, "  "

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p3

    move/from16 v11, p4

    move-object/from16 v13, p5

    invoke-static/range {v4 .. v16}, Lcom/android/server/wm/ActivityRecord;->dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)V

    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    add-int/lit8 v6, v6, -0x1

    const/4 v14, 0x0

    move-object/from16 v16, v1

    move-object v15, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZLjava/lang/String;Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda37;)Z
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    if-ne p3, v0, :cond_4

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    :cond_2
    if-eqz p6, :cond_3

    invoke-virtual {p6}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda37;->run()V

    :cond_3
    invoke-virtual {p0, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;)V
    .locals 3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p4

    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/4 v10, 0x0

    const/4 v8, 0x1

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v2, :cond_7

    const/16 v1, 0xc8

    invoke-virtual {v7, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    if-eqz p2, :cond_0

    const-wide/16 v3, -0x1

    const/4 v5, -0x1

    move/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->reportActivityLaunched(ZLcom/android/server/wm/ActivityRecord;JI)V

    :cond_0
    if-eqz v6, :cond_1

    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v1, v6}, Landroid/util/MergedConfiguration;->setGlobalConfiguration(Landroid/content/res/Configuration;)V

    :cond_1
    iput-boolean v8, v2, Lcom/android/server/wm/ActivityRecord;->idle:Z

    iget-object v1, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isBooting()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesIdle()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    if-eqz p2, :cond_6

    :cond_3
    iget-object v1, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isBooting()Z

    move-result v1

    iget-object v3, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, v10}, Landroid/app/ActivityManagerInternal;->setBooting(Z)V

    iget-object v3, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->isBooted()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, v8}, Landroid/app/ActivityManagerInternal;->setBooted(Z)V

    move v3, v8

    goto :goto_0

    :cond_4
    move v3, v10

    :goto_0
    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    iget-object v4, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v5, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda35;

    invoke-direct {v5, v9, v1, v3}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZZ)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    iput v10, v2, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    :cond_7
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesIdle()Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz v2, :cond_e

    iget-object v1, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda11;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v9}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v3, v1, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    iget-object v4, v1, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0xa

    if-gt v4, v5, :cond_8

    goto :goto_4

    :cond_8
    sub-int/2addr v4, v8

    :goto_1
    if-lt v4, v5, :cond_d

    iget-object v6, v1, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v11

    if-eqz v11, :cond_9

    iget-boolean v11, v6, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v11, :cond_a

    :cond_9
    move/from16 v17, v8

    move-object v6, v9

    goto :goto_2

    :cond_a
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v11

    if-ne v11, v3, :cond_b

    invoke-virtual {v6, v8, v10}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    if-eqz v11, :cond_c

    :cond_b
    move/from16 v17, v8

    move-object v6, v9

    goto :goto_3

    :cond_c
    iget-object v11, v1, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v13, 0x0

    const/16 v14, 0x3e8

    move v11, v8

    iget-object v8, v1, Lcom/android/server/wm/RecentTasks;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string/jumbo v12, "remove-hidden-task"

    const/4 v15, -0x1

    const/16 v16, 0x0

    move/from16 v17, v11

    move v11, v10

    move-object/from16 v18, v9

    move-object v9, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v8 .. v16}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZIILjava/lang/String;)V

    goto :goto_3

    :goto_2
    iget-object v8, v1, Lcom/android/server/wm/RecentTasks;->mHiddenTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v4, v4, -0x1

    move-object v9, v6

    move/from16 v8, v17

    goto :goto_1

    :cond_d
    :goto_4
    move-object v6, v9

    iget-boolean v3, v1, Lcom/android/server/wm/RecentTasks;->mCheckTrimmableTasksOnIdle:Z

    if-eqz v3, :cond_f

    iput-boolean v10, v1, Lcom/android/server/wm/RecentTasks;->mCheckTrimmableTasksOnIdle:Z

    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasks;->trimInactiveRecentTasks()V

    goto :goto_5

    :cond_e
    move-object v6, v9

    :cond_f
    :goto_5
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0xcc

    invoke-virtual {v7, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_6

    :cond_10
    move-object v6, v9

    :cond_11
    :goto_6
    const-string/jumbo v1, "idle"

    move/from16 v3, p3

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_12

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    iget-object v3, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    const-string/jumbo v5, "finishing switch of user %d"

    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, v2}, Landroid/app/ActivityManagerInternal;->finishUserSwitch(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_12
    iget-object v1, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v2, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final beginActivityVisibilityUpdate(Lcom/android/server/wm/DisplayContent;)V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v10, v1

    goto/16 :goto_19

    :cond_1
    :goto_0
    iget v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    iget-object v3, v2, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_1
    if-ltz v3, :cond_0

    iget-object v4, v2, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    iget-boolean v5, v4, Lcom/android/server/wm/DisplayContent;->mRemoving:Z

    if-nez v5, :cond_2

    iget-boolean v5, v4, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    if-eqz v5, :cond_3

    :cond_2
    move v10, v1

    move/from16 v17, v3

    goto/16 :goto_18

    :cond_3
    iget v5, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v5}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v5

    iget-boolean v6, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    iget-boolean v7, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    iget-object v8, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v9, 0x0

    iput-boolean v9, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    iput-boolean v9, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    const/4 v10, 0x0

    iput-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    new-instance v11, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState$$ExternalSyntheticLambda0;

    invoke-direct {v11, v4}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v4, v11}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v11, v1, v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    goto :goto_2

    :cond_4
    move-object v12, v10

    :goto_2
    iget-object v13, v2, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v14, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    if-eqz v12, :cond_d

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    move-result v15

    if-eqz v15, :cond_5

    iput-object v12, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_5
    iget-boolean v15, v12, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    if-nez v15, :cond_6

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->containsTurnScreenOnWindow()Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_6
    iget-boolean v15, v12, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    if-eqz v15, :cond_7

    iput-object v12, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_7
    iget-object v15, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v10}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v10

    invoke-virtual {v15, v10}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v10

    iget-boolean v15, v12, Lcom/android/server/wm/ActivityRecord;->mDismissKeyguardIfInsecure:Z

    if-eqz v15, :cond_8

    iget-boolean v15, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    if-eqz v15, :cond_8

    if-nez v10, :cond_8

    iput-boolean v1, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    goto :goto_3

    :cond_8
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v10

    if-eqz v10, :cond_9

    iput-object v12, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_9
    :goto_3
    iput-boolean v9, v12, Lcom/android/server/wm/ActivityRecord;->mDismissKeyguardIfInsecure:Z

    iget-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v10, :cond_b

    iget-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v10, :cond_a

    invoke-virtual {v11, v9}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    iget-object v11, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v10, v11, :cond_a

    invoke-virtual {v2, v1, v9}, Lcom/android/server/wm/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_4

    :cond_a
    move v10, v9

    goto :goto_5

    :cond_b
    :goto_4
    move v10, v1

    :goto_5
    iput-boolean v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-eqz v14, :cond_d

    iget-object v11, v4, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v11}, Landroid/view/Display;->getFlags()I

    move-result v11

    and-int/lit8 v11, v11, 0x20

    if-eqz v11, :cond_c

    invoke-virtual {v2}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v11

    if-eqz v11, :cond_c

    move v11, v1

    goto :goto_6

    :cond_c
    move v11, v9

    :goto_6
    or-int/2addr v10, v11

    iput-boolean v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    :cond_d
    iget-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v8, v10, :cond_e

    iget-boolean v11, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-nez v11, :cond_e

    iget-boolean v11, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    if-nez v11, :cond_e

    if-eqz v10, :cond_e

    move v10, v1

    goto :goto_7

    :cond_e
    move v10, v9

    :goto_7
    iput-boolean v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    iget-boolean v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-eqz v10, :cond_10

    iget-boolean v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    if-eqz v10, :cond_10

    iget-boolean v10, v4, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    if-nez v10, :cond_10

    invoke-virtual {v12, v1}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v10

    if-eqz v10, :cond_10

    :cond_f
    iget-object v10, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v10, v10, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v10, :cond_10

    iget v10, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v10, v10, 0x4

    iput v10, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_10
    iget-object v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v11, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v10, :cond_12

    iget-object v10, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    iget v15, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v10, v15}, Landroid/os/PowerManager;->isInteractive(I)Z

    move-result v10

    if-nez v10, :cond_12

    iget-boolean v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    if-nez v10, :cond_11

    iget-boolean v10, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-eqz v10, :cond_12

    :cond_11
    iget v10, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "handleTurnScreenOn::"

    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v15, v2, Lcom/android/server/wm/KeyguardController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v15, v10, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(ILjava/lang/String;)V

    iget-object v1, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    iput-boolean v9, v1, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    :cond_12
    iget-object v1, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v8, v1, :cond_14

    if-eqz v1, :cond_13

    iget-object v8, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v10, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v1

    invoke-virtual {v8, v10, v1}, Landroid/app/ActivityManagerInternal;->setKeyguardPkgInfo(Ljava/lang/String;I)V

    goto :goto_8

    :cond_13
    iget-object v1, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v8}, Landroid/app/ActivityManagerInternal;->setKeyguardPkgInfo(Ljava/lang/String;I)V

    :cond_14
    :goto_8
    if-nez v7, :cond_15

    iget-boolean v1, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_9

    :cond_15
    move v1, v9

    :goto_9
    iget-boolean v7, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-eq v6, v7, :cond_16

    const/4 v6, 0x1

    goto :goto_a

    :cond_16
    move v6, v9

    :goto_a
    if-eqz v1, :cond_17

    const-string/jumbo v7, "dismissIfInsecure"

    invoke-virtual {v5, v7}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->writeEventLog(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    :try_start_0
    iget-object v7, v4, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v7, v7, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/16 v8, 0x100

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v8, v11, v4}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/Task;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    invoke-virtual {v2}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    iget-object v7, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    invoke-virtual {v2, v14}, Lcom/android/server/wm/KeyguardController;->scheduleGoingAwayTimeout(I)V

    goto :goto_b

    :catchall_0
    move-exception v0

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0

    :cond_17
    :goto_b
    if-eqz v6, :cond_25

    iget-object v7, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v14}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v10, v8}, [Ljava/lang/Object;

    move-result-object v8

    const v10, 0xf430a

    invoke-static {v10, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v8, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v8, v14}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayId(I)Z

    move-result v8

    if-eqz v8, :cond_18

    goto :goto_c

    :cond_18
    if-eqz v14, :cond_19

    invoke-virtual {v2, v14}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    goto/16 :goto_15

    :cond_19
    :goto_c
    iget-object v8, v2, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v8, v8, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2, v14}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v10

    iget-object v11, v2, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v11, v14}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    invoke-virtual {v2, v14}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result v15

    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v16

    if-eqz v16, :cond_1c

    if-eqz v15, :cond_1b

    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v16

    if-eqz v16, :cond_1a

    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v16, :cond_1b

    :cond_1a
    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v16, :cond_1b

    goto :goto_d

    :cond_1b
    move/from16 v16, v9

    goto :goto_e

    :cond_1c
    :goto_d
    const/16 v16, 0x1

    :goto_e
    iget-boolean v9, v10, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    const/16 v17, 0x2000

    const/16 v18, 0x1000

    if-eqz v9, :cond_1d

    const/16 v19, 0x8

    move/from16 v20, v17

    move/from16 v17, v3

    move/from16 v3, v20

    move/from16 v20, v1

    move/from16 v1, v18

    :goto_f
    move/from16 v18, v6

    move/from16 v6, v19

    move/from16 v19, v15

    goto :goto_10

    :cond_1d
    const/16 v19, 0x9

    move/from16 v20, v1

    move/from16 v1, v17

    move/from16 v17, v3

    move/from16 v3, v18

    goto :goto_f

    :goto_10
    iget-object v15, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v15, v14, v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->onKeyguardOccludedChangedLw(IZ)V

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    if-eqz v19, :cond_21

    :try_start_1
    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v9

    if-eqz v9, :cond_23

    iget-boolean v9, v10, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-eqz v9, :cond_1e

    if-eqz v7, :cond_1e

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v9

    goto :goto_11

    :catchall_1
    move-exception v0

    goto :goto_14

    :cond_1e
    const/4 v9, 0x0

    :goto_11
    invoke-virtual {v8, v6, v1, v9, v11}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/Task;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v6

    iget v8, v6, Lcom/android/server/wm/Transition;->mFlags:I

    and-int v15, v8, v3

    if-eqz v15, :cond_1f

    not-int v1, v3

    and-int/2addr v1, v8

    iput v1, v6, Lcom/android/server/wm/Transition;->mFlags:I

    goto :goto_12

    :cond_1f
    invoke-virtual {v6, v1}, Lcom/android/server/wm/Transition;->addFlag(I)V

    :goto_12
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v1, :cond_20

    iget-boolean v1, v10, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-eqz v1, :cond_20

    invoke-virtual {v2, v7}, Lcom/android/server/wm/KeyguardController;->handleFreeformTaskOccluded(Lcom/android/server/wm/ActivityRecord;)V

    :cond_20
    if-eqz v9, :cond_23

    const/4 v1, 0x0

    invoke-virtual {v6, v9, v1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    goto :goto_13

    :cond_21
    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, v8, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    iget-object v3, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda1;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v3}, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_22
    iget-object v1, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->applyKeyguardOcclusionChange()I

    :cond_23
    :goto_13
    invoke-virtual {v2, v14}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    if-eqz v16, :cond_24

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_24
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    goto :goto_16

    :goto_14
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0

    :cond_25
    :goto_15
    move/from16 v20, v1

    move/from16 v17, v3

    move/from16 v18, v6

    :goto_16
    if-eqz v12, :cond_27

    if-nez v20, :cond_26

    if-eqz v18, :cond_27

    iget-boolean v1, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-eqz v1, :cond_27

    :cond_26
    iget-object v1, v4, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, v12}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_27
    iget-boolean v1, v5, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    if-eqz v1, :cond_29

    iget v1, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v3, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_17

    :cond_28
    iget-object v3, v2, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v10}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v1

    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissalRequested:Z

    goto :goto_18

    :cond_29
    :goto_17
    const/4 v10, 0x1

    :goto_18
    add-int/lit8 v3, v17, -0x1

    move v1, v10

    goto/16 :goto_1

    :goto_19
    iget v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    return-void
.end method

.method public final beginDeferResume()V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    return-void
.end method

.method public final canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)Z
    .locals 2

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2, p3, p1, p5}, Lcom/android/server/wm/ActivityTaskSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_8

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p5, :cond_3

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p4, :cond_4

    new-instance p2, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda1;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p4, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    :cond_4
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    iget-object p3, p2, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez p3, :cond_7

    move p0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p0, p3, :cond_8

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    if-eqz p3, :cond_5

    iget-object p0, p2, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Checking activity launch with requiredDisplayCategory=\'%s\' on display %d, which doesn\'t have a matching category."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayWindowPolicyControllerHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ActivityInfo;

    invoke-virtual {p2, p3}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->launchAllowedByDisplayPolicy(Landroid/content/pm/ActivityInfo;)Z

    move-result p3

    if-nez p3, :cond_6

    :goto_1
    return v1

    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p3, p1, p0}, Landroid/window/DisplayWindowPolicyController;->canContainActivities(Ljava/util/List;I)Z

    move-result p0

    return p0

    :cond_8
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public final canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    :cond_1
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public final checkReadyForSleepLocked(Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    if-nez v3, :cond_1

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v3, v1, [Z

    aput-boolean v1, v3, v0

    new-instance v1, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;

    invoke-direct {v1, p1, v3, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;-><init>(Z[ZZ)V

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    aget-boolean p1, v3, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->endPowerMode(I)V

    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->rankTaskLayers()V

    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v0, 0xcb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, p6

    move-object/from16 v8, p11

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    const/4 v11, 0x1

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-eqz v2, :cond_0

    move v12, v11

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    const-string/jumbo v4, "android.permission.START_ANY_ACTIVITY"

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    move/from16 v2, p5

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    move-result v4

    if-eqz v4, :cond_16

    if-eqz v12, :cond_1

    if-eqz p10, :cond_1

    goto/16 :goto_8

    :cond_1
    const/4 v12, -0x1

    const/4 v13, 0x2

    if-nez p9, :cond_2

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v7, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    sget-object v2, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    const/4 v5, 0x0

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    move-result v4

    if-ne v4, v12, :cond_2

    move-object/from16 v14, p7

    move v15, v11

    goto :goto_2

    :cond_2
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-nez v2, :cond_4

    :goto_1
    move-object/from16 v14, p7

    :cond_3
    const/4 v15, 0x0

    goto :goto_2

    :cond_4
    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v12, :cond_5

    goto :goto_1

    :cond_5
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v2, :cond_6

    iget-object v2, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    :cond_6
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v7, ""

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object v14, v5

    if-eqz v2, :cond_3

    if-nez p9, :cond_3

    move v15, v13

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    if-nez v2, :cond_7

    :goto_3
    move/from16 v9, p5

    move-object v10, v3

    const/4 v2, 0x0

    const/16 v16, 0x0

    move/from16 v3, p6

    goto/16 :goto_5

    :cond_7
    sget-object v4, Lcom/android/server/wm/ActivityTaskSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    :try_start_0
    iget-object v2, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/16 v6, 0x1000

    invoke-virtual {v2, v14, v6, v5}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    move/from16 v2, p5

    move-object v10, v3

    const/16 v16, 0x0

    move/from16 v3, p6

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    move-result v5

    if-ne v5, v12, :cond_a

    move/from16 v9, p5

    move/from16 v3, p6

    move v2, v11

    goto/16 :goto_5

    :cond_a
    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v12, :cond_c

    move/from16 v9, p5

    move/from16 v3, p6

    :cond_b
    :goto_4
    move/from16 v2, v16

    goto/16 :goto_5

    :cond_c
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v2, :cond_d

    iget-object v2, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    :cond_d
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v7, ""

    move/from16 v9, p5

    move-object/from16 v6, p8

    move-object v12, v4

    move-object v5, v14

    move/from16 v4, p6

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move v3, v4

    if-eqz v2, :cond_b

    const-string/jumbo v2, "android.permission.CAMERA"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-class v2, Landroid/hardware/SensorPrivacyManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorPrivacyManagerInternal;

    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v2, v6, v13}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_e

    const-class v2, Landroid/app/AppOpsManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManagerInternal;

    const/16 v6, 0x1a

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v4, v5, v7}, Landroid/app/AppOpsManagerInternal;->getOpRestrictionCount(ILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v11, :cond_e

    goto :goto_4

    :cond_e
    move v2, v13

    goto :goto_5

    :catch_0
    move/from16 v9, p5

    move-object v10, v3

    move-object v5, v14

    const/16 v16, 0x0

    move/from16 v3, p6

    const-string v2, "Cannot find package info for "

    invoke-static {v2, v5, v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_5
    const-string v4, ") requires "

    const-string v5, ", uid="

    const-string v6, " (pid="

    const-string v7, " from "

    if-eq v15, v11, :cond_f

    if-ne v2, v11, :cond_10

    :cond_f
    move-object/from16 v12, p1

    goto/16 :goto_6

    :cond_10
    const-string v12, "Appop Denial: starting "

    if-ne v2, v13, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v3, v5, v4, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    sget-object v1, Lcom/android/server/wm/ActivityTaskSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    :cond_11
    if-ne v15, v13, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") requires appop "

    invoke-static {v9, v3, v5, v2, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    :cond_12
    const-string/jumbo v1, "com.sec.intent.extra.FREEZE_TASK_DISPLAY_AREA"

    move-object/from16 v12, p1

    move/from16 v2, v16

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v1, "com.samsung.android.permission.FREEZE_TASK_DISPLAY_AREA"

    const-string v2, "FREEZE_TASK_DISPLAY_AREA"

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission$1(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :goto_6
    if-eqz p12, :cond_13

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v14, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v13, p12

    invoke-virtual/range {v13 .. v21}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    :cond_13
    const-string/jumbo v0, "Permission Denial: starting "

    if-eq v2, v11, :cond_15

    iget-boolean v2, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v2, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") not exported from uid "

    invoke-static {v9, v3, v5, v0, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v3, v5, v4, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") with revoked permission "

    invoke-static {v9, v3, v5, v0, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    sget-object v0, Lcom/android/server/wm/ActivityTaskSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    :goto_8
    return v11
.end method

.method public final cleanUpRemovedTask(Lcom/android/server/wm/Task;ZZ)V
    .locals 6

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p3, p1}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "No component for base intent of task: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v1, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v4, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-static {v1, v3, v4, v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    iget-object v0, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-boolean p3, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p3, :cond_5

    iget-boolean p3, p2, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-nez p3, :cond_5

    iget-wide v0, p2, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_5

    iget-boolean p3, p1, Lcom/android/server/wm/Task;->mKillProcessesOnDestroyed:Z

    if-nez p3, :cond_5

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result p2

    if-eqz p2, :cond_5

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_DND_FREEFORM_DISMISS_VIEW:Z

    if-eqz p2, :cond_4

    iget-boolean p2, p1, Lcom/android/server/wm/Task;->mRemoveByDrag:Z

    if-eqz p2, :cond_4

    :goto_1
    return-void

    :cond_4
    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/server/wm/Task;->mKillProcessesOnDestroyed:Z

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 p2, 0xce

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x3e8

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->killTaskProcessesIfPossible(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public final computeProcessActivityStateBatch()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowProcessController;

    iget v4, v3, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->computeProcessActivityState()V

    if-nez v1, :cond_1

    iget v3, v3, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    if-eq v4, v3, :cond_1

    move v1, v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return v1
.end method

.method public final endActivityVisibilityUpdate()V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->computeProcessActivityStateBatch()Z

    :cond_0
    return-void
.end method

.method public final endDeferResume()V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->readyToResume()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLastReportedTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleTopResumedActivityStateLossIfNeeded()V

    return-void

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleTopResumedActivityStateIfNeeded()V

    :cond_1
    return-void
.end method

.method public final findTaskToMoveToFront(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v0, p2

    move-object/from16 v4, p3

    const-string v2, " findTaskToMoveToFront"

    const-string/jumbo v11, "findTaskToMoveToFront: move rootTask "

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v10

    const-string v12, "ActivityTaskManager"

    if-nez v10, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "findTaskToMoveToFront: can\'t move task="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to front. Root task is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v13, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v14, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->disallowEnterPictureInPictureWhileLaunching()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v14

    goto :goto_1

    :catchall_0
    move-exception v0

    move v2, v14

    goto/16 :goto_b

    :cond_2
    :goto_0
    move v5, v7

    :goto_1
    and-int/lit8 v6, v0, 0x2

    if-nez v6, :cond_3

    if-eqz v5, :cond_3

    iput-boolean v7, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :try_start_1
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    iget-object v5, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v5}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v5, :cond_4

    :try_start_2
    iget-object v6, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v5, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v14}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v16, v7

    :goto_2
    move-object v15, v5

    goto :goto_3

    :cond_4
    move/from16 v16, v14

    goto :goto_2

    :goto_3
    :try_start_3
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_5

    :try_start_4
    iget-object v5, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/FreeformController;->releaseForceHideTaskLocked(Lcom/android/server/wm/Task;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    :try_start_5
    iget-object v5, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    move-object/from16 v5, p4

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    move-object v5, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v14, v5

    move-object/from16 v5, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;I)Lcom/android/server/wm/Task;

    move-result-object v3

    move v9, v7

    if-eq v3, v10, :cond_6

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v14}, Lcom/android/server/wm/ActivityTaskSupervisor;->moveHomeRootTaskToFrontIfNeeded(ILcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p1

    move-object v8, v14

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)V

    move-object/from16 v18, v3

    move/from16 v17, v9

    goto :goto_4

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_6
    move-object/from16 v2, p1

    move-object/from16 v18, v10

    const/16 v17, 0x0

    :goto_4
    new-instance v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v10}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    invoke-virtual {v2, v9, v9}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    const/4 v8, 0x0

    move v7, v9

    const/4 v9, 0x3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v19, v3

    move-object v3, v2

    move-object/from16 v2, v19

    move-object/from16 v19, v15

    move v15, v7

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    iget-object v2, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-object/from16 v2, v18

    goto :goto_5

    :cond_7
    move-object v14, v8

    move-object/from16 v19, v15

    move v15, v7

    move-object v2, v10

    const/16 v17, 0x0

    :goto_5
    const/4 v9, 0x0

    if-nez v17, :cond_b

    if-eqz p3, :cond_b

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_b

    if-eq v4, v5, :cond_b

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to display #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    goto :goto_6

    :cond_8
    move-object v4, v9

    :goto_6
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_9
    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v13, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->moveRootTaskToDisplay(II)V

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v4

    if-ne v4, v5, :cond_a

    move v7, v15

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    :goto_7
    move/from16 v17, v7

    :cond_b
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    move-result v10

    if-nez v17, :cond_c

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v1, v0, v4, v14}, Lcom/android/server/wm/ActivityTaskSupervisor;->moveHomeRootTaskToFrontIfNeeded(ILcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v3, v15, v15}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_d

    move-object v6, v9

    goto :goto_8

    :cond_d
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    move-object v6, v4

    :goto_8
    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v5, p3

    move-object v8, v14

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    move/from16 v5, p5

    invoke-virtual {v1, v3, v4, v2, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V

    if-eqz v0, :cond_f

    if-eqz p3, :cond_e

    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getDisableStartingWindow()Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    if-nez v10, :cond_f

    invoke-virtual {v0, v15}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    :cond_f
    if-eqz v16, :cond_11

    iget-object v0, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    if-eqz p3, :cond_10

    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v2

    :goto_9
    move-object/from16 v5, v19

    goto :goto_a

    :cond_10
    move-object v2, v9

    goto :goto_9

    :goto_a
    invoke-virtual {v0, v5, v3, v2, v9}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_11
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :goto_b
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0
.end method

.method public final getBackgroundActivityLaunchController()Lcom/android/server/wm/BackgroundActivityStartController;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mBalController:Lcom/android/server/wm/BackgroundActivityStartController;

    return-object p0
.end method

.method public final getDeviceIdForDisplayId(I)I
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasCompanionDeviceSetupFeature:Z

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->getDeviceIdForDisplayId(I)I

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getNextTaskIdForUser(I)I
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const v1, 0x186a0

    mul-int v2, p1, v1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, p1, 0x1

    mul-int/2addr v3, v1

    const v1, -0x1869f

    if-ne v2, v3, :cond_0

    add-int v2, v0, v1

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v4, v4, Lcom/android/server/wm/RecentTasks;->mPersistedTaskIds:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseBooleanArray;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v2, v7, v5, v6}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_4

    :goto_1
    add-int/lit8 v4, v2, 0x1

    if-ne v4, v3, :cond_2

    add-int/2addr v2, v1

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    if-eq v2, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot get an available task id. Reached limit of 100000 running tasks per user."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return v2
.end method

.method public final getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final goingToSleepLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget v2, Lcom/android/server/wm/ActivityTaskSupervisor;->SLEEP_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->applySleepTokens(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkReadyForSleepLocked(Z)V

    return-void
.end method

.method public final handleForcedResizableTaskIfNeeded(ILcom/android/server/wm/Task;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p2, v0, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mNoDisplay:Z

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->canForceResizeNonResizable(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/android/server/wm/ExtraDisplayPolicy;->shouldNotHandleForcedResizableTaskIfNeeded(II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget p2, p2, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p3

    const/4 v2, 0x5

    if-ne p3, v2, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_b

    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v5

    iget-object v4, p1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v9, 0x0

    move-object v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    if-eq p1, p2, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Failed to put "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " on display "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const-string p3, "ActivityTaskManager"

    invoke-static {p0, p2, p3}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object p3, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    const/16 p4, 0x12

    invoke-virtual {p3, p4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p3, p4, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_4
    if-nez p4, :cond_b

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleForcedResizableTaskIfNeeded(ILcom/android/server/wm/Task;)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Task resolved to incompatible display"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    move-object v8, p1

    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindow()Z

    move-result p1

    if-nez p1, :cond_9

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v8, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p2, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0, v8}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_8
    const/4 p0, 0x0

    :goto_2
    iget-object p1, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget-object p2, p1, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    const/4 p3, 0x7

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p2, p3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    iget-object p2, p1, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedTask:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_9
    if-nez p4, :cond_b

    if-eqz p3, :cond_a

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleForcedResizableTaskIfNeeded(ILcom/android/server/wm/Task;)V

    return-void

    :cond_a
    invoke-virtual {p0, v0, v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleForcedResizableTaskIfNeeded(ILcom/android/server/wm/Task;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public final handleTopResumedStateReleased(Z)V
    .locals 4

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "(due to timeout)"

    goto :goto_0

    :cond_0
    const-string p1, "(transition complete)"

    :goto_0
    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x37786b7acafe381fL    # 1.7520377694429976E-41

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v2, v3, v1, p1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v0, 0xd9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez p1, :cond_2

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleTopResumedActivityStateIfNeeded()V

    return-void
.end method

.method public final isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_TASKS_enabled:[Z

    const/4 v8, 0x0

    aget-boolean v4, v7, v8

    if-eqz v4, :cond_0

    int-to-long v4, v3

    int-to-long v9, v1

    int-to-long v11, v2

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v4, v5, v9}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v9, -0x765e9c822239c1bfL

    const/16 v5, 0x15

    invoke-static {v6, v9, v10, v5, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v1, v9, :cond_1

    if-ne v2, v9, :cond_1

    aget-boolean v0, v7, v8

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, 0x7ef3e7a5f3e53e19L    # 3.4125193512928154E303

    invoke-static {v0, v1, v2, v8, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return v11

    :cond_1
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    const-string v13, "ActivityTaskManager"

    if-eqz v12, :cond_15

    iget-boolean v3, v12, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    if-eqz v3, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v3, v12, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->flags:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    move v14, v11

    goto :goto_0

    :cond_3
    move v14, v8

    :goto_0
    iget-object v3, v12, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_4

    const-string v0, "Launch on display check: activity launch is not allowed on rear display"

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_4
    sget-object v3, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    const-string/jumbo v3, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    move-result v3

    if-nez v3, :cond_5

    aget-boolean v0, v7, v8

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, 0x425a011a7ae73790L    # 4.4675064924486816E11

    invoke-static {v0, v1, v2, v8, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return v11

    :cond_5
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda54;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    iget-object v3, v12, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_6

    move v15, v11

    goto :goto_1

    :cond_6
    move v15, v8

    :goto_1
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    iget-object v1, v12, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->isTrusted()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v4, :cond_7

    if-eqz v14, :cond_7

    if-eqz v3, :cond_7

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->isSpeg(I)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    move-object/from16 v3, p4

    goto :goto_2

    :cond_8
    const-string/jumbo v3, "SPEG"

    const-string v4, "Ignore activity launch permission checking"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object v14, v1

    goto :goto_3

    :goto_2
    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-nez v3, :cond_a

    aget-boolean v0, v7, v8

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, 0x6ca41b1e6ab53a07L    # 2.165963557774033E215

    invoke-static {v0, v1, v2, v8, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return v8

    :cond_a
    const-string/jumbo v3, "android.permission.ACTIVITY_EMBEDDING"

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object v14, v1

    move/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    move-result v1

    if-ne v1, v9, :cond_c

    if-nez v15, :cond_c

    aget-boolean v0, v7, v8

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, -0x1ec061dd9080c832L    # -2.778229783558705E160

    invoke-static {v0, v1, v2, v8, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_b
    return v8

    :cond_c
    :goto_3
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v14}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-eqz v1, :cond_e

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerInternal;->isUserVisible(II)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_4

    :cond_d
    move v11, v8

    :cond_e
    :goto_4
    aget-boolean v0, v7, v8

    if-eqz v0, :cond_10

    if-eqz v11, :cond_f

    const-string/jumbo v0, "allow"

    goto :goto_5

    :cond_f
    const-string/jumbo v0, "disallow"

    :goto_5
    int-to-long v3, v1

    int-to-long v1, v2

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v3, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, 0xdb0fc2af2333033L

    const/16 v3, 0x14

    invoke-static {v5, v1, v2, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_10
    return v11

    :cond_11
    invoke-virtual {v14}, Landroid/view/Display;->getOwnerUid()I

    move-result v0

    if-ne v0, v2, :cond_12

    aget-boolean v0, v7, v8

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, -0x1e8d024db84eca11L    # -2.669964969213711E161

    invoke-static {v0, v1, v2, v8, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return v11

    :cond_12
    if-eqz v15, :cond_14

    aget-boolean v0, v7, v8

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, -0x3b187295d6d8c699L    # -8.897845576717156E23

    invoke-static {v0, v1, v2, v8, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_13
    return v11

    :cond_14
    const-string v0, "Launch on display check: denied"

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Launch on display that does not exist, d="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", isRemoved="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v12, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_15
    :goto_6
    const-string v0, "Launch on display check: display not found"

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method public final killTaskProcessesIfPossible(Lcom/android/server/wm/Task;)V
    .locals 12

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/Task;->mKillProcessesOnDestroyed:Z

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v0

    :goto_0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_b

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    move v6, v0

    :goto_1
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_a

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowProcessController;

    iget v8, v7, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iget v9, p1, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v8, v9, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v8, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v7, v8, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowProcessController;->containsPackage(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_6

    :cond_2
    move v8, v0

    :goto_2
    iget-object v9, v7, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    iget-object v9, v7, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v10, v9, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-nez v10, :cond_3

    goto :goto_3

    :cond_3
    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v10, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v11, v9, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v10, v11, :cond_5

    iget-boolean v9, v9, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v9, :cond_5

    :goto_3
    iget v8, p1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v9, -0x1

    if-ne v9, v8, :cond_4

    goto :goto_4

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    iget-boolean v8, v7, Lcom/android/server/wm/WindowProcessController;->mHasForegroundServices:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v9, v7, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v10, v7, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    invoke-virtual {v8, v9, v10}, Landroid/app/ActivityManagerInternal;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_7

    :cond_7
    iget-object v8, p1, Lcom/android/server/wm/Task;->mReason:Ljava/lang/String;

    if-eqz v8, :cond_8

    const-string/jumbo v9, "MultiTaskingAppCompat"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    iput-object v9, v7, Lcom/android/server/wm/WindowProcessController;->mReason:Ljava/lang/String;

    goto :goto_5

    :cond_8
    const-string/jumbo v8, "kill"

    iput-object v8, v7, Lcom/android/server/wm/WindowProcessController;->mReason:Ljava/lang/String;

    :goto_5
    if-nez v3, :cond_9

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_b
    if-nez v3, :cond_c

    :goto_7
    return-void

    :cond_c
    new-instance p1, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda5;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda5;-><init>(I)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {p1, v0, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public moveHomeRootTaskToFrontIfNeeded(ILcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    and-int/2addr p1, v1

    if-nez p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 p1, 0x6

    if-eq p0, p1, :cond_2

    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onProcessActivityStateChanged(Lcom/android/server/wm/WindowProcessController;Z)V
    .locals 0

    if-nez p2, :cond_1

    iget p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->computeProcessActivityState()V

    return-void

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final onUserUnlocked(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v0

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsPersister;->mLoadingTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Duplicated onUnlockUser "

    const-string v1, "LaunchParamsPersister"

    invoke-static {p1, v0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;

    invoke-direct {v1, v0, p1}, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;-><init>(Lcom/android/server/wm/LaunchParamsPersister;I)V

    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsPersister;->mLoadingTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p1, Ljava/lang/Thread;

    iget-object v0, v1, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->mFutureTask:Ljava/util/concurrent/FutureTask;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_1
    const-string/jumbo p1, "userUnlocked"

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v0, 0xd8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->inTransitionSelfOrParent()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED_NONE:Z

    if-eqz v6, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v7, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    if-ge v2, v6, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "processStoppingAndFinishingActivities: stop if possible in transition target="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ActivityTaskManager"

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    :cond_1
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v7, v6, v5

    if-eqz v7, :cond_2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, v3, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    iget-boolean v9, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    filled-new-array {v7, v8, v11, v9}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v8, 0x14c4c3c8730b3c8bL

    const/16 v11, 0x3c

    invoke-static {v10, v8, v9, v11, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/TaskFragment;->mForceHiddenFlags:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    :cond_3
    if-nez p2, :cond_4

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    sget v6, Lcom/android/server/wm/ActivityTaskSupervisor;->IDLE_TIMEOUT:I

    int-to-long v6, v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_4
    aget-boolean v4, v6, v5

    if-eqz v4, :cond_5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v7, 0x4ec93347c90239eaL    # 3.478523516253573E71

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7, v8, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_5
    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_7
    :goto_2
    add-int/2addr v2, v5

    goto/16 :goto_0

    :cond_8
    if-nez v0, :cond_9

    move p1, v1

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_3
    move p2, v1

    :goto_4
    if-ge p2, p1, :cond_c

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    if-eqz v3, :cond_b

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_a

    invoke-virtual {v2, p3}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    goto :goto_5

    :cond_a
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->stopIfPossible()V

    :cond_b
    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_c
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_d

    goto :goto_7

    :cond_d
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :goto_6
    if-ge v1, p1, :cond_f

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "finish-"

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_f
    :goto_7
    return-void
.end method

.method public final readyToResume()Z
    .locals 0

    iget p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    const-string v0, "2nd-crash"

    const-string/jumbo v7, "Second failure launching "

    const-string/jumbo v2, "User ID for activity changing for "

    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v5

    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v5, :cond_0

    aget-boolean v0, v8, v9

    if-eqz v0, :cond_7

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x38d3d6530fd93b5bL    # 5.96954171505427E-35

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v3, v10, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return v10

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowProcessController;->hasStartedActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_1
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    iput-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    :cond_3
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v5, :cond_5

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v6, :cond_4

    const-string/jumbo v5, "com.samsung.speg"

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    iget v6, v4, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyTaskBoost(I)V

    goto :goto_1

    :cond_4
    iget v6, v4, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyTaskBoost(I)V

    :cond_5
    :goto_1
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p3, :cond_8

    const-string/jumbo v6, "realStart"

    invoke-virtual {v5, v3, v6}, Lcom/android/server/wm/Task;->pauseActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v12

    if-eqz v12, :cond_8

    iget-object v13, v12, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v13, :cond_8

    iget-boolean v13, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {v12, v3, v6, v13, v10}, Lcom/android/server/wm/TaskFragment;->startPausing$1(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZZ)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_7
    :goto_2
    return v10

    :cond_8
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v12

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    iget v6, v4, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    add-int/2addr v6, v9

    iput v6, v4, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    iput-wide v13, v3, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/wm/ActivityRecord;->setProcess(Lcom/android/server/wm/WindowProcessController;)V

    if-eqz p3, :cond_9

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v6

    if-nez v6, :cond_9

    move v6, v10

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_12

    :cond_9
    move/from16 v6, p3

    :goto_3
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunchedForKeyguardTransition()V

    if-eqz p4, :cond_a

    iget-object v13, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v14, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v13, v3, v14, v9}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Z)V

    :cond_a
    iget-object v13, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v13, v3}, Lcom/android/server/wm/KeyguardController;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v13

    if-eqz v13, :cond_c

    iget-object v13, v3, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    if-eqz v13, :cond_b

    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v13

    if-nez v13, :cond_c

    :cond_b
    invoke-virtual {v3, v9}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    :cond_c
    iget-object v13, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v13, :cond_d

    iget v14, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_4

    :cond_d
    const/4 v14, -0x1

    :goto_4
    iget v15, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v11, v4, Lcom/android/server/wm/WindowProcessController;->mUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, "ActivityTaskManager"

    if-ne v15, v11, :cond_e

    :try_start_1
    iget v11, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v11, v14, :cond_f

    :cond_e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " appInfo.uid="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " info.ai.uid="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " old="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " new="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-wide v13, v4, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    const-wide/16 v16, 0x0

    cmp-long v2, v13, v16

    if-lez v2, :cond_10

    move v2, v9

    goto :goto_5

    :cond_10
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_11

    const/4 v2, 0x0

    goto :goto_6

    :cond_11
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    :goto_6
    iget v11, v3, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    add-int/2addr v11, v9

    iput v11, v3, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    iget-object v11, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    iget v13, v5, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_12

    const/4 v15, 0x4

    if-eq v13, v15, :cond_12

    const/4 v15, 0x3

    if-ne v13, v15, :cond_13

    iget v13, v11, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    if-ne v13, v9, :cond_13

    :cond_12
    const/4 v13, 0x0

    goto :goto_8

    :cond_13
    :goto_7
    move-object/from16 v23, v5

    move-object v5, v2

    move-object/from16 v2, v23

    goto :goto_9

    :goto_8
    invoke-virtual {v11, v13, v5, v13}, Lcom/android/server/wm/LockTaskController;->startLockTaskMode(ILcom/android/server/wm/Task;Z)V

    goto :goto_7

    :goto_9
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->tryRealStartActivityInner(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityClientController;Z)Landroid/os/RemoteException;

    move-result-object v2

    if-eqz v2, :cond_15

    iget-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    if-eqz v5, :cond_14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", giving up"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda7;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda7;-><init>(I)V

    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    invoke-static {v2, v5, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v13, 0x0

    invoke-virtual {v3, v0, v13}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    return v13

    :cond_14
    :try_start_2
    iput-boolean v9, v3, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_15
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    const/4 v13, 0x0

    iput-boolean v13, v3, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    invoke-static {v3}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyCurTopAct(Lcom/android/server/wm/ActivityRecord;)V

    const-string/jumbo v0, "realStartActivityLocked"

    if-eqz v6, :cond_16

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->readyToResume()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getPackageList()Ljava/util/List;

    move-result-object v17

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v20

    iget-object v7, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v8, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    move-object/from16 v16, v2

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    invoke-virtual/range {v16 .. v22}, Landroid/app/ActivityManagerInternal;->onPackageResumedFG(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;I)V

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    goto :goto_b

    :cond_16
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_18

    aget-boolean v2, v8, v9

    if-eqz v2, :cond_17

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, 0xe834a71c5e731d2L    # 9.257711714113014E-239

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v13, 0x0

    invoke-static {v5, v6, v7, v13, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_17
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v9

    :goto_a
    if-ltz v2, :cond_19

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_18
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    :cond_19
    :goto_b
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/2addr v5, v9

    if-eqz v5, :cond_1b

    const-string/jumbo v5, "android"

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    goto :goto_c

    :cond_1a
    const/16 v20, 0x0

    goto :goto_d

    :cond_1b
    :goto_c
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v5

    :goto_d
    if-ne v0, v14, :cond_1c

    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v6, v4, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v7, v4, Lcom/android/server/wm/WindowProcessController;->mPid:I

    iget-object v8, v4, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/ActivityManagerInternal;->addPendingTopUid(IILandroid/app/IApplicationThread;)V

    :cond_1c
    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    iput-boolean v9, v5, Lcom/android/server/am/ProcessRecord;->mClearedWaitingToKill:Z

    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->rankTaskLayers()V

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->computeProcessActivityStateBatch()Z

    new-instance v16, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda10;

    invoke-direct/range {v16 .. v16}, Ljava/lang/Object;-><init>()V

    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget-object v0, v4, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v6, :cond_1e

    iget-object v7, v4, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_1d

    if-ne v0, v4, :cond_1e

    :cond_1d
    move v0, v9

    goto :goto_e

    :cond_1e
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v6, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v17, v5

    invoke-static/range {v16 .. v21}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, v4, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v0, :cond_20

    if-nez v0, :cond_1f

    goto :goto_f

    :cond_1f
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v2, v4, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda5;-><init>(I)V

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v4, v4, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_20
    :goto_f
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-eqz v12, :cond_24

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v12, v0, :cond_25

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    if-eqz v1, :cond_21

    goto/16 :goto_11

    :cond_21
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    if-eq v4, v9, :cond_25

    const-string/jumbo v4, "device_provisioned"

    const/4 v13, 0x0

    invoke-static {v2, v4, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_25

    iput-boolean v9, v0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.UPGRADE_SETUP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v5, 0x100480

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_25

    const/4 v13, 0x0

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "android.SETUP_VERSION"

    if-eqz v5, :cond_22

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_10

    :cond_22
    const/4 v11, 0x0

    :goto_10
    if-nez v11, :cond_23

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_23

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_23
    invoke-virtual {v2}, Landroid/content/ContentResolver;->getUserId()I

    move-result v5

    const-string/jumbo v6, "last_setup_shown"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v11, :cond_25

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const/high16 v2, 0x10000000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "startSetupActivity"

    invoke-virtual {v0, v4, v2}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    const/4 v13, 0x0

    iput v13, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v1, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    goto :goto_11

    :cond_24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_25
    :goto_11
    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_26

    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v2, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda5;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda5;-><init>(I)V

    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/am/ProcessRecord;

    invoke-static {v2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_26
    return v9

    :goto_12
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    throw v0
.end method

.method public final removeRootTask(Lcom/android/server/wm/Task;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, p1, v1}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/Task;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, v4}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    invoke-virtual {p1, v2, v2}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-virtual {p0, v1, v4, v2, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    invoke-virtual {p1, v4}, Lcom/android/server/wm/Task;->setRootTaskWindowingMode(I)V

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_3

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionTaskBehindHome(Lcom/android/server/wm/Task;)V

    iput-boolean v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    invoke-virtual {p1, v2, v4}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible$1()V

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :goto_2
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw p0

    :cond_4
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda2;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;I)V

    invoke-virtual {p1, v0, v2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public final removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V
    .locals 9

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZIILjava/lang/String;)V

    return-void
.end method

.method public final removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZIILjava/lang/String;)V
    .locals 11

    iget-boolean v1, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TransitionController;->requestCloseTransitionIfNeeded(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/Transition;->collectClose(Lcom/android/server/wm/WindowContainer;)V

    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/android/server/wm/Transition;->collectClose(Lcom/android/server/wm/WindowContainer;)V

    :cond_2
    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    move-object v4, v1

    :goto_1
    if-ltz v3, :cond_5

    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v6, :cond_4

    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-ne v6, p1, :cond_4

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_2
    if-ltz v3, :cond_6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->stopIfPossible()V

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_6
    iput-boolean v2, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_DND_FREEFORM_DISMISS_VIEW:Z

    if-eqz v3, :cond_7

    move/from16 v3, p5

    iput-boolean v3, p1, Lcom/android/server/wm/Task;->mRemoveByDrag:Z

    :cond_7
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, p4, v3}, Lcom/android/server/wm/Task;->removeActivities(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz p2, :cond_b

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v5, :cond_8

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_3

    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_9
    move-object v5, v1

    :goto_3
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    iget v6, p1, Lcom/android/server/wm/Task;->mUserId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static/range {v5 .. v10}, Lcom/android/server/wm/ActivityTaskManagerService;->isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_a
    move v5, v3

    :goto_4
    if-eqz v5, :cond_f

    iput-boolean v3, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    return-void

    :cond_b
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v5, :cond_c

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_5

    :cond_c
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_d
    move-object v5, v1

    :goto_5
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    iget v6, p1, Lcom/android/server/wm/Task;->mUserId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/server/wm/ActivityTaskManagerService;->isForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :cond_e
    move v5, v3

    :goto_6
    if-eqz v5, :cond_f

    iput-boolean v3, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    return-void

    :cond_f
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {p1, v2, v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_10

    iget v6, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v7, p1, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v6, v7, :cond_10

    if-nez p3, :cond_10

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v6

    if-nez v6, :cond_10

    const-string/jumbo v6, "com.android.systemui.keyguard.WorkLockActivity"

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v5, v3}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    invoke-virtual {p1, p1, v1}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-boolean v3, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :cond_10
    :try_start_4
    iput-object p4, p1, Lcom/android/server/wm/Task;->mReason:Ljava/lang/String;

    invoke-virtual/range {p0 .. p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->cleanUpRemovedTask(Lcom/android/server/wm/Task;ZZ)V

    iget-object p2, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    iget-object p2, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {p2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    iget-boolean p2, p1, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz p2, :cond_11

    invoke-virtual {v4, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mBalController:Lcom/android/server/wm/BackgroundActivityStartController;

    move/from16 p2, p6

    move/from16 p3, p7

    move-object/from16 v0, p8

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->checkActivityAllowedToClearTask(Lcom/android/server/wm/Task;IILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iput-boolean v3, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    return-void

    :goto_7
    iput-boolean v3, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    throw p0
.end method

.method public final removeTaskById(IIILjava/lang/String;ZZZ)Z
    .locals 10

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v9, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v8, 0x0

    move-object v0, p0

    move v6, p2

    move v7, p3

    move-object v4, p4

    move/from16 v3, p6

    move/from16 v5, p7

    move-object v1, v2

    move v2, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZIILjava/lang/String;)V

    return v9

    :cond_0
    const-string/jumbo v1, "Request to remove task ignored for non-existent task "

    const-string v2, "ActivityTaskManager"

    invoke-static {p1, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public final reportActivityLaunched(ZLcom/android/server/wm/ActivityRecord;JI)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;

    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    iget-object v5, v5, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    if-eqz v5, :cond_1

    iget-object v5, v5, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne p2, v5, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    move v5, v2

    goto :goto_1

    :cond_1
    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mTargetComponent:Landroid/content/ComponentName;

    iget-object v6, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_1
    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, v4, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mResult:Landroid/app/WaitResult;

    iput-boolean p1, v3, Landroid/app/WaitResult;->timeout:Z

    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    iput-wide p3, v3, Landroid/app/WaitResult;->totalTime:J

    iput p5, v3, Landroid/app/WaitResult;->launchState:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v3, v1

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_4
    return-void
.end method

.method public final resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;
    .locals 6

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_a

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    and-int/lit8 v0, p3, 0xe

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz p4, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    if-nez v0, :cond_3

    if-eqz v3, :cond_9

    :cond_3
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v4, :cond_4

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v5, "system"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    move v1, v2

    :cond_5
    if-eqz v0, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    if-eqz v3, :cond_8

    if-nez v1, :cond_8

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isProfileableByShell()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const-string p0, "ActivityTaskManager"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Ignore debugging for non-debuggable app: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p3, p4, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v2, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :cond_9
    :goto_4
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchToken()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    if-nez p1, :cond_a

    if-eqz p0, :cond_a

    iput-object p0, p2, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    goto :goto_6

    :goto_5
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_a
    :goto_6
    return-object p2
.end method

.method public final resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;
    .locals 19

    const-wide/16 v1, 0x20

    :try_start_0
    const-string/jumbo v0, "resolveIntent"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const v0, 0x10400

    or-int v0, p4, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    const v0, 0x810400

    or-int v0, p4, v0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x2

    :cond_3
    or-int/lit16 v0, v0, 0x80

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v6, p0

    :try_start_1
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    int-to-long v11, v0

    int-to-long v13, v3

    check-cast v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    iget-object v0, v6, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v8

    const/16 v16, 0x1

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v15, p3

    move/from16 v17, p5

    move/from16 v18, p6

    invoke-virtual/range {v7 .. v18}, Lcom/android/server/pm/ResolveIntentHelper;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZII)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public final restoreRecentTaskLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;I)Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-eq p1, p0, :cond_2

    if-ne v3, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-eqz p1, :cond_1

    const p1, 0x7fffffff

    const-string/jumbo p3, "restoreRecentTaskLocked"

    invoke-virtual {v3, p1, p0, p3, p2}, Lcom/android/server/wm/Task;->reparent(ILcom/android/server/wm/Task;Ljava/lang/String;Z)V

    return-void

    :cond_1
    invoke-virtual {p0, v3, v5, p2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/Task;ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final scheduleIdle()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerModeReasons:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x64

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public final scheduleProcessStoppingAndFinishingActivitiesIfNeeded()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesIdle()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v3, 0xcd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v4, v0, [Z

    aput-boolean v1, v4, v1

    new-instance v5, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda14;

    invoke-direct {v5, v0, v4}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda14;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    aget-boolean v1, v4, v1

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final scheduleTopResumedActivityStateIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->readyToResume()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLastReportedTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_0
    return-void
.end method

.method public final scheduleTopResumedActivityStateLossIfNeeded()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLastReportedTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->readyToResume()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLastReportedTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLastReportedTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/16 v2, 0xd9

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/wm/ActivityRecord;->topResumedStateLossTime:J

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v4, 0x32063a9f78c73718L    # 1.0306491014634798E-67

    invoke-static {v2, v4, v5, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLastReportedTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_2
    :goto_0
    return-void
.end method

.method public final sendMultiWindowSALogging(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget p0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-static {p4, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "From recent_option"

    const/4 p4, 0x1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v1

    if-ne v1, p4, :cond_1

    const-string p1, "2090"

    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    if-eqz p4, :cond_6

    :cond_4
    const-string p1, "2004"

    if-ne p2, v0, :cond_5

    const-string p0, "From recent_task"

    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setRunningTasks(Lcom/android/server/wm/RunningTasks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRunningTasks:Lcom/android/server/wm/RunningTasks;

    return-void
.end method

.method public final shutdownLocked(I)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->goingToSleepLocked()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v4, v1, [Z

    aput-boolean v1, v4, v0

    new-instance v5, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;

    invoke-direct {v5, v1, v4, v1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda52;-><init>(Z[ZZ)V

    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    aget-boolean p1, v4, v0

    const-wide/16 v4, 0x0

    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v2, v6

    cmp-long p1, v6, v4

    if-lez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p1, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string p1, "ActivityTaskManager"

    const-string v6, "Activity manager shutdown timed out"

    invoke-static {p1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v2, v6

    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object v6, v6, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v6, v6, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget-object v6, v6, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    cmp-long v7, v2, v4

    if-gtz v7, :cond_2

    goto :goto_7

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v2

    :goto_2
    iget-object v2, v6, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, v6, Lcom/android/server/wm/SnapshotPersistQueue;->mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, v6, Lcom/android/server/wm/SnapshotPersistQueue;->mQueueIdling:Z

    if-nez v3, :cond_4

    iget-boolean v3, v6, Lcom/android/server/wm/SnapshotPersistQueue;->mPaused:Z

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v3, v0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_8

    :cond_4
    :goto_3
    move v3, v1

    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v7, v2

    cmp-long v9, v2, v4

    if-lez v9, :cond_5

    iget-object v9, v6, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_2
    iget-object v10, v6, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    invoke-virtual {v10, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_1
    :goto_5
    :try_start_3
    monitor-exit v9

    goto :goto_2

    :goto_6
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_5
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Snapshot Persist Queue flush timed out"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkReadyForSleepLocked(Z)V

    return p1

    :goto_8
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;Z)I
    .locals 26

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v0, p3

    move-object/from16 v13, p4

    const-string/jumbo v8, "startActivityFromRecents: Task "

    const-string/jumbo v9, "startActivityFromRecents: Task "

    const/4 v10, 0x0

    if-eqz v13, :cond_0

    invoke-virtual {v13, v10, v10, v10, v1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v2

    :goto_0
    move-object v11, v2

    goto :goto_1

    :cond_0
    if-eqz p5, :cond_1

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v11, v10

    :goto_1
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v12

    :try_start_0
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v2, v2, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v14

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v16

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v12

    goto/16 :goto_29

    :cond_2
    move-object/from16 v17, v10

    :goto_2
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x5

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v18

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v14, :cond_3

    move v6, v4

    const-string/jumbo v4, "android.permission.MANAGE_ACTIVITY_TASKS"

    const/4 v7, 0x1

    move/from16 v19, v5

    const/4 v5, 0x0

    move/from16 v20, v6

    const/4 v6, -0x1

    move v13, v2

    move/from16 v10, v19

    move/from16 v2, p1

    move/from16 v19, v14

    move/from16 v14, v20

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_3
    move v13, v2

    move v10, v5

    move/from16 v19, v14

    move v14, v4

    :goto_3
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    if-eqz v19, :cond_5

    move v2, v14

    goto :goto_4

    :cond_4
    move v13, v2

    move v10, v5

    move/from16 v19, v14

    move v14, v4

    :cond_5
    move v2, v13

    :goto_4
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v3

    if-ne v3, v10, :cond_6

    invoke-virtual {v11, v3}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    :cond_6
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->setDisableSplashScreen()V

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v4

    if-eqz v4, :cond_7

    move v4, v3

    move v5, v13

    :goto_5
    move v3, v2

    move/from16 v2, v18

    goto :goto_6

    :cond_7
    move v4, v3

    move/from16 v5, v19

    goto :goto_5

    :cond_8
    move v13, v2

    move v10, v5

    move/from16 v19, v14

    move v14, v4

    move v3, v2

    move v4, v3

    move/from16 v5, v19

    :goto_6
    const/4 v6, 0x2

    if-eq v2, v6, :cond_33

    const/4 v7, 0x3

    if-eq v2, v7, :cond_33

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v7, 0x0

    invoke-virtual {v2, v0, v14, v7, v13}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v7, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda1;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v2}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-static {v7}, Lcom/android/server/wm/PackagesChange;->forAllTaskChangeCallbacks(Ljava/util/function/Consumer;)V

    :cond_9
    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_a

    move v5, v13

    :cond_a
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchedFromDnD()Z

    move-result v3

    if-eqz v3, :cond_b

    move v5, v13

    :cond_b
    if-eqz v2, :cond_c

    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v3, v2, v11}, Lcom/android/server/wm/MultiTaskingController;->interceptStartActivityFromRecentsLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v11}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/16 v0, 0xa

    return v0

    :cond_c
    if-eqz v11, :cond_d

    :try_start_1
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchInFocusedStageRoot()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v15}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v15}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootStageTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v11, v3}, Landroid/app/ActivityOptions;->setLaunchRootTask(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;

    move v5, v13

    :cond_d
    const/4 v3, -0x1

    if-eqz v2, :cond_11

    if-eqz v11, :cond_11

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v7

    if-eq v7, v3, :cond_f

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v8

    if-ne v8, v7, :cond_e

    goto :goto_7

    :cond_e
    move v7, v13

    goto :goto_8

    :cond_f
    :goto_7
    move v7, v14

    :goto_8
    if-nez v4, :cond_11

    if-eqz v7, :cond_11

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    invoke-virtual {v11, v4}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    goto :goto_9

    :cond_10
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    if-ne v4, v10, :cond_11

    invoke-virtual {v2, v13}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    invoke-virtual {v11, v4}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    :cond_11
    :goto_9
    sget-boolean v21, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v21, :cond_13

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v2, v14, v13}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_13

    :cond_12
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    move v8, v4

    goto :goto_a

    :cond_13
    move v8, v13

    :goto_a
    if-eqz p5, :cond_14

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v11, v14}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v4

    invoke-virtual {v11, v4}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    :cond_14
    if-eqz v2, :cond_17

    if-eqz v11, :cond_17

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->allowEnterPipWhileLaunching()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v4

    if-gtz v4, :cond_17

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v4

    if-nez v4, :cond_17

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v4

    if-ne v4, v14, :cond_17

    :cond_15
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_16

    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eq v5, v2, :cond_16

    const/4 v7, 0x0

    invoke-static {v4, v2, v7, v11}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    iget-object v2, v2, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/high16 v4, 0x40000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->removeFlags(I)V

    :cond_16
    move v2, v13

    goto :goto_b

    :cond_17
    move v2, v5

    :goto_b
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v0, v6, v11, v14}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v10

    if-eqz v10, :cond_31

    invoke-virtual {v10}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v10}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_18

    move v2, v13

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v2, v12

    :goto_c
    move/from16 v22, v13

    goto/16 :goto_25

    :catch_0
    move-exception v0

    move-object v2, v12

    :goto_d
    move/from16 v22, v13

    goto/16 :goto_26

    :cond_18
    :goto_e
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v10}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    if-nez v16, :cond_19

    if-eqz v17, :cond_19

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    const-string/jumbo v4, "recents"

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v22, v14

    goto :goto_f

    :cond_19
    move/from16 v22, v13

    :goto_f
    if-eqz p5, :cond_1a

    :try_start_3
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1a

    move/from16 v23, v13

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object v2, v12

    goto/16 :goto_25

    :catch_1
    move-exception v0

    move-object v2, v12

    goto/16 :goto_26

    :cond_1a
    move/from16 v23, v2

    :goto_10
    if-eqz v23, :cond_1b

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const-string/jumbo v2, "startActivityFromRecents"

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v15, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V

    :cond_1b
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v2, v10, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/app/ActivityManagerInternal;->shouldConfirmCredentials(I)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {v10, v14, v13}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v10, v14, v14}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v15, v14}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v2, v10, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v19, :cond_1c

    move v4, v3

    :goto_11
    const/4 v7, 0x0

    goto :goto_12

    :cond_1c
    move/from16 v4, p2

    goto :goto_11

    :goto_12
    invoke-virtual {v0, v2, v7, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FREEFORM_STASH:Z

    if-eqz v0, :cond_1e

    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v10}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v10}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    move-result v0

    if-nez v0, :cond_1d

    move v2, v14

    goto :goto_13

    :catchall_3
    move-exception v0

    move-object v5, v11

    move-object v2, v12

    move-object v12, v9

    goto/16 :goto_19

    :cond_1d
    move v2, v13

    :goto_13
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v2}, Lcom/android/server/wm/TaskOrganizerController;->resetStashedFreeform(Lcom/android/server/wm/Task;Z)V

    :cond_1e
    iget v5, v10, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v3, v5, :cond_1f

    move v2, v14

    goto :goto_14

    :cond_1f
    move v2, v13

    :goto_14
    if-nez v2, :cond_20

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, v6

    const/4 v6, 0x0

    move-object/from16 v7, p4

    move v13, v0

    move/from16 v0, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;)V

    goto :goto_15

    :cond_20
    move/from16 v0, p1

    move v13, v6

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;)V

    :goto_15
    if-eqz v11, :cond_21

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_21

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v2

    iput-object v2, v15, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    :cond_21
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->applyOptionsAnimation()V

    if-eqz v11, :cond_22

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchCookie()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getLaunchCookie()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v15, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v3, v3, v14

    if-eqz v3, :cond_22

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v15, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, 0x14967fb82bc53073L

    const/16 v5, 0x10

    invoke-static {v6, v3, v4, v5, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_22
    move-object/from16 v16, v11

    :try_start_5
    iget-object v11, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move v2, v13

    const/4 v13, 0x2

    move/from16 v20, v14

    const/4 v14, 0x0

    move/from16 v3, p2

    move v4, v2

    move-object v2, v12

    move/from16 v6, v20

    move-object v12, v9

    :try_start_6
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    move-object/from16 v5, v16

    if-lez v0, :cond_23

    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v7, v0}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v15, v3, v0}, Lcom/android/server/wm/ActivityRecord;->determineLaunchSourceType(ILcom/android/server/wm/WindowProcessController;)I

    move-result v0

    iput v0, v15, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    goto :goto_16

    :catchall_4
    move-exception v0

    goto/16 :goto_25

    :catch_2
    move-exception v0

    goto/16 :goto_26

    :cond_23
    :goto_16
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    invoke-virtual {v10, v6, v6}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    invoke-virtual {v10}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v7

    iget-object v0, v0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-nez v0, :cond_24

    goto :goto_17

    :cond_24
    invoke-virtual {v0, v4, v6, v7}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    :goto_17
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeAppSwitches()V

    if-eqz v21, :cond_25

    invoke-virtual {v1, v10, v8, v5, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->sendMultiWindowSALogging(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;I)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_25
    if-eqz v22, :cond_26

    :try_start_7
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    const-string/jumbo v3, "recents"

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_18

    :catchall_5
    move-exception v0

    :try_start_8
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0

    :catchall_6
    move-exception v0

    goto/16 :goto_29

    :cond_26
    :goto_18
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    :goto_19
    :try_start_9
    iget-object v11, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object/from16 v16, v5

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_27
    move/from16 v0, p1

    move/from16 v3, p2

    move-object/from16 v16, v11

    move-object v2, v12

    const/4 v7, 0x0

    :try_start_a
    iget v3, v10, Lcom/android/server/wm/Task;->mCallingUid:I

    iget-object v6, v10, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    move-object/from16 v20, v7

    iget-object v7, v10, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    move v13, v8

    iget-object v8, v10, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/high16 v4, 0x100000

    invoke-virtual {v8, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget v14, v10, Lcom/android/server/wm/Task;->mUserId:I

    const/16 v4, 0x1000

    invoke-virtual {v8, v4}, Landroid/content/Intent;->removeFlags(I)V

    iget-object v4, v10, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_28

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    goto :goto_1a

    :cond_28
    move-object/from16 v9, v20

    :goto_1a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :try_start_b
    sget-object v2, Lcom/android/server/pm/SaferIntentUtils;->DISABLE_ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:Ljava/lang/ThreadLocal;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    move-object/from16 v5, v16

    :try_start_c
    const-string/jumbo v16, "startActivityFromRecents"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v15, v10

    const/4 v10, 0x0

    move-object/from16 v24, v4

    move v4, v0

    move-object v0, v2

    move-object/from16 v2, v24

    move-object/from16 v24, v5

    move/from16 v25, v13

    move/from16 v5, p2

    move-object/from16 v13, p4

    :try_start_d
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/wm/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;ILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    move v3, v5

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4

    :try_start_e
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->shouldRemoveSelfOnLastChildRemoval()Z

    move-result v0

    if-eqz v0, :cond_29

    const-string/jumbo v0, "start-from-recents"

    invoke-virtual {v15, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    if-eqz v23, :cond_29

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v5

    if-eqz v5, :cond_29

    const-string/jumbo v5, "start-from-recents"

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_1b

    :catchall_7
    move-exception v0

    goto :goto_1d

    :cond_29
    :goto_1b
    :try_start_f
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-boolean v0, v15, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v0, :cond_2a

    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "handleStartActivityFromRecents"

    invoke-virtual {v15, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    goto :goto_1c

    :catchall_8
    move-exception v0

    goto :goto_1e

    :cond_2a
    :goto_1c
    if-eqz v22, :cond_2b

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    const-string/jumbo v5, "recents"

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V

    :cond_2b
    if-eqz v21, :cond_2c

    move-object/from16 v5, v24

    move/from16 v13, v25

    invoke-virtual {v1, v15, v13, v5, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->sendMultiWindowSALogging(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;I)V

    :cond_2c
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :goto_1d
    :try_start_10
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0

    :goto_1e
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_9
    move-exception v0

    move v3, v5

    move-object/from16 v5, v24

    move/from16 v13, v25

    const/4 v7, 0x0

    goto :goto_20

    :catchall_a
    move-exception v0

    move/from16 v3, p2

    move-object v15, v10

    :goto_1f
    move-object/from16 v7, v20

    goto :goto_20

    :catchall_b
    move-exception v0

    move/from16 v3, p2

    move-object v15, v10

    move-object/from16 v5, v16

    goto :goto_1f

    :goto_20
    sget-object v2, Lcom/android/server/pm/SaferIntentUtils;->DISABLE_ENFORCE_INTENTS_TO_MATCH_INTENT_FILTERS:Ljava/lang/ThreadLocal;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4

    :try_start_11
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->shouldRemoveSelfOnLastChildRemoval()Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string/jumbo v2, "start-from-recents"

    invoke-virtual {v15, v2}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    if-eqz v23, :cond_2d

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_2d

    const-string/jumbo v6, "start-from-recents"

    invoke-virtual {v2, v6, v7}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    goto :goto_21

    :catchall_c
    move-exception v0

    goto :goto_23

    :cond_2d
    :goto_21
    :try_start_12
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    move-result v2

    if-nez v2, :cond_2e

    iget-boolean v2, v15, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v2, :cond_2e

    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string/jumbo v2, "handleStartActivityFromRecents"

    invoke-virtual {v15, v2}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    goto :goto_22

    :catchall_d
    move-exception v0

    goto :goto_24

    :cond_2e
    :goto_22
    if-eqz v22, :cond_2f

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    const-string/jumbo v6, "recents"

    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V

    :cond_2f
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v2, :cond_30

    invoke-virtual {v1, v15, v13, v5, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->sendMultiWindowSALogging(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;I)V

    :cond_30
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :goto_23
    :try_start_13
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0

    :goto_24
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_31
    move-object v2, v12

    :try_start_14
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    :catchall_e
    move-exception v0

    goto/16 :goto_c

    :catch_3
    move-exception v0

    goto/16 :goto_d

    :goto_25
    :try_start_15
    const-string v3, "ActivityTaskManager"

    const-string/jumbo v4, "startActivity: reason=startActivityFromRecents"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0

    :catchall_f
    move-exception v0

    goto :goto_27

    :goto_26
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_f

    :goto_27
    if-eqz v22, :cond_32

    :try_start_16
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    const-string/jumbo v4, "recents"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_10

    goto :goto_28

    :catchall_10
    move-exception v0

    :try_start_17
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0

    :cond_32
    :goto_28
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0

    :cond_33
    move-object v2, v12

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " can\'t be launch in the home/recents root task."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_29
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(ILjava/lang/String;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception when starting activity "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {p3, v1, v4}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget v1, v0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    iget-object v4, p3, Lcom/android/server/wm/WindowProcessControllerMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowProcessController;

    if-eqz v4, :cond_0

    iget-object v5, p3, Lcom/android/server/wm/WindowProcessControllerMap;->mPidMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p3, v4}, Lcom/android/server/wm/WindowProcessControllerMap;->removeProcessFromUidMap(Lcom/android/server/wm/WindowProcessController;)V

    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->unregisterActivityConfigurationListener()V

    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->unregisterDisplayAreaConfigurationListener()V

    :cond_0
    move p3, v2

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {p3, v4}, Landroid/app/sdksandbox/sandboxactivity/SdkSandboxActivityAuthority;->isSdkSandboxActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p0, "Abort sandbox activity launching as no sandbox process to host it."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "No sandbox process for the activity"

    invoke-virtual {p1, p0, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    iput-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    return-void

    :cond_2
    move p3, v3

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunchedForKeyguardTransition()V

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v2, :cond_4

    const-string/jumbo p2, "top-activity"

    goto :goto_2

    :cond_4
    const-string/jumbo p2, "activity"

    :goto_2
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsync(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZZ)V

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/android/server/am/AppStateBroadcaster;->mObjHandler:Landroid/os/Handler;

    if-eqz p0, :cond_5

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    new-instance p2, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1, v0}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method public final tryRealStartActivityInner(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityClientController;Z)Landroid/os/RemoteException;
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    return-object v0

    :cond_0
    if-eqz p5, :cond_1

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    goto :goto_0

    :cond_1
    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_0
    iget v5, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    iget v7, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x7536

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateHomeProcessIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    check-cast v5, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mnotifyPackageUseInternal(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V

    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v6, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    iget-object v9, v5, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    const/4 v10, 0x3

    if-eqz v8, :cond_7

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    iget-object v6, v5, Lcom/android/server/wm/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Landroid/util/ArraySet;

    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v6, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    const-string/jumbo v11, "REL"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sget-object v12, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/16 v13, 0x24

    if-nez v6, :cond_4

    if-lt v8, v13, :cond_6

    :cond_4
    if-nez v11, :cond_5

    if-lt v13, v8, :cond_6

    :cond_5
    if-nez v6, :cond_7

    if-nez v11, :cond_7

    if-ne v13, v8, :cond_7

    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v9, v10, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    :cond_7
    :goto_1
    invoke-virtual {v5, v2}, Lcom/android/server/wm/AppWarnings;->showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    const-string/jumbo v5, "debug.wm.disable_deprecated_target_sdk_dialog"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget v8, Landroid/os/Build$VERSION;->MIN_SUPPORTED_TARGET_SDK_INT:I

    if-ge v6, v8, :cond_8

    if-nez v5, :cond_8

    const/4 v5, 0x5

    invoke-virtual {v9, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v9, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_8
    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->privateFlagsExt:I

    and-int/lit8 v5, v5, 0x20

    const/4 v6, 0x1

    if-eqz v5, :cond_9

    goto :goto_3

    :cond_9
    const-string/jumbo v5, "debug.wm.disable_deprecated_abi_dialog"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_3

    :cond_a
    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v5, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v8, :cond_b

    if-nez v5, :cond_b

    const-string v5, "64"

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    move v5, v6

    goto :goto_2

    :cond_b
    move v5, v7

    :goto_2
    sget-object v8, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    new-instance v11, Lcom/android/server/wm/AppWarnings$$ExternalSyntheticLambda0;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-static {v8, v11}, Lcom/android/internal/util/ArrayUtils;->find([Ljava/lang/Object;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c

    if-eqz v5, :cond_c

    const/4 v5, 0x6

    invoke-virtual {v9, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v9, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_c
    :goto_3
    const-string/jumbo v5, "bionic.linker.16kb.app_compat.enabled"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_4

    :cond_d
    sget v5, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v5}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v11

    const-wide/16 v13, 0x4000

    cmp-long v5, v11, v13

    if-nez v5, :cond_e

    const/4 v5, 0x7

    invoke-virtual {v9, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v9, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_e
    :goto_4
    iget-boolean v5, v2, Lcom/android/server/wm/ActivityRecord;->mShouldShowPackageNightModeDialog:Z

    if-eqz v5, :cond_f

    const/16 v5, 0x8

    invoke-virtual {v9, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v9, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_f
    :try_start_0
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->getGMSBinder()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-static {v5}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v5

    if-eqz v5, :cond_10

    iget-object v8, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v3, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    invoke-interface {v5, v8, v9}, Lcom/samsung/android/game/IGameManagerService;->notifyAppCreated(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_10
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget-boolean v5, v3, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    if-eqz v5, :cond_11

    iput-boolean v7, v3, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    iget-object v5, v3, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v8, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    add-int/2addr v8, v6

    iput v8, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    iput v8, v12, Landroid/content/res/Configuration;->seq:I

    :cond_11
    iput-boolean v7, v3, Lcom/android/server/wm/WindowProcessController;->mHasCachedConfiguration:Z

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v5, v12, v13}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityWindowInfo()Landroid/window/ActivityWindowInfo;

    move-result-object v5

    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {v8, v5}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->mIcicle:Landroid/os/Bundle;

    if-eqz v8, :cond_12

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_12

    invoke-virtual {v11}, Landroid/os/Bundle;->getSize()I

    move-result v11

    goto :goto_5

    :cond_12
    move v11, v7

    :goto_5
    if-nez v9, :cond_13

    move v9, v7

    goto :goto_6

    :cond_13
    invoke-virtual {v9}, Landroid/os/Bundle;->getSize()I

    move-result v9

    :goto_6
    add-int v14, v11, v9

    const v15, 0x30d40

    const-string v4, "ActivityTaskManager"

    if-le v14, v15, :cond_14

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "Transaction too large, intent: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", extras size: "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", icicle size: "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v9, v4}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_14
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v8

    if-eqz v8, :cond_15

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v9, v8}, Lcom/android/server/wm/TaskFragmentOrganizerController;->dispatchPendingInfoChangedEvent(Lcom/android/server/wm/TaskFragment;)V

    :cond_15
    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v8, :cond_16

    iget-boolean v8, v8, Lcom/android/server/wm/StartingData;->mIsTransitionForward:Z

    if-nez v8, :cond_18

    :cond_16
    iget-object v8, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionType()I

    move-result v8

    if-eq v8, v6, :cond_18

    if-ne v8, v10, :cond_17

    goto :goto_7

    :cond_17
    move/from16 v23, v7

    goto :goto_8

    :cond_18
    :goto_7
    move/from16 v23, v6

    :goto_8
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->getDeviceIdForDisplayId(I)I

    move-result v14

    move v9, v7

    new-instance v7, Landroid/app/servertransaction/LaunchActivityItem;

    move-object/from16 v29, v8

    iget-object v8, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    move v10, v9

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    move v11, v10

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    move v15, v11

    iget-object v11, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v2, v15}, Lcom/android/server/wm/ActivityRecord;->getFilteredReferrer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v1, v1, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move/from16 v33, v6

    iget v6, v3, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    move-object/from16 v17, v1

    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->mIcicle:Landroid/os/Bundle;

    move-object/from16 v18, v1

    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;

    move-object/from16 v19, v1

    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    if-nez v1, :cond_19

    const/16 v22, 0x0

    goto :goto_9

    :cond_19
    move-object/from16 v22, v1

    const/4 v1, 0x0

    iput-object v1, v2, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual/range {v22 .. v22}, Landroid/app/ActivityOptions;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object v1

    move-object/from16 v22, v1

    :goto_9
    iget-object v1, v3, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v31, v5

    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    move/from16 v24, v6

    if-eqz v5, :cond_1c

    iget-object v6, v5, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-eqz v6, :cond_1c

    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v6, :cond_1c

    move-object/from16 v25, v7

    iget-object v7, v3, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_1a

    if-ne v1, v3, :cond_1d

    :cond_1a
    iget-object v1, v5, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1b

    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v5, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    invoke-virtual {v5}, Landroid/app/ProfilerInfo;->closeFd()V

    :cond_1b
    :goto_a
    new-instance v1, Landroid/app/ProfilerInfo;

    invoke-direct {v1, v5}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    goto :goto_b

    :cond_1c
    move-object/from16 v25, v7

    :cond_1d
    const/4 v1, 0x0

    :goto_b
    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    iget-boolean v7, v2, Lcom/android/server/wm/ActivityRecord;->mLaunchedFromBubble:Z

    move-object/from16 p1, v1

    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->initialCallerInfoAccessToken:Landroid/os/IBinder;

    move-object/from16 v26, p4

    move-object/from16 v30, v1

    move-object/from16 v27, v6

    move/from16 v28, v7

    move-object/from16 v16, v17

    move/from16 v17, v24

    move-object/from16 v7, v25

    const/4 v1, 0x0

    move-object/from16 v24, p1

    move-object/from16 v25, v5

    invoke-direct/range {v7 .. v31}, Landroid/app/servertransaction/LaunchActivityItem;-><init>(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;Landroid/app/ActivityOptions$SceneTransitionInfo;ZLandroid/app/ProfilerInfo;Landroid/os/IBinder;Landroid/app/IActivityClientController;Landroid/os/IBinder;ZLandroid/os/IBinder;Landroid/os/IBinder;Landroid/window/ActivityWindowInfo;)V

    move/from16 v6, v23

    if-eqz p5, :cond_1e

    new-instance v5, Landroid/app/servertransaction/ResumeActivityItem;

    iget-object v8, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->shouldSendCompatFakeFocus()Z

    move-result v9

    invoke-direct {v5, v8, v6, v9}, Landroid/app/servertransaction/ResumeActivityItem;-><init>(Landroid/os/IBinder;ZZ)V

    goto :goto_c

    :cond_1e
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-eqz v5, :cond_1f

    new-instance v5, Landroid/app/servertransaction/PauseActivityItem;

    iget-object v6, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v5, v6}, Landroid/app/servertransaction/PauseActivityItem;-><init>(Landroid/os/IBinder;)V

    goto :goto_c

    :cond_1f
    new-instance v5, Landroid/app/servertransaction/StopActivityItem;

    iget-object v6, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v5, v6}, Landroid/app/servertransaction/StopActivityItem;-><init>(Landroid/os/IBinder;)V

    :goto_c
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v8

    const-wide/32 v9, 0x1352f516

    invoke-static {v8}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-static {v9, v10, v6, v8}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v6

    if-nez v6, :cond_20

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    iget-object v8, v3, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    iget-object v9, v6, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-interface {v8}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/servertransaction/ClientTransaction;

    if-eqz v8, :cond_20

    invoke-virtual {v6, v8}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)Z

    :cond_20
    :try_start_2
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    iget-object v8, v3, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    const/4 v9, 0x2

    new-array v10, v9, [Landroid/app/servertransaction/ClientTransactionItem;

    aput-object v7, v10, v1

    aput-object v5, v10, v33

    move/from16 v1, v33

    invoke-virtual {v6, v8, v1, v10}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItems(Landroid/app/IApplicationThread;Z[Landroid/app/servertransaction/ClientTransactionItem;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    iget v1, v12, Landroid/content/res/Configuration;->seq:I

    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->seq:I

    if-le v1, v5, :cond_21

    invoke-virtual {v3, v12}, Lcom/android/server/wm/WindowProcessController;->setLastReportedConfiguration(Landroid/content/res/Configuration;)V

    :cond_21
    iget-object v1, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/2addr v1, v9

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v1, :cond_23

    iget-object v1, v3, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_22

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v1, v3, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Starting new heavy weight process "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " when already running "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iput-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda29;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0, v3, v4, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_23
    const/16 v32, 0x0

    return-object v32

    :catch_1
    move-exception v0

    return-object v0

    :catch_2
    move-exception v0

    return-object v0
.end method

.method public final updateHomeProcessIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;-><init>(ILcom/android/server/wm/Task;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "homeChanged"

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    :cond_3
    :goto_1
    return-void
.end method

.method public final updateTopResumedActivityIfNeeded(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-ne v3, v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleTopResumedActivityStateLossIfNeeded()V

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->addToPendingTop()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleTopResumedActivityStateIfNeeded()V

    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    if-eqz p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateTopApp(Lcom/android/server/wm/ActivityRecord;)V

    :cond_5
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_6

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x1a

    if-gt v1, v3, :cond_7

    goto/16 :goto_4

    :cond_7
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :try_start_0
    array-length v1, v0

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_0
    const/4 v4, -0x1

    if-ltz v1, :cond_9

    aget-object v5, v0, v1

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v4, :cond_8

    aget-object v0, v0, v1

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_9
    :goto_1
    array-length v1, v0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_c

    aget-object v1, v0, v3

    const-string/jumbo v5, "}"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x0

    if-eq v1, v4, :cond_a

    aget-object v4, v0, v3

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    :cond_a
    aget-object v1, v0, v5

    aget-object v4, v0, v3

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_b
    aget-object v0, v0, v3

    :goto_2
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_4

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "package and class name\'s parsing error. "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_4
    iput-object v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mTopActivity:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    return-object p0

    :cond_d
    :goto_5
    if-nez v1, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleTopResumedActivityStateLossIfNeeded()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_e
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateTopApp(Lcom/android/server/wm/ActivityRecord;)V

    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public final wakeUp(ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string/jumbo p0, "android.server.wm:TURN_ON:"

    invoke-static {p0, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;I)V

    return-void
.end method
