.class public final Lcom/android/server/wm/Task;
.super Lcom/android/server/wm/TaskFragment;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

.field public static sTmpException:Ljava/lang/Exception;


# instance fields
.field public affinity:Ljava/lang/String;

.field public affinityIntent:Landroid/content/Intent;

.field public autoRemoveRecents:Z

.field public effectiveUid:I

.field public inRecents:Z

.field public intent:Landroid/content/Intent;

.field public isAvailable:Z

.field public isPersistable:Z

.field public lastActiveTime:J

.field public lastDescription:Ljava/lang/CharSequence;

.field public lastGainFocusTime:J

.field public mAffiliatedTaskId:I

.field public mAlignActivityLocaleWithTask:Z

.field public mBoostRootTaskLayerForFreeform:Z

.field public mCallingFeatureId:Ljava/lang/String;

.field public mCallingPackage:Ljava/lang/String;

.field public mCallingUid:I

.field public mCaptionInsetsHeight:I

.field public mCaptionShowingState:I

.field public mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

.field public mConfigWillChange:Z

.field public mCurrentUser:I

.field public mCutoutPolicy:I

.field public mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

.field public mDedicatedTask:Z

.field public mDeferTaskAppear:Z

.field public mDeskRootTaskType:I

.field public mDesktopCompatDisplayInsets:Lcom/android/server/wm/DesktopCompatPolicy$DesktopAppCompatDisplayInsets;

.field public mDragResizing:Z

.field public final mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

.field public mForceNonResizeOverride:Z

.field public mForceResizeOverride:Z

.field public mForceShowForAllUsers:Z

.field public mFreeformStashMode:I

.field public mFreeformStashScale:F

.field public final mHandler:Lcom/android/server/wm/Task$ActivityTaskHandler;

.field public mHasBeenVisible:Z

.field public mHasWindowFocus:Z

.field public mHiddenWhileActivatingDrag:Z

.field public mHostProcessName:Ljava/lang/String;

.field public mIgnoreDevSettingForNonResizable:Z

.field public mInRemoveTask:Z

.field public mInResumeTopActivity:Z

.field public mIsAliasManaged:Z

.field public mIsAllowedFullscreenInDesktop:Z

.field public mIsCaptionHiddenRequested:Z

.field public mIsChangingPipToSplit:Z

.field public mIsDragSourceTask:Z

.field public mIsEffectivelySystemApp:Z

.field public mIsGameToolsOverlayVisible:Z

.field public mIsHandleImmersive:Z

.field public mIsKeepScreenOn:Z

.field public mIsLaunchedFromAppsCoverLauncher:Z

.field public mIsLaunchedFromMultistarCoverLauncher:Z

.field public mIsMinimized:Z

.field public mIsPerceptible:Z

.field public mIsPipReparetingToLastParent:Z

.field public mIsTrimmableFromRecents:Z

.field public mIsWaitingRemoveEmbedActivityTask:Z

.field public mKeepForceHiding:Z

.field public mKillProcessesOnDestroyed:Z

.field public mLastDensityDpi:F

.field public mLastDispatchedWindowFocusInTask:Z

.field public mLastFreeformBoundsBeforeDragMoving:Landroid/graphics/Rect;

.field public mLastMinimizedDisplayType:I

.field public mLastMinimizedRotation:I

.field public mLastNonFullscreenBounds:Landroid/graphics/Rect;

.field public mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

.field public mLastReportedRequestedOrientation:I

.field public mLastSurfaceShowing:Z

.field public mLastTimeMoved:J

.field public mLaunchAdjacentDisabled:Z

.field public final mLaunchCookie:Landroid/os/IBinder;

.field public mLaunchTaskOnHome:Z

.field public mLayerRank:I

.field public mLinkedDeskId:I

.field public mLockTaskAuth:I

.field public mLockTaskUid:I

.field public final mMaxDimensions:Landroid/graphics/Point;

.field public mMaxHeight:I

.field public mMaxWidth:I

.field public final mMinDimensions:Landroid/graphics/Point;

.field public mMultiWindowRestoreParent:Landroid/window/WindowContainerToken;

.field public mMultiWindowRestoreWindowingMode:I

.field public mNeedToSendFreeformLogging:Z

.field public mNeverRelinquishIdentity:Z

.field public mNextAffiliate:Lcom/android/server/wm/Task;

.field public mNextAffiliateTaskId:I

.field public mNonOccludedFreeformAreaRatio:I

.field public mOffsetXForInsets:I

.field public mOffsetYForInsets:I

.field public mOldHostProcessName:Ljava/lang/String;

.field public mPendingConvertFromTranslucentActivity:Lcom/android/server/wm/ActivityRecord;

.field public mPendingEnsureVisibleForPopOver:Z

.field public mPrevAffiliate:Lcom/android/server/wm/Task;

.field public mPrevAffiliateTaskId:I

.field public mPrevDisplayId:I

.field public mReason:Ljava/lang/String;

.field public mRemoveByDrag:Z

.field public final mRemoveWithTaskOrganizer:Z

.field public mRemoving:Z

.field public mReparentLeafTaskIfRelaunch:Z

.field public mReparentOnDisplayRemoval:Z

.field public mRequestFullscreenMode:Z

.field public mRequiredDisplayCategory:Ljava/lang/String;

.field public mResizeMode:I

.field public mRespectOrientationRequestOverride:I

.field public mReuseTask:Z

.field public mRootProcess:Lcom/android/server/wm/WindowProcessController;

.field public mSharedStartingData:Lcom/android/server/wm/StartingData;

.field public mSingleTap:Z

.field public mSupportsPictureInPicture:Z

.field public mTaskAppearedSent:Z

.field public mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public mTaskFragmentHostProcessName:Ljava/lang/String;

.field public mTaskFragmentHostUid:I

.field public final mTaskId:I

.field public mTaskOrganizer:Landroid/window/ITaskOrganizer;

.field public mTaskViewTaskOrganizerTaskId:I

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

.field public final mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

.field public mUserId:I

.field public mUserSetupComplete:Z

.field public mWindowLayoutAffinity:Ljava/lang/String;

.field public maxRecents:I

.field public origActivity:Landroid/content/ComponentName;

.field public realActivity:Landroid/content/ComponentName;

.field public realActivitySuspended:Z

.field public rootAffinity:Ljava/lang/String;

.field public rootWasReset:Z

.field public stringName:Ljava/lang/String;

