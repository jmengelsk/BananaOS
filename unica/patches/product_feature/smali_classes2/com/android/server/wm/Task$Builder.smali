.class public final Lcom/android/server/wm/Task$Builder;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mActivityInfo:Landroid/content/pm/ActivityInfo;

.field public mActivityOptions:Landroid/app/ActivityOptions;

.field public mActivityType:I

.field public mAffinity:Ljava/lang/String;

.field public mAffinityIntent:Landroid/content/Intent;

.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mAutoRemoveRecents:Z

.field public mCallingFeatureId:Ljava/lang/String;

.field public mCallingPackage:Ljava/lang/String;

.field public mCallingUid:I

.field public mCreatedByOrganizer:Z

.field public mDeferTaskAppear:Z

.field public mDeskType:I

.field public mEffectiveUid:I

.field public mHasBeenVisible:Z

.field public mIntent:Landroid/content/Intent;

.field public mLastDescription:Ljava/lang/String;

.field public mLastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public mLastTimeMoved:J

.field public mLaunchCookie:Landroid/os/IBinder;

.field public mLaunchFlags:I

.field public mLinkedDeskId:I

.field public mMinHeight:I

.field public mMinWidth:I

.field public mNeverRelinquishIdentity:Z

.field public mNextAffiliateTaskId:I

.field public mOnTop:Z

.field public mOrigActivity:Landroid/content/ComponentName;

.field public mParent:Lcom/android/server/wm/WindowContainer;

.field public mPrevAffiliateTaskId:I

.field public mRealActivity:Landroid/content/ComponentName;

.field public mRealActivitySuspended:Z

.field public mRemoveWithTaskOrganizer:Z

.field public mReparentOnDisplayRemoval:Z

.field public mResizeMode:I

.field public mRootAffinity:Ljava/lang/String;

.field public mRootWasReset:Z

.field public mSourceTask:Lcom/android/server/wm/Task;

.field public mStageType:I

.field public mSupportsPictureInPicture:Z

.field public mTaskAffiliation:I

.field public mTaskId:I

.field public mUserId:I

.field public mUserSetupComplete:Z