.field public voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field public voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/wm/ResetTargetTaskHelper;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mResultActivities:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mAllActivities:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/ResetTargetTaskHelper;->mPendingReparentActivities:Ljava/util/ArrayList;

    sput-object v0, Lcom/android/server/wm/Task;->sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZ)V
    .registers 43

    move/from16 v0, p24

    move-object/from16 v1, p30

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v4, p33

    invoke-direct {p0, p1, v2, v4, v3}, Lcom/android/server/wm/TaskFragment;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;ZZ)V

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mRemoveByDrag:Z

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mKeepForceHiding:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/wm/Task;->mLastMinimizedDisplayType:I

    iput p1, p0, Lcom/android/server/wm/Task;->mLastMinimizedRotation:I

    iput-object v2, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/wm/Task;->mPendingConvertFromTranslucentActivity:Lcom/android/server/wm/ActivityRecord;

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    iput p1, p0, Lcom/android/server/wm/Task;->mLockTaskUid:I

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    iput-boolean v4, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    iput p1, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    iput p1, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    iput-object v2, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    iput p1, p0, Lcom/android/server/wm/Task;->mLayerRank:I

    iput p1, p0, Lcom/android/server/wm/Task;->mRespectOrientationRequestOverride:I

    iput p1, p0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    iput p1, p0, Lcom/android/server/wm/Task;->mMultiWindowRestoreWindowingMode:I

    iput p1, p0, Lcom/android/server/wm/Task;->mLastReportedRequestedOrientation:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mIsDragSourceTask:Z

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mHiddenWhileActivatingDrag:Z

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mIsLaunchedFromAppsCoverLauncher:Z

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mIsLaunchedFromMultistarCoverLauncher:Z

    iput v3, p0, Lcom/android/server/wm/Task;->mCaptionInsetsHeight:I

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mIsPerceptible:Z

    new-instance v5, Lcom/android/server/wm/Task$FindRootHelper;

    invoke-direct {v5, p0}, Lcom/android/server/wm/Task$FindRootHelper;-><init>(Lcom/android/server/wm/Task;)V

    iput-object v5, p0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mAlignActivityLocaleWithTask:Z

    iput-object v2, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wm/Task;->mOldHostProcessName:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mIsChangingPipToSplit:Z

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, p0, Lcom/android/server/wm/Task;->mMinDimensions:Landroid/graphics/Point;

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, p0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    iput p1, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    iput p1, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/Task;->mLastDensityDpi:F

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mBoostRootTaskLayerForFreeform:Z

    iput-object v2, p0, Lcom/android/server/wm/Task;->mLastFreeformBoundsBeforeDragMoving:Landroid/graphics/Rect;

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mIsWaitingRemoveEmbedActivityTask:Z

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mIsKeepScreenOn:Z

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mIsGameToolsOverlayVisible:Z

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mIsHandleImmersive:Z

    iput v3, p0, Lcom/android/server/wm/Task;->mFreeformStashMode:I

    iput v3, p0, Lcom/android/server/wm/Task;->mCaptionShowingState:I

    iput v3, p0, Lcom/android/server/wm/Task;->mDeskRootTaskType:I

    iput p1, p0, Lcom/android/server/wm/Task;->mLinkedDeskId:I

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mIsAllowedFullscreenInDesktop:Z

    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mRequestFullscreenMode:Z

    iput p2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v2, p11

    iput v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    iput v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    move/from16 v2, p25

    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    if-eqz p17, :cond_a0

    move-object/from16 v2, p17

    goto :goto_a5

    :cond_a0
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    :goto_a5
    iput-object v2, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-object p4, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    move-object/from16 p4, p31

    iput-object p4, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 p4, p32

    iput-object p4, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object p7, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    move/from16 p4, p26

    iput-boolean p4, p0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    iput-object p8, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    iput-boolean p9, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    iput-boolean v4, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    move/from16 p4, p10

    iput-boolean p4, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    move/from16 p4, p27

    iput-boolean p4, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    move/from16 p4, p12

    iput p4, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    move-object/from16 p4, p13

    iput-object p4, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    move-wide/from16 p4, p14

    iput-wide p4, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    move/from16 p4, p16

    iput-boolean p4, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    move/from16 p4, p18

    iput p4, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    move/from16 p4, p19

    iput p4, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    move/from16 p4, p20

    iput p4, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    move/from16 p4, p21

    iput p4, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    move-object/from16 p4, p22

    iput-object p4, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    move-object/from16 p4, p23

    iput-object p4, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    if-eqz v1, :cond_110

    invoke-virtual {p0, p3, v1}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    iget-object p3, v1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz p3, :cond_10b

    iget p1, p3, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput p1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iget p1, p3, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput p1, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    goto :goto_11a

    :cond_10b
    iput p1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iput p1, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    goto :goto_11a

    :cond_110
    iput-object p3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    move/from16 p1, p28

    iput p1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    move/from16 p1, p29

    iput p1, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    :goto_11a
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    invoke-virtual {p1, v1, p0}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->updateSupportPolicyLocked(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/Task;)V

    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;

    const/4 p3, 0x4

    invoke-direct {p1, p3, p0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;-><init>(ILcom/android/server/wm/Task;)V

    invoke-static {p1}, Lcom/android/server/wm/PackagesChange;->forAllTaskChangeCallbacks(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget-object p3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iget-object p4, p1, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    const/16 p5, 0x8

    invoke-virtual {p4, p5, p2, v3, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    iget-object p4, p1, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p4, p3}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    new-instance p1, Lcom/android/server/wm/Task$ActivityTaskHandler;

    iget-object p3, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskSupervisor;->mLooper:Landroid/os/Looper;

    invoke-direct {p1, p0, p3}, Lcom/android/server/wm/Task$ActivityTaskHandler;-><init>(Lcom/android/server/wm/Task;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/Task;->mHandler:Lcom/android/server/wm/Task$ActivityTaskHandler;

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    move-object/from16 p1, p34

    iput-object p1, p0, Lcom/android/server/wm/Task;->mLaunchCookie:Landroid/os/IBinder;

    move/from16 p1, p35

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    move/from16 p1, p36

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mRemoveWithTaskOrganizer:Z

    iput-boolean v4, p0, Lcom/android/server/wm/Task;->mIsTrimmableFromRecents:Z

    const/16 p0, 0x7919

    invoke-static {p0, p2}, Landroid/util/EventLog;->writeEvent(II)I

    return-void
.end method

.method public static enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    .registers 6

    if-nez p0, :cond_4

    goto/16 :goto_70

    :cond_4
    if-eqz p3, :cond_d

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->disallowEnterPictureInPictureWhileLaunching()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_70

    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_70

    :cond_14
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    goto :goto_23

    :cond_1b
    if-eqz p2, :cond_22

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    if-nez p1, :cond_2e

    const-string p0, "ActivityTaskManager"

    const-string/jumbo p1, "No root task for enter pip, both to front task and activity are null?"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2e
    if-eqz p2, :cond_71

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    if-eq v0, v1, :cond_4d

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_70

    :cond_4d
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_5a

    goto :goto_70

    :cond_5a
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getStagePosition()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getStagePosition()I

    move-result v0

    if-eq p2, v0, :cond_71

    :cond_70
    :goto_70
    return-void

    :cond_71
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_7b

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    move-result p3

    if-nez p3, :cond_83

    :cond_7b
    iget-object p3, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p3, p1}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result p3

    if-eqz p3, :cond_85

    :cond_83
    move p3, v0

    goto :goto_86

    :cond_85
    move p3, p2

    :goto_86
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    move-result p1

    if-nez p1, :cond_8f

    if-nez p3, :cond_8f

    move p2, v0

    :cond_8f
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    return-void
.end method

.method public static findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/ActivityRecord;

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda20;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda20;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    const/4 p0, 0x0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static fitWithinBounds(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8

    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_50

    :cond_d
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    add-int v2, v1, p0

    const/4 v3, 0x0

    if-ge v0, v2, :cond_21

    sub-int/2addr v0, v1

    sub-int/2addr p0, v0

    goto :goto_2e

    :cond_21
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    sub-int v2, v1, p0

    if-le v0, v2, :cond_2d

    sub-int/2addr v1, v0

    sub-int/2addr p0, v1

    neg-int p0, p0

    goto :goto_2e

    :cond_2d
    move p0, v3

    :goto_2e
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    add-int v2, v1, p1

    if-ge v0, v2, :cond_42

    sub-int/2addr v0, v1

    sub-int v3, p1, v0

    goto :goto_4d

    :cond_42
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, p1

    if-le v0, v1, :cond_4d

    sub-int/2addr p3, v0

    sub-int/2addr p1, p3

    neg-int v3, p1

    :cond_4d
    :goto_4d
    invoke-virtual {p2, p0, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_50
    :goto_50
    return-void
.end method

.method public static fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public static persistTaskBounds(Landroid/app/WindowConfiguration;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/Task;
    .registers 79

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v8, "user_id"

    const/4 v9, 0x3

    const/4 v10, 0x2

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v12

    new-instance v13, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v13}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v14, 0x1

    sub-int/2addr v2, v14

    const/4 v4, -0x1

    const-wide/16 v5, 0x0

    const-string v7, ""

    const/16 v16, 0x4

    move/from16 v19, v4

    move/from16 v33, v19

    move/from16 v34, v33

    move/from16 v35, v34

    move/from16 v36, v35

    move/from16 v41, v36

    move/from16 v42, v41

    move-wide/from16 v17, v5

    move-object/from16 v46, v7

    move/from16 v30, v14

    move/from16 v32, v30

    move/from16 v38, v16

    const/4 v6, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    move/from16 v5, v42

    :goto_61
    const-string v7, "ActivityTaskManager"

    if-ltz v2, :cond_2d7

    invoke-interface {v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v48

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v49

    sparse-switch v49, :sswitch_data_692

    :goto_77
    move v15, v4

    goto/16 :goto_220

    :sswitch_7a
    const-string/jumbo v15, "root_has_reset"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_84

    goto :goto_77

    :cond_84
    const/16 v15, 0x1d

    goto/16 :goto_220

    :sswitch_88
    const-string/jumbo v15, "window_layout_affinity"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_92

    goto :goto_77

    :cond_92
    const/16 v15, 0x1c

    goto/16 :goto_220

    :sswitch_96
    const-string/jumbo v15, "real_activity"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a0

    goto :goto_77

    :cond_a0
    const/16 v15, 0x1b

    goto/16 :goto_220

    :sswitch_a4
    const-string/jumbo v15, "never_relinquish_identity"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ae

    goto :goto_77

    :cond_ae
    const/16 v15, 0x1a

    goto/16 :goto_220

    :sswitch_b2
    const-string/jumbo v15, "host_process_name"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_bc

    goto :goto_77

    :cond_bc
    const/16 v15, 0x19

    goto/16 :goto_220

    :sswitch_c0
    const-string/jumbo v15, "calling_package"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ca

    goto :goto_77

    :cond_ca
    const/16 v15, 0x18

    goto/16 :goto_220

    :sswitch_ce
    const-string/jumbo v15, "persist_task_version"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d8

    goto :goto_77

    :cond_d8
    const/16 v15, 0x17

    goto/16 :goto_220

    :sswitch_dc
    const-string/jumbo v15, "last_description"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e6

    goto :goto_77

    :cond_e6
    const/16 v15, 0x16

    goto/16 :goto_220

    :sswitch_ea
    const-string/jumbo v15, "affinity"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f4

    goto :goto_77

    :cond_f4
    const/16 v15, 0x15

    goto/16 :goto_220

    :sswitch_f8
    const-string/jumbo v15, "min_width"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_103

    goto/16 :goto_77

    :cond_103
    const/16 v15, 0x14

    goto/16 :goto_220

    :sswitch_107
    const-string/jumbo v15, "calling_feature_id"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_112

    goto/16 :goto_77

    :cond_112
    const/16 v15, 0x13

    goto/16 :goto_220

    :sswitch_116
    const-string/jumbo v15, "prev_affiliation"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_121

    goto/16 :goto_77

    :cond_121
    const/16 v15, 0x12

    goto/16 :goto_220

    :sswitch_125
    const-string/jumbo v15, "task_type"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_130

    goto/16 :goto_77

    :cond_130
    const/16 v15, 0x11

    goto/16 :goto_220

    :sswitch_134
    const-string/jumbo v15, "calling_uid"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13f

    goto/16 :goto_77

    :cond_13f
    const/16 v15, 0x10

    goto/16 :goto_220

    :sswitch_143
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14b

    goto/16 :goto_77

    :cond_14b
    const/16 v15, 0xf

    goto/16 :goto_220

    :sswitch_14f
    const-string/jumbo v15, "root_affinity"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_15a

    goto/16 :goto_77

    :cond_15a
    const/16 v15, 0xe

    goto/16 :goto_220

    :sswitch_15e
    const-string/jumbo v15, "supports_picture_in_picture"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_169

    goto/16 :goto_77

    :cond_169
    const/16 v15, 0xd

    goto/16 :goto_220

    :sswitch_16d
    const-string/jumbo v15, "auto_remove_recents"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_178

    goto/16 :goto_77

    :cond_178
    const/16 v15, 0xc

    goto/16 :goto_220

    :sswitch_17c
    const-string/jumbo v15, "orig_activity"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_187

    goto/16 :goto_77

    :cond_187
    const/16 v15, 0xb

    goto/16 :goto_220

    :sswitch_18b
    const-string/jumbo v15, "non_fullscreen_bounds"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_196

    goto/16 :goto_77

    :cond_196
    const/16 v15, 0xa

    goto/16 :goto_220

    :sswitch_19a
    const-string/jumbo v15, "min_height"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1a5

    goto/16 :goto_77

    :cond_1a5
    const/16 v15, 0x9

    goto/16 :goto_220

    :sswitch_1a9
    const-string/jumbo v15, "resize_mode"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1b4

    goto/16 :goto_77

    :cond_1b4
    const/16 v15, 0x8

    goto/16 :goto_220

    :sswitch_1b8
    const-string/jumbo v15, "effective_uid"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1c3

    goto/16 :goto_77

    :cond_1c3
    const/4 v15, 0x7

    goto :goto_220

    :sswitch_1c5
    const-string/jumbo v15, "user_setup_complete"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1d0

    goto/16 :goto_77

    :cond_1d0
    const/4 v15, 0x6

    goto :goto_220

    :sswitch_1d2
    const-string/jumbo v15, "task_affiliation"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1dd

    goto/16 :goto_77

    :cond_1dd
    const/4 v15, 0x5

    goto :goto_220

    :sswitch_1df
    const-string/jumbo v15, "real_activity_suspended"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1ea

    goto/16 :goto_77

    :cond_1ea
    move/from16 v15, v16

    goto :goto_220

    :sswitch_1ed
    const-string/jumbo v15, "dedicated_task"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1f8

    goto/16 :goto_77

    :cond_1f8
    move v15, v9

    goto :goto_220

    :sswitch_1fa
    const-string/jumbo v15, "next_affiliation"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_205

    goto/16 :goto_77

    :cond_205
    move v15, v10

    goto :goto_220

    :sswitch_207
    const-string/jumbo v15, "task_id"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_212

    goto/16 :goto_77

    :cond_212
    move v15, v14

    goto :goto_220

    :sswitch_214
    const-string/jumbo v15, "last_time_moved"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_21f

    goto/16 :goto_77

    :cond_21f
    const/4 v15, 0x0

    :goto_220
    packed-switch v15, :pswitch_data_70c

    const-string/jumbo v15, "task_description_"

    invoke-virtual {v3, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2d4

    const-string/jumbo v15, "Task: Unknown attribute="

    invoke-virtual {v15, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d4

    :pswitch_238  #0x1d
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v26

    goto/16 :goto_2d4

    :pswitch_23e  #0x1c
    move-object/from16 v25, v48

    goto/16 :goto_2d4

    :pswitch_242  #0x1b
    invoke-static/range {v48 .. v48}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v22

    goto/16 :goto_2d4

    :pswitch_248  #0x1a
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v32

    goto/16 :goto_2d4

    :pswitch_24e  #0x19
    move-object/from16 v44, v48

    goto/16 :goto_2d4

    :pswitch_252  #0x18
    move-object/from16 v46, v48

    goto/16 :goto_2d4

    :pswitch_256  #0x17
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    goto/16 :goto_2d4

    :pswitch_25c  #0x16
    move-object/from16 v31, v48

    goto/16 :goto_2d4

    :pswitch_260  #0x15
    move-object/from16 v6, v48

    goto/16 :goto_2d4

    :pswitch_264  #0x14
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    goto/16 :goto_2d4

    :pswitch_26a  #0x13
    move-object/from16 v37, v48

    goto/16 :goto_2d4

    :pswitch_26e  #0x12
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    goto/16 :goto_2d4

    :pswitch_274  #0x11
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    goto/16 :goto_2d4

    :pswitch_27a  #0x10
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    goto :goto_2d4

    :pswitch_27f  #0xf
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    goto :goto_2d4

    :pswitch_284  #0xe
    move/from16 v21, v14

    move-object/from16 v20, v48

    goto :goto_2d4

    :pswitch_289  #0xd
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v39

    goto :goto_2d4

    :pswitch_28e  #0xc
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v27

    goto :goto_2d4

    :pswitch_293  #0xb
    invoke-static/range {v48 .. v48}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v24

    goto :goto_2d4

    :pswitch_298  #0xa
    invoke-static/range {v48 .. v48}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v40

    goto :goto_2d4

    :pswitch_29d  #0x9
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    goto :goto_2d4

    :pswitch_2a2  #0x8
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    goto :goto_2d4

    :pswitch_2a7  #0x7
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    goto :goto_2d4

    :pswitch_2ac  #0x6
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v30

    goto :goto_2d4

    :pswitch_2b1  #0x5
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    goto :goto_2d4

    :pswitch_2b6  #0x4
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    goto :goto_2d4

    :pswitch_2bf  #0x3
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v45

    goto :goto_2d4

    :pswitch_2c4  #0x2
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    goto :goto_2d4

    :pswitch_2c9  #0x1
    if-ne v5, v4, :cond_2d4

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_2d4

    :pswitch_2d0  #0x0
    invoke-static/range {v48 .. v48}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    :cond_2d4
    :goto_2d4
    add-int/2addr v2, v4

    goto/16 :goto_61

    :cond_2d7
    invoke-virtual {v13, v0}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_2dc
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    if-eq v3, v14, :cond_56c

    if-ne v3, v9, :cond_2fb

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-lt v4, v12, :cond_2eb

    goto :goto_2fb

    :cond_2eb
    const/16 v16, -0x1

    :goto_2ed
    move-object v14, v2

    move v8, v5

    move-object v9, v6

    move-object v12, v7

    move-wide/from16 v75, v17

    move-object/from16 v74, v46

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object/from16 v46, v13

    goto/16 :goto_570

    :cond_2fb
    :goto_2fb
    if-ne v3, v10, :cond_560

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "affinity_intent"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_322

    invoke-static {v0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v2

    move-object v14, v2

    :goto_30f
    move-object v9, v6

    move-wide/from16 v75, v17

    move-object/from16 v74, v46

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v16, -0x1

    move-object/from16 v17, v8

    move/from16 v18, v12

    move-object/from16 v46, v13

    move v8, v5

    move-object v12, v7

    goto/16 :goto_549

    :cond_322
    const-string/jumbo v4, "intent"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_332

    invoke-static {v0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v3

    move-object v14, v2

    move-object v15, v3

    goto :goto_30f

    :cond_332
    const-string/jumbo v10, "activity"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_522

    const-string/jumbo v3, "launched_from_uid"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v0, v10, v3, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v54

    const-string/jumbo v3, "launched_from_package"

    invoke-interface {v0, v10, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    const-string/jumbo v3, "launched_from_feature"

    invoke-interface {v0, v10, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    const-string/jumbo v3, "resolved_type"

    invoke-interface {v0, v10, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v14, "component_specified"

    invoke-interface {v0, v10, v14, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v64

    invoke-interface {v0, v10, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    const-string/jumbo v9, "id"

    move-object/from16 v50, v2

    move-object/from16 v58, v3

    const-wide/16 v2, -0x1

    invoke-interface {v0, v10, v9, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v71

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    new-instance v9, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v9}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    const/4 v10, 0x0

    const/16 v57, 0x0

    const/16 v69, 0x0

    :goto_382
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    move/from16 v51, v5

    const/4 v5, 0x1

    if-eq v3, v5, :cond_396

    const/4 v5, 0x3

    if-ne v3, v5, :cond_394

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-lt v5, v2, :cond_396

    :cond_394
    const/4 v5, 0x2

    goto :goto_39b

    :cond_396
    move-object/from16 v59, v6

    const/4 v6, 0x0

    goto/16 :goto_483

    :goto_39b
    if-ne v3, v5, :cond_47f

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b6

    invoke-static {v0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v3

    move/from16 v52, v2

    move-object/from16 v57, v3

    :goto_3af
    move-object/from16 v53, v4

    move-object/from16 v59, v6

    const/4 v6, 0x0

    goto/16 :goto_475

    :cond_3b6
    const-string/jumbo v5, "persistable_bundle"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c8

    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v3

    move/from16 v52, v2

    move-object/from16 v69, v3

    goto :goto_3af

    :cond_3c8
    const-string/jumbo v5, "initial_caller_info"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move/from16 v52, v2

    const-string/jumbo v2, "restoreActivity: unexpected name="

    if-eqz v5, :cond_45e

    const-string/jumbo v3, "caller_uid"

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-interface {v0, v10, v3, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v5, "caller_package"

    invoke-interface {v0, v10, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v53, v4

    const-string/jumbo v4, "caller_is_share_enabled"

    move-object/from16 v59, v6

    const/4 v6, 0x0

    invoke-interface {v0, v10, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    new-instance v10, Lcom/android/server/wm/ActivityCallerState$CallerInfo;

    invoke-direct {v10, v3, v5, v4}, Lcom/android/server/wm/ActivityCallerState$CallerInfo;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    :cond_3fb
    :goto_3fb
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_475

    const/4 v5, 0x3

    if-ne v4, v5, :cond_40b

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-lt v5, v3, :cond_475

    :cond_40b
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3fb

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "readable_content_uri"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_425

    iget-object v4, v10, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mReadableContentUris:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->restoreGrantUriFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/uri/GrantUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3fb

    :cond_425
    const-string/jumbo v5, "writable_content_uri"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_438

    iget-object v4, v10, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mWritableContentUris:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->restoreGrantUriFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/uri/GrantUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3fb

    :cond_438
    const-string/jumbo v5, "inaccessible_content_uri"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44b

    iget-object v4, v10, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->mInaccessibleContentUris:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->restoreGrantUriFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/uri/GrantUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3fb

    :cond_44b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3fb

    :cond_45e
    move-object/from16 v53, v4

    move-object/from16 v59, v6

    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_475
    :goto_475
    move/from16 v5, v51

    move/from16 v2, v52

    move-object/from16 v4, v53

    move-object/from16 v6, v59

    goto/16 :goto_382

    :cond_47f
    move/from16 v5, v51

    goto/16 :goto_382

    :goto_483
    if-eqz v57, :cond_50b

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move/from16 v47, v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v5, 0x0

    move-object v3, v7

    const/4 v7, 0x0

    move-object/from16 v70, v9

    move v4, v14

    move-wide/from16 v75, v17

    move-object/from16 v74, v46

    move/from16 v0, v47

    move-object/from16 v14, v50

    move-object/from16 v9, v59

    const/16 v16, -0x1

    move-object/from16 v17, v8

    move/from16 v18, v12

    move-object/from16 v46, v13

    move/from16 v8, v51

    move-object v13, v2

    move-object v12, v3

    move-object/from16 v2, v57

    move-object/from16 v3, v58

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    move-object v3, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v59

    if-eqz v59, :cond_4eb

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v60

    new-instance v50, Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/16 v63, 0x0

    const/16 v65, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    move-object/from16 v57, v3

    move-object/from16 v66, v4

    move-object/from16 v51, v13

    invoke-direct/range {v50 .. v72}, Lcom/android/server/wm/ActivityRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/PersistableBundle;Landroid/app/ActivityManager$TaskDescription;J)V

    move-object/from16 v3, v50

    if-eqz v10, :cond_4e7

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->initialCallerInfoAccessToken:Landroid/os/IBinder;

    iget-object v4, v4, Lcom/android/server/wm/ActivityCallerState;->mCallerTokenInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v5, v10}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e7
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_549

    :cond_4eb
    move-object v4, v3

    move-object/from16 v3, v58

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "restoreActivity resolver error. Intent="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " resolvedType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50b
    move-object/from16 v4, v57

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "restoreActivity error intent="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_522
    move-object v14, v2

    move-object v9, v6

    move-wide/from16 v75, v17

    move-object/from16 v74, v46

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v16, -0x1

    move-object/from16 v17, v8

    move/from16 v18, v12

    move-object/from16 v46, v13

    move v8, v5

    move-object v12, v7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "restoreTask: Unexpected name="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_549
    move-object/from16 v0, p0

    move v5, v8

    move-object v6, v9

    move-object v7, v12

    move-object v2, v14

    move/from16 v4, v16

    move-object/from16 v8, v17

    move/from16 v12, v18

    move-object/from16 v13, v46

    move-object/from16 v46, v74

    move-wide/from16 v17, v75

    const/4 v9, 0x3

    const/4 v10, 0x2

    :goto_55d
    const/4 v14, 0x1

    goto/16 :goto_2dc

    :cond_560
    move-object v14, v2

    move-wide/from16 v75, v17

    move-object/from16 v74, v46

    const/16 v16, -0x1

    move-object/from16 v0, p0

    move/from16 v4, v16

    goto :goto_55d

    :cond_56c
    move/from16 v16, v4

    goto/16 :goto_2ed

    :goto_570
    if-nez v21, :cond_574

    move-object v2, v9

    goto :goto_580

    :cond_574
    const-string v3, "@"

    move-object/from16 v4, v20

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57f

    goto :goto_580

    :cond_57f
    move-object v2, v4

    :goto_580
    if-gtz v19, :cond_5c4

    if-eqz v15, :cond_586

    move-object v3, v15

    goto :goto_587

    :cond_586
    move-object v3, v14

    :goto_587
    if-eqz v3, :cond_5a2

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    :try_start_58d
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_595
    .catch Landroid/os/RemoteException; {:try_start_58d .. :try_end_595} :catch_5a2

    const-wide/16 v6, 0x2200

    move/from16 v10, v29

    :try_start_599
    invoke-interface {v4, v5, v6, v7, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_5a4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_5a1
    .catch Landroid/os/RemoteException; {:try_start_599 .. :try_end_5a1} :catch_5a4

    goto :goto_5a5

    :catch_5a2
    :cond_5a2
    move/from16 v10, v29

    :catch_5a4
    :cond_5a4
    move v4, v0

    :goto_5a5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Updating task #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": effectiveUid="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v4, v12}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :goto_5c0
    move/from16 v3, v43

    const/4 v5, 0x1

    goto :goto_5c9

    :cond_5c4
    move/from16 v10, v29

    move/from16 v4, v19

    goto :goto_5c0

    :goto_5c9
    if-ge v3, v5, :cond_5db

    move/from16 v3, v28

    if-ne v3, v5, :cond_5d8

    move/from16 v3, v38

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5e4

    move/from16 v5, v39

    const/4 v3, 0x1

    goto :goto_5e6

    :cond_5d8
    move/from16 v3, v38

    goto :goto_5e4

    :cond_5db
    move/from16 v3, v38

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-ne v3, v6, :cond_5e4

    move v3, v5

    const/4 v5, 0x1

    goto :goto_5e6

    :cond_5e4
    :goto_5e4
    move/from16 v5, v39

    :goto_5e6
    new-instance v6, Lcom/android/server/wm/Task$Builder;

    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v6, v7}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput v8, v6, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    iput-object v15, v6, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    iput-object v14, v6, Lcom/android/server/wm/Task$Builder;->mAffinityIntent:Landroid/content/Intent;

    iput-object v9, v6, Lcom/android/server/wm/Task$Builder;->mAffinity:Ljava/lang/String;

    iput-object v2, v6, Lcom/android/server/wm/Task$Builder;->mRootAffinity:Ljava/lang/String;

    move-object/from16 v15, v22

    iput-object v15, v6, Lcom/android/server/wm/Task$Builder;->mRealActivity:Landroid/content/ComponentName;

    move-object/from16 v15, v24

    iput-object v15, v6, Lcom/android/server/wm/Task$Builder;->mOrigActivity:Landroid/content/ComponentName;

    move/from16 v2, v26

    iput-boolean v2, v6, Lcom/android/server/wm/Task$Builder;->mRootWasReset:Z

    move/from16 v2, v27

    iput-boolean v2, v6, Lcom/android/server/wm/Task$Builder;->mAutoRemoveRecents:Z

    iput v10, v6, Lcom/android/server/wm/Task$Builder;->mUserId:I

    iput v4, v6, Lcom/android/server/wm/Task$Builder;->mEffectiveUid:I

    move-object/from16 v15, v31

    iput-object v15, v6, Lcom/android/server/wm/Task$Builder;->mLastDescription:Ljava/lang/String;

    move-wide/from16 v7, v75

    iput-wide v7, v6, Lcom/android/server/wm/Task$Builder;->mLastTimeMoved:J

    move/from16 v14, v32

    iput-boolean v14, v6, Lcom/android/server/wm/Task$Builder;->mNeverRelinquishIdentity:Z

    move-object/from16 v2, v46

    iput-object v2, v6, Lcom/android/server/wm/Task$Builder;->mLastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    move/from16 v4, v33

    iput v4, v6, Lcom/android/server/wm/Task$Builder;->mTaskAffiliation:I

    move/from16 v4, v34

    iput v4, v6, Lcom/android/server/wm/Task$Builder;->mPrevAffiliateTaskId:I

    move/from16 v4, v35

    iput v4, v6, Lcom/android/server/wm/Task$Builder;->mNextAffiliateTaskId:I

    move/from16 v4, v36

    iput v4, v6, Lcom/android/server/wm/Task$Builder;->mCallingUid:I

    move-object/from16 v7, v74

    iput-object v7, v6, Lcom/android/server/wm/Task$Builder;->mCallingPackage:Ljava/lang/String;

    move-object/from16 v15, v37

    iput-object v15, v6, Lcom/android/server/wm/Task$Builder;->mCallingFeatureId:Ljava/lang/String;

    iput v3, v6, Lcom/android/server/wm/Task$Builder;->mResizeMode:I

    iput-boolean v5, v6, Lcom/android/server/wm/Task$Builder;->mSupportsPictureInPicture:Z

    move/from16 v3, v23

    iput-boolean v3, v6, Lcom/android/server/wm/Task$Builder;->mRealActivitySuspended:Z

    move/from16 v14, v30

    iput-boolean v14, v6, Lcom/android/server/wm/Task$Builder;->mUserSetupComplete:Z

    move/from16 v4, v41

    iput v4, v6, Lcom/android/server/wm/Task$Builder;->mMinWidth:I

    move/from16 v4, v42

    iput v4, v6, Lcom/android/server/wm/Task$Builder;->mMinHeight:I

    invoke-virtual {v6}, Lcom/android/server/wm/Task$Builder;->buildInner()Lcom/android/server/wm/Task;

    move-result-object v2

    move-object/from16 v15, v40

    iput-object v15, v2, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v15}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-object/from16 v15, v25

    iput-object v15, v2, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v3, :cond_662

    move-object/from16 v15, v44

    iput-object v15, v2, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    move/from16 v3, v45

    iput-boolean v3, v2, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    :cond_662
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_690

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v73, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_67f
    if-ltz v0, :cond_690

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    const v3, 0x7fffffff

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_67f

    :cond_690
    return-object v2

    nop

    :sswitch_data_692
    .sparse-switch
        -0x5ccdaff6 -> :sswitch_214
        -0x5ba06deb -> :sswitch_207
        -0x591a685c -> :sswitch_1fa
        -0x5131b22b -> :sswitch_1ed
        -0x43dc2f14 -> :sswitch_1df
        -0x430d08ca -> :sswitch_1d2
        -0x3a0f4851 -> :sswitch_1c5
        -0x37680e48 -> :sswitch_1b8
        -0x3395d9b2 -> :sswitch_1a9
        -0x313f784c -> :sswitch_19a
        -0x2a27c539 -> :sswitch_18b
        -0x2a0990b3 -> :sswitch_17c
        -0x1df202b3 -> :sswitch_16d
        -0x158140a0 -> :sswitch_15e
        -0x9b3481b -> :sswitch_14f
        -0x8c511f1 -> :sswitch_143
        -0x7e175ab -> :sswitch_134
        0xac8bdb4 -> :sswitch_125
        0x13bdcee4 -> :sswitch_116
        0x1782e55f -> :sswitch_107
        0x2046b199 -> :sswitch_f8
        0x24172928 -> :sswitch_ea
        0x33cf43d3 -> :sswitch_dc
        0x3c12eca9 -> :sswitch_ce
        0x40756fcb -> :sswitch_c0
        0x42bea792 -> :sswitch_b2
        0x56e1584e -> :sswitch_a4
        0x5bc3bc90 -> :sswitch_96
        0x772fa04e -> :sswitch_88
        0x789a804d -> :sswitch_7a
    .end sparse-switch

    :pswitch_data_70c
    .packed-switch 0x0
        :pswitch_2d0  #00000000
        :pswitch_2c9  #00000001
        :pswitch_2c4  #00000002
        :pswitch_2bf  #00000003
        :pswitch_2b6  #00000004
        :pswitch_2b1  #00000005
        :pswitch_2ac  #00000006
        :pswitch_2a7  #00000007
        :pswitch_2a2  #00000008
        :pswitch_29d  #00000009
        :pswitch_298  #0000000a
        :pswitch_293  #0000000b
        :pswitch_28e  #0000000c
        :pswitch_289  #0000000d
        :pswitch_284  #0000000e
        :pswitch_27f  #0000000f
        :pswitch_27a  #00000010
        :pswitch_274  #00000011
        :pswitch_26e  #00000012
        :pswitch_26a  #00000013
        :pswitch_264  #00000014
        :pswitch_260  #00000015
        :pswitch_25c  #00000016
        :pswitch_256  #00000017
        :pswitch_252  #00000018
        :pswitch_24e  #00000019
        :pswitch_248  #0000001a
        :pswitch_242  #0000001b
        :pswitch_23e  #0000001c
        :pswitch_238  #0000001d
    .end packed-switch
.end method

.method public static trimIneffectiveInfo(Lcom/android/server/wm/Task;Landroid/app/TaskInfo;)V
    .registers 7

    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    goto :goto_14

    :cond_12
    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    :goto_14
    iget-object v1, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    const-string v2, ""

    if-eqz v1, :cond_6d

    iget v3, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v1, :cond_6d

    new-instance v1, Landroid/content/pm/ActivityInfo;

    iget-object v3, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v1, v3}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iput-object v1, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v3, Landroid/content/pm/ApplicationInfo;

    iget-object v4, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3, v4}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_6d
    iget p0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    if-eq p0, v0, :cond_78

    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    :cond_78
    const/4 p0, 0x0

    iput-object p0, p1, Landroid/app/TaskInfo;->capturedLink:Landroid/net/Uri;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Landroid/app/TaskInfo;->capturedLinkTimestamp:J

    iput-wide v0, p1, Landroid/app/TaskInfo;->topActivityRequestOpenInBrowserEducationTimestamp:J

    return-void
.end method


# virtual methods
.method public final abortPipEnter(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_65

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_65

    invoke-virtual {p0, p0}, Lcom/android/server/wm/Task;->canMoveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_65

    :cond_14
    new-instance v0, Lcom/android/server/wm/Transition;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const/4 v4, 0x4

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p0, v3, v3}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    const-string/jumbo v4, "movePinnedActivityToOriginalTask"

    invoke-virtual {p1, v0, v2, v4}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setRootTaskWindowingMode(I)V

    invoke-virtual {p0, p0, v3, v3, v1}, Lcom/android/server/wm/Task;->moveTaskToBackInner(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Landroid/os/Bundle;Z)V

    :cond_4b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result p0

    if-eqz p0, :cond_63

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz p0, :cond_63

    const-string/jumbo p0, "abort_pip_enter"

    invoke-virtual {p1, p0, v1}, Lcom/android/server/wm/ActivityRecord;->setEnteringPipFromSplit(Ljava/lang/String;Z)V

    invoke-virtual {p1, p0, v1}, Lcom/android/server/wm/ActivityRecord;->setHiddenWhileEnteringPinnedMode(Ljava/lang/String;Z)V

    :cond_63
    const/4 p0, 0x1

    return p0

    :cond_65
    :goto_65
    return v1
.end method

.method public final addChild(Lcom/android/server/wm/Task;ZZ)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :try_start_4
    iput-boolean p3, p1, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    if-eqz p2, :cond_c

    const p3, 0x7fffffff

    goto :goto_d

    :cond_c
    move p3, v0

    :goto_d
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_17

    iput-boolean v0, p1, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    return-void

    :catchall_17
    move-exception p0

    iput-boolean v0, p1, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    throw p0
.end method

.method public final addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 7

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(ILcom/android/server/wm/WindowContainer;)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/4 v0, 0x1

    aget-boolean p2, p2, v0

    if-eqz p2, :cond_21

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-wide v1, -0xe475a036097c6b2L  # -6.420148178521097E239

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_21
    iget-object p2, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz p2, :cond_39

    iget-boolean p2, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz p2, :cond_39

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_39

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/Task;

    invoke-virtual {p2, v0}, Lcom/android/server/wm/TaskDisplayArea;->addRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    :cond_39
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-eqz p1, :cond_8e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-nez p2, :cond_8e

    iget-object p2, p1, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerProcessName:Ljava/lang/String;

    if-eqz p2, :cond_58

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskFragmentHostProcessName:Ljava/lang/String;

    if-nez v0, :cond_58

    iget v0, p1, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    iput v0, p0, Lcom/android/server/wm/Task;->mTaskFragmentHostUid:I

    iput-object p2, p0, Lcom/android/server/wm/Task;->mTaskFragmentHostProcessName:Ljava/lang/String;

    :cond_58
    iget p2, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_85

    iput p2, p1, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iput v0, p1, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz p1, :cond_79

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-eqz p1, :cond_79

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_79

    goto :goto_8e

    :cond_79
    if-eqz p0, :cond_8e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result p1

    if-nez p1, :cond_8e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->associateStartingWindowWithTaskIfNeeded()V

    return-void

    :cond_85
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "This method must not be used to Task. The  minimum dimension of Task should be passed from Task constructor."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8e
    :goto_8e
    return-void
.end method

.method public final adjustAspectRatioIfNeeded(Landroid/graphics/Rect;)V
    .registers 12

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d3

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_d3

    :cond_10
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iget v1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const-string v4, " caller="

    const-string v5, " bounds="

    const-string v6, " resizeMode="

    const-string/jumbo v7, "adjustAspectRatioIfNeeded: task="

    const-string v8, "ActivityTaskManager"

    const v9, 0x3f99999a  # 1.2f

    if-ne v1, v2, :cond_81

    if-nez v0, :cond_81

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpg-float v0, v0, v9

    if-gez v0, :cond_d3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " adjusted(bottom)="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_81
    const/4 v2, 0x6

    if-ne v1, v2, :cond_d3

    if-eqz v0, :cond_d3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpg-float v0, v0, v9

    if-gez v0, :cond_d3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " adjusted(right)="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    :cond_d3
    :goto_d3
    return-void
.end method

.method public final adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;
    .registers 9

    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    :cond_e
    const/4 p2, 0x0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    if-eqz p0, :cond_19

    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    :cond_19
    return-object p2

    :cond_1a
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p3, :cond_3b

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    :cond_25
    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    const p1, 0x7fffffff

    invoke-virtual {v0, p1, p0, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_3a

    if-nez p0, :cond_25

    :cond_3a
    return-object v1

    :cond_3b
    const-string p3, " adjustFocusToNextFocusableTask"

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_84

    if-eqz v2, :cond_53

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-nez v2, :cond_84

    :cond_53
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    iget-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget p1, p1, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_60

    goto :goto_7a

    :cond_60
    new-instance p2, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    :goto_7a
    if-nez p2, :cond_80

    invoke-virtual {p0, p3}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    return-object v1

    :cond_80
    invoke-virtual {p2, p3}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    return-object v1

    :cond_84
    invoke-virtual {v0, p3, p2}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eqz p2, :cond_92

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    :cond_92
    return-object v1
.end method

.method public final adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .registers 9

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "ActivityTaskManager"

    const-string/jumbo p1, "Skip adjustForMinimalTaskDimensions for pip task"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iget v1, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v3, :cond_1e

    const/16 v2, 0xdc

    goto :goto_2f

    :cond_1e
    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isDeskRootTask()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mMinSizeOfDesktopTaskDp:I

    goto :goto_2f

    :cond_2b
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    :goto_2f
    iget v3, p3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000  # 160.0f

    div-float/2addr v3, v4

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3c

    move v0, v2

    :cond_3c
    if-ne v1, v3, :cond_3f

    move v1, v2

    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_47

    goto :goto_48

    :cond_47
    move v2, v4

    :goto_48
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_76

    iget-object p3, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lt v3, v0, :cond_60

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v3, v1, :cond_d2

    :cond_60
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ge v3, v2, :cond_73

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v3, v2, :cond_73

    goto :goto_d2

    :cond_73
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_76
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    const/4 v2, 0x1

    if-le v0, p3, :cond_7f

    move p3, v2

    goto :goto_80

    :cond_7f
    move p3, v4

    :goto_80
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v1, v3, :cond_87

    move v4, v2

    :cond_87
    if-nez p3, :cond_8c

    if-nez v4, :cond_8c

    goto :goto_d2

    :cond_8c
    if-eqz p3, :cond_af

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_aa

    iget p3, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-ne p3, v2, :cond_aa

    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz p3, :cond_a4

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p3

    if-nez p3, :cond_aa

    :cond_a4
    iget p3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, v0

    iput p3, p1, Landroid/graphics/Rect;->left:I

    goto :goto_af

    :cond_aa
    iget p3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p3, v0

    iput p3, p1, Landroid/graphics/Rect;->right:I

    :cond_af
    :goto_af
    if-eqz v4, :cond_d2

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_cd

    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-ne p3, p2, :cond_cd

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz p2, :cond_c7

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p0

    if-nez p0, :cond_cd

    :cond_c7
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v1

    iput p0, p1, Landroid/graphics/Rect;->top:I

    return-void

    :cond_cd
    iget p0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v1

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_d2
    :goto_d2
    return-void
.end method

.method public final asTask()Lcom/android/server/wm/Task;
    .registers 1

    return-object p0
.end method

.method public final assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_4
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_c7

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v5, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    const/4 v6, 0x1

    if-eqz v5, :cond_68

    iget-boolean v5, v5, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mIsBoosted:Z

    if-nez v5, :cond_68

    if-nez v3, :cond_68

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_36

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    iget v7, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-virtual {v5, v7}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v5

    if-eqz v5, :cond_36

    move v5, v6

    goto :goto_37

    :cond_36
    move v5, v0

    :goto_37
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v7

    if-eqz v7, :cond_5a

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-eqz v7, :cond_5a

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;

    const/4 v9, 0x1

    invoke-direct {v8, v7, v9}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskFragment;I)V

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    move-result v7

    if-nez v7, :cond_5a

    move v7, v6

    goto :goto_5b

    :cond_5a
    move v7, v0

    :goto_5b
    if-nez v5, :cond_68

    if-nez v7, :cond_68

    iget-object v3, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    add-int/lit8 v5, v2, 0x1

    invoke-static {v3, p1, v2}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->-$$Nest$massignLayer(Lcom/android/server/wm/Task$DecorSurfaceContainer;Landroid/view/SurfaceControl$Transaction;I)V

    move v2, v5

    move v3, v6

    :cond_68
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, p1, v2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_8c

    iget-boolean v7, v2, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-eqz v7, :cond_8c

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v7

    if-eqz v7, :cond_8c

    filled-new-array {v5}, [I

    move-result-object v5

    new-instance v7, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;

    const/4 v8, 0x0

    invoke-direct {v7, v8, p1, v5}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Consumer;)V

    aget v5, v5, v0

    :cond_8c
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_DIVIDER:Z

    if-eqz v7, :cond_ac

    if-eqz v3, :cond_ac

    if-eqz v2, :cond_ac

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isSplitEmbedded()Z

    move-result v2

    if-eqz v2, :cond_ac

    iget-object v2, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    iget-object v2, v2, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mOwnerTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isSplitEmbedded()Z

    move-result v2

    if-eqz v2, :cond_ac

    iget-object v2, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    add-int/lit8 v7, v5, 0x1

    invoke-static {v2, p1, v5}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->-$$Nest$massignLayer(Lcom/android/server/wm/Task$DecorSurfaceContainer;Landroid/view/SurfaceControl$Transaction;I)V

    move v5, v7

    :cond_ac
    iget-object v2, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-eqz v2, :cond_c2

    iget-boolean v7, v2, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mIsBoosted:Z

    if-nez v7, :cond_c2

    if-nez v3, :cond_c2

    iget-object v7, v2, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mOwnerTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-ne v4, v7, :cond_c2

    add-int/lit8 v3, v5, 0x1

    invoke-static {v2, p1, v5}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->-$$Nest$massignLayer(Lcom/android/server/wm/Task$DecorSurfaceContainer;Landroid/view/SurfaceControl$Transaction;I)V

    move v2, v3

    move v3, v6

    goto :goto_c3

    :cond_c2
    move v2, v5

    :goto_c3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_c7
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-eqz v0, :cond_d5

    iget-boolean v1, v0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mIsBoosted:Z

    if-eqz v1, :cond_d5

    add-int/lit8 v1, v2, 0x1

    invoke-static {v0, p1, v2}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->-$$Nest$massignLayer(Lcom/android/server/wm/Task$DecorSurfaceContainer;Landroid/view/SurfaceControl$Transaction;I)V

    move v2, v1

    :cond_d5
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    if-eqz p0, :cond_e0

    iget-object p0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_e0

    invoke-virtual {p1, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_e0
    return-void
.end method

.method public final canMinimize()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    if-nez v0, :cond_36

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_36

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_36

    :cond_12
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TaskDisplayArea;->isUnderHomeTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isDeskRootTask()Z

    move-result p0

    if-nez p0, :cond_36

    return v0

    :cond_36
    :goto_36
    const/4 p0, 0x0

    return p0
.end method

.method public final canMoveTaskToBack(Lcom/android/server/wm/Task;)Z
    .registers 7

    const/4 v0, 0x0

    if-eq p1, p0, :cond_a

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_5a

    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    iget-object v2, v1, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {v1}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    return v0

    :cond_1a
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    const/4 v2, 0x1

    if-eqz v1, :cond_5b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;-><init>(ILcom/android/server/wm/Task;)V

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_5b

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-eqz v1, :cond_40

    goto :goto_5b

    :cond_40
    :try_start_40
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v1, p1}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result p0
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_4a} :catch_4b

    goto :goto_58

    :catch_4b
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    move p0, v2

    :goto_58
    if-nez p0, :cond_5b

    :goto_5a
    return v0

    :cond_5b
    :goto_5b
    return v2
.end method

.method public final checkReadyForSleep()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->goToSleepIfPossible(Z)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkReadyForSleepLocked(Z)V

    :cond_23
    return-void
.end method

.method public final clearPinnedTaskIfNeed()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    :cond_d
    return-void
.end method

.method public final clearRootProcess()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_16

    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    :cond_16
    return-void
.end method

.method public final clearTopActivities(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;
    .registers 7

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;-><init>(I)V

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    if-nez v0, :cond_23

    const/4 p0, 0x0

    return-object p0

    :cond_23
    invoke-virtual {p0, v0, p3}, Lcom/android/server/wm/Task;->moveTaskFragmentsToBottomIfNeeded(Lcom/android/server/wm/ActivityRecord;[I)V

    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;

    invoke-direct {p1, p3}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;-><init>([I)V

    const-class p3, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object p3

    invoke-static {p1, p3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    iget p0, v0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-nez p0, :cond_5c

    const/high16 p0, 0x20000000

    and-int/2addr p0, p2

    if-nez p0, :cond_5c

    sget-object p0, Lcom/android/server/wm/ActivityStarter;->mtdManager:Lcom/samsung/android/knox/mtd/KMTDManager;

    const/high16 p0, 0x80000

    and-int/2addr p0, p2

    if-eqz p0, :cond_51

    const/high16 p0, 0x8000000

    and-int/2addr p0, p2

    if-nez p0, :cond_51

    return-object v0

    :cond_51
    iget-boolean p0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p0, :cond_5c

    const-string/jumbo p0, "clear-task-top"

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_5c
    return-object v0
.end method

.method public final cropWindowsToRootTaskBounds()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :cond_12
    if-eq p0, v0, :cond_1a

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    :cond_1c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result p0

    return p0
.end method

.method public final dismissPip()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setRootTaskWindowingMode(I)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-virtual {v2, v3, p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_25
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eq p0, v2, :cond_3d

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p0

    if-nez p0, :cond_3d

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p0

    if-nez p0, :cond_3d

    goto :goto_59

    :cond_3d
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p0

    new-instance v2, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;I)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    iput-object p0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mPipModeChangedTargetRootTaskBounds:Landroid/graphics/Rect;

    iget-object p0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v0, 0xd7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_59

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_59
    :goto_59
    return-void

    :cond_5a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t exit pinned mode if it\'s not pinned already."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "You can\'t move tasks from non-standard root tasks."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dispatchTaskInfoChangedIfNeeded(Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    if-nez v1, :cond_12

    goto :goto_5e

    :cond_12
    iget-object v0, v0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-interface {v1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    iget-object v0, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mPendingEventsQueue:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    if-nez v0, :cond_2e

    const-string/jumbo p0, "TaskOrganizerController"

    const-string/jumbo p1, "cannot send onTaskInfoChanged because pending events queue is not present for this organizer"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2e
    if-eqz p1, :cond_3d

    iget-object v1, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3d

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    return-void

    :cond_3d
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->getPendingLifecycleTaskEvent(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    move-result-object v1

    const/4 v2, 0x2

    if-nez v1, :cond_4a

    new-instance v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(ILcom/android/server/wm/Task;)V

    goto :goto_54

    :cond_4a
    iget p0, v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    if-eq p0, v2, :cond_4f

    goto :goto_5e

    :cond_4f
    iget-object p0, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_54
    iget-boolean p0, v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mForce:Z

    or-int/2addr p0, p1

    iput-boolean p0, v1, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mForce:Z

    iget-object p0, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5e
    :goto_5e
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 12

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " mUserSetupComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mCallingFeatureId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_71

    :cond_48
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_67

    iget-object v1, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto :goto_67

    :cond_63
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_71

    :cond_67
    :goto_67
    const-string v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_71
    :goto_71
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_83

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "windowLayoutAffinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_83
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_8b

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_b3

    :cond_8b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b3
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/16 v1, 0x7d

    const/16 v2, 0x80

    if-eqz v0, :cond_dc

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "intent={"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_dc
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_101

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "affinityIntent={"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_101
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_117

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_117
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_12d

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mActivityComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_12d
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-nez v0, :cond_13b

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-nez v0, :cond_13b

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result v0

    if-nez v0, :cond_15f

    :cond_13b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " activityType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_15f
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    const/4 v1, 0x1

    if-nez v0, :cond_170

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_170

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v0, :cond_170

    iget v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-eq v0, v1, :cond_19e

    :cond_170
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_19e
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v0, v2, :cond_1b5

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1b5

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_1b5

    iget v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    if-ne v0, v2, :cond_1b5

    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_20d

    :cond_1b5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    const-string/jumbo v3, "null"

    if-nez v2, :cond_1dd

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1e8

    :cond_1dd
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1e8
    const-string v2, ") nextAffiliation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_1fd

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_208

    :cond_1fd
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_208
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_20d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_222

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    if-nez v0, :cond_239

    :cond_222
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_239
    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_24b

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_24b
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_25d

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRootProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_25d
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_274

    const-string/jumbo v0, "mSharedStartingData="

    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/Task;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_274
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mKillProcessesOnDestroyed:Z

    if-eqz v0, :cond_27e

    const-string/jumbo v0, "mKillProcessesOnDestroyed=true"

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_27e
    const-string/jumbo v0, "taskId="

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " rootTaskId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "hasChildPipActivity="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    if-eqz v2, :cond_2ba

    move v2, v1

    goto :goto_2bb

    :cond_2ba
    move v2, v3

    :goto_2bb
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHasBeenVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    const-string/jumbo v2, "mResizeMode="

    invoke-static {p1, p2, v2, v0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mSupportsPictureInPicture="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " isResizeable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "isPerceptible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsPerceptible:Z

    const-string/jumbo v1, "lastActiveTime="

    invoke-static {p1, p2, v1, v0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " (inactive for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    sub-long/2addr v1, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "isTrimmable="

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mIsTrimmableFromRecents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " isForceHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " isForceExcludedFromRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mLaunchAdjacentDisabled:Z

    if-eqz v0, :cond_35d

    const-string/jumbo v0, "mLaunchAdjacentDisabled=true"

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_35d
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReparentLeafTaskIfRelaunch:Z

    if-eqz v0, :cond_367

    const-string/jumbo v0, "mReparentLeafTaskIfRelaunch=true"

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_367
    const-string/jumbo v0, "lastGainFocusTime="

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v0, :cond_3b2

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    if-eqz v0, :cond_38b

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "dedicated=true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_38b
    iget-object v0, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    if-eqz v0, :cond_3a7

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    if-nez v0, :cond_397

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_39c

    :cond_397
    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_39c
    const-string/jumbo p2, "hostProcess="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3a7
    iget-boolean p2, p0, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    if-nez p2, :cond_3af

    iget-object p0, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    if-eqz p0, :cond_3b2

    :cond_3af
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_3b2
    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 8

    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000002L

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    const-wide v1, 0x10500000010L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const-wide v1, 0x10b0000000cL

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_38
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_48

    const-wide v1, 0x1090000000dL

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_48
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_58

    const-wide v1, 0x1090000000eL

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_58
    const-wide v0, 0x10500000012L

    iget v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10800000004L

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-wide v1, 0x10b00000005L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_86

    const-wide v1, 0x10b00000016L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_86
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_a4

    const-wide v1, 0x10500000008L

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v0

    const-wide v1, 0x10500000009L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_a4
    const-wide v0, 0x1080000001cL

    iget-boolean v2, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1090000001dL

    iget-object v2, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_be

    const/4 v0, 0x1

    goto :goto_bf

    :cond_be
    const/4 v0, 0x0

    :goto_bf
    const-wide v1, 0x1080000001eL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10b0000001fL

    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/TaskFragment;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpInner(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13

    invoke-super/range {p0 .. p4}, Lcom/android/server/wm/TaskFragment;->dumpInner(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v2, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_29

    const-string v2, "  mCreatedByOrganizer=true"

    invoke-static {p1, p2, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    if-nez v2, :cond_14

    iget v2, p0, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    if-eqz v2, :cond_29

    :cond_14
    const-string v2, "  mOffsetXForInsets="

    invoke-static {p2, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mOffsetYForInsets="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    invoke-static {v2, v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    :cond_29
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    move-result v2

    if-eqz v2, :cond_34

    const-string v2, "  isAlwaysOnTopFreeform=true"

    invoke-static {p1, p2, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mBoostRootTaskLayerForFreeform:Z

    if-eqz v2, :cond_3d

    const-string v2, "  mBoostRootTaskLayerForFreeform=true"

    invoke-static {p1, p2, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_HANDLE:Z

    if-eqz v2, :cond_4a

    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mIsCaptionHiddenRequested:Z

    if-eqz v2, :cond_4a

    const-string v2, "  mIsCaptionHiddenRequested=true"

    invoke-static {p1, p2, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_HANDLE_KEEP_SCREEN_ON:Z

    if-eqz v2, :cond_57

    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mIsKeepScreenOn:Z

    if-eqz v2, :cond_57

    const-string v2, "  mIsKeepScreenOn=true"

    invoke-static {p1, p2, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FREEFORM_STASH:Z

    if-eqz v2, :cond_7f

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    move-result v2

    if-eqz v2, :cond_7f

    const-string v2, "  mFreeformStashScale="

    invoke-static {p2, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  mFreeformStashMode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/Task;->mFreeformStashMode:I

    invoke-static {v2, v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    :cond_7f
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_86

    goto :goto_a1

    :cond_86
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-nez v2, :cond_8d

    goto :goto_a1

    :cond_8d
    const-string v2, "  isMinimized="

    invoke-static {p2, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_a1
    const-string v2, "  "

    invoke-static {p2, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/android/server/wm/DesktopCompatPolicy;->supportDesktopCompat(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-nez v3, :cond_ae

    goto :goto_125

    :cond_ae
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SupportDesktopCompat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_e8

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getDesktopViewAppHeaderHeightPx(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v3

    if-lez v3, :cond_e8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ", CaptionHeight="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_e8
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v4, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_11b

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11b

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, ", AppBounds="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->rectToString(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_11b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v3, p0, Lcom/android/server/wm/Task;->mDesktopCompatDisplayInsets:Lcom/android/server/wm/DesktopCompatPolicy$DesktopAppCompatDisplayInsets;

    if-eqz v3, :cond_125

    invoke-virtual {v3, p1, v2}, Lcom/android/server/wm/DesktopCompatPolicy$DesktopAppCompatDisplayInsets;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_125
    :goto_125
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda58;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda58;-><init>(Lcom/android/server/wm/Task;Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/wm/PackagesChange;->forAllTaskChangeCallbacks(Ljava/util/function/Consumer;)V

    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mIsDragSourceTask:Z

    if-eqz v2, :cond_136

    const-string v2, "  mIsDragSourceTask=true"

    invoke-static {p1, p2, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_136
    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mHiddenWhileActivatingDrag:Z

    if-eqz v2, :cond_13f

    const-string v2, "  mHiddenWhileActivatingDrag=true"

    invoke-static {p1, p2, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13f
    iget v2, p0, Lcom/android/server/wm/Task;->mDeskRootTaskType:I

    if-eqz v2, :cond_154

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mDeskRootTaskType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/Task;->mDeskRootTaskType:I

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->deskRootTaskTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_154
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v2

    if-eqz v2, :cond_162

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  isForceHidden=true"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_162
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_173

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mLastNonFullscreenBounds="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_173
    iget v2, p0, Lcom/android/server/wm/Task;->mNonOccludedFreeformAreaRatio:I

    if-eqz v2, :cond_184

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mNonOccludedFreeformAreaRatio="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/Task;->mNonOccludedFreeformAreaRatio:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    :cond_184
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v2

    if-eqz v2, :cond_1e2

    const-string v2, "  isSleeping="

    invoke-static {p2, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    const-string v3, "  topPausingActivity="

    invoke-static {p2, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, -0x1

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZLjava/lang/String;Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda37;)Z

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    const-string v1, "  topResumedActivity="

    invoke-static {p2, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, -0x1

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZLjava/lang/String;Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda37;)Z

    iget v2, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1cb

    iget v2, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    if-eq v2, v3, :cond_1e2

    :cond_1cb
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mMinWidth="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " mMinHeight="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_1e2
    return-void
.end method

.method public final ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate(Lcom/android/server/wm/DisplayContent;)V

    :try_start_9
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;-><init>(Lcom/android/server/wm/ActivityRecord;Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    iget-object p1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_23

    goto :goto_25

    :catchall_23
    move-exception p1

    goto :goto_2b

    :cond_25
    :goto_25
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    return-void

    :goto_2b
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    throw p1
.end method

.method public final fillTaskInfo(Landroid/app/TaskInfo;Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method

.method public final fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v1, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v0, Lcom/android/server/wm/Task;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Landroid/app/TaskInfo;->addLaunchCookie(Landroid/os/IBinder;)V

    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskInfoHelper:Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;

    const/4 v4, 0x0

    iput v4, v1, Landroid/app/TaskInfo;->numActivities:I

    const/4 v5, 0x0

    iput-object v5, v1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    iput-object v5, v1, Landroid/app/TaskInfo;->capturedLink:Landroid/net/Uri;

    const-wide/16 v6, 0x0

    iput-wide v6, v1, Landroid/app/TaskInfo;->capturedLinkTimestamp:J

    iput-object v1, v3, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mInfo:Landroid/app/TaskInfo;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    iget-object v8, v3, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mTopRunning:Lcom/android/server/wm/ActivityRecord;

    iput-object v5, v3, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mTopRunning:Lcom/android/server/wm/ActivityRecord;

    iput-object v5, v3, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->mInfo:Landroid/app/TaskInfo;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v3

    if-eqz v3, :cond_34

    iget v3, v0, Lcom/android/server/wm/Task;->mUserId:I

    goto :goto_36

    :cond_34
    iget v3, v0, Lcom/android/server/wm/Task;->mCurrentUser:I

    :goto_36
    iput v3, v1, Landroid/app/TaskInfo;->userId:I

    iget v3, v0, Lcom/android/server/wm/Task;->mTaskId:I

    iput v3, v1, Landroid/app/TaskInfo;->taskId:I

    iget v3, v0, Lcom/android/server/wm/Task;->effectiveUid:I

    iput v3, v1, Landroid/app/TaskInfo;->effectiveUid:I

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v3

    iput v3, v1, Landroid/app/TaskInfo;->displayId:I

    const/4 v3, -0x1

    if-eqz v2, :cond_4c

    iget v9, v2, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    goto :goto_4d

    :cond_4c
    move v9, v3

    :goto_4d
    iput v9, v1, Landroid/app/TaskInfo;->displayAreaFeatureId:I

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v9

    if-nez v9, :cond_57

    move v10, v4

    goto :goto_5b

    :cond_57
    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v10

    :goto_5b
    if-nez v9, :cond_63

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    goto :goto_6f

    :cond_63
    if-eqz p2, :cond_6a

    invoke-virtual {v9}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v11

    goto :goto_6f

    :cond_6a
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_6f
    iput-object v11, v1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v11, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v10, 0x1

    if-eqz v8, :cond_79

    move v11, v10

    goto :goto_7a

    :cond_79
    move v11, v4

    :goto_7a
    iput-boolean v11, v1, Landroid/app/TaskInfo;->isRunning:Z

    if-eqz v8, :cond_81

    iget-object v11, v8, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_82

    :cond_81
    move-object v11, v5

    :goto_82
    iput-object v11, v1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v11, v0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    iput-object v11, v1, Landroid/app/TaskInfo;->origActivity:Landroid/content/ComponentName;

    iget-object v11, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iput-object v11, v1, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    iget-wide v11, v0, Lcom/android/server/wm/Task;->lastActiveTime:J

    iput-wide v11, v1, Landroid/app/TaskInfo;->lastActiveTime:J

    new-instance v11, Landroid/app/ActivityManager$TaskDescription;

    iget-object v12, v0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v11, v12}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/app/ActivityManager$TaskDescription;)V

    iput-object v11, v1, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v11

    iput-boolean v11, v1, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    invoke-virtual {v0, v2, v10}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v11

    iput-boolean v11, v1, Landroid/app/TaskInfo;->originallySupportedMultiWindow:Z

    iget-boolean v11, v1, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    if-eqz v11, :cond_b1

    invoke-virtual {v0, v4}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v11

    if-nez v11, :cond_b1

    move v11, v10

    goto :goto_b2

    :cond_b1
    move v11, v4

    :goto_b2
    iput-boolean v11, v1, Landroid/app/TaskInfo;->supportsPipOnly:Z

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APPS_CUTOUT:Z

    if-eqz v11, :cond_bd

    iget-object v11, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_bd
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    if-eqz v11, :cond_c6

    iget-object v12, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_c6
    iget-object v12, v1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v12, v1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v12, v12, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    iget-object v12, v1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v12, v12, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    iget-object v12, v0, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v12

    iput-object v12, v1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    if-eqz v8, :cond_f4

    iget-object v12, v8, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v12, :cond_f4

    goto :goto_f5

    :cond_f4
    move-object v12, v0

    :goto_f5
    iget v13, v12, Lcom/android/server/wm/Task;->mResizeMode:I

    iput v13, v1, Landroid/app/TaskInfo;->resizeMode:I

    invoke-virtual {v12}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v13

    iput v13, v1, Landroid/app/TaskInfo;->topActivityType:I

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    iget-object v14, v12, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v14, :cond_152

    iget-object v14, v14, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v14, v14, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-nez v14, :cond_10f

    goto :goto_152

    :cond_10f
    invoke-virtual {v12, v4}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v14

    if-eqz v14, :cond_11e

    iget-boolean v15, v14, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v15, :cond_11e

    iget-object v14, v14, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v14, v14, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    goto :goto_131

    :cond_11e
    iget-object v14, v12, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    iget-object v15, v12, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v15, v15, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v15, v15, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v15}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    :goto_131
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v13, v15, v14}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v14

    if-eqz v14, :cond_152

    iget v14, v13, Landroid/graphics/Rect;->left:I

    iget v6, v15, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v6

    iget v6, v13, Landroid/graphics/Rect;->top:I

    iget v7, v15, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget v7, v15, Landroid/graphics/Rect;->right:I

    iget v5, v13, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v5

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    iget v15, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v15

    invoke-virtual {v13, v14, v6, v7, v5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_152
    :goto_152
    iput-object v13, v1, Landroid/app/TaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v10}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v5

    iput-boolean v5, v1, Landroid/app/TaskInfo;->isResizeable:Z

    iget v5, v0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iput v5, v1, Landroid/app/TaskInfo;->minWidth:I

    iget v5, v0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    iput v5, v1, Landroid/app/TaskInfo;->minHeight:I

    iget-object v5, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v5, :cond_169

    const/16 v6, 0xdc

    goto :goto_16b

    :cond_169
    iget v6, v5, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    :goto_16b
    iput v6, v1, Landroid/app/TaskInfo;->defaultMinSize:I

    if-nez v5, :cond_172

    const/16 v5, 0x193

    goto :goto_174

    :cond_172
    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mMinSizeOfDesktopTaskDp:I

    :goto_174
    iput v5, v1, Landroid/app/TaskInfo;->desktopDefaultMinSize:I

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v5}, Lcom/android/server/wm/Task;->getRelativePosition(Landroid/graphics/Point;)V

    iput-object v5, v1, Landroid/app/TaskInfo;->positionInParent:Landroid/graphics/Point;

    if-eqz v8, :cond_185

    iget-object v5, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_186

    :cond_185
    const/4 v5, 0x0

    :goto_186
    iput-object v5, v1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_19b

    iget-object v5, v8, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v5}, Landroid/app/PictureInPictureParams;->empty()Z

    move-result v5

    if-eqz v5, :cond_193

    goto :goto_19b

    :cond_193
    new-instance v5, Landroid/app/PictureInPictureParams;

    iget-object v6, v8, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-direct {v5, v6}, Landroid/app/PictureInPictureParams;-><init>(Landroid/app/PictureInPictureParams;)V

    goto :goto_19c

    :cond_19b
    :goto_19b
    const/4 v5, 0x0

    :goto_19c
    iput-object v5, v1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v5, :cond_1ad

    invoke-virtual {v5}, Landroid/app/PictureInPictureParams;->isLaunchIntoPip()Z

    move-result v5

    if-eqz v5, :cond_1ad

    iget-object v5, v8, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    if-eqz v5, :cond_1ad

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_1ae

    :cond_1ad
    move v5, v3

    :goto_1ae
    iput v5, v1, Landroid/app/TaskInfo;->launchIntoPipHostTaskId:I

    if-eqz v8, :cond_1b9

    iget-object v5, v8, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    if-eqz v5, :cond_1b9

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_1ba

    :cond_1b9
    move v5, v3

    :goto_1ba
    iput v5, v1, Landroid/app/TaskInfo;->lastParentTaskIdBeforePip:I

    if-eqz v8, :cond_1c4

    iget-boolean v5, v8, Lcom/android/server/wm/ActivityRecord;->shouldDockBigOverlays:Z

    if-eqz v5, :cond_1c4

    move v5, v10

    goto :goto_1c5

    :cond_1c4
    move v5, v4

    :goto_1c5
    iput-boolean v5, v1, Landroid/app/TaskInfo;->shouldDockBigOverlays:Z

    if-eqz v8, :cond_1cc

    iget-object v5, v8, Lcom/android/server/wm/ActivityRecord;->mLocusId:Landroid/content/LocusId;

    goto :goto_1cd

    :cond_1cc
    const/4 v5, 0x0

    :goto_1cd
    iput-object v5, v1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    if-eqz v8, :cond_1d4

    iget-wide v6, v8, Lcom/android/server/wm/ActivityRecord;->mRequestOpenInBrowserEducationTimestamp:J

    goto :goto_1d6

    :cond_1d4
    const-wide/16 v6, 0x0

    :goto_1d6
    iput-wide v6, v1, Landroid/app/TaskInfo;->topActivityRequestOpenInBrowserEducationTimestamp:J

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-eqz v5, :cond_1e7

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    goto :goto_1e8

    :cond_1e7
    const/4 v5, 0x0

    :goto_1e8
    if-eqz v5, :cond_1f1

    iget-boolean v6, v5, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v6, :cond_1f1

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_1f2

    :cond_1f1
    move v5, v3

    :goto_1f2
    iput v5, v1, Landroid/app/TaskInfo;->parentTaskId:I

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFocused()Z

    move-result v5

    iput-boolean v5, v1, Landroid/app/TaskInfo;->isFocused:Z

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_216

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v5

    if-eqz v5, :cond_207

    goto :goto_216

    :cond_207
    new-instance v5, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_216

    move v5, v10

    goto :goto_217

    :cond_216
    :goto_216
    move v5, v4

    :goto_217
    iput-boolean v5, v1, Landroid/app/TaskInfo;->isVisible:Z

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    iput-boolean v5, v1, Landroid/app/TaskInfo;->isVisibleRequested:Z

    if-eqz v8, :cond_227

    iget-boolean v5, v8, Lcom/android/server/wm/ActivityRecord;->mNoDisplay:Z

    if-eqz v5, :cond_227

    move v5, v10

    goto :goto_228

    :cond_227
    move v5, v4

    :goto_228
    iput-boolean v5, v1, Landroid/app/TaskInfo;->isTopActivityNoDisplay:Z

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result v5

    iput-boolean v5, v1, Landroid/app/TaskInfo;->isSleeping:Z

    if-eqz v8, :cond_23a

    invoke-virtual {v8, v10}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v5

    if-nez v5, :cond_23a

    move v5, v10

    goto :goto_23b

    :cond_23a
    move v5, v4

    :goto_23b
    iput-boolean v5, v1, Landroid/app/TaskInfo;->isTopActivityTransparent:Z

    new-instance v5, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v12, v5}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    move-result v5

    xor-int/2addr v5, v10

    iput-boolean v5, v1, Landroid/app/TaskInfo;->isActivityStackTransparent:Z

    iget-object v5, v12, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    iput-object v5, v1, Landroid/app/TaskInfo;->lastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v8, :cond_255

    invoke-virtual {v8, v4}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v5

    goto :goto_256

    :cond_255
    const/4 v5, 0x0

    :goto_256
    if-eqz v5, :cond_263

    sget-object v6, Landroid/window/DesktopModeFlags;->ENABLE_FULLY_IMMERSIVE_IN_DESKTOP:Landroid/window/DesktopModeFlags;

    invoke-virtual {v6}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v6

    if-eqz v6, :cond_263

    iget v6, v5, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    goto :goto_267

    :cond_263
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v6

    :goto_267
    iput v6, v1, Landroid/app/TaskInfo;->requestedVisibleTypes:I

    iget-object v6, v1, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    iput v3, v6, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    iput v3, v6, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    iput v3, v6, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    iput v3, v6, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    iget-object v3, v6, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v3, 0x0

    iput-object v3, v6, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxBounds:Landroid/graphics/Rect;

    iget-object v7, v6, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    iput v4, v7, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    invoke-virtual {v6}, Landroid/app/AppCompatTaskInfo;->clearTopActivityFlags()V

    if-nez v8, :cond_286

    goto/16 :goto_4d2

    :cond_286
    iget-object v7, v8, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v7, v7, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v7, v7, Lcom/android/server/wm/AppCompatOverrides;->mReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

    iget-object v12, v8, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v12, :cond_295

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v12

    goto :goto_296

    :cond_295
    move-object v12, v3

    :goto_296
    if-ne v12, v0, :cond_2a2

    sget-object v12, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v8, v12}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v12

    if-eqz v12, :cond_2a2

    move v12, v10

    goto :goto_2a3

    :cond_2a2
    move v12, v4

    :goto_2a3
    iget-object v13, v8, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v13, :cond_2ac

    invoke-virtual {v13}, Lcom/android/server/wm/Task;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v13

    goto :goto_2ad

    :cond_2ac
    move-object v13, v3

    :goto_2ad
    if-ne v13, v0, :cond_2bb

    iget-boolean v13, v8, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v13, :cond_2bb

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v13

    if-eqz v13, :cond_2bb

    move v13, v10

    goto :goto_2bc

    :cond_2bb
    move v13, v4

    :goto_2bc
    invoke-virtual {v6, v13}, Landroid/app/AppCompatTaskInfo;->setTopActivityInSizeCompat(Z)V

    invoke-virtual {v6}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result v13

    if-eqz v13, :cond_2d6

    iget-object v13, v8, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v13}, Lcom/android/server/wm/AppCompatConfiguration;->isTranslucentLetterboxingEnabled()Z

    move-result v13

    if-eqz v13, :cond_2d6

    invoke-virtual {v8, v10}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v13

    invoke-virtual {v6, v13}, Landroid/app/AppCompatTaskInfo;->setTopActivityInSizeCompat(Z)V

    :cond_2d6
    if-eqz v12, :cond_2e4

    iget-object v13, v8, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v13, v13, Lcom/android/server/wm/AppCompatController;->mLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-virtual {v13}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->isEligibleForLetterboxEducation()Z

    move-result v13

    if-eqz v13, :cond_2e4

    move v13, v10

    goto :goto_2e5

    :cond_2e4
    move v13, v4

    :goto_2e5
    invoke-virtual {v6, v13}, Landroid/app/AppCompatTaskInfo;->setEligibleForLetterboxEducation(Z)V

    iget-object v13, v8, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v13, v13, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v13, v13, Lcom/android/server/wm/AppCompatOverrides;->mLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    iget-object v13, v13, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-boolean v13, v13, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    invoke-virtual {v6, v13}, Landroid/app/AppCompatTaskInfo;->setLetterboxEducationEnabled(Z)V

    iget-object v13, v8, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v13, v13, Lcom/android/server/wm/AppCompatController;->mDisplayCompatModePolicy:Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;

    iget-boolean v14, v13, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->mDisplayChangedWithoutRestart:Z

    iget-object v15, v13, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v14, :cond_30c

    iget-boolean v14, v13, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->mIsDesktopDensityCompatOverride:Z

    if-eqz v14, :cond_304

    goto :goto_30e

    :cond_304
    iget-object v14, v15, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->category:I

    if-eqz v14, :cond_30e

    :cond_30c
    move v14, v4

    goto :goto_317

    :cond_30e
    :goto_30e
    iget-object v14, v15, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v14}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v14

    not-int v14, v14

    and-int/lit16 v14, v14, 0x5008

    :goto_317
    if-eqz v14, :cond_31b

    move v14, v10

    goto :goto_31c

    :cond_31b
    move v14, v4

    :goto_31c
    if-nez v14, :cond_32b

    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v14

    if-eqz v14, :cond_329

    iget-boolean v13, v13, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->mDisplayChangedWithoutRestart:Z

    if-eqz v13, :cond_329

    goto :goto_32b

    :cond_329
    move v13, v4

    goto :goto_32c

    :cond_32b
    :goto_32b
    move v13, v10

    :goto_32c
    invoke-virtual {v6, v13}, Landroid/app/AppCompatTaskInfo;->setRestartMenuEnabledForDisplayMove(Z)V

    iget-object v13, v8, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v13, v13, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v13, v13, Lcom/android/server/wm/AppCompatOverrides;->mAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    invoke-virtual {v13}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldApplyUserFullscreenOverride()Z

    move-result v14

    invoke-virtual {v6, v14}, Landroid/app/AppCompatTaskInfo;->setUserFullscreenOverrideEnabled(Z)V

    invoke-virtual {v13}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->isSystemOverrideToFullscreenEnabled()Z

    move-result v14

    invoke-virtual {v6, v14}, Landroid/app/AppCompatTaskInfo;->setSystemFullscreenOverrideEnabled(Z)V

    iget-object v14, v7, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    iget-boolean v15, v14, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsDoubleTapEvent:Z

    iput-boolean v4, v14, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsDoubleTapEvent:Z

    invoke-virtual {v6, v15}, Landroid/app/AppCompatTaskInfo;->setIsFromLetterboxDoubleTap(Z)V

    iget-object v14, v6, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    invoke-static {v8}, Lcom/android/server/wm/AppCompatUtils;->getAppBounds(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    move-result v14

    invoke-virtual {v6, v14}, Landroid/app/AppCompatTaskInfo;->setTopActivityLetterboxed(Z)V

    if-eqz v14, :cond_3db

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v15

    iput v15, v6, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v15

    iput v15, v6, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    iput-object v14, v6, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxBounds:Landroid/graphics/Rect;

    iget-object v14, v7, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    invoke-virtual {v7, v15}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalReachabilityEnabled(Landroid/content/res/Configuration;)Z

    move-result v15

    if-nez v15, :cond_391

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalReachabilityEnabled(Landroid/content/res/Configuration;)Z

    move-result v14

    if-eqz v14, :cond_38f

    goto :goto_391

    :cond_38f
    move v14, v4

    goto :goto_392

    :cond_391
    :goto_391
    move v14, v10

    :goto_392
    invoke-virtual {v6, v14}, Landroid/app/AppCompatTaskInfo;->setLetterboxDoubleTapEnabled(Z)V

    invoke-virtual {v6}, Landroid/app/AppCompatTaskInfo;->isLetterboxDoubleTapEnabled()Z

    move-result v14

    if-eqz v14, :cond_3db

    invoke-virtual {v6}, Landroid/app/AppCompatTaskInfo;->isTopActivityPillarboxShaped()Z

    move-result v14

    iget-object v15, v7, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    iget-object v3, v7, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    if-eqz v14, :cond_3c5

    invoke-virtual {v7}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalThinLetterboxed()Z

    move-result v7

    if-nez v7, :cond_3c1

    invoke-virtual {v15, v4}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndInPosture(Z)Z

    move-result v7

    if-eqz v7, :cond_3b7

    iget-boolean v7, v3, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    if-eqz v7, :cond_3b7

    move v7, v10

    goto :goto_3b8

    :cond_3b7
    move v7, v4

    :goto_3b8
    iget-object v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {v3, v7}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result v3

    iput v3, v6, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    goto :goto_3db

    :cond_3c1
    invoke-virtual {v6, v4}, Landroid/app/AppCompatTaskInfo;->setLetterboxDoubleTapEnabled(Z)V

    goto :goto_3db

    :cond_3c5
    invoke-virtual {v7}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalThinLetterboxed()Z

    move-result v7

    if-nez v7, :cond_3d8

    invoke-virtual {v15}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndSeparatingHinge()Z

    move-result v7

    iget-object v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {v3, v7}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    move-result v3

    iput v3, v6, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    goto :goto_3db

    :cond_3d8
    invoke-virtual {v6, v4}, Landroid/app/AppCompatTaskInfo;->setLetterboxDoubleTapEnabled(Z)V

    :cond_3db
    :goto_3db
    invoke-virtual {v6}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result v3

    if-nez v3, :cond_3e9

    invoke-virtual {v13}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldEnableUserAspectRatioSettings()Z

    move-result v3

    if-eqz v3, :cond_3e9

    move v3, v10

    goto :goto_3ea

    :cond_3e9
    move v3, v4

    :goto_3ea
    invoke-virtual {v6, v3}, Landroid/app/AppCompatTaskInfo;->setEligibleForUserAspectRatioButton(Z)V

    iget-object v3, v6, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    iget-object v7, v8, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v7, :cond_3f6

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    goto :goto_3f7

    :cond_3f6
    const/4 v7, 0x0

    :goto_3f7
    if-eqz v7, :cond_402

    iget-object v7, v7, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    if-eqz v7, :cond_402

    invoke-virtual {v7, v8}, Lcom/android/server/wm/CameraCompatFreeformPolicy;->getCameraCompatMode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v7

    goto :goto_403

    :cond_402
    move v7, v10

    :goto_403
    iput v7, v3, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    iget-object v3, v8, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v3, v3, Lcom/android/server/wm/AppCompatController;->mDesktopAspectRatioPolicy:Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

    iget-object v7, v3, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v7

    invoke-virtual {v3, v0}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getMinAspectRatio(Lcom/android/server/wm/Task;)F

    move-result v3

    cmpg-float v3, v7, v3

    if-gez v3, :cond_41b

    move v3, v10

    goto :goto_41c

    :cond_41b
    move v3, v4

    :goto_41c
    invoke-virtual {v6, v3}, Landroid/app/AppCompatTaskInfo;->setHasMinAspectRatioOverride(Z)V

    iget-boolean v3, v8, Lcom/android/server/wm/ActivityRecord;->mOptOutEdgeToEdge:Z

    invoke-virtual {v6, v3}, Landroid/app/AppCompatTaskInfo;->setOptOutEdgeToEdge(Z)V

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_MULTI_FOLD_CAMERA_POLICY:Z

    if-eqz v3, :cond_42e

    iget-boolean v3, v8, Lcom/android/server/wm/ActivityRecord;->mIsCameraCompatEnabled:Z

    if-eqz v3, :cond_42e

    move v3, v10

    goto :goto_42f

    :cond_42e
    move v3, v4

    :goto_42f
    if-eqz v11, :cond_452

    iget-boolean v7, v1, Landroid/app/TaskInfo;->isLaunchedFromMultistarCoverLauncher:Z

    if-eqz v7, :cond_452

    invoke-virtual {v6, v10}, Landroid/app/AppCompatTaskInfo;->setEligibleForUserAspectRatioButton(Z)V

    iget-object v7, v8, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v7, v7, Lcom/android/server/wm/AppCompatController;->mAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    iget-object v11, v7, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    iget-object v11, v11, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForAspectRatio:Landroid/graphics/Rect;

    if-eqz v11, :cond_444

    move v11, v10

    goto :goto_445

    :cond_444
    move v11, v4

    :goto_445
    if-eqz v11, :cond_452

    iget v7, v7, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mCoverLauncherMinAspectRatio:F

    const/high16 v11, -0x40800000  # -1.0f

    cmpl-float v7, v7, v11

    if-eqz v7, :cond_452

    invoke-virtual {v6, v10}, Landroid/app/AppCompatTaskInfo;->setHasMinAspectRatioOverride(Z)V

    :cond_452
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    if-eqz v7, :cond_465

    if-nez v3, :cond_465

    iget-object v7, v8, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v7, v7, Lcom/android/server/wm/AppCompatController;->mAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    invoke-virtual {v7}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isUserOrSystemMinAspectRatioApplied()Z

    move-result v7

    if-eqz v7, :cond_465

    invoke-virtual {v6, v10}, Landroid/app/AppCompatTaskInfo;->setHasMinAspectRatioOverride(Z)V

    :cond_465
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ROTATION_COMPAT_MODE:Z

    if-eqz v7, :cond_47e

    if-nez v3, :cond_47e

    invoke-virtual {v6}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result v7

    if-eqz v7, :cond_47e

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v7

    if-eqz v7, :cond_47e

    iget-boolean v7, v7, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsRotationCompatMode:Z

    if-eqz v7, :cond_47e

    invoke-virtual {v6, v10}, Landroid/app/AppCompatTaskInfo;->setRotationCompatModeEnabled(Z)V

    :cond_47e
    if-eqz v12, :cond_486

    iget-object v7, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v7, v0}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result v7

    :cond_486
    if-nez v3, :cond_49b

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    move-result v7

    if-eqz v7, :cond_49b

    iget-object v7, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v7, v0}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result v7

    if-nez v7, :cond_49b

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    goto :goto_49c

    :cond_49b
    const/4 v7, 0x0

    :goto_49c
    iput-object v7, v6, Landroid/app/AppCompatTaskInfo;->topActivityBounds:Landroid/graphics/Rect;

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-nez v7, :cond_4a6

    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT_CONFIGURATION:Z

    if-eqz v7, :cond_4b3

    :cond_4a6
    if-nez v3, :cond_4b3

    if-eqz v12, :cond_4b0

    iget-boolean v7, v0, Lcom/android/server/wm/Task;->mSingleTap:Z

    if-eqz v7, :cond_4b0

    move v7, v10

    goto :goto_4b1

    :cond_4b0
    move v7, v4

    :goto_4b1
    iput-boolean v7, v6, Landroid/app/AppCompatTaskInfo;->singleTapFromLetterbox:Z

    :cond_4b3
    if-nez v3, :cond_4bb

    invoke-static {v8}, Lcom/android/server/wm/DesktopCompatPolicy;->isDesktopSizeCompatMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    if-eqz v7, :cond_4be

    :cond_4bb
    invoke-virtual {v6, v4}, Landroid/app/AppCompatTaskInfo;->setTopActivityInSizeCompat(Z)V

    :cond_4be
    if-eqz v3, :cond_4c3

    invoke-virtual {v6, v4}, Landroid/app/AppCompatTaskInfo;->setEligibleForUserAspectRatioButton(Z)V

    :cond_4c3
    invoke-static {v0}, Lcom/android/server/wm/DesktopCompatPolicy;->supportDesktopCompat(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_4d2

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v3

    if-eqz v3, :cond_4d2

    invoke-virtual {v6, v10}, Landroid/app/AppCompatTaskInfo;->setOptOutEdgeToEdge(Z)V

    :cond_4d2
    :goto_4d2
    if-nez v8, :cond_4d6

    :goto_4d4
    const/4 v6, 0x0

    goto :goto_4ef

    :cond_4d6
    invoke-virtual {v8, v10}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-nez v3, :cond_4dd

    goto :goto_4d4

    :cond_4dd
    iget-boolean v6, v3, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-nez v6, :cond_4e2

    goto :goto_4d4

    :cond_4e2
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4ef

    goto :goto_4d4

    :cond_4ef
    :goto_4ef
    iput-object v6, v1, Landroid/app/TaskInfo;->topActivityMainWindowFrame:Landroid/graphics/Rect;

    iget-wide v6, v0, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    iput-wide v6, v1, Landroid/app/TaskInfo;->lastGainFocusTime:J

    iget-object v3, v0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    iput-object v3, v1, Landroid/app/TaskInfo;->rootAffinity:Ljava/lang/String;

    if-eqz v8, :cond_501

    iget-boolean v3, v8, Lcom/android/server/wm/ActivityRecord;->mIsAllowedSeamlessRotation:Z

    if-eqz v3, :cond_501

    move v3, v10

    goto :goto_502

    :cond_501
    move v3, v4

    :goto_502
    iput-boolean v3, v1, Landroid/app/TaskInfo;->isAllowedSeamlessRotation:Z

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    move-result v3

    iput-boolean v3, v1, Landroid/app/TaskInfo;->isForceHidden:Z

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FREEFORM_RESIZE_GUIDE:Z

    if-eqz v3, :cond_516

    iget v3, v0, Lcom/android/server/wm/Task;->mMaxWidth:I

    iput v3, v1, Landroid/app/TaskInfo;->maxWidth:I

    iget v3, v0, Lcom/android/server/wm/Task;->mMaxHeight:I

    iput v3, v1, Landroid/app/TaskInfo;->maxHeight:I

    :cond_516
    invoke-virtual {v0, v10, v4}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_521

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v3

    goto :goto_522

    :cond_521
    const/4 v3, 0x0

    :goto_522
    if-eqz v3, :cond_53e

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v6}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v6

    if-nez v6, :cond_53b

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/high16 v6, 0x3f800000  # 1.0f

    cmpg-float v3, v3, v6

    if-gez v3, :cond_539

    goto :goto_53b

    :cond_539
    move v3, v4

    goto :goto_53c

    :cond_53b
    :goto_53b
    move v3, v10

    :goto_53c
    iput-boolean v3, v1, Landroid/app/TaskInfo;->isTopTransparentActivity:Z

    :cond_53e
    iget-boolean v3, v0, Lcom/android/server/wm/Task;->mIsAliasManaged:Z

    iput-boolean v3, v1, Landroid/app/TaskInfo;->isAliasManaged:Z

    invoke-virtual {v0, v10, v4}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_54c

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->mIsAiKeyRemoveAppTarget:Z

    if-nez v3, :cond_554

    :cond_54c
    if-eqz v9, :cond_556

    invoke-virtual {v9}, Landroid/content/Intent;->isAiKeyAppLaunch()Z

    move-result v3

    if-eqz v3, :cond_556

    :cond_554
    move v3, v10

    goto :goto_557

    :cond_556
    move v3, v4

    :goto_557
    iput-boolean v3, v1, Landroid/app/TaskInfo;->isAiKeyRemoveAppTask:Z

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION:Z

    if-eqz v3, :cond_574

    invoke-virtual {v0, v4}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_571

    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    const/4 v6, 0x7

    invoke-direct {v3, v6}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-nez v3, :cond_571

    move v3, v10

    goto :goto_572

    :cond_571
    move v3, v4

    :goto_572
    iput-boolean v3, v1, Landroid/app/TaskInfo;->isTranslucentTask:Z

    :cond_574
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_HANDLE:Z

    if-eqz v3, :cond_5a2

    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    const/4 v6, 0x4

    invoke-direct {v3, v6}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_58f

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v6, 0x1000000

    and-int/2addr v3, v6

    if-eqz v3, :cond_58f

    move v3, v10

    goto :goto_590

    :cond_58f
    move v3, v4

    :goto_590
    iput-boolean v3, v1, Landroid/app/TaskInfo;->isCaptionHiddenRequested:Z

    if-eqz v9, :cond_59f

    const-string/jumbo v3, "launch_from_swipe"

    invoke-virtual {v9, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_59f

    move v3, v10

    goto :goto_5a0

    :cond_59f
    move v3, v4

    :goto_5a0
    iput-boolean v3, v1, Landroid/app/TaskInfo;->isLaunchedFromHomeSwipe:Z

    :cond_5a2
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FULL_SCREEN:Z

    if-eqz v3, :cond_5cd

    if-eqz v2, :cond_5b0

    invoke-virtual {v2, v10, v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne v2, v0, :cond_5b0

    move v2, v10

    goto :goto_5b1

    :cond_5b0
    move v2, v4

    :goto_5b1
    iput-boolean v2, v1, Landroid/app/TaskInfo;->isTopFullScreenWindow:Z

    iget-boolean v2, v0, Lcom/android/server/wm/Task;->mIsGameToolsOverlayVisible:Z

    iput-boolean v2, v1, Landroid/app/TaskInfo;->isGameToolsOverlayVisible:Z

    if-eqz v5, :cond_5c4

    iget-object v2, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_5c2

    goto :goto_5c4

    :cond_5c2
    move v2, v4

    goto :goto_5c5

    :cond_5c4
    :goto_5c4
    move v2, v10

    :goto_5c5
    iput-boolean v2, v1, Landroid/app/TaskInfo;->isFullSizeWindow:Z

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isHandleImmersive()Z

    move-result v2

    iput-boolean v2, v1, Landroid/app/TaskInfo;->isHandleImmersive:Z

    :cond_5cd
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_HANDLE_KEEP_SCREEN_ON:Z

    if-eqz v2, :cond_5de

    iget-boolean v2, v0, Lcom/android/server/wm/Task;->mIsKeepScreenOn:Z

    if-eqz v2, :cond_5db

    iget-boolean v2, v1, Landroid/app/TaskInfo;->isHandleImmersive:Z

    if-nez v2, :cond_5db

    move v2, v10

    goto :goto_5dc

    :cond_5db
    move v2, v4

    :goto_5dc
    iput-boolean v2, v1, Landroid/app/TaskInfo;->isKeepScreenOn:Z

    :cond_5de
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_CUTOUT:Z

    if-eqz v2, :cond_629

    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_604

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    if-eqz v2, :cond_604

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_604

    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    if-eqz v2, :cond_604

    iget-object v3, v2, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcCutout:Landroid/view/DisplayCutout;

    if-eqz v3, :cond_5fc

    move v3, v10

    goto :goto_5fd

    :cond_5fc
    move v3, v4

    :goto_5fd
    if-eqz v3, :cond_604

    iget-object v2, v2, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    goto :goto_605

    :cond_604
    const/4 v2, 0x0

    :goto_605
    iput-object v2, v1, Landroid/app/TaskInfo;->safeCutoutInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_626

    iget-object v2, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_626

    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDisplayCutoutController:Lcom/android/server/wm/DisplayCutoutController;

    if-eqz v3, :cond_626

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2, v4}, Lcom/android/server/wm/DisplayCutoutController;->getPolicy(ILjava/lang/String;Z)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_626

    move v2, v10

    goto :goto_627

    :cond_626
    move v2, v4

    :goto_627
    iput-boolean v2, v1, Landroid/app/TaskInfo;->isDisplayCutoutHide:Z

    :cond_629
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isActivatableDeskRoot()Z

    move-result v2

    iput-boolean v2, v1, Landroid/app/TaskInfo;->activatableDeskRoot:Z

    if-nez v5, :cond_632

    move v4, v10

    :cond_632
    iput-boolean v4, v1, Landroid/app/TaskInfo;->hasNoTopWindow:Z

    iget-boolean v0, v0, Lcom/android/server/wm/Task;->mRequestFullscreenMode:Z

    iput-boolean v0, v1, Landroid/app/TaskInfo;->requestFullscreenMode:Z

    return-void
.end method

.method public final forAllLeafTasks(Ljava/util/function/Consumer;Z)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_22

    sub-int/2addr v0, v2

    :goto_b
    if-ltz v0, :cond_3a

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    move v2, v1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_22
    move v3, v1

    :goto_23
    if-ge v3, v0, :cond_3a

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_37

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    move v2, v1

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_3a
    if-eqz v2, :cond_3f

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3f
    return-void
.end method

.method public final forAllLeafTasks(Ljava/util/function/Predicate;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v2, v1

    :goto_9
    const/4 v3, 0x0

    if-ltz v0, :cond_25

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_22

    invoke-virtual {v4, p1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_21

    return v1

    :cond_21
    move v2, v3

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_25
    if-eqz v2, :cond_2c

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2c
    return v3
.end method

.method public final forAllRootTasks(Ljava/util/function/Consumer;Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public final forAllRootTasks(Ljava/util/function/Predicate;Z)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public final forAllTasks(Ljava/util/function/Consumer;Z)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final forAllTasks(Ljava/util/function/Predicate;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final forOtherAdjacentTasks(Ljava/util/function/Predicate;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskWithAdjacent()Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragments:Lcom/android/server/wm/TaskFragment$AdjacentSet;

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda20;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda20;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->forAllTaskFragments(Ljava/util/function/Predicate;Lcom/android/server/wm/TaskFragment;)Z

    move-result p0

    return p0
.end method

.method public final getAdjustedChildPosition(ILcom/android/server/wm/WindowContainer;)I
    .registers 8

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    :goto_d
    if-ge v2, v1, :cond_21

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_21

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_21
    :goto_21
    if-lez v1, :cond_3e

    if-eqz v0, :cond_28

    add-int/lit8 v0, v1, -0x1

    goto :goto_3f

    :cond_28
    add-int/lit8 v0, v1, -0x1

    :goto_2a
    if-lez v0, :cond_3f

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_3f

    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    :cond_3e
    move v0, v2

    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-static {v3, v4, p0}, Lcom/android/server/wm/FreeformController;->useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)Z

    move-result v3

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result v4

    if-nez v4, :cond_67

    if-nez v3, :cond_67

    :goto_53
    if-le v0, v2, :cond_67

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result v3

    if-nez v3, :cond_64

    goto :goto_67

    :cond_64
    add-int/lit8 v0, v0, -0x1

    goto :goto_53

    :cond_67
    :goto_67
    const/high16 v3, -0x80000000

    if-ne p1, v3, :cond_6e

    if-nez v2, :cond_6e

    return v3

    :cond_6e
    const v3, 0x7fffffff

    if-ne p1, v3, :cond_78

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_78

    return v3

    :cond_78
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-nez p0, :cond_80

    add-int/lit8 v0, v0, 0x1

    :cond_80
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskWithAdjacent()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowContainer;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void

    :cond_a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowState;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void

    :cond_21
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowContainer;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getBaseIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_a

    return-object v0

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq v0, p0, :cond_17

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getBasePackageName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_9

    return-object v0

    :cond_9
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    return-object v0
.end method

.method public final getCreatedByOrganizerTask()Lcom/android/server/wm/Task;
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_d

    return-object v0

    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_14

    return-object v0

    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public final getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object p0

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTranslucentAndVisible()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTranslucentForTransition()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1f

    :cond_1c
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object p0

    :cond_1f
    :goto_1f
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object p0

    return-object p0
.end method

.method public final getDumpActivitiesLocked(ILjava/lang/String;)Ljava/util/ArrayList;
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "all"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance p2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda57;

    const/4 v1, 0x3

    invoke-direct {p2, v1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda57;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_3c

    :cond_18
    const-string/jumbo v1, "top"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_3c

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_2b
    new-instance v1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    invoke-virtual {v1, p2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    new-instance p2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;

    const/4 v2, 0x2

    invoke-direct {p2, v2, v1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    :cond_3c
    :goto_3c
    const/4 p0, -0x1

    if-eq p1, p0, :cond_57

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_45
    if-ltz p0, :cond_57

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    iget p2, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq p2, p1, :cond_54

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_54
    add-int/lit8 p0, p0, -0x1

    goto :goto_45

    :cond_57
    return-object v0
.end method

.method public final getFreeformContainerPosition()Landroid/graphics/Point;
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mFreeformContainerPoint:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_11

    if-ne v0, v2, :cond_29

    :cond_11
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_29

    iget v0, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget-object p0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    :cond_29
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Task="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNextFocusableTask(Z)Lcom/android/server/wm/Task;
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wm/Task;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_22

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    :cond_22
    if-eqz p0, :cond_41

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isDeskRootTask()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_41

    if-ne v0, p0, :cond_41

    const-string p0, "ActivityTaskManager"

    const-string v1, "If there is no longer a task to be focus within desktoproot, then desktoproot should not have focus."

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object p0

    :cond_41
    return-object p0
.end method

.method public final getOrganizedTask()Lcom/android/server/wm/Task;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_f

    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_16

    return-object v0

    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public final getProtoFieldId()J
    .registers 3

    const-wide v0, 0x10b00000005L

    return-wide v0
.end method

.method public final getRelativePosition(Landroid/graphics/Point;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FREEFORM_STASH:Z

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_2a

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v1, :cond_2a

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeftStash()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    neg-int v1, v1

    goto :goto_2b

    :cond_25
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeftStash()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget p0, p0, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    mul-float/2addr v3, p0

    sub-float/2addr v0, v3

    goto :goto_50

    :cond_4f
    const/4 v0, 0x0

    :goto_50
    int-to-float p0, v1

    add-float/2addr v0, p0

    add-float/2addr v0, v2

    float-to-int p0, v0

    iput p0, p1, Landroid/graphics/Point;->x:I

    :cond_56
    return-void
.end method

.method public final getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    iget-object p0, p0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    iput-boolean p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->mIgnoreRelinquishIdentity:Z

    iput-boolean p2, p0, Lcom/android/server/wm/Task$FindRootHelper;->mSetToBottomIfNone:Z

    iget-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->this$0:Lcom/android/server/wm/Task;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    iget-object p1, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/wm/Task$FindRootHelper;->mRoot:Lcom/android/server/wm/ActivityRecord;

    return-object p1
.end method

.method public final getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSnapshotAsBitmapLocked()Landroid/graphics/Bitmap;
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v1, v0, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/AbsAppSnapshotController;->snapshot(Lcom/android/server/wm/WindowContainer;F)Landroid/window/TaskSnapshot;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "snapshotTask() returns null! task="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "WindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_23
    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object p0

    if-nez p0, :cond_2a

    return-object v1

    :cond_2a
    invoke-static {p0}, Landroid/hardware/HardwareBuffer;->createFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)Landroid/hardware/HardwareBuffer;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final getStartingWindowInfo(Lcom/android/server/wm/ActivityRecord;)Landroid/window/StartingWindowInfo;
    .registers 6

    new-instance v0, Landroid/window/StartingWindowInfo;

    invoke-direct {v0}, Landroid/window/StartingWindowInfo;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_14

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eq v3, v2, :cond_14

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    :goto_15
    iput-object v3, v0, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v2, v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardOccluded(I)Z

    move-result v1

    iput-boolean v1, v0, Landroid/window/StartingWindowInfo;->isKeyguardOccluded:Z

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v1, :cond_2a

    iget v1, v1, Lcom/android/server/wm/StartingData;->mTypeParams:I

    goto :goto_2c

    :cond_2a
    const/16 v1, 0x110

    :goto_2c
    iput v1, v0, Landroid/window/StartingWindowInfo;->startingWindowTypeParameter:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_47

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_47

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iput-object v1, v0, Landroid/window/StartingWindowInfo;->mainWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    iput p0, v0, Landroid/window/StartingWindowInfo;->requestedVisibleTypes:I

    :cond_47
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget-object v1, v0, Landroid/window/StartingWindowInfo;->taskBounds:Landroid/graphics/Rect;

    if-eqz p0, :cond_50

    goto :goto_5a

    :cond_50
    iget-object p0, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    :goto_5a
    invoke-virtual {v1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public final getStashedBounds()Landroid/graphics/Rect;
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getRelativePosition(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeftStash()Z

    move-result v2

    if-eqz v2, :cond_32

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget p0, p0, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    mul-float/2addr v4, p0

    float-to-int p0, v4

    add-int/2addr p0, v1

    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0

    :cond_32
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v4, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget p0, p0, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    mul-float/2addr v5, p0

    float-to-int p0, v5

    add-int/2addr v1, p0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public final getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_7

    return-object p2

    :cond_7
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTaskFragmentParentInfo()Landroid/window/TaskFragmentParentInfo;
    .registers 10

    new-instance v0, Landroid/window/TaskFragmentParentInfo;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v4, 0x0

    move-object v5, v4

    invoke-virtual {p0, v5}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_18
    if-ltz v6, :cond_2c

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_29

    iget-boolean v8, v8, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v8, :cond_29

    goto :goto_2d

    :cond_29
    add-int/lit8 v6, v6, -0x1

    goto :goto_18

    :cond_2c
    const/4 v7, 0x0

    :goto_2d
    iget-object p0, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-eqz p0, :cond_36

    iget-object p0, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mDecorSurface:Landroid/view/SurfaceControl;

    move-object v6, p0

    :goto_34
    move v5, v7

    goto :goto_38

    :cond_36
    move-object v6, v5

    goto :goto_34

    :goto_38
    invoke-direct/range {v0 .. v6}, Landroid/window/TaskFragmentParentInfo;-><init>(Landroid/content/res/Configuration;IIZZLandroid/view/SurfaceControl;)V

    return-object v0
.end method

.method public final getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 3

    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    return-object v0
.end method

.method public final getTaskWithAdjacent()Lcom/android/server/wm/Task;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_1d

    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskWithAdjacent()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTopLeafTask()Lcom/android/server/wm/Task;
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1f

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_1b

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1b
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object p0

    :cond_1f
    return-object p0
.end method

.method public final getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e
    if-ltz v0, :cond_26

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_23

    return-object v1

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_32
    if-ltz v1, :cond_5a

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    if-eqz v5, :cond_4b

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_54

    :cond_4b
    if-eqz v0, :cond_54

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-ne v4, v0, :cond_54

    move-object v3, v0

    :cond_54
    :goto_54
    if-eqz v3, :cond_57

    return-object v3

    :cond_57
    add-int/lit8 v1, v1, -0x1

    goto :goto_32

    :cond_5a
    return-object v2
.end method

.method public final getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e
    if-ltz v0, :cond_26

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_23

    return-object v1

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_32
    if-ltz v1, :cond_5a

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    if-eqz v5, :cond_4b

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_54

    :cond_4b
    if-eqz v0, :cond_54

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-ne v4, v0, :cond_54

    move-object v3, v0

    :cond_54
    :goto_54
    if-eqz v3, :cond_57

    return-object v3

    :cond_57
    add-int/lit8 v1, v1, -0x1

    goto :goto_32

    :cond_5a
    return-object v2
.end method

.method public final getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .registers 4

    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;-><init>(ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;
    .registers 4

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    move p1, v1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public final goToSleepIfPossible(Z)Z
    .registers 6

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;-><init>(Ljava/lang/Object;IZ)V

    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda57;

    const/4 v3, 0x0

    invoke-direct {p1, v3, v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda57;-><init>(ILjava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    aget p0, v1, v0

    if-nez p0, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final handlesOrientationChangeFromDescendant(I)Z
    .registers 6

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v3

    if-eq v0, v2, :cond_25

    const/4 v0, 0x2

    if-eq v3, v0, :cond_25

    const/4 v0, 0x3

    if-eq v3, v0, :cond_25

    const/4 v0, 0x4

    if-ne v3, v0, :cond_24

    goto :goto_25

    :cond_24
    return v1

    :cond_25
    :goto_25
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-ne v0, p0, :cond_36

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayArea;->shouldIgnoreOrientationRequest(I)Z

    move-result p0

    if-nez p0, :cond_36

    return v2

    :cond_36
    return v1
.end method

.method public final inFullImmersiveModeFreeform()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public final isActivatableDeskRoot()Z
    .registers 2

    iget p0, p0, Lcom/android/server/wm/Task;->mDeskRootTaskType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final isAlwaysOnTop()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final isAlwaysOnTopWhenVisible()Z
    .registers 1

    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result p0

    return p0
.end method

.method public final isChangeTransitionBlockedByCommonPolicy()Z
    .registers 5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    iget-object v0, v0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingPipTask:Lcom/android/server/wm/Task;

    if-ne v0, p0, :cond_f

    goto :goto_13

    :cond_f
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsChangingPipToSplit:Z

    if-eqz v0, :cond_15

    :goto_13
    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    if-nez v3, :cond_46

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_46

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v3

    if-nez v3, :cond_46

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_2e

    if-eqz v0, :cond_46

    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez p0, :cond_45

    goto :goto_46

    :cond_45
    return v1

    :cond_46
    :goto_46
    return v2
.end method

.method public final isCompatible(II)Z
    .registers 3

    if-nez p2, :cond_3

    const/4 p2, 0x1

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->isCompatible(II)Z

    move-result p0

    return p0
.end method

.method public final isDeskRootTask()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivatableDeskRoot()Z

    move-result v0

    if-nez v0, :cond_e

    iget p0, p0, Lcom/android/server/wm/Task;->mDeskRootTaskType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x1

    return p0
.end method

.method public final isFocused()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_a

    goto :goto_1a

    :cond_a
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eq v0, p0, :cond_18

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p0, :cond_17

    goto :goto_18

    :cond_17
    return v1

    :cond_18
    :goto_18
    const/4 p0, 0x1

    return p0

    :cond_1a
    :goto_1a
    return v1
.end method

.method public final isFocusedRootTaskOnDisplay()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final isFreeformForceHidden()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isFreeformStashed()Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_d

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_12

    :cond_d
    iget p0, p0, Lcom/android/server/wm/Task;->mFreeformStashMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final isFullscreenRootForStageTask()Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v2, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    iget-boolean v3, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_2e

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-ne v2, p0, :cond_2e

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p0, :cond_2e

    const/4 p0, 0x1

    return p0

    :cond_2e
    return v1
.end method

.method public final isHandleImmersive()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_35

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canShowTransient()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InsetsPolicy;->hasHiddenSources(I)Z

    move-result v1

    if-nez v1, :cond_33

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result p0

    if-eqz p0, :cond_35

    :cond_33
    const/4 p0, 0x1

    return p0

    :cond_35
    return v0
.end method

.method public final isLeafTask()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1d

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1d
    return v1
.end method

.method public final isLeftStash()Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    if-ge v0, p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    return v2
.end method

.method public final isMinimized()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_14

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return p0
.end method

.method public final isOrganized()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final isResizeable(Z)Z
    .registers 6

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_a

    move v0, v3

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    if-eqz v0, :cond_e

    goto :goto_33

    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v0

    if-ne v0, v3, :cond_1b

    goto :goto_34

    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceNonResizeOverride:Z

    if-eqz v0, :cond_20

    goto :goto_33

    :cond_20
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceResizeOverride:Z

    if-nez v0, :cond_34

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_34

    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    if-eqz p0, :cond_33

    if-eqz p1, :cond_33

    goto :goto_34

    :cond_33
    :goto_33
    return v2

    :cond_34
    :goto_34
    return v3
.end method

.method public final isRootTask()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final isSplitAdjustedMinimalBounds()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt v0, v1, :cond_3e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-ge v0, p0, :cond_40

    :cond_3e
    const/4 p0, 0x1

    return p0

    :cond_40
    const/4 p0, 0x0

    return p0
.end method

.method public final isSplitStashed()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_45

    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenVisible()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isMultiSplitActive()Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_45

    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_45

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_45
    :goto_45
    return v1
.end method

.method public final isStageRootTask()Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_1a

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    :goto_1a
    return v1
.end method

.method public final isTaskViewTask()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_15

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public final isTopRootTaskInDisplayArea()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final isUnderHomeRootTask()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->isUnderHomeTask(Lcom/android/server/wm/Task;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final lockTaskAuthToString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-eqz v0, :cond_2e

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    const/4 v1, 0x3

    if-eq v0, v1, :cond_25

    const/4 v1, 0x4

    if-eq v0, v1, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    const-string p0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    return-object p0

    :cond_25
    const-string p0, "LOCK_TASK_AUTH_ALLOWLISTED"

    return-object p0

    :cond_28
    const-string p0, "LOCK_TASK_AUTH_LAUNCHABLE"

    return-object p0

    :cond_2b
    const-string p0, "LOCK_TASK_AUTH_PINNABLE"

    return-object p0

    :cond_2e
    const-string p0, "LOCK_TASK_AUTH_DONT_LOCK"

    return-object p0
.end method

.method public final makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 3

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x3

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1, p0}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final maybeApplyLastRecentsAnimationTransaction()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0x17c6f44d7fe23490L  # 3.930583272373758E-194

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v1, v3, v0}, Landroid/window/PictureInPictureSurfaceTransaction;->apply(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object v2, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    :cond_28
    return-void
.end method

.method public final migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public moveTaskFragmentsToBottomIfNeeded(Lcom/android/server/wm/ActivityRecord;[I)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_9

    goto :goto_35

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_12
    if-le v0, p1, :cond_33

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_30

    iget-boolean v3, v2, Lcom/android/server/wm/TaskFragment;->mMoveToBottomIfClearWhenLaunch:Z

    if-eqz v3, :cond_30

    if-nez v1, :cond_2d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2d
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_33
    if-nez v1, :cond_36

    :goto_35
    return-void

    :cond_36
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v2, v0

    :goto_3c
    if-ge v2, p1, :cond_51

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskFragment;

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    const/high16 v4, -0x80000000

    invoke-virtual {p0, v4, v3, v0}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_51
    aget p0, p2, v0

    add-int/2addr p0, p1

    aput p0, p2, v0

    return-void
.end method

.method public final moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;)Z
    .registers 10

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;ZZII)Z

    move-result p0

    return p0
.end method

.method public final moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;ZZII)Z
    .registers 17

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/Task;->canMoveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_8

    return v3

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_9c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v0

    const/4 v7, 0x4

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget v9, v0, Lcom/android/server/wm/Transition;->mType:I

    if-ne v9, v7, :cond_3a

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v9

    if-eqz v9, :cond_3a

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/Task;->canMoveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result v9

    if-eqz v9, :cond_3a

    invoke-virtual {p0, p1, v0, v6, v3}, Lcom/android/server/wm/Task;->moveTaskToBackInner(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    return v8

    :cond_3a
    if-eqz p3, :cond_62

    if-nez p4, :cond_40

    move v0, v3

    goto :goto_41

    :cond_40
    move v0, v7

    :goto_41
    iget-object v6, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v6

    if-eqz v6, :cond_75

    iget v9, v6, Lcom/android/server/wm/Transition;->mType:I

    if-ne v9, v0, :cond_75

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/Task;->canMoveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-virtual {p0, p1, v6, p2, p3}, Lcom/android/server/wm/Task;->moveTaskToBackInner(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    return v8

    :cond_62
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    if-eqz v0, :cond_75

    iget v9, v0, Lcom/android/server/wm/Transition;->mType:I

    if-ne v9, v8, :cond_75

    invoke-virtual {v0, p1, v3}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {p0, p1, v0, v6, v3}, Lcom/android/server/wm/Task;->moveTaskToBackInner(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Landroid/os/Bundle;Z)V

    return v8

    :cond_75
    new-instance v0, Lcom/android/server/wm/Transition;

    iget-object v6, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v9, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {v0, v7, v3, v6, v9}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    if-eqz p4, :cond_89

    if-eqz p3, :cond_89

    const/high16 v3, 0x80000

    invoke-virtual {v0, v3}, Lcom/android/server/wm/Transition;->addFlag(I)V

    :cond_89
    iget-object v9, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    move-object v3, v0

    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Landroid/os/Bundle;ZII)V

    invoke-virtual {v9, v3, v0}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V

    return v8

    :cond_9c
    invoke-virtual {p0, p1, v6, p2, p3}, Lcom/android/server/wm/Task;->moveTaskToBackInner(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Landroid/os/Bundle;Z)V

    return v8
.end method

.method public final moveTaskToBackInner(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Landroid/os/Bundle;Z)V
    .registers 9

    new-instance v0, Lcom/android/server/wm/Transition$ReadyCondition;

    const-string/jumbo v1, "moved-to-back"

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_14

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    iget-object v1, p2, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Transition$ReadyTracker;->add(Lcom/android/server/wm/Transition$ReadyCondition;)V

    :cond_14
    :try_start_14
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v1, :cond_2a

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "1005"

    const-string/jumbo v2, "Tap \'Back\' button"

    invoke-static {v1, v2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    :catchall_27
    move-exception p1

    goto/16 :goto_fc

    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1, v2, p0}, Lcom/android/server/wm/FreeformController;->useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_43

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/Task;->setBoostTaskLayerForFreeform(ZZ)V

    invoke-super {p0, v3}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v1

    goto :goto_5e

    :cond_43
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v1

    if-eqz v1, :cond_5e

    if-eqz p4, :cond_5e

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/Task;->setBoostTaskLayerForFreeform(ZZ)V

    goto :goto_5e

    :cond_5d
    move v1, v3

    :cond_5e
    :goto_5e
    if-eqz p4, :cond_63

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->setMinimized()V

    :cond_63
    const-string/jumbo p4, "moveTaskToBackInner"

    invoke-virtual {p0, p4, p1}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    if-eqz p3, :cond_83

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isInKeyguardTransition()Z

    move-result p1

    if-eqz p1, :cond_83

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_83

    invoke-static {p3}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->applyOptionsAnimation()V

    :cond_83
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_a1

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V
    :try_end_8e
    .catchall {:try_start_14 .. :try_end_8e} :catchall_27

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p1

    if-eqz p1, :cond_9b

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    :cond_9b
    if-eqz p2, :cond_a0

    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    :cond_a0
    return-void

    :cond_a1
    :try_start_a1
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p3, v3}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Z)V
    :try_end_a9
    .catchall {:try_start_a1 .. :try_end_a9} :catchall_27

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p1

    if-eqz p1, :cond_b6

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    :cond_b6
    if-eqz p2, :cond_bb

    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    :cond_bb
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_c6

    goto :goto_ca

    :cond_c6
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p4

    :goto_ca
    if-eqz p4, :cond_f6

    if-eq p4, p0, :cond_f6

    sget-object p2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p2

    if-eqz p2, :cond_f6

    if-eqz v1, :cond_e0

    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string/jumbo p3, "moveTaskToBackLocked"

    invoke-virtual {p2, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_e0
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result p2

    if-nez p2, :cond_eb

    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible$1()V

    :cond_eb
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    return-void

    :cond_f6
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    return-void

    :goto_fc
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p3}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p3

    if-eqz p3, :cond_109

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    :cond_109
    if-eqz p2, :cond_10e

    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    :cond_10e
    throw p1
.end method

.method public final moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V
    .registers 14

    iget-object v5, p1, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    const-string/jumbo v6, "Pageboost"

    const-string/jumbo v0, "moveTaskToFront : "

    :try_start_8
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_28

    :cond_f
    if-eqz v5, :cond_28

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_21} :catch_22

    goto :goto_28

    :catch_22
    const-string/jumbo v0, "failed to moveTaskToFront by exception"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p1, p0, :cond_5f

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-nez v4, :cond_5f

    if-eqz p2, :cond_47

    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto/16 :goto_123

    :cond_47
    if-eqz p3, :cond_123

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_5a

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p1

    if-nez p1, :cond_5a

    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto/16 :goto_123

    :cond_5a
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto/16 :goto_123

    :cond_5f
    if-eqz p4, :cond_6a

    new-instance v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda57;

    const/4 v5, 0x2

    invoke-direct {v4, v5, p4}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda57;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    :cond_6a
    :try_start_6a
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p4

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {p4, v4, p0}, Lcom/android/server/wm/FreeformController;->useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)Z

    move-result p4

    if-eqz p4, :cond_84

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    move-result p4

    if-nez p4, :cond_84

    invoke-super {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    goto :goto_84

    :catchall_80
    move-exception v0

    move-object p1, v0

    goto/16 :goto_148

    :cond_84
    :goto_84
    iget-object p4, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {p4, p0}, Lcom/android/server/wm/FreeformController;->releaseForceHideTaskLocked(Lcom/android/server/wm/Task;)V

    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    if-eqz p4, :cond_a8

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result p4

    if-nez p4, :cond_a8

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p4

    if-eqz p4, :cond_a8

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result p4

    if-eqz p4, :cond_a8

    iget-object p4, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {p4, p1}, Lcom/android/server/wm/FreeformController;->updateFreeformBoundsForDisplayDeviceTypeChanged(Lcom/android/server/wm/Task;)V

    :cond_a8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->setUnMinimizedWhenRestored()V

    iget-object p4, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, p4, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v4, :cond_b3

    iput-boolean v2, p4, Lcom/android/server/wm/DisplayContent;->mUpdateImeRequestedWhileDeferred:Z

    :cond_b3
    add-int/2addr v4, v1

    iput v4, p4, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    invoke-virtual {p1, v1, v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p4

    if-eqz p4, :cond_124

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result v4

    if-nez v4, :cond_c3

    goto :goto_124

    :cond_c3
    invoke-virtual {p4, p6}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    if-eqz p2, :cond_f7

    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p2, p4}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object p2, p2, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p2, :cond_db

    goto :goto_eb

    :cond_db
    iget-object p2, p2, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p2, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz p2, :cond_ef

    iget p6, p2, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 p6, p6, 0x8

    iput p6, p2, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    :goto_eb
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_10c

    :cond_ef
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t set no-animation property of non-participant"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f7
    if-eqz p3, :cond_10c

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eqz p2, :cond_109

    invoke-virtual {p2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p6

    if-nez p6, :cond_109

    invoke-virtual {p2, p3}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_10c

    :cond_109
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    :cond_10c
    :goto_10c
    if-eqz v0, :cond_117

    iget-object p2, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object p6, p4, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eq p2, p6, :cond_117

    invoke-static {v0, p1, p4, p3}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    :cond_117
    if-nez p5, :cond_11e

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V
    :try_end_11e
    .catchall {:try_start_6a .. :try_end_11e} :catchall_80

    :cond_11e
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    :cond_123
    :goto_123
    return-void

    :cond_124
    :goto_124
    if-ne p1, p0, :cond_12e

    :try_start_126
    const-string/jumbo p1, "positionChildAtTop"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_134

    :cond_12e
    const p2, 0x7fffffff

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :goto_134
    if-eqz p4, :cond_13f

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object p2, p4, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    :cond_13f
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V
    :try_end_142
    .catchall {:try_start_126 .. :try_end_142} :catchall_80

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    return-void

    :goto_148
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    throw p1
.end method

.method public final moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_eb

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    const/4 v2, 0x1

    if-nez v1, :cond_48

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    const/4 v3, 0x0

    if-eqz v1, :cond_24

    invoke-virtual {v1, p1, p0}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_30

    :cond_24
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/high16 v4, -0x80000000

    invoke-virtual {v0, v4, p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/TaskDisplayArea;->updateLastFocusedRootTask(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    :goto_30
    if-eqz p2, :cond_eb

    if-eq p2, p0, :cond_eb

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_43

    goto :goto_44

    :cond_43
    move v2, v3

    :goto_44
    invoke-virtual {p0, p2, v2}, Lcom/android/server/wm/Task;->positionChildAtBottom(Lcom/android/server/wm/Task;Z)V

    return-void

    :cond_48
    if-eqz p2, :cond_eb

    if-ne p2, p0, :cond_4e

    goto/16 :goto_eb

    :cond_4e
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object p1

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    const/4 v3, 0x4

    if-eqz v1, :cond_ca

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionType()I

    move-result v1

    if-ne v1, v3, :cond_ca

    if-eqz p1, :cond_ca

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_ca

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-ne p1, v1, :cond_ca

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFullscreenRootForStageTask()Z

    move-result v1

    if-eqz v1, :cond_ca

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_ca

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_82

    goto :goto_eb

    :cond_82
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_eb

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    move-result p0

    if-eqz p0, :cond_99

    move-object p1, p2

    goto :goto_c6

    :cond_99
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "handlePositionTaskBehindHome: #"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ChangeTransitionController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-direct {v5, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    const-string/jumbo v6, "position_behind_home"

    const/4 v7, 0x0

    const/4 v3, 0x6

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ChangeTransitionController;->requestChangeTransition(Lcom/android/server/wm/Task;IILandroid/graphics/Rect;Ljava/lang/String;I)V

    move-object p1, v2

    :goto_c6
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionTaskBehindHome(Lcom/android/server/wm/Task;)V

    return-void

    :cond_ca
    move-object p1, p2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isDeskRootTask()Z

    move-result p2

    if-eqz p2, :cond_e8

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result p2

    if-eq p2, v2, :cond_e8

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object p2, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz p2, :cond_e8

    iget-object p2, p2, Lcom/android/server/wm/Transition;->mTriggerTask:Lcom/android/server/wm/Task;

    if-ne p2, p1, :cond_e8

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionType()I

    move-result p0

    if-ne p0, v3, :cond_e8

    goto :goto_eb

    :cond_e8
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionTaskBehindHome(Lcom/android/server/wm/Task;)V

    :cond_eb
    :goto_eb
    return-void
.end method

.method public final moveToFront()V
    .registers 3

    const-string/jumbo v0, "startActivityInner"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 8

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v2

    if-eqz v2, :cond_2e

    if-eqz v1, :cond_2e

    iget-boolean v2, v1, Lcom/android/server/wm/Task;->mIsDragSourceTask:Z

    if-eqz v2, :cond_2e

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->setHideWhileTwoHandDragging(Lcom/android/server/wm/WindowContainer;)V

    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/FreeformController;->useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_44

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-super {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    :cond_44
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v0, :cond_5d

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v0

    if-nez v0, :cond_5d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5b

    goto :goto_5d

    :cond_5b
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mNeedToSendFreeformLogging:Z

    :cond_5d
    :goto_5d
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    if-eqz v0, :cond_82

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_82

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_82

    if-eqz p2, :cond_77

    move-object v0, p2

    goto :goto_7b

    :cond_77
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :goto_7b
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/FreeformController;->updateFreeformBoundsForDisplayDeviceTypeChanged(Lcom/android/server/wm/Task;)V

    :cond_82
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->setUnMinimizedWhenRestored()V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-nez v0, :cond_8c

    return-void

    :cond_8c
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_93

    goto :goto_9a

    :cond_93
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Transition;->recordDisplay(Lcom/android/server/wm/DisplayContent;)V

    :goto_9a
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->returnsToHomeRootTask()Z

    move-result v2

    if-eqz v2, :cond_e2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " returnToHome"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_e2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_e2

    iget-object v2, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_d4

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_d5

    :cond_d4
    move-object v2, v3

    :goto_d5
    if-eqz v2, :cond_e2

    iget-object v4, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V

    :cond_e2
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v2

    if-eqz v2, :cond_ec

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    :cond_ec
    if-nez p2, :cond_ef

    move-object p2, p0

    :cond_ef
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/FreeformController;->releaseForceHideTaskLocked(Lcom/android/server/wm/Task;)V

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->setUnMinimizedWhenRestored()V

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    const v2, 0x7fffffff

    invoke-virtual {p0, v2, p2, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {v0, p1, v3}, Lcom/android/server/wm/TaskDisplayArea;->updateLastFocusedRootTask(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public final navigateUpTo(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/uri/NeededUriGrants;ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)Z
    .registers 20

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    goto :goto_6e

    :cond_8
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_6e

    :cond_11
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    const/4 v5, 0x1

    if-eq v4, p1, :cond_31

    if-eqz v3, :cond_31

    new-instance v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda20;

    const/4 v6, 0x3

    invoke-direct {v4, v6, v3}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda20;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4, p1, v1, v5}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_31

    move-object v2, v3

    move v3, v5

    goto :goto_32

    :cond_31
    move v3, v1

    :goto_32
    iget-object v4, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    const/4 v6, -0x1

    if-eqz v4, :cond_6f

    iget-object v7, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    new-instance v8, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;-><init>(I)V

    const-class v9, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v9, v10, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    invoke-interface {v7}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    if-eqz v8, :cond_6f

    :try_start_58
    iget-object v7, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v4, v7}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v4
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5e} :catch_5f

    goto :goto_6c

    :catch_5f
    iget-object v4, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v7, 0x0

    iput-object v7, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    move v4, v5

    :goto_6c
    if-nez v4, :cond_6f

    :goto_6e
    return v1

    :cond_6f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    filled-new-array/range {p5 .. p5}, [I

    move-result-object v4

    new-array v9, v5, [Landroid/content/Intent;

    aput-object p6, v9, v1

    filled-new-array/range {p7 .. p7}, [Lcom/android/server/uri/NeededUriGrants;

    move-result-object v10

    new-instance v11, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;

    invoke-direct {v11, v2, v4, v9, v10}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;-><init>(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;)V

    invoke-virtual {v0, v11, p1, v5, v5}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Z

    aget v0, v4, v1

    aget-object v1, v9, v1

    if-eqz v2, :cond_e2

    if-eqz v3, :cond_e2

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    const-string/jumbo v4, "navigateUpTo"

    invoke-virtual {p0, p2, v4}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p3, v4, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget v9, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iput v9, v4, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    iget-object v9, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v9, v9, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    iput-object v9, v4, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iget-object v9, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iput-object v9, v4, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    move-object/from16 v9, p4

    iput-object v9, v4, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    iput v6, v4, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    iput v3, v4, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iput-object p1, v4, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object p1, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object p1, v4, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    iput v6, v4, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iput v3, v4, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iput-boolean v5, v4, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p0

    invoke-static {p0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v3

    if-nez p0, :cond_e2

    const-string/jumbo p0, "navigate-top"

    const/4 p1, 0x1

    move-object/from16 p4, p0

    move/from16 p5, p1

    move-object/from16 p3, p7

    move p1, v0

    move-object p2, v1

    move-object p0, v2

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    :cond_e2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method public final notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/server/wm/Task;->mHandler:Lcom/android/server/wm/Task$ActivityTaskHandler;

    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_4d

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2e

    goto :goto_3a

    :cond_2e
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v3}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    :goto_3a
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-eqz v1, :cond_4d

    :try_start_40
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, v1, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-eqz p1, :cond_49

    goto :goto_4a

    :cond_49
    move p0, v2

    :goto_4a
    invoke-interface {v1, v0, p0}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_4d} :catch_4d

    :catch_4d
    :cond_4d
    return-void
.end method

.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    iget-boolean p1, p0, Lcom/android/server/wm/Task;->mHiddenWhileActivatingDrag:Z

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfaceVisibilityForDragAndDrop()V

    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_1b

    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;-><init>(I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    :cond_1b
    return-void
.end method

.method public final onAppFocusChanged(Z)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v2, v0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    const/16 v3, 0x18

    invoke-virtual {v2, v3, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHasWindowFocus:Z

    if-eq v0, p1, :cond_30

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mHasWindowFocus:Z

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateWindowFocusInTask()V

    :cond_30
    return-void
.end method

.method public final onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->invalidateTaskLayers()V

    :cond_18
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskFragmentParentInfoChangedIfNeeded()V

    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    return-void
.end method

.method public final onChildVisibleRequestedChanged(Lcom/android/server/wm/WindowContainer;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->onChildVisibleRequestedChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskFragmentParentInfoChangedIfNeeded()V

    const/4 p0, 0x1

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    iget-boolean v1, v0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    if-eqz v1, :cond_16

    iget-object v0, v0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    if-ne p0, v0, :cond_16

    goto/16 :goto_91

    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->onConfigurationChangedInner(Landroid/content/res/Configuration;)V

    return-void

    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->onConfigurationChangedInner(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    if-nez p1, :cond_3f

    goto :goto_91

    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x0

    const v6, 0x7fffffff

    if-eq v0, v4, :cond_5c

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskDisplayArea;->removeRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskDisplayArea;->addRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    iget-object v0, p1, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    if-ne p0, v0, :cond_5c

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq v0, p0, :cond_5c

    invoke-virtual {p1, v6, p0, v5}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_5c
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_88

    :cond_68
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_88

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_88

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    if-eq v2, v0, :cond_88

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, v2, v0, v3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    :cond_88
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v0

    if-eq v1, v0, :cond_91

    invoke-virtual {p1, v6, p0, v5}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_91
    :goto_91
    return-void
.end method

.method public final onConfigurationChangedInner(Landroid/content/res/Configuration;)V
    .registers 14

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/Task;->persistTaskBounds(Landroid/app/WindowConfiguration;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-static {v1}, Lcom/android/server/wm/Task;->persistTaskBounds(Landroid/app/WindowConfiguration;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v2

    if-nez v2, :cond_1e

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-static {v1}, Lcom/android/server/wm/Task;->persistTaskBounds(Landroid/app/WindowConfiguration;)Z

    move-result v1

    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3f

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3d

    goto :goto_3f

    :cond_3d
    move v2, v3

    goto :goto_40

    :cond_3f
    :goto_3f
    move v2, v4

    :goto_40
    and-int/2addr v1, v2

    if-nez v0, :cond_48

    if-eqz v1, :cond_48

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    :cond_48
    const/4 v2, 0x0

    const/4 v5, 0x5

    if-nez v0, :cond_98

    if-eqz v1, :cond_98

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_98

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_98

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    if-eqz v1, :cond_8d

    if-eqz v0, :cond_8d

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_8d

    iget v1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-ne v1, v5, :cond_8d

    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-gt v1, v6, :cond_8a

    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-le v1, v0, :cond_8d

    :cond_8a
    iput-object v2, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    goto :goto_98

    :cond_8d
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    :cond_98
    :goto_98
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v1

    iget-object v6, p0, Lcom/android/server/wm/Task;->mDesktopCompatDisplayInsets:Lcom/android/server/wm/DesktopCompatPolicy$DesktopAppCompatDisplayInsets;

    if-eqz v6, :cond_bb

    invoke-static {p0}, Lcom/android/server/wm/DesktopCompatPolicy;->isFullscreenBySystemModal(Lcom/android/server/wm/Task;)Z

    move-result v6

    if-eqz v6, :cond_bb

    iget-object v6, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v6, v6, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v4, v4}, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;->clearSizeCompatModeForAllActivities(Lcom/android/server/wm/Task;ZZ)V

    goto :goto_e9

    :cond_bb
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v6

    if-eqz v6, :cond_e9

    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v6

    if-eqz v6, :cond_e9

    iget-object v6, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v6

    invoke-static {v6}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v6

    if-nez v6, :cond_dd

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v6

    invoke-static {v6}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v6

    if-eqz v6, :cond_e9

    :cond_dd
    iget-object v6, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v6, v6, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v4, v3}, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;->clearSizeCompatModeForAllActivities(Lcom/android/server/wm/Task;ZZ)V

    :cond_e9
    :goto_e9
    iget-object v6, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-boolean v7, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v7, :cond_136

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result v7

    if-eqz v7, :cond_136

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_136

    iget-object v7, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v7, p0}, Lcom/android/server/wm/TaskSnapshotController;->isInSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)Z

    move-result v7

    if-eqz v7, :cond_106

    goto :goto_136

    :cond_106
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_136

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v7

    if-eq v7, v4, :cond_120

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_136

    :cond_120
    filled-new-array {p0}, [Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v7, v6}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    iget-object v7, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v7, v6}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Ljava/util/Set;)V

    :cond_136
    :goto_136
    iget-object v6, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v7

    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez p1, :cond_14f

    return-void

    :cond_14f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p1

    if-eq v7, p1, :cond_15e

    move p1, v4

    goto :goto_15f

    :cond_15e
    move p1, v3

    :goto_15f
    if-eqz p1, :cond_19c

    iget-object v6, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v9

    if-eqz v8, :cond_1bd

    if-eq v8, v9, :cond_17f

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v8

    if-nez v8, :cond_17f

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v8

    if-nez v8, :cond_17f

    goto :goto_1bd

    :cond_17f
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v8

    new-instance v9, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda2;

    const/4 v10, 0x1

    invoke-direct {v9, v6, v10}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;I)V

    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    iput-object v8, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mPipModeChangedTargetRootTaskBounds:Landroid/graphics/Rect;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v8, 0xd7

    invoke-virtual {v6, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_1bd

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1bd

    :cond_19c
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v8

    if-eq v6, v8, :cond_1bd

    iget-object v6, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda2;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v9}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;I)V

    invoke-virtual {p0, v8}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v8, 0xd6

    invoke-virtual {v6, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_1bd

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1bd
    :goto_1bd
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v6

    if-eq v0, v6, :cond_1f2

    iget v8, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x7c9e

    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    if-eqz v0, :cond_1f2

    iget-object v8, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget v9, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v10, v8, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    const/16 v11, 0x1f

    invoke-virtual {v10, v11, v9, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    iget-object v10, v8, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskWindowingModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-virtual {v8, v10, v9}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    :cond_1f2
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FREEFORM_STASH:Z

    if-eqz v8, :cond_20a

    if-eq v0, v6, :cond_20a

    if-ne v0, v5, :cond_20a

    iget v8, p0, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    const/high16 v9, 0x3f800000  # 1.0f

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_204

    iput v9, p0, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    :cond_204
    iget v8, p0, Lcom/android/server/wm/Task;->mFreeformStashMode:I

    if-eqz v8, :cond_20a

    iput v3, p0, Lcom/android/server/wm/Task;->mFreeformStashMode:I

    :cond_20a
    if-eq v0, v6, :cond_21b

    const/4 v8, 0x6

    if-ne v0, v8, :cond_21b

    if-nez v1, :cond_21b

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v1

    if-eqz v1, :cond_21b

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    :cond_21b
    if-eq v0, v6, :cond_23e

    if-eq v0, v5, :cond_221

    if-ne v6, v5, :cond_23e

    :cond_221
    if-ne v6, v5, :cond_225

    move v1, v4

    goto :goto_226

    :cond_225
    move v1, v3

    :goto_226
    iget-object v8, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v8, :cond_22b

    goto :goto_23e

    :cond_22b
    iget-object v8, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v8}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/SurfaceControl$Transaction;

    iget-object v9, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v9, v1}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_23e
    :goto_23e
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_NOTIFY_TASKBAR_VISIBLE:Z

    if-eqz v1, :cond_251

    if-eqz p1, :cond_251

    if-ne v6, v4, :cond_251

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Lcom/android/server/wm/WindowManagerServiceExt;->updateTaskbarTargetIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;)V

    :cond_251
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_269

    if-eq v0, v6, :cond_269

    if-ne v0, v5, :cond_269

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    const-string/jumbo v8, "maximize_hidden_freeform"

    invoke-virtual {v1, v2, p0, v8}, Lcom/android/server/wm/ChangeTransitionController;->handleWmCoreRequest(ILcom/android/server/wm/Task;Ljava/lang/String;)V

    goto/16 :goto_2ea

    :cond_269
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v1, :cond_287

    if-ne v0, v5, :cond_287

    if-ne v6, v4, :cond_287

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/LockTaskController;->isTaskLocked(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_287

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    const-string/jumbo v8, "maximize_lock_freeform"

    invoke-virtual {v1, v2, p0, v8}, Lcom/android/server/wm/ChangeTransitionController;->handleWmCoreRequest(ILcom/android/server/wm/Task;Ljava/lang/String;)V

    goto/16 :goto_2ea

    :cond_287
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v2

    if-nez v2, :cond_293

    iget-boolean v2, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_2ea

    :cond_293
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->canStartChangeTransition()Z

    move-result v2

    if-nez v2, :cond_29a

    goto :goto_2ea

    :cond_29a
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    iget-object v8, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v8, p0}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v8

    if-eqz v8, :cond_2d9

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v8, :cond_2b8

    new-instance v8, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    const/16 v9, 0xb

    invoke-direct {v8, v9}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v8}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-nez v8, :cond_2b8

    goto :goto_2ea

    :cond_2b8
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    if-ne v0, v2, :cond_2e5

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ne v2, v9, :cond_2e5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v1, v2, :cond_2ea

    goto :goto_2e5

    :cond_2d9
    if-ne v0, v5, :cond_2dd

    move v1, v4

    goto :goto_2de

    :cond_2dd
    move v1, v3

    :goto_2de
    if-ne v2, v5, :cond_2e2

    move v2, v4

    goto :goto_2e3

    :cond_2e2
    move v2, v3

    :goto_2e3
    if-eq v1, v2, :cond_2ea

    :cond_2e5
    :goto_2e5
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TransitionController;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    :cond_2ea
    :goto_2ea
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/Task;->persistTaskBounds(Landroid/app/WindowConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_308

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_308

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v2

    if-eqz v2, :cond_305

    goto :goto_308

    :cond_305
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    :cond_308
    :goto_308
    if-eqz p1, :cond_325

    if-eqz v7, :cond_325

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p1

    if-nez p1, :cond_325

    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_325

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_325

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resetSurfaceControlTransforms()V

    :cond_325
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    move-result p1

    if-eqz p1, :cond_346

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v1

    if-nez v1, :cond_346

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    :cond_346
    if-nez p1, :cond_34b

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_34b
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz p1, :cond_355

    if-eq v0, v5, :cond_355

    if-ne v6, v5, :cond_355

    iput-boolean v4, p0, Lcom/android/server/wm/Task;->mNeedToSendFreeformLogging:Z

    :cond_355
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateWindowFocusInTask()V

    return-void
.end method

.method public final onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return v0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v0

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_2d

    if-eqz p1, :cond_12

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_13

    :cond_12
    const/4 p1, -0x1

    :goto_13
    if-eq v0, p1, :cond_2d

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v2, v0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    const/16 v3, 0x15

    invoke-virtual {v2, v3, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object v1, v0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p1

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    :cond_40
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskFragmentParentInfoChangedIfNeeded()V

    return-void
.end method

.method public final onMovedByResize()V
    .registers 1

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onTaskBoundsChangedForFreeform()V

    return-void
.end method

.method public final onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .registers 12

    check-cast p1, Lcom/android/server/wm/WindowContainer;

    check-cast p2, Lcom/android/server/wm/WindowContainer;

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    if-eqz p2, :cond_14

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v0

    :goto_15
    if-eqz v2, :cond_1a

    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_1b

    :cond_1a
    const/4 v3, -0x1

    :goto_1b
    iput v3, p0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_8b

    if-nez p1, :cond_8b

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v5

    if-eqz v5, :cond_2a

    goto :goto_8b

    :cond_2a
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    iget-object v5, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v5, :cond_37

    move v6, v4

    goto :goto_38

    :cond_37
    move v6, v3

    :goto_38
    if-eqz v6, :cond_41

    :try_start_3a
    iget-object v7, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v8, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v5, v7, v8}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_41} :catch_41

    :catch_41
    :cond_41
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-nez v7, :cond_6e

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v7

    if-nez v7, :cond_53

    iget-boolean v7, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    if-eqz v7, :cond_6e

    :cond_53
    if-eqz v5, :cond_59

    iget-boolean v5, v5, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-nez v5, :cond_6e

    :cond_59
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v5, :cond_7c

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    if-nez v5, :cond_63

    :goto_61
    move v5, v4

    goto :goto_6c

    :cond_63
    iget-object v5, v5, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez v5, :cond_68

    goto :goto_61

    :cond_68
    invoke-virtual {v5}, Landroid/window/DisplayWindowPolicyController;->canShowTasksInHostDeviceRecents()Z

    move-result v5

    :goto_6c
    if-nez v5, :cond_7c

    :cond_6e
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v5, :cond_7e

    iget-object v5, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v5, p0}, Lcom/android/server/wm/RecentTasks;->okToRemove(Lcom/android/server/wm/Task;)Z

    move-result v5

    if-nez v5, :cond_7e

    :cond_7c
    if-eqz v6, :cond_85

    :cond_7e
    iget-object v5, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v5, p0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    :cond_85
    const-string/jumbo v5, "cleanUpResourcesForDestroy"

    invoke-virtual {p0, v5}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    :cond_8b
    :goto_8b
    if-eqz v1, :cond_9e

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/WindowConfiguration;->setRotation(I)V

    :cond_9e
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v5

    if-eqz v2, :cond_aa

    if-eqz v1, :cond_aa

    if-eq v2, v1, :cond_aa

    move v2, v4

    goto :goto_ab

    :cond_aa
    move v2, v3

    :goto_ab
    const-string v6, "ActivityTaskManager"

    if-eqz p1, :cond_10e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-eqz v7, :cond_10e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isStageRootTask()Z

    move-result v7

    if-eqz v7, :cond_10e

    if-eqz p2, :cond_cb

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v8

    if-ne v7, v8, :cond_d7

    :cond_cb
    if-nez p2, :cond_10e

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v8

    if-eq v7, v8, :cond_10e

    :cond_d7
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v7

    if-nez v7, :cond_e4

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    move-result v7

    if-nez v7, :cond_e4

    goto :goto_10e

    :cond_e4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "reparent stage, reset requested config task="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->unset()V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8, v7}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    :cond_10e
    :goto_10e
    if-eqz p2, :cond_134

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v7

    if-eqz v7, :cond_134

    if-eqz p1, :cond_134

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-eqz v7, :cond_134

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v7

    if-nez v7, :cond_134

    new-instance v7, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, v7}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    if-eqz v5, :cond_134

    iget-object v5, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, p0, v0}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    :cond_134
    if-eqz v2, :cond_13f

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_13f

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    :cond_13f
    if-eqz v2, :cond_153

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isMultiTaskingDisplay()Z

    move-result v1

    if-eqz v1, :cond_153

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v1, v1, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v4, v3}, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;->clearSizeCompatModeForAllActivities(Lcom/android/server/wm/Task;ZZ)V

    :cond_153
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;-><init>(ILcom/android/server/wm/Task;)V

    invoke-static {v1}, Lcom/android/server/wm/PackagesChange;->forAllTaskChangeCallbacks(Ljava/util/function/Consumer;)V

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    if-eqz p2, :cond_1a7

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_176

    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;

    const/4 v5, 0x2

    invoke-direct {v2, v5, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;-><init>(ILcom/android/server/wm/Task;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    :cond_176
    if-eqz p1, :cond_17e

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_1a7

    :cond_17e
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_18a

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_1a7

    :cond_18a
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1a7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Pinned task is removed t="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    :cond_1a7
    :goto_1a7
    if-eqz p1, :cond_1e0

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v0, :cond_1d2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_1c6

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_1b8

    goto :goto_1c6

    :cond_1b8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1c7

    iget-boolean v0, v0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_1c7

    :cond_1c6
    :goto_1c6
    move v3, v4

    :cond_1c7
    if-nez v3, :cond_1d2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_1d2
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1dd

    :try_start_1d6
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v1, v2}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_1dd
    .catch Landroid/os/RemoteException; {:try_start_1d6 .. :try_end_1dd} :catch_1dd

    :catch_1dd
    :cond_1dd
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    :cond_1e0
    if-nez p2, :cond_1e7

    if-eqz p1, :cond_1e7

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateOverrideConfigurationFromLaunchBounds()V

    :cond_1e7
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateMinMaxSizeIfNeeded()V

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    return-void
.end method

.method public final onResize()V
    .registers 1

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onTaskBoundsChangedForFreeform()V

    return-void
.end method

.method public final onTaskBoundsChangedForFreeform()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1d

    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mRankTaskLayersRunnable:Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/RootWindowContainer$RankTaskLayersRunnable;->mCheckUpdateOomAdj:Z

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->invalidateTaskLayers()V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public final onlyHasTaskOverlayActivities(Z)Z
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ltz v0, :cond_26

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_15

    goto :goto_29

    :cond_15
    if-nez p1, :cond_1c

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1c

    goto :goto_23

    :cond_1c
    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-nez v4, :cond_21

    goto :goto_29

    :cond_21
    add-int/lit8 v3, v3, 0x1

    :goto_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_26
    if-lez v3, :cond_29

    return v1

    :cond_29
    :goto_29
    return v2
.end method

.method public final pauseActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    goto :goto_45

    :cond_8
    const/4 v0, 0x1

    new-array v2, v0, [I

    aput v1, v2, v1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isLeafTaskFragment()Z

    move-result v3

    if-nez v3, :cond_38

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_38

    if-eqz v3, :cond_29

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-ne v3, p0, :cond_29

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_38

    :cond_29
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {p0, p1, p2, v3, v1}, Lcom/android/server/wm/TaskFragment;->startPausing$1(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZZ)Z

    move-result v3

    if-eqz v3, :cond_38

    aget v3, v2, v1

    add-int/2addr v3, v0

    aput v3, v2, v1

    :cond_38
    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda36;

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda36;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;[I)V

    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    aget p0, v2, v1

    if-lez p0, :cond_45

    return v0

    :cond_45
    :goto_45
    return v1
.end method

.method public final performClearTaskForReuse(Z)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    const/4 v0, 0x0

    :try_start_9
    const-string/jumbo v1, "clear-task-all"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/Task;->removeActivities(Ljava/lang/String;Z)V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_17

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    return-void

    :catchall_17
    move-exception p1

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    throw p1
.end method

.method public final performClearTop(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    const/4 v0, 0x0

    :try_start_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->clearTopActivities(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_15

    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    return-object p1

    :catchall_15
    move-exception p1

    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    throw p1
.end method

.method public final positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(ILcom/android/server/wm/WindowContainer;)I

    move-result p1

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_24

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_20

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/Task;->updateTaskMovement(IZZ)V

    :cond_24
    return-void
.end method

.method public positionChildAtBottom(Lcom/android/server/wm/Task;Z)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public final prepareSurfaces()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v0, v0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/Dimmer$DimState;->mLastDimmingWindow:Lcom/android/server/wm/WindowState;

    :cond_9
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->prepareSurfaces()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v2, v1, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz v2, :cond_1f

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_2d

    goto/16 :goto_123

    :cond_2d
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_6b

    if-eqz v1, :cond_6b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFullscreenRootForStageTask()Z

    move-result v1

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v1

    if-nez v1, :cond_123

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v1, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_4b
    if-ltz v3, :cond_6b

    iget-object v4, v1, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition;

    iget-object v4, v4, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/Task;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_68

    goto/16 :goto_123

    :cond_68
    add-int/lit8 v3, v3, -0x1

    goto :goto_4b

    :cond_6b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_7c

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v4

    if-eqz v4, :cond_7a

    goto :goto_7c

    :cond_7a
    move v4, v3

    goto :goto_7d

    :cond_7c
    :goto_7c
    move v4, v2

    :goto_7d
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_9c

    iget-boolean v5, p0, Lcom/android/server/wm/Task;->mLastSurfaceShowing:Z

    if-eq v4, v5, :cond_9c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v5

    if-nez v5, :cond_97

    iget-boolean v5, p0, Lcom/android/server/wm/Task;->mHiddenWhileActivatingDrag:Z

    if-eqz v5, :cond_97

    if-eqz v4, :cond_97

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0, v3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    return-void

    :cond_97
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    :cond_9c
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    if-eqz v5, :cond_a7

    iget-object v5, v5, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_a7

    invoke-virtual {v0, v5, v1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    :cond_a7
    iput-boolean v4, p0, Lcom/android/server/wm/Task;->mLastSurfaceShowing:Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_HANDLE:Z

    if-eqz v0, :cond_ce

    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_c4

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c4

    move v0, v2

    goto :goto_c5

    :cond_c4
    move v0, v3

    :goto_c5
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mIsCaptionHiddenRequested:Z

    if-eq v1, v0, :cond_ce

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsCaptionHiddenRequested:Z

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_ce
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_HANDLE_KEEP_SCREEN_ON:Z

    if-eqz v0, :cond_fa

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_f0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_e2

    move v1, v2

    goto :goto_e3

    :cond_e2
    move v1, v3

    :goto_e3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_f1

    if-nez v1, :cond_f1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->canShowTransient()Z

    move-result v1

    goto :goto_f1

    :cond_f0
    move v1, v3

    :cond_f1
    :goto_f1
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsKeepScreenOn:Z

    if-eq v1, v0, :cond_fa

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mIsKeepScreenOn:Z

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_fa
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FULL_SCREEN:Z

    if-eqz v0, :cond_123

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_119

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_119

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    if-eqz v0, :cond_119

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_119

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_119

    goto :goto_11a

    :cond_119
    move v2, v3

    :goto_11a
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsGameToolsOverlayVisible:Z

    if-eq v2, v0, :cond_123

    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mIsGameToolsOverlayVisible:Z

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_123
    :goto_123
    return-void
.end method

.method public final removeActivities(Ljava/lang/String;Z)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearPinnedTaskIfNeed()V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_12

    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;-><init>(Lcom/android/server/wm/Task;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void

    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2, p2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;-><init>(Ljava/lang/Object;IZ)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_26
    if-ltz p0, :cond_46

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p2, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-nez v1, :cond_3f

    iget-boolean v1, p2, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v1, :cond_3b

    goto :goto_3f

    :cond_3b
    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    goto :goto_43

    :cond_3f
    :goto_3f
    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :goto_43
    add-int/lit8 p0, p0, -0x1

    goto :goto_26

    :cond_46
    return-void
.end method

.method public final removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 3

    const-string/jumbo v0, "removeChild"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    return-void
.end method

.method public final removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V
    .registers 14

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->removeRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_39

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "removeChild: r="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not found in t="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_39
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/TaskFragment;->removeChild(Lcom/android/server/wm/WindowContainer;Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_7e

    iget-boolean v3, p0, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    if-nez v3, :cond_7e

    iget-boolean v3, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v3, :cond_7e

    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    if-eqz v3, :cond_7e

    iget-boolean v3, v3, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    if-eqz v3, :cond_7e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "removeChild: child="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", reason="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", force remove root="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", reason=pop_over_policy"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->removeImmediately()V

    :cond_7e
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_8b

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    :cond_8b
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-eqz v1, :cond_ad

    iget-object v2, v1, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mOwnerTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-ne p1, v2, :cond_ad

    if-nez v1, :cond_96

    goto :goto_ad

    :cond_96
    iget-object v2, v1, Lcom/android/server/wm/Task$DecorSurfaceContainer;->this$0:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mDecorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mContainerSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskFragmentParentInfoChangedIfNeeded()V

    :cond_ad
    :goto_ad
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v1

    if-eqz v1, :cond_ca

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->onlyHasTaskOverlayActivities(Z)Z

    move-result p1

    if-eqz p1, :cond_f5

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    const/4 v9, -0x1

    const/4 v10, 0x0

    move v5, v4

    move-object v3, p0

    move-object v6, p2

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZIILjava/lang/String;)V

    return-void

    :cond_ca
    move-object v3, p0

    move-object v6, p2

    iget-boolean p0, v3, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez p0, :cond_f5

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->shouldRemoveSelfOnLastChildRemoval()Z

    move-result p0

    if-eqz p0, :cond_f5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", last child = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    :cond_f5
    return-void
.end method

.method public removeIfPossible()V
    .registers 2

    const-string/jumbo v0, "removeTaskIfPossible"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    return-void
.end method

.method public final removeIfPossible(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    move v0, v1

    goto :goto_14

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isExitAnimationRunningSelfOrChild()Z

    move-result v0

    :goto_14
    if-eqz v0, :cond_17

    goto :goto_45

    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    if-eqz v0, :cond_45

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v2, p1, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    if-eqz p1, :cond_45

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v0, p1, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    if-ne v0, p0, :cond_45

    const/4 p0, -0x1

    iput p0, p1, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    :cond_45
    :goto_45
    return-void
.end method

.method public final removeImmediately()V
    .registers 2

    const-string/jumbo v0, "removeTask"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    return-void
.end method

.method public final removeImmediately(Ljava/lang/String;)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_9e

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    iget-object v1, v1, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v1, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_1a
    if-ltz v3, :cond_32

    iget-object v4, v1, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition;

    iget-object v5, v4, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    if-eqz v5, :cond_2f

    invoke-static {p0, v5}, Lcom/android/server/wm/Transition;->containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_2f

    goto :goto_33

    :cond_2f
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    :cond_32
    move-object v4, v2

    :goto_33
    if-eqz v4, :cond_38

    iget-object v1, v4, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    goto :goto_39

    :cond_38
    move-object v1, v2

    :goto_39
    if-nez v1, :cond_3c

    goto :goto_9e

    :cond_3c
    iget-object v3, v4, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v3, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz v3, :cond_9e

    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_9e

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-nez v5, :cond_51

    goto :goto_9e

    :cond_51
    iget-object v3, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    if-nez v3, :cond_5b

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_9e

    :cond_5b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "CleanUp_SyncId<"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v4, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->addDebugName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onTaskRemoved: remove, task="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", leash="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", t="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ChangeTransitionController"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9e
    :goto_9e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isDeskRootTask()Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v1

    if-eqz v1, :cond_d1

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_b9
    if-ltz v3, :cond_d1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_ce

    const/high16 v4, -0x80000000

    invoke-virtual {v0, v1, v4}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    :cond_ce
    add-int/lit8 v3, v3, -0x1

    goto :goto_b9

    :cond_d1
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x791b

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearPinnedTaskIfNeed()V

    iget-object p1, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_107

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_101

    iput-object v2, v0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    :cond_101
    iput-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchIntoPipHostActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mLastTaskFragmentOrganizerBeforePip:Landroid/window/ITaskFragmentOrganizer;

    iput-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mLastEmbeddedParentTfTokenBeforePip:Landroid/os/IBinder;

    :cond_107
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    iget-object p1, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-eqz p1, :cond_11f

    iget-object v0, p1, Lcom/android/server/wm/Task$DecorSurfaceContainer;->this$0:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mDecorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object p1, p1, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mContainerSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_11f
    iget-boolean p1, p0, Lcom/android/server/wm/Task;->mRemoveByDrag:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_14f

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoveByDrag:Z

    iget-object p1, p0, Lcom/android/server/wm/Task;->mLastFreeformBoundsBeforeDragMoving:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_14f

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_14f

    if-eqz p1, :cond_14f

    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_14f

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_141

    goto :goto_14f

    :cond_141
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    :cond_14f
    :goto_14f
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->saveFreeformBoundsIfNeeded()V

    iget-object p1, p0, Lcom/android/server/wm/Task;->mDesktopCompatDisplayInsets:Lcom/android/server/wm/DesktopCompatPolicy$DesktopAppCompatDisplayInsets;

    if-eqz p1, :cond_158

    iput-object v2, p0, Lcom/android/server/wm/Task;->mDesktopCompatDisplayInsets:Lcom/android/server/wm/DesktopCompatPolicy$DesktopAppCompatDisplayInsets;

    :cond_158
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->removeImmediately()V

    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    return-void
.end method

.method public final reparent(ILcom/android/server/wm/Task;Ljava/lang/String;Z)V
    .registers 9

    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v2

    const-string/jumbo v3, "reParentTask:"

    invoke-static {v3, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2, p3}, [Ljava/lang/Object;

    move-result-object p3

    const/16 v0, 0x791b

    invoke-static {v0, p3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    invoke-virtual {p2, p1, p0, p4}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public final reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)V
    .registers 23

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p6

    iget-object v10, v4, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v11, v4, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v1, v6, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    const/4 v14, 0x1

    const/4 v15, 0x0

    const-string v3, "ActivityTaskManager"

    if-eqz v0, :cond_53

    iget v5, v0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v5, v1, :cond_53

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Can not reparent to same root task, task="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " already in rootTaskId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " by "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_50
    move-object v13, v0

    goto/16 :goto_11b

    :cond_53
    iget-object v5, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v2, :cond_78

    iget-boolean v13, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    if-eqz v13, :cond_5c

    goto :goto_78

    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Device doesn\'t support multi-window, can not reparent task="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to root-task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_78
    :goto_78
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v13

    if-eqz v13, :cond_9f

    iget-boolean v13, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-eqz v13, :cond_83

    goto :goto_9f

    :cond_83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Device doesn\'t support multi-display, can not reparent task="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to rootTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9f
    :goto_9f
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    const/4 v13, 0x5

    if-ne v1, v13, :cond_bf

    iget-boolean v1, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v1, :cond_ab

    goto :goto_bf

    :cond_ab
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Device doesn\'t support freeform, can not reparent task="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bf
    :goto_bf
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_1c6

    if-eqz v2, :cond_11a

    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v4, v1, v15}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v1

    if-nez v1, :cond_11a

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isActivatableDeskRoot()Z

    move-result v1

    if-eqz v1, :cond_d8

    goto :goto_11a

    :cond_d8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not move unresizeable task="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to multi-window root task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Moving to a fullscreen root task instead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_fa

    goto/16 :goto_50

    :cond_fa
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v1

    new-instance v2, Lcom/android/server/wm/Task$Builder;

    iget-object v3, v0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput v14, v2, Lcom/android/server/wm/Task$Builder;->mWindowingMode:I

    iput v1, v2, Lcom/android/server/wm/Task$Builder;->mActivityType:I

    iput-object v0, v2, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    iput-boolean v7, v2, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object v0

    goto/16 :goto_50

    :cond_11a
    :goto_11a
    move-object v13, v6

    :goto_11b
    if-ne v13, v12, :cond_11e

    goto :goto_12d

    :cond_11e
    invoke-virtual {v13}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v1

    iget-object v0, v4, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-nez v0, :cond_12e

    :goto_12d
    return-void

    :cond_12e
    invoke-virtual {v4, v14, v14}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v1, v4, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    :try_start_137
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_158

    if-eqz v12, :cond_147

    invoke-virtual {v11}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne v12, v2, :cond_14a

    move v2, v14

    goto :goto_14b

    :cond_147
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_14a
    move v2, v15

    :goto_14b
    if-eqz v2, :cond_158

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne v2, v1, :cond_158

    move v2, v14

    goto :goto_159

    :catchall_155
    move-exception v0

    goto/16 :goto_1c0

    :cond_158
    move v2, v15

    :goto_159
    if-eqz v1, :cond_169

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v3

    if-eqz v3, :cond_169

    invoke-virtual {v12, v15}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-ne v3, v1, :cond_169

    move v3, v14

    goto :goto_16a

    :cond_169
    move v3, v15

    :goto_16a
    if-eqz v8, :cond_174

    if-ne v8, v14, :cond_173

    if-nez v2, :cond_174

    if-eqz v3, :cond_173

    goto :goto_174

    :cond_173
    move v14, v15

    :cond_174
    :goto_174
    if-eqz v7, :cond_17a

    const v2, 0x7fffffff

    goto :goto_17b

    :cond_17a
    move v2, v15

    :goto_17b
    invoke-virtual {v4, v2, v13, v9, v14}, Lcom/android/server/wm/Task;->reparent(ILcom/android/server/wm/Task;Ljava/lang/String;Z)V

    if-eqz v1, :cond_19b

    if-eqz v14, :cond_19b

    const/4 v2, 0x0

    invoke-virtual {v13, v9, v2}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_19b

    iget-object v2, v4, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne v1, v2, :cond_19b

    iget-object v2, v4, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v1, v9}, Lcom/android/server/wm/ActivityTaskManagerService;->setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_19b
    if-nez p4, :cond_1a4

    iget-object v1, v4, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1a4
    .catchall {:try_start_137 .. :try_end_1a4} :catchall_155

    :cond_1a4
    iget-object v0, v4, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    if-nez p5, :cond_1b1

    invoke-virtual {v11}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible$1()V

    invoke-virtual {v11}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    :cond_1b1
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    iget-object v0, v4, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v10, v4, v0, v13, v15}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V

    return-void

    :goto_1c0
    iget-object v1, v4, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0

    :cond_1c6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No support to reparent to PIP, task="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V
    .registers 11

    if-eqz p1, :cond_61

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const-string/jumbo v1, "Task="

    if-eq v0, p1, :cond_46

    iget-object v0, p1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v7, 0x0

    move-object v6, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    if-eqz p0, :cond_2c

    if-eqz p2, :cond_21

    const p0, 0x7fffffff

    goto :goto_23

    :cond_21
    const/high16 p0, -0x80000000

    :goto_23
    invoke-virtual {v6, p1, p0}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    xor-int/lit8 p0, p2, 0x1

    invoke-virtual {p1, v6, p2, p0}, Lcom/android/server/wm/TaskDisplayArea;->onTaskMoved(Lcom/android/server/wm/Task;ZZ)V

    return-void

    :cond_2c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " can\'t reparent to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_46
    move-object v6, p0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " already child of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_61
    move-object v6, p0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Task can\'t reparent to null "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public final resetSurfaceControlTransforms()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    sget-object v2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    const/16 v3, 0x9

    new-array v3, v3, [F

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 7

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p2, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 p2, p2, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_c

    move p2, v1

    goto :goto_d

    :cond_c
    move p2, v0

    :goto_d
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    :try_start_11
    sget-object v3, Lcom/android/server/wm/Task;->sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

    invoke-virtual {v3, v2, p2}, Lcom/android/server/wm/ResetTargetTaskHelper;->process(Lcom/android/server/wm/Task;Z)Landroid/app/ActivityOptions;

    move-result-object p2
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_2e

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    invoke-virtual {v2, v1, v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_28

    move-object p1, p0

    :cond_28
    if-eqz p2, :cond_2d

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    :cond_2d
    return-object p1

    :catchall_2e
    move-exception p1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    throw p1
.end method

.method public final resize(ILandroid/graphics/Rect;)V
    .registers 11

    const-string/jumbo v0, "resizeTask_"

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    const/4 v1, 0x2

    and-int/2addr p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_10

    move p1, v3

    goto :goto_11

    :cond_10
    move p1, v2

    :goto_11
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-nez v4, :cond_30

    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-nez p1, :cond_2a

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Z)V
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_27

    goto :goto_2a

    :catchall_27
    move-exception p1

    goto/16 :goto_b9

    :cond_2a
    :goto_2a
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :cond_30
    if-eqz p2, :cond_73

    :try_start_32
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v4

    if-nez v4, :cond_39

    goto :goto_73

    :cond_39
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_45

    move v4, v3

    goto :goto_46

    :cond_45
    move v4, v2

    :goto_46
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_65

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_73

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v6, v5, :cond_61

    move v5, v3

    goto :goto_62

    :cond_61
    move v5, v2

    :goto_62
    if-ne v4, v5, :cond_70

    goto :goto_73

    :cond_65
    const/4 v5, 0x6

    if-ne v6, v5, :cond_6a

    if-nez v4, :cond_70

    :cond_6a
    const/4 v5, 0x5

    if-ne v6, v5, :cond_73

    if-eqz v4, :cond_70

    goto :goto_73

    :cond_70
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->adjustAspectRatioIfNeeded(Landroid/graphics/Rect;)V

    :cond_73
    :goto_73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result p2

    if-eqz p1, :cond_95

    and-int/lit8 p1, p2, 0x2

    if-eq p1, v1, :cond_95

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onResize()V

    or-int/lit8 p2, p2, 0x2

    :cond_95
    if-eqz p2, :cond_ad

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_ad

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    move-result p2

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, v3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    if-nez p2, :cond_ad

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    :cond_ad
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_b7
    .catchall {:try_start_32 .. :try_end_b7} :catchall_27

    goto/16 :goto_2a

    :goto_b9
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw p1
.end method

.method public final resumeNextFocusAfterReparent()V
    .registers 3

    const-string/jumbo v0, "reparent"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible$1()V

    return-void
.end method

.method public final resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .registers 13

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooted()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_1e

    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->readyToResume()Z

    move-result v0

    if-nez v0, :cond_1f

    :goto_1e
    return v1

    :cond_1f
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FREEFORM_STASH:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_2a
    move v0, v2

    goto :goto_2d

    :cond_2c
    move v0, v1

    :goto_2d
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_6c

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p3

    const-string/jumbo v0, "noMoreActivities"

    if-nez p3, :cond_4a

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_4a

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 p2, 0x0

    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result p0

    return p0

    :cond_4a
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean p2, p2, v1

    if-eqz p2, :cond_61

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x3808e4901a1f301fL  # 9.144179306090412E-39

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, v2, v3, v1, p3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_61
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p2, p1, v0, p0}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    return p0

    :cond_6c
    new-array v5, v2, [Z

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v3, :cond_7c

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/wm/TaskFragment;->resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v3

    aput-boolean v3, v5, v1

    :cond_7c
    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda52;

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda52;-><init>(Lcom/android/server/wm/TaskFragment;[ZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)V

    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    aget-boolean p0, v5, v1

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/wm/TaskFragment;->resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result p1

    or-int/2addr p0, p1

    aput-boolean p0, v5, v1

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    if-eqz p0, :cond_a8

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    move-result p0

    if-eqz p0, :cond_a8

    sget-object p0, Lcom/android/server/am/AppStateBroadcaster;->mObjHandler:Landroid/os/Handler;

    if-eqz p0, :cond_a8

    iget-object p1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    new-instance p2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda53;

    invoke-direct {p2, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda53;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a8
    aget-boolean p0, v5, v1

    return p0
.end method

.method public final resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .registers 11

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result p1

    goto :goto_73

    :catchall_1b
    move-exception p1

    goto/16 :goto_b4

    :cond_1e
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FREEFORM_STASH:Z

    if-eqz v2, :cond_33

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result p1

    goto :goto_73

    :cond_33
    move p1, v1

    goto :goto_73

    :cond_35
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    move v4, v2

    move v2, v1

    :goto_3e
    if-ltz v4, :cond_72

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v6

    if-nez v6, :cond_4f

    goto :goto_5b

    :cond_4f
    invoke-virtual {v4, v3}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v6

    if-eqz v6, :cond_5d

    invoke-virtual {v4, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_72

    :cond_5b
    :goto_5b
    move v4, v5

    goto :goto_3e

    :cond_5d
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v4

    or-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v5, v4, :cond_5b

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v0

    goto :goto_3e

    :cond_72
    move p1, v2

    :goto_73
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result p3

    if-eqz p3, :cond_a1

    if-eqz p2, :cond_9e

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result p3

    if-eqz p3, :cond_9e

    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p3

    if-nez p3, :cond_9e

    iget-object p3, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v0

    const-string/jumbo v2, "resumeTop-turnScreenOnFlag"

    invoke-virtual {p3, v0, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(ILjava/lang/String;)V

    iput-boolean v1, p2, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    goto :goto_a1

    :cond_9e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->checkReadyForSleep()V

    :cond_a1
    :goto_a1
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING_FOR_HALF_OPEN_MODE:Z
    :try_end_a3
    .catchall {:try_start_7 .. :try_end_a3} :catchall_1b

    if-nez p2, :cond_a8

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    return p1

    :cond_a8
    :try_start_a8
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v3
    :try_end_b4
    .catchall {:try_start_a8 .. :try_end_b4} :catchall_1b

    :goto_b4
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    throw p1
.end method

.method public final returnsToHomeRootTask()Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mLaunchTaskOnHome:Z

    if-eqz v0, :cond_4c

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mLaunchTaskOnHome:Z

    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_4c

    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v2, 0x10004000

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_23

    goto :goto_4c

    :cond_23
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    if-eqz v0, :cond_4a

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    move-result p0

    if-nez p0, :cond_4c

    goto :goto_4a

    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq v0, p0, :cond_4c

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->returnsToHomeRootTask()Z

    move-result p0

    if-eqz p0, :cond_4c

    :cond_4a
    :goto_4a
    const/4 p0, 0x1

    return p0

    :cond_4c
    :goto_4c
    return v1
.end method

.method public final reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;
    .registers 16

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    const/4 v1, 0x0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_19

    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayContent;->alwaysCreateRootTask(II)Z

    move-result v0

    goto :goto_1a

    :cond_19
    :goto_19
    move v0, v1

    :goto_1a
    if-eqz v0, :cond_51

    iput-object p3, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object p4, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-virtual {p0, p6, p2, p1}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    if-eqz p1, :cond_32

    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz p2, :cond_32

    iget p3, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput p3, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iget p2, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput p2, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    goto :goto_37

    :cond_32
    const/4 p2, -0x1

    iput p2, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iput p2, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    :goto_37
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget p3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object p4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iget-object p5, p2, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    const/16 v0, 0x8

    invoke-virtual {p5, v0, p3, v1, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    iget-object p4, p2, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-virtual {p2, p4, p3}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    move-object v1, p0

    goto :goto_82

    :cond_51
    if-eqz p6, :cond_5c

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v1, p6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getNextTaskIdForUser(I)I

    move-result v0

    goto :goto_66

    :cond_5c
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v1, v1, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getNextTaskIdForUser(I)I

    move-result v0

    :goto_66
    new-instance v1, Lcom/android/server/wm/Task$Builder;

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput v0, v1, Lcom/android/server/wm/Task$Builder;->mTaskId:I

    iput-object p1, v1, Lcom/android/server/wm/Task$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object p8, v1, Lcom/android/server/wm/Task$Builder;->mActivityOptions:Landroid/app/ActivityOptions;

    iput-object p2, v1, Lcom/android/server/wm/Task$Builder;->mIntent:Landroid/content/Intent;

    iput-object p3, v1, Lcom/android/server/wm/Task$Builder;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object p4, v1, Lcom/android/server/wm/Task$Builder;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-boolean p5, v1, Lcom/android/server/wm/Task$Builder;->mOnTop:Z

    iput-object p0, v1, Lcom/android/server/wm/Task$Builder;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object p2

    move-object v1, p2

    :goto_82
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateMinMaxSizeIfNeeded()V

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    const/4 v6, -0x1

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;I)Z

    return-object v1
.end method

.method public final saveFreeformBoundsIfNeeded()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    if-eqz v1, :cond_4b

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_4b

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v1

    if-nez v1, :cond_4b

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_4b

    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "saveFreeformBoundsIfNeeded : task #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/LaunchParamsPersister;->saveFreeformBounds(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public final saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_15a

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_15a

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_15a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_15a

    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2b

    if-eq v0, v1, :cond_2b

    goto/16 :goto_15a

    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_58

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "saveLaunchingStateIfNeeded: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has no req bounds. callers="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x3

    const-string v0, "ActivityTaskManager"

    invoke-static {p0, p1, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    :cond_58
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_60

    goto/16 :goto_15a

    :cond_60
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->saveFreeformBounds(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    :cond_73
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_15a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    if-eq v0, v1, :cond_85

    goto/16 :goto_15a

    :cond_85
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_92

    goto/16 :goto_15a

    :cond_92
    iget v3, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/android/server/wm/LaunchParamsPersister;->waitAndMoveResultIfLoading(I)V

    iget-object v4, v0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    if-nez v4, :cond_ab

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iget-object v5, v0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_ab
    new-instance v5, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v4, v1, v5}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    new-instance v5, Landroid/view/DisplayInfo;

    invoke-direct {v5}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v6, p1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6, v5}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v6, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    iget-object v7, v5, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v2

    iget-object v5, v5, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    iget v5, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v7

    const/4 v8, 0x0

    if-eq v5, v7, :cond_d9

    move v5, v2

    goto :goto_da

    :cond_d9
    move v5, v8

    :goto_da
    or-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v6

    iput v6, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    iget v6, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mOrientation:I

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-eq v6, v7, :cond_ed

    move v6, v2

    goto :goto_ee

    :cond_ed
    move v6, v8

    :goto_ee
    or-int/2addr v5, v6

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iput v6, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mOrientation:I

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    if-eqz v6, :cond_115

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v6

    if-nez v6, :cond_115

    iget v6, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayDeviceType:I

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eq v6, v7, :cond_10c

    move v8, v2

    :cond_10c
    or-int/2addr v5, v8

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput p1, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayDeviceType:I

    :cond_115
    iget-object p1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_129

    iget-object v6, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-static {v6, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    or-int/2addr p1, v5

    iget-object v2, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_136

    :cond_129
    iget-object p1, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    or-int/2addr p1, v5

    iget-object v2, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    :goto_136
    iget-object p0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    iget-object v2, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-static {p0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr p1, v2

    iput-object p0, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz p1, :cond_149

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    :cond_149
    iget-object p0, v4, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/LaunchParamsPersister;->addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V

    if-eqz p1, :cond_15a

    new-instance p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    invoke-direct {p0, v0, v3, v1, v4}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;ILandroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)V

    iget-object p1, v0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/PersisterQueue;->updateLastOrAddItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V

    :cond_15a
    :goto_15a
    return-void
.end method

.method public final sendFreeformLogging()V
    .registers 9

    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_e
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mNeedToSendFreeformLogging:Z

    iget-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_63

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_63

    :cond_1b
    iget-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v5, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    new-instance v6, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;

    const/4 v7, 0x1

    invoke-direct {v6, v7, p0, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v0}, Lcom/android/server/wm/DisplayArea;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_e .. :try_end_33} :catchall_61

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v2

    if-eqz v2, :cond_59

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "det"

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isDefaultDisplayDesktop()Z

    move-result p0

    if-eqz p0, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x2

    :goto_4c
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "2000"

    invoke-static {p0, v4, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_59
    const-string p0, "2000"

    aget v0, v1, v3

    invoke-static {p0, v4, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :catchall_61
    move-exception p0

    goto :goto_68

    :cond_63
    :goto_63
    :try_start_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_61

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_68
    :try_start_68
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_61

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final sendTaskAppeared()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_55

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v1, v1, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    invoke-interface {v0}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    if-eqz v0, :cond_55

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    if-eqz v1, :cond_1b

    goto :goto_55

    :cond_1b
    iget-object v1, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-nez v1, :cond_2d

    goto :goto_55

    :cond_2d
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    if-eqz v1, :cond_32

    goto :goto_55

    :cond_32
    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_37

    goto :goto_3f

    :cond_37
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_55

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    if-eqz v1, :cond_55

    :goto_3f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mTaskAppearedSent:Z

    iget-object v0, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mPendingEventsQueue:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->-$$Nest$mgetPendingTaskEvent(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    move-result-object v2

    if-nez v2, :cond_55

    new-instance v2, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    invoke-direct {v2, v1, p0}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(ILcom/android/server/wm/Task;)V

    iget-object p0, v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    :goto_55
    return-void
.end method

.method public final sendTaskFragmentParentInfoChangedIfNeeded()V
    .registers 13

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_6a

    :cond_7
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getTaskFragment(Ljava/util/function/Predicate;)Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-eqz p0, :cond_6a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v10

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v3, :cond_6a

    if-eqz v10, :cond_6a

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mPendingTaskFragmentEvents:Landroid/util/ArrayMap;

    invoke-interface {v3}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_39
    if-ltz v1, :cond_4e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    iget-object v4, v2, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTask:Lcom/android/server/wm/Task;

    if-ne v10, v4, :cond_4b

    const/4 v4, 0x3

    iget v5, v2, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mEventType:I

    if-ne v5, v4, :cond_4b

    goto :goto_4f

    :cond_4b
    add-int/lit8 v1, v1, -0x1

    goto :goto_39

    :cond_4e
    const/4 v2, 0x0

    :goto_4f
    if-nez v2, :cond_61

    new-instance v1, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;-><init>(ILandroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/Throwable;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->addPendingEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V

    :cond_61
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public final setAlwaysOnTop(Z)V
    .registers 5

    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result v0

    if-ne v0, p1, :cond_7

    goto :goto_2c

    :cond_7
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_2c

    if-nez p1, :cond_2c

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mKeepForceHiding:Z

    :cond_2c
    :goto_2c
    return-void
.end method

.method public final setBoostTaskLayerForFreeform(ZZ)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mBoostRootTaskLayerForFreeform:Z

    if-eq v0, p1, :cond_31

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mBoostRootTaskLayerForFreeform:Z

    if-eqz p2, :cond_15

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    if-eqz p2, :cond_15

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    :cond_15
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setBoostTaskLayerForFreeform: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", boost="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return-void
.end method

.method public final setBounds(Landroid/graphics/Rect;)I
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/wm/ConfigurationContainer;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 p1, 0x0

    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBoundsUnchecked(Landroid/graphics/Rect;)I

    move-result p0

    return p0

    :cond_1e
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    return p1
.end method

.method public final setBoundsUnchecked(Landroid/graphics/Rect;)I
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    :cond_16
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    return p1
.end method

.method public final setDeferTaskAppear(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    if-eqz v0, :cond_b

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    :cond_b
    return-void
.end method

.method public final setForceHidden(IZ)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->setForceHidden(IZ)Z

    move-result p1

    if-nez p1, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result p1

    if-eq v0, p1, :cond_28

    const/4 p2, 0x0

    const-string/jumbo v0, "setForceHidden"

    if-eqz p1, :cond_1f

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_28

    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    :cond_28
    :goto_28
    const/4 p0, 0x1

    return p0
.end method

.method public final setHasBeenVisible()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    :cond_a
    :goto_a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_1b

    :cond_17
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->setHasBeenVisible()V

    goto :goto_a

    :cond_1b
    :goto_1b
    return-void
.end method

.method public final setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    return-void
.end method

.method public final setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 13

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v0, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v3, :cond_22

    iput-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mRequiredDisplayCategory:Ljava/lang/String;

    :cond_22
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsEffectivelySystemApp:Z

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_TASKS_enabled:[Z

    const/4 v4, 0x0

    if-nez v0, :cond_78

    if-eqz p1, :cond_4f

    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_43

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_4f

    :cond_43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    move-object p1, v0

    :cond_4f
    aget-boolean v0, v3, v1

    if-eqz v0, :cond_69

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, -0x777ad978351fc36fL  # -1.281134414677598E-267

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v6, v7, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_69
    iput-object p1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz p1, :cond_72

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_73

    :cond_72
    move-object p1, v4

    :goto_73
    iput-object p1, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iput-object v4, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    goto :goto_c2

    :cond_78
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_b3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_a8

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, -0x7f0d1f88dbf3c496L

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v7, v8, v9, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_a8
    iput-object v5, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    goto :goto_c2

    :cond_b3
    iput-object v4, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    :goto_c2
    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez p1, :cond_c8

    move-object p1, v4

    goto :goto_ca

    :cond_c8
    iget-object p1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    :goto_ca
    iput-object p1, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez p1, :cond_d2

    move p1, v2

    goto :goto_d6

    :cond_d2
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    :goto_d6
    const/high16 v0, 0x200000

    and-int/2addr v0, p1

    if-eqz v0, :cond_dd

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    :cond_dd
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "user_setup_complete"

    iget v5, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v0, v3, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_fc

    move v0, v1

    goto :goto_fd

    :cond_fc
    move v0, v2

    :goto_fd
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    iget v0, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_108

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_11c

    :cond_108
    const v0, 0x82000

    and-int/2addr p1, v0

    const/high16 v0, 0x80000

    if-ne p1, v0, :cond_11a

    iget p1, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz p1, :cond_117

    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_11c

    :cond_117
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_11c

    :cond_11a
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    :goto_11c
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->updateSupportPolicyLocked(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/Task;)V

    iget p1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    iget v0, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq p1, v0, :cond_12e

    iput v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    :cond_12e
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    iput-object v4, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz p1, :cond_148

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    :cond_148
    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz p1, :cond_156

    iget-object v0, p0, Lcom/android/server/wm/Task;->mMinDimensions:Landroid/graphics/Point;

    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput p1, v0, Landroid/graphics/Point;->y:I

    :cond_156
    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_195

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3bcccccd  # 0.00625f

    mul-float/2addr p1, v0

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.samsung.android.sdk.multiwindow.maxWidth"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.samsung.android.sdk.multiwindow.maxHeight"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_195

    const/high16 v1, 0x3f000000  # 0.5f

    if-eq v0, v2, :cond_18b

    iget-object v3, p0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v3, Landroid/graphics/Point;->x:I

    :cond_18b
    if-eq p2, v2, :cond_195

    iget-object v0, p0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    int-to-float p2, p2

    mul-float/2addr p2, p1

    add-float/2addr p2, v1

    float-to-int p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    :cond_195
    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;-><init>(ILcom/android/server/wm/Task;)V

    invoke-static {p1}, Lcom/android/server/wm/PackagesChange;->forAllTaskChangeCallbacks(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v0, :cond_5

    goto :goto_1f

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_76

    if-eqz p3, :cond_d

    move-object v0, p3

    goto :goto_f

    :cond_d
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :goto_f
    iget v1, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1f

    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mIsEffectivelySystemApp:Z

    if-nez v2, :cond_1f

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v0, :cond_76

    :cond_1f
    :goto_1f
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    if-eqz p2, :cond_2e

    goto :goto_30

    :cond_2e
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    :goto_30
    if-eqz p3, :cond_33

    goto :goto_35

    :cond_33
    iget-object p3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :goto_35
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object p2, p2, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object p2, p2, Lcom/android/server/wm/AppCompatOverrides;->mResizeOverrides:Lcom/android/server/wm/AppCompatResizeOverrides;

    iget-object p3, p2, Lcom/android/server/wm/AppCompatResizeOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v0, 0xa5faf38

    invoke-static {p3, v0, v1}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result p3

    iget-object v0, p2, Lcom/android/server/wm/AppCompatResizeOverrides;->mAllowForceResizeOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    move-result p3

    if-nez p3, :cond_64

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result p3

    if-nez p3, :cond_64

    iget-object p3, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object p3, p3, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object p3, p3, Lcom/android/server/wm/AppCompatOverrides;->mAspectRatioOverrides:Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    invoke-virtual {p3}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->hasFullscreenOverride()Z

    move-result p3

    if-eqz p3, :cond_62

    goto :goto_64

    :cond_62
    const/4 p3, 0x0

    goto :goto_65

    :cond_64
    :goto_64
    const/4 p3, 0x1

    :goto_65
    iput-boolean p3, p0, Lcom/android/server/wm/Task;->mForceResizeOverride:Z

    iget-object p2, p2, Lcom/android/server/wm/AppCompatResizeOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v1, 0xacbec0b

    invoke-static {p2, v1, v2}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/Task;->mForceNonResizeOverride:Z

    :cond_76
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public final setLastNonFullscreenBounds(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_c

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastFreeformBoundsBeforeDragMoving:Landroid/graphics/Rect;

    if-nez v0, :cond_17

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastFreeformBoundsBeforeDragMoving:Landroid/graphics/Rect;

    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastFreeformBoundsBeforeDragMoving:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/LockTaskController;->getLockTaskAuth(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    const/4 v0, 0x0

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_2b

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x8a86e5b51736dcL

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, v3, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2b
    return-void
.end method

.method public final setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-nez v1, :cond_e

    return-void

    :cond_e
    if-eq v1, p0, :cond_14

    invoke-virtual {v1, p1}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :cond_14
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_26

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsSurfacePositionPaused:Z

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowState;->applyWithNextDraw(ILjava/util/function/Consumer;)V

    return-void

    :cond_26
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public final setMinimized()V
    .registers 9

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    if-eqz v0, :cond_6

    goto/16 :goto_94

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getFreeformContainerPosition()Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v1, p0, v4}, Lcom/android/server/wm/FreeformController;->notifyFreeformMinimizeStateChanged(IILcom/android/server/wm/Task;Z)V

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    const/4 v5, -0x1

    if-eqz v3, :cond_72

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    if-nez v6, :cond_4c

    iget-object v6, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v6

    if-nez v6, :cond_4c

    iget-object v6, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-lez v6, :cond_4c

    iget-object v6, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v6, p0}, Lcom/android/server/wm/TransitionController;->inFinishingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v6

    if-eqz v6, :cond_45

    goto :goto_4c

    :cond_45
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/wm/Task;->updateMinimizeChangeInfo(III)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    goto :goto_72

    :cond_4c
    :goto_4c
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v0}, Lcom/android/server/wm/FreeformController;->continueMinimizeStateChangedCallbacks()V

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iput v2, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz v3, :cond_67

    invoke-virtual {p0, v4, v5, v5}, Lcom/android/server/wm/Task;->updateMinimizeChangeInfo(III)V

    :cond_67
    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    const/16 v2, 0xcb

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_72
    :goto_72
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    if-eqz v0, :cond_94

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_94

    iget v0, p0, Lcom/android/server/wm/Task;->mLastMinimizedDisplayType:I

    if-ne v0, v5, :cond_8a

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v0, p0, Lcom/android/server/wm/Task;->mLastMinimizedDisplayType:I

    :cond_8a
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Task;->mLastMinimizedRotation:I

    :cond_94
    :goto_94
    return-void
.end method

.method public final setNextAffiliate(Lcom/android/server/wm/Task;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez p1, :cond_6

    const/4 p1, -0x1

    goto :goto_8

    :cond_6
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_8
    iput p1, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    return-void
.end method

.method public final setPrevAffiliate(Lcom/android/server/wm/Task;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-nez p1, :cond_6

    const/4 p1, -0x1

    goto :goto_8

    :cond_6
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_8
    iput p1, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    return-void
.end method

.method public final setRootTaskWindowingMode(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Trying to set root-task windowing-mode on a non-root-task: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    return-void

    :cond_23
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->setWindowingModeInner(IZ)V

    return-void
.end method

.method public final setSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez p1, :cond_11

    goto :goto_25

    :cond_11
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_25
    :goto_25
    return-void
.end method

.method public setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z

    move-result p0

    return p0
.end method

.method public setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_6

    return v1

    :cond_6
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_27

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object p1, p1, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    invoke-interface {v0}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    if-eqz p1, :cond_27

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoveWithTaskOrganizer:Z

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->removeTask(Lcom/android/server/wm/Task;Z)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p1, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskVanishedInternal(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;Lcom/android/server/wm/Task;)V

    :cond_27
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz p1, :cond_31

    if-nez p2, :cond_50

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    goto :goto_50

    :cond_31
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    if-eqz p1, :cond_42

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTaskDef(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    move-result-object p2

    if-eqz p2, :cond_42

    iget-object p1, p1, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_42
    const/4 p1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    iget-boolean p1, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz p1, :cond_50

    const-string/jumbo p1, "setTaskOrganizer"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    :cond_50
    :goto_50
    const/4 p0, 0x1

    return p0
.end method

.method public final setUnMinimizedWhenRestored()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    if-nez v0, :cond_5

    goto :goto_27

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsMinimized:Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_11

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/Task;->updateMinimizeChangeInfo(III)V

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, p0, v2}, Lcom/android/server/wm/FreeformController;->notifyFreeformMinimizeStateChanged(IILcom/android/server/wm/Task;Z)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_27

    iput v1, p0, Lcom/android/server/wm/Task;->mLastMinimizedDisplayType:I

    iput v1, p0, Lcom/android/server/wm/Task;->mLastMinimizedRotation:I

    :cond_27
    :goto_27
    return-void
.end method

.method public final setWindowingMode(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Task;->mMultiWindowRestoreWindowingMode:I

    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    return-void

    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->setWindowingModeInner(IZ)V

    return-void
.end method

.method public final setWindowingModeInner(IZ)V
    .registers 16

    const-string/jumbo v0, "movePinnedActivityToOriginalTask"

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-nez v1, :cond_12

    const-string p0, "ActivityTaskManager"

    const-string/jumbo p1, "taskDisplayArea is null, bail early"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p2, :cond_25

    invoke-virtual {v1, p1, v4, v3}, Lcom/android/server/wm/TaskDisplayArea;->isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v6

    if-nez v6, :cond_25

    move p1, v5

    :cond_25
    if-ne v2, p1, :cond_31

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    return-void

    :cond_31
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/wm/Task;->mMultiWindowRestoreWindowingMode:I

    const/4 v6, 0x1

    invoke-virtual {p0, v6, v6}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-nez p1, :cond_48

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    if-eqz v8, :cond_46

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v8

    goto :goto_49

    :cond_46
    move v8, v6

    goto :goto_49

    :cond_48
    move v8, p1

    :goto_49
    const/4 v9, 0x2

    if-ne v2, v9, :cond_53

    iput-boolean v6, p0, Lcom/android/server/wm/TaskFragment;->mCanAffectSystemUiFlags:Z

    iget-object v10, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v10, p0, v4}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    :cond_53
    if-ne v8, v9, :cond_5c

    iget-object v10, v1, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    if-eqz v10, :cond_5c

    invoke-virtual {v10}, Lcom/android/server/wm/Task;->dismissPip()V

    :cond_5c
    if-eq v8, v6, :cond_7d

    if-eqz v7, :cond_7d

    iget-boolean v10, v7, Lcom/android/server/wm/ActivityRecord;->mNoDisplay:Z

    if-nez v10, :cond_7d

    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityRecord;->canForceResizeNonResizable(I)Z

    move-result v10

    if-eqz v10, :cond_7d

    const/4 v10, 0x5

    if-ne v8, v10, :cond_6e

    goto :goto_7d

    :cond_6e
    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v10, v3, v6, v8}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    :cond_7d
    :goto_7d
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    if-eqz v7, :cond_8f

    :try_start_84
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    :catchall_8c
    move-exception p1

    goto/16 :goto_1e0

    :cond_8f
    :goto_8f
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {p1, v3, p0}, Lcom/android/server/wm/FreeformController;->useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_a0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3, v6}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(Z)V

    :cond_a0
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v3

    if-nez v3, :cond_a9

    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    :cond_a9
    if-ne v2, v9, :cond_16d

    if-eqz v7, :cond_16d

    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    if-eqz v8, :cond_14b

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v8

    if-nez v8, :cond_14b

    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v8

    if-eqz v8, :cond_14b

    iget-object v8, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v8, v7}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    if-eqz v8, :cond_d3

    if-nez v3, :cond_d3

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v10

    if-eqz v10, :cond_d3

    invoke-virtual {v8, p1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    :cond_d3
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10, v5}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v10

    invoke-virtual {v7, v8, v10, v0}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    if-eqz v10, :cond_100

    invoke-virtual {v10, v7}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v10

    if-eqz v10, :cond_100

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/server/wm/WindowToken;->getOrCreateFixedRotationLeash(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v10, :cond_100

    iget v10, v7, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-nez v10, :cond_100

    move v10, v6

    goto :goto_101

    :cond_100
    move v10, v5

    :goto_101
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v11

    if-eqz v11, :cond_11a

    invoke-virtual {v1, v6, v5}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v11

    if-eqz v11, :cond_11a

    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v12

    if-eqz v12, :cond_11a

    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v11

    if-eqz v11, :cond_11a

    goto :goto_11d

    :cond_11a
    invoke-virtual {v8, v0, v4}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    :goto_11d
    iget v0, v8, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-nez v0, :cond_13e

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->prepareSurfaces()V

    iget-object v0, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/TransitionController;->inFinishingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_13e

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/wm/Transition;->assignLayers(Lcom/android/server/wm/DisplayArea;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, v7, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_13e

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_13e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v0, :cond_14b

    if-eqz v10, :cond_14b

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_14b
    if-eqz v3, :cond_150

    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    :cond_150
    invoke-virtual {v7, v5}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    move-result v0

    if-eqz v0, :cond_172

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeAppSwitches()V

    if-nez v3, :cond_172

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_172

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_172

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->takeTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    goto :goto_172

    :cond_16d
    if-eqz v3, :cond_172

    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    :cond_172
    :goto_172
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_1ad

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1a1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isDeskRootTask()Z

    move-result v0

    if-nez v0, :cond_1a1

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    if-eqz p2, :cond_18e

    const-string/jumbo v1, "freeform stack attached"

    goto :goto_191

    :cond_18e
    const-string/jumbo v1, "windowing mode change:freeform"

    :goto_191
    iget-object v3, v0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1ad

    :cond_1a1
    if-nez p2, :cond_1ad

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    const-string/jumbo v1, "windowing mode change:non-freeform"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformController;->scheduleUnbindMinimizeContainerService(Ljava/lang/String;)V
    :try_end_1ad
    .catchall {:try_start_84 .. :try_end_1ad} :catchall_8c

    :cond_1ad
    :goto_1ad
    if-eqz p2, :cond_1b5

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :cond_1b5
    if-eqz v7, :cond_1ca

    if-ne v2, v6, :cond_1ca

    if-ne p1, v9, :cond_1ca

    :try_start_1bb
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p1

    if-nez p1, :cond_1ca

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {p1}, Lcom/android/server/wm/PinnedTaskController;->deferOrientationChangeForEnteringPipFromFullScreenIfNeeded()V
    :try_end_1ca
    .catchall {:try_start_1bb .. :try_end_1ca} :catchall_8c

    :cond_1ca
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    if-nez p1, :cond_1df

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible$1()V

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    :cond_1df
    return-void

    :goto_1e0
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw p1
.end method

.method public final shouldUpRecreateTaskLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 8

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/server/wm/ActivityRecord;->computeTaskAffinity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_70

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    goto :goto_70

    :cond_16
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6f

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6f

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->isDocument()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-nez v0, :cond_36

    goto :goto_70

    :cond_36
    new-array v3, v1, [Z

    new-instance v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda42;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda42;-><init>(Lcom/android/server/wm/Task;[Z)V

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_64

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "shouldUpRecreateTask: task not in history for "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_64
    iget-object p1, p2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6f

    goto :goto_70

    :cond_6f
    return v2

    :cond_70
    :goto_70
    return v1
.end method

.method public final showSurfaceOnCreation()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final showToCurrentUser()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_19

    :cond_e
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    if-eqz v0, :cond_19

    goto :goto_2c

    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerInternal;->isUserVisible(I)Z

    move-result p0

    if-eqz p0, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p0, 0x0

    return p0

    :cond_2c
    :goto_2c
    return v1
.end method

.method public final startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V
    .registers 21

    move/from16 v2, p3

    move-object/from16 v1, p5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_11

    :cond_f
    move v5, v4

    goto :goto_12

    :cond_11
    :goto_11
    move v5, v3

    :goto_12
    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eq v6, p0, :cond_1f

    invoke-virtual {p0, v6}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_1f

    :cond_1d
    move v7, v4

    goto :goto_20

    :cond_1f
    :goto_1f
    move v7, v3

    :goto_20
    iget-boolean v8, p1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    const/4 v9, 0x0

    if-nez v8, :cond_3d

    if-eqz v5, :cond_3d

    if-eqz v7, :cond_2b

    if-eqz v2, :cond_3d

    :cond_2b
    if-nez v6, :cond_2e

    goto :goto_3d

    :cond_2e
    if-ne v6, p0, :cond_37

    const-string/jumbo v8, "positionChildAtTop"

    invoke-virtual {p0, v8, v9}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_3d

    :cond_37
    const v8, 0x7fffffff

    invoke-virtual {p0, v8, v6, v3}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_3d
    :goto_3d
    if-nez v2, :cond_4b

    if-eqz v7, :cond_4b

    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    move-result v7

    if-nez v7, :cond_4b

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return-void

    :cond_4b
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/4 v8, 0x2

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_78

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "here"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v12, -0x1f6199d2a916c919L  # -2.6085483983225736E157

    filled-new-array {v7, v8, v10}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v11, v12, v13, v4, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_78
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v7

    if-eqz v7, :cond_81

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateMinMaxSizeIfNeeded()V

    :cond_81
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v7

    if-eqz v7, :cond_98

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-nez v7, :cond_98

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    invoke-static {p0, v9, p1, v1}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    return-void

    :cond_98
    if-nez v5, :cond_9e

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return-void

    :cond_9e
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v7, 0x10000

    and-int/2addr v5, v7

    if-eqz v5, :cond_d0

    iget-object v5, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v5, v5, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v5, :cond_b7

    goto :goto_d7

    :cond_b7
    iget-object v5, v5, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz v5, :cond_c8

    iget v7, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    goto :goto_d7

    :cond_c8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t set no-animation property of non-participant"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d0
    iget-object v5, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_d7
    if-eqz v2, :cond_ea

    iget-boolean v5, p1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-nez v5, :cond_ea

    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v5

    if-nez v5, :cond_ea

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    invoke-static {v5, v9, p1, v1}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    :cond_ea
    if-eqz v2, :cond_101

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v7, 0x200000

    and-int/2addr v5, v7

    if-eqz v5, :cond_10c

    invoke-virtual {p0, p1, p1}, Lcom/android/server/wm/Task;->resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v9}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-ne v5, p1, :cond_10a

    goto :goto_10c

    :cond_101
    if-eqz v1, :cond_10c

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v5

    const/4 v7, 0x5

    if-ne v5, v7, :cond_10c

    :cond_10a
    move v5, v4

    goto :goto_10d

    :cond_10c
    :goto_10c
    move v5, v3

    :goto_10d
    if-eqz v1, :cond_116

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getDisableStartingWindow()Z

    move-result v1

    if-eqz v1, :cond_116

    goto :goto_117

    :cond_116
    move v4, v5

    :goto_117
    iget-boolean v1, p1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_130

    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    invoke-virtual {p0, v9, v3}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-nez v1, :cond_12a

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunchedForKeyguardTransition()V

    :cond_12a
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    return-void

    :cond_130
    if-eqz v4, :cond_174

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v6, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    iget-boolean v3, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartingWindow:Z

    if-eqz v3, :cond_166

    iget-object v3, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_159

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitProcessRunning:Z

    iput-boolean v2, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitNewTask:Z

    move/from16 v3, p4

    iput-boolean v3, p0, Lcom/android/server/wm/StartingSurfaceController;->mInitTaskSwitch:Z

    :cond_159
    iget-object p0, p0, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartActivities:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;

    move-object/from16 v6, p6

    invoke-direct {v2, p1, v1, v6}, Lcom/android/server/wm/StartingSurfaceController$DeferringStartingWindowRecord;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_166
    move/from16 v3, p4

    move-object/from16 v6, p6

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v4

    const/4 v7, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    :cond_174
    return-void
.end method

.method public final switchUser(I)V
    .registers 4

    iget v0, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    if-ne v0, p1, :cond_5

    goto :goto_21

    :cond_5
    iput p1, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->switchUser(I)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p1

    if-nez p1, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showToCurrentUser()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_21
    :goto_21
    return-void
.end method

.method public final toFullString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eq v1, p0, :cond_2d

    const-string v2, " rootTaskId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2d
    const-string v1, " visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " visibleRequested="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getStage()I

    move-result v2

    if-eqz v2, :cond_7d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " stage="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getStage()I

    move-result v3

    invoke-static {v3}, Landroid/app/WindowConfiguration;->stageConfigToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7d
    const-string v2, " translucent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/16 v0, 0x80

    const-string/jumbo v1, "Task{"

    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_4b

    const-string v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_84

    :cond_4b
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_68

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_68

    const-string v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_84

    :cond_68
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_84

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_84

    const-string v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_84
    :goto_84
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v1

    if-nez v1, :cond_90

    const-string v1, " nonResizable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_90
    iget v1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_99

    iget v1, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    if-eq v1, v2, :cond_ad

    :cond_99
    const-string v1, " minWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " minHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_ad
    iget v1, p0, Lcom/android/server/wm/Task;->mDeskRootTaskType:I

    if-eqz v1, :cond_bf

    const-string v1, " dw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mDeskRootTaskType:I

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->deskRootTaskTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_bf
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method public final topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    new-instance v0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 4

    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;-><init>(I)V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return-object p0
.end method

.method public updateEffectiveIntent()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    :cond_f
    return-void
.end method

.method public final updateMinMaxSizeIfNeeded()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/Task;->mMinDimensions:Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->equals(II)Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Point;->equals(II)Z

    move-result v2

    if-eqz v0, :cond_1a

    if-eqz v2, :cond_1a

    iput v1, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    iput v1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iput v1, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    iput v1, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    return-void

    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_2c

    iget-boolean v4, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v4, :cond_2c

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    :goto_2a
    int-to-float v3, v3

    goto :goto_35

    :cond_2c
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_2a

    :goto_35
    iget-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_46

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isWindowManagerCtsPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v3, v3

    :cond_46
    iget v4, p0, Lcom/android/server/wm/Task;->mLastDensityDpi:F

    cmpl-float v4, v4, v3

    const-string v5, "ActivityTaskManager"

    if-eqz v4, :cond_bc

    iput v3, p0, Lcom/android/server/wm/Task;->mLastDensityDpi:F

    iget-object v4, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v4

    int-to-float v4, v4

    const/4 v6, 0x0

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_77

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateMinMaxSizeIfNeeded: packageBaseDensity="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", Error"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_77
    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000  # 0.5f

    if-nez v0, :cond_97

    iget-object v0, p0, Lcom/android/server/wm/Task;->mMinDimensions:Landroid/graphics/Point;

    iget v5, v0, Landroid/graphics/Point;->x:I

    if-gez v5, :cond_84

    move v5, v1

    goto :goto_88

    :cond_84
    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v5, v4

    float-to-int v5, v5

    :goto_88
    iput v5, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gez v0, :cond_90

    move v0, v1

    goto :goto_94

    :cond_90
    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    float-to-int v0, v0

    :goto_94
    iput v0, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    goto :goto_9b

    :cond_97
    iput v1, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    iput v1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    :goto_9b
    if-nez v2, :cond_b7

    iget-object v0, p0, Lcom/android/server/wm/Task;->mMaxDimensions:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-gez v2, :cond_a5

    move v2, v1

    goto :goto_a9

    :cond_a5
    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    :goto_a9
    iput v2, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gez v0, :cond_b0

    goto :goto_b4

    :cond_b0
    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    float-to-int v1, v0

    :goto_b4
    iput v1, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    return-void

    :cond_b7
    iput v1, p0, Lcom/android/server/wm/Task;->mMaxHeight:I

    iput v1, p0, Lcom/android/server/wm/Task;->mMaxWidth:I

    return-void

    :cond_bc
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateMinMaxSizeIfNeeded: new density equals last density. mLastDensityDpi: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/wm/Task;->mLastDensityDpi:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateMinimizeChangeInfo(III)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v1, -0x1

    if-eq p2, v1, :cond_e

    if-ne p3, v1, :cond_19

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getFreeformContainerPosition()Landroid/graphics/Point;

    move-result-object p2

    iget p3, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    move v2, p3

    move p3, p2

    move p2, v2

    :cond_19
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    iget-object v0, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz v0, :cond_38

    iget-object v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizePoint:Landroid/graphics/PointF;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v1, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    iput p1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizeAnimState:I

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/FreeformController;->releaseForceHideTaskLocked(Lcom/android/server/wm/Task;)V

    return-void

    :cond_38
    const-string p0, "ActivityTaskManager"

    const-string p1, "ChangeInfo is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateOverlayInsetsState(Lcom/android/server/wm/WindowState;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->updateOverlayInsetsState(Lcom/android/server/wm/WindowState;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eq p1, v0, :cond_b

    goto :goto_38

    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    iget-object p0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, v1, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_24
    if-ltz v2, :cond_38

    iget-object v0, v1, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    :try_start_2e
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Landroid/view/ISurfaceControlViewHost;->onInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_35} :catch_35

    :catch_35
    add-int/lit8 v2, v2, -0x1

    goto :goto_24

    :cond_38
    :goto_38
    return-void
.end method

.method public final updateOverrideConfigurationFromLaunchBounds()V
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p0, :cond_a

    move v3, v2

    goto :goto_b

    :cond_a
    move v3, v1

    :goto_b
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v5

    if-eqz v5, :cond_1a

    if-ne v4, v2, :cond_18

    goto :goto_1a

    :cond_18
    move v4, v1

    goto :goto_1b

    :cond_1a
    :goto_1a
    move v4, v2

    :goto_1b
    sget-object v5, Landroid/window/DesktopExperienceFlags;->ENABLE_MULTIPLE_DESKTOPS_BACKEND:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v5}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_52

    if-eqz v3, :cond_2d

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_4e

    :cond_2d
    if-eqz v4, :cond_3a

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_4e

    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/Task;->persistTaskBounds(Landroid/app/WindowConfiguration;)Z

    move-result v1

    if-nez v1, :cond_49

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_4e

    :cond_49
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    iget-object v6, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    :cond_4e
    :goto_4e
    invoke-virtual {p0, v6}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    return-void

    :cond_52
    if-eqz v4, :cond_5c

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v4

    if-nez v4, :cond_5c

    move v4, v2

    goto :goto_5d

    :cond_5c
    move v4, v1

    :goto_5d
    if-eqz v3, :cond_6d

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-nez v0, :cond_6d

    move v0, v2

    goto :goto_6e

    :cond_6d
    move v0, v1

    :goto_6e
    or-int/2addr v0, v4

    if-eqz v3, :cond_87

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_86

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/Task;->persistTaskBounds(Landroid/app/WindowConfiguration;)Z

    move-result v4

    if-nez v4, :cond_87

    :cond_86
    move v1, v2

    :cond_87
    or-int/2addr v0, v1

    if-eqz v0, :cond_8e

    invoke-virtual {p0, v6}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    return-void

    :cond_8e
    if-nez v3, :cond_9b

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/Task;->persistTaskBounds(Landroid/app/WindowConfiguration;)Z

    move-result v0

    if-nez v0, :cond_9b

    goto :goto_a1

    :cond_9b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_a2

    :goto_a1
    return-void

    :cond_a2
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    return-void
.end method

.method public final updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_41

    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-boolean v0, v0, Lcom/android/server/wm/TransitionController;->mIsWaitingForDisplayEnabled:Z

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_2c

    :cond_2a
    const/4 v1, 0x0

    move v0, v1

    :goto_2c
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    if-ne v1, v3, :cond_37

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ne v0, v2, :cond_37

    goto :goto_41

    :cond_37
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Point;->set(II)V

    :cond_41
    :goto_41
    return-void
.end method

.method public final updateSurfaceVisibilityForDragAndDrop()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    goto :goto_18

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHiddenWhileActivatingDrag:Z

    xor-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mLastSurfaceShowing:Z

    if-eq v0, v1, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceShowing:Z

    :cond_18
    :goto_18
    return-void
.end method

.method public final updateTaskDescription()V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;-><init>(I)V

    const-class v4, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v4

    invoke-static {v3, v4, v0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager$TaskDescription;->setResizeMode(I)V

    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager$TaskDescription;->setMinWidth(I)V

    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager$TaskDescription;->setMinHeight(I)V

    iput-object v2, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    :cond_5c
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    return-void
.end method

.method public final updateTaskMovement(IZZ)V
    .registers 8

    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, v1, v2, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x791a

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    if-eqz p1, :cond_32

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->onTaskMoved(Lcom/android/server/wm/Task;ZZ)V

    :cond_32
    iget-boolean p1, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz p1, :cond_3c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    :cond_3c
    if-eqz p2, :cond_49

    iget-boolean p1, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    :cond_49
    return-void
.end method

.method public final updateTaskOrganizerState(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    goto :goto_3b

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_10

    goto :goto_25

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-boolean v0, v0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_1f

    goto :goto_25

    :cond_1f
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    move-result p0

    return p0

    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer()Landroid/window/ITaskOrganizer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v1, :cond_3d

    if-eqz v0, :cond_3d

    if-eq v1, v0, :cond_3d

    :goto_3b
    const/4 p0, 0x0

    return p0

    :cond_3d
    if-nez p1, :cond_54

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, -0x1

    if-ne v2, v1, :cond_54

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Skip TaskAppeared due to task is removing. caller="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    const-string/jumbo v2, "WindowManager"

    invoke-static {v1, p1, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p1, 0x1

    :cond_54
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z

    move-result p0

    return p0
.end method

.method public final updateWindowFocusInTask()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHasWindowFocus:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1a

    :cond_c
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    :goto_1b
    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mLastDispatchedWindowFocusInTask:Z

    if-eq v2, v0, :cond_29

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mLastDispatchedWindowFocusInTask:Z

    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;-><init>(Z)V

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :cond_29
    return-void
.end method

.method public final writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000002L

    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object p0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    goto :goto_32

    :cond_2f
    const-string/jumbo p0, "Task"

    :goto_32
    const-wide v0, 0x10900000003L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