.field public mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field public mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field public mWindowingMode:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mPrevAffiliateTaskId:I

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mNextAffiliateTaskId:I

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mMinWidth:I

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mMinHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    iput-object p1, p0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/server/wm/Task;
    .registers 13

    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_10e

    instance-of v4, v0, Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v4, :cond_10e

    move-object v5, v0

    check-cast v5, Lcom/android/server/wm/TaskDisplayArea;

    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    if-nez v0, :cond_18

    iput v3, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    :cond_18
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    iget v4, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    invoke-static {v0, v4}, Lcom/android/server/wm/DisplayContent;->alwaysCreateRootTask(II)Z

    move-result v0

    if-nez v0, :cond_5b

    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    if-eqz v0, :cond_5b

    invoke-virtual {v5, v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_2f

    goto :goto_5b

    :cond_2f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Root task="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " of activityType="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " already on display="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Can\'t have multiple."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5b
    :goto_5b
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    iget-object v4, p0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v6, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    iget-boolean v7, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    iget-boolean v8, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    invoke-static {v0, v6, v7, v8}, Lcom/android/server/wm/TaskDisplayArea;->isWindowingModeSupported(IZZZ)Z

    move-result v0

    if-nez v0, :cond_aa

    iget-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_94

    iget-object v0, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    iget-boolean v0, v0, Lcom/android/server/wm/MultiWindowEnableController;->mDeviceSupportsMultiWindow:Z

    if-eqz v0, :cond_94

    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    const/4 v4, 0x6

    if-ne v0, v4, :cond_82

    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mStageType:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v0

    if-nez v0, :cond_8b

    :cond_82
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_94

    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mDeskType:I

    if-eqz v0, :cond_94

    :cond_8b
    const-string v0, "ActivityTaskManager"

    const-string/jumbo v4, "validateRootTask: force support to create root stage task!"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    :cond_94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t create root task for unsupported windowingMode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_aa
    :goto_aa
    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_bd

    iget v6, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    if-ne v6, v3, :cond_b4

    goto :goto_bd

    :cond_b4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Root task with pinned windowing mode cannot with non-standard activity type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_bd
    :goto_bd
    if-ne v0, v4, :cond_c6

    iget-object v0, v5, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_c6

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->dismissPip()V

    :cond_c6
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_d3

    iget v4, p0, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    :cond_d3
    iget-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_d9

    move-object v0, v1

    goto :goto_e8

    :cond_d9
    iget v6, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    iget v7, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    iget-object v8, p0, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    iget-object v9, p0, Lcom/android/server/wm/Task$Builder;->mSourceTask:Lcom/android/server/wm/Task;

    iget v10, p0, Lcom/android/server/wm/Task$Builder;->mLaunchFlags:I

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ILcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v0

    :goto_e8
    if-eqz v0, :cond_108

    iput v2, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isActivatableDeskRoot()Z

    move-result v4

    if-eqz v4, :cond_106

    iget-object v4, p0, Lcom/android/server/wm/Task$Builder;->mSourceTask:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_fa

    iget-boolean v4, v4, Lcom/android/server/wm/Task;->mIsAllowedFullscreenInDesktop:Z

    if-nez v4, :cond_104

    :cond_fa
    iget-object v4, p0, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v4, :cond_106

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getNeedApplySystemModalPolicy()Z

    move-result v4

    if-eqz v4, :cond_106

    :cond_104
    iput v3, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    :cond_106
    iput-object v0, p0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    :cond_108
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getNextRootTaskId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    :cond_10e
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_120

    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v4, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :cond_120
    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mUserId:I

    iget v0, p0, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    iput v0, p0, Lcom/android/server/wm/Task$Builder;->mTaskAffiliation:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/wm/Task$Builder;->mLastTimeMoved:J

    iput-boolean v3, p0, Lcom/android/server/wm/Task$Builder;->mNeverRelinquishIdentity:Z

    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, p0, Lcom/android/server/wm/Task$Builder;->mCallingUid:I

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/wm/Task$Builder;->mCallingPackage:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v4, p0, Lcom/android/server/wm/Task$Builder;->mResizeMode:I

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mSupportsPictureInPicture:Z

    iget-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mRemoveWithTaskOrganizer:Z

    if-nez v0, :cond_15c

    iget-object v0, p0, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_15c

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getRemoveWithTaskOranizer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Task$Builder;->mRemoveWithTaskOrganizer:Z

    :cond_15c
    invoke-virtual {p0}, Lcom/android/server/wm/Task$Builder;->buildInner()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/server/wm/Task$Builder;->mHasBeenVisible:Z

    iput-boolean v4, v0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    iget v4, p0, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    if-eqz v4, :cond_16b

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ConfigurationContainer;->setActivityType(I)V

    :cond_16b
    iget-object v4, p0, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v4, :cond_197

    instance-of v5, v4, Lcom/android/server/wm/Task;

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    if-eqz v5, :cond_18f

    check-cast v4, Lcom/android/server/wm/Task;

    iget-boolean v5, p0, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    if-eqz v5, :cond_17f

    move v6, v7

    :cond_17f
    iget-object v5, p0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_188

    move v2, v3

    :cond_188
    invoke-virtual {v4, v0, v1}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    invoke-virtual {v4, v6, v0, v2}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    goto :goto_197

    :cond_18f
    iget-boolean v1, p0, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    if-eqz v1, :cond_194

    move v6, v7

    :cond_194
    invoke-virtual {v4, v0, v6}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    :cond_197
    :goto_197
    iget v1, p0, Lcom/android/server/wm/Task$Builder;->mStageType:I

    if-eqz v1, :cond_19e

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ConfigurationContainer;->setStageType(I)V

    :cond_19e
    iget v1, p0, Lcom/android/server/wm/Task$Builder;->mDeskType:I

    if-eqz v1, :cond_1a4

    iput v1, v0, Lcom/android/server/wm/Task;->mDeskRootTaskType:I

    :cond_1a4
    iget v1, p0, Lcom/android/server/wm/Task$Builder;->mLinkedDeskId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1ab

    iput v1, v0, Lcom/android/server/wm/Task;->mLinkedDeskId:I

    :cond_1ab
    iget v1, p0, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    if-eqz v1, :cond_1b2

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/Task;->setWindowingModeInner(IZ)V

    :cond_1b2
    iget-boolean p0, p0, Lcom/android/server/wm/Task$Builder;->mReparentOnDisplayRemoval:Z

    iput-boolean p0, v0, Lcom/android/server/wm/Task;->mReparentOnDisplayRemoval:Z

    return-object v0
.end method

.method public buildInner()Lcom/android/server/wm/Task;
    .registers 39

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/server/wm/Task;

    iget v2, v0, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    iget-object v3, v0, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/server/wm/Task$Builder;->mAffinityIntent:Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/server/wm/Task$Builder;->mAffinity:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/wm/Task$Builder;->mRootAffinity:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/wm/Task$Builder;->mRealActivity:Landroid/content/ComponentName;

    iget-object v8, v0, Lcom/android/server/wm/Task$Builder;->mOrigActivity:Landroid/content/ComponentName;

    iget-boolean v9, v0, Lcom/android/server/wm/Task$Builder;->mRootWasReset:Z

    iget-boolean v10, v0, Lcom/android/server/wm/Task$Builder;->mAutoRemoveRecents:Z

    iget v11, v0, Lcom/android/server/wm/Task$Builder;->mUserId:I

    iget v12, v0, Lcom/android/server/wm/Task$Builder;->mEffectiveUid:I

    iget-object v13, v0, Lcom/android/server/wm/Task$Builder;->mLastDescription:Ljava/lang/String;

    iget-wide v14, v0, Lcom/android/server/wm/Task$Builder;->mLastTimeMoved:J

    move-object/from16 v16, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mNeverRelinquishIdentity:Z

    move/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mLastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v18, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mTaskAffiliation:I

    move/from16 v19, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mPrevAffiliateTaskId:I

    move/from16 v20, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mNextAffiliateTaskId:I

    move/from16 v21, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mCallingUid:I

    move/from16 v22, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mCallingPackage:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mCallingFeatureId:Ljava/lang/String;

    move-object/from16 v24, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mResizeMode:I

    move/from16 v25, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mSupportsPictureInPicture:Z

    move/from16 v26, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mRealActivitySuspended:Z

    move/from16 v27, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mUserSetupComplete:Z

    move/from16 v28, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mMinWidth:I

    move/from16 v29, v1

    iget v1, v0, Lcom/android/server/wm/Task$Builder;->mMinHeight:I

    move/from16 v30, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v33, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mCreatedByOrganizer:Z

    move/from16 v34, v1

    iget-object v1, v0, Lcom/android/server/wm/Task$Builder;->mLaunchCookie:Landroid/os/IBinder;

    move-object/from16 v35, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mDeferTaskAppear:Z

    move/from16 v36, v1

    iget-boolean v1, v0, Lcom/android/server/wm/Task$Builder;->mRemoveWithTaskOrganizer:Z

    iget-object v0, v0, Lcom/android/server/wm/Task$Builder;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    move/from16 v37, v1

    move-object v1, v0

    move-object/from16 v0, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v27

    move/from16 v27, v28

    move/from16 v28, v29

    move/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v33

    move/from16 v33, v34

    move-object/from16 v34, v35

    move/from16 v35, v36

    move/from16 v36, v37

    invoke-direct/range {v0 .. v36}, Lcom/android/server/wm/Task;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZ)V

    return-object v0
.end method
