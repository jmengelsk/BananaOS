.class public final Lcom/android/server/wm/ActivityStarter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final REACTIVE_COOLDOWN_TIME:J

.field public static final mtdExecutor:Ljava/util/concurrent/ExecutorService;

.field public static mtdManager:Lcom/samsung/android/knox/mtd/KMTDManager;

.field public static prevReactiveTime:J

.field public static prevReactiveUrl:Ljava/lang/String;


# instance fields
.field mAddingToTask:Z

.field public mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

.field public mBalCode:I

.field public mCallingUid:I

.field public mCanMoveToFrontCode:I

.field public final mController:Lcom/android/server/wm/ActivityStartController;

.field public mDisplayLockAndOccluded:Z

.field public mDoResume:Z

.field public mFrozeTaskList:Z

.field public mInTask:Lcom/android/server/wm/Task;

.field public mInTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public mIntent:Landroid/content/Intent;

.field public mIntentDelivered:Z

.field public final mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

.field public mIsFreeformLaunching:Z

.field public mIsSystemModalTaskTop:Z

.field public mIsTaskCleared:Z

.field mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mLastStartActivityResult:I

.field public mLastStartActivityTimeMs:J

.field public mLastStartReason:Ljava/lang/String;

.field public mLaunchFlags:I

.field public mLaunchMode:I

.field public final mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

.field public mLaunchTaskBehind:Z

.field public mMovedToFront:Z

.field mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

.field public mNoAnimation:Z

.field public mNotTop:Lcom/android/server/wm/ActivityRecord;

.field public mOptions:Landroid/app/ActivityOptions;

.field public mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

.field public mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public mPreferredWindowingMode:I

.field public mPriorAboveTask:Lcom/android/server/wm/Task;

.field public mRealCallingUid:I

.field mRequest:Lcom/android/server/wm/ActivityStarter$Request;

.field public final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public final mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

.field public mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mSourceRecord:Lcom/android/server/wm/ActivityRecord;

.field public mSourceRootTask:Lcom/android/server/wm/Task;

.field mStartActivity:Lcom/android/server/wm/ActivityRecord;

.field public mStartFlags:I

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public mTargetRootTask:Lcom/android/server/wm/Task;

.field public mTargetTask:Lcom/android/server/wm/Task;

.field public mTransientLaunch:Z

.field public mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field public mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityStarter;->mtdExecutor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v0, 0x1f4

    sput-wide v0, Lcom/android/server/wm/ActivityStarter;->REACTIVE_COOLDOWN_TIME:J

    const-string v0, ""

    sput-object v0, Lcom/android/server/wm/ActivityStarter;->prevReactiveUrl:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/wm/ActivityStarter;->prevReactiveTime:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIsSystemModalTaskTop:Z

    new-instance v1, Lcom/android/server/wm/ActivityStarter$Request;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityStarter$Request;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIsFreeformLaunching:Z

    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object p4, p0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    return-void
.end method

.method public static canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivity(ILcom/android/server/wm/ActivityRecord;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method public static computeResolveFilterUid(III)I
    .locals 1

    const/16 v0, -0x2710

    if-eq p2, v0, :cond_0

    return p2

    :cond_0
    if-ltz p0, :cond_1

    return p0

    :cond_1
    return p1
.end method

.method public static getExternalResult(I)I
    .locals 1

    const/16 v0, 0x66

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getIntentRedirectPreventedLogMessage(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "Unknown error code: "

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    const-string p0, "INTENT_REDIRECT_ABORT_PERMISSION_POLICY_START_ACTIVITY (Creator PermissionPolicyService.checkStartActivity, abort)"

    goto :goto_0

    :pswitch_1
    const-string p0, "INTENT_REDIRECT_ABORT_INTENT_FIREWALL_START_ACTIVITY (Creator IntentFirewall.checkStartActivity, abort)"

    goto :goto_0

    :pswitch_2
    const-string p0, "INTENT_REDIRECT_ABORT_START_ANY_ACTIVITY_PERMISSION (Creator checkStartAnyActivityPermission, abort)"

    goto :goto_0

    :pswitch_3
    const-string p0, "INTENT_REDIRECT_ABORT_START_ANY_ACTIVITY_PERMISSION (Creator checkStartAnyActivityPermission, throw exception)"

    goto :goto_0

    :pswitch_4
    const-string p0, "INTENT_REDIRECT_EXCEPTION_GRANT_URI_PERMISSION (Creator URI permission grant throw exception.)"

    goto :goto_0

    :pswitch_5
    const-string p0, "INTENT_REDIRECT_EXCEPTION_MISSING_OR_INVALID_TOKEN (Unparceled intent does not have a creator token set, throw exception.)"

    :goto_0
    const-string/jumbo v0, "[IntentRedirect Hardening] "

    const-string v1, " intentCreatorUid: "

    const-string v2, "; intentCreatorPackage: "

    invoke-static {p2, v0, p0, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "; callingUid: "

    const-string v0, "; callingPackage: "

    invoke-static {p4, p3, p2, v0, p0}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; intent: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static logAndAbortForIntentRedirect(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/android/server/wm/ActivityStarter;->getIntentRedirectPreventedLogMessage(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "ActivityTaskManager"

    invoke-static {p3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x40d

    invoke-static {p1, p2, p4, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    const-wide/32 p0, 0x1c40476

    invoke-static {p0, p1, p4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static logAndThrowExceptionForIntentRedirect(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;Ljava/lang/SecurityException;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/android/server/wm/ActivityStarter;->getIntentRedirectPreventedLogMessage(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "ActivityTaskManager"

    invoke-static {p3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x40d

    invoke-static {p3, p2, p4, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    const-wide/32 p2, 0x1c40476

    invoke-static {p2, p3, p4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static shouldWriteStartActivityDebugLog(I)Z
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final addOrReparentStartingActivity(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, v2, p2}, Lcom/android/server/wm/ActivityStarter;->canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, p2, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mRequestedLaunchingTaskFragmentToken:Landroid/os/IBinder;

    goto/16 :goto_a

    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    const-string v3, "Cannot embed "

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const-string/jumbo v2, "Unhandled embed result:"

    invoke-static {v0, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " that launched on another task,mLaunchMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->launchModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mLaunchFlag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-static {v0, v2}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". TaskFragment\'s bounds:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", minimum dimensions:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getMinDimensions()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "The app:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "is not trusted to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->isOrganized()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v4, v6, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    :goto_2
    move-object v8, v2

    goto :goto_3

    :cond_4
    new-instance v2, Landroid/os/OperationCanceledException;

    invoke-direct {v2, v0}, Landroid/os/OperationCanceledException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    const/4 v7, 0x2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto/16 :goto_a

    :cond_5
    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    goto :goto_4

    :cond_7
    move-object v0, v2

    :goto_4
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_5
    if-ltz v3, :cond_8

    invoke-virtual {p2, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-boolean v4, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_8

    goto :goto_8

    :cond_8
    :goto_6
    move-object v0, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_f

    iget-boolean v5, v4, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    if-eqz v5, :cond_a

    goto :goto_8

    :cond_a
    new-instance v5, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_b

    goto :goto_8

    :cond_b
    iget-boolean v5, v4, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-eqz v5, :cond_c

    iget-boolean v6, v4, Lcom/android/server/wm/TaskFragment;->mIsolatedNav:Z

    if-eqz v6, :cond_c

    goto :goto_6

    :cond_c
    if-eqz v0, :cond_d

    if-ne v0, v4, :cond_d

    goto :goto_7

    :cond_d
    if-eqz v5, :cond_e

    iget-boolean v5, v4, Lcom/android/server/wm/TaskFragment;->mPinned:Z

    if-eqz v5, :cond_e

    goto :goto_8

    :cond_e
    :goto_7
    move-object v0, v4

    goto :goto_9

    :cond_f
    :goto_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_10
    :goto_9
    if-eqz v0, :cond_11

    iget-boolean v2, v0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, v2, p2}, Lcom/android/server/wm/ActivityStarter;->canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v2

    if-nez v2, :cond_11

    move-object p2, v0

    :cond_11
    :goto_a
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-ne v0, p2, :cond_12

    goto :goto_b

    :cond_12
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    return-void

    :cond_13
    :goto_b
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-nez p1, :cond_15

    iget-boolean p1, p2, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_14

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq p1, v0, :cond_15

    :cond_14
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mIsActivityReparentToEmbeddedTask:Z

    :cond_15
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    if-eqz p1, :cond_16

    goto :goto_c

    :cond_16
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    :goto_c
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const p1, 0x7fffffff

    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/TaskFragment;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    return-void
.end method

.method public final avoidMoveToFront()Z
    .locals 0

    iget p0, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final canMoveTaskToBottomTask(ILcom/android/server/wm/Task;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p2, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object p1, p1, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    if-eqz p1, :cond_3

    if-ne p1, p2, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_5

    iget p2, p2, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    :goto_0
    return v0

    :cond_5
    return p1
.end method

.method public final checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILcom/android/server/wm/SafeActivityOptions;Landroid/content/ComponentName;Ljava/lang/String;)I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    new-instance v5, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v5, v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    const-string v8, "ActivityTaskManager"

    if-eqz p5, :cond_14

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_14

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "com.android.settings"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string/jumbo v13, "OutOfMemoryError is happened"

    const-string/jumbo v15, "restriction_policy"

    const/16 v16, -0x65

    const-string v10, "ActivityManager"

    if-eqz v12, :cond_5

    :try_start_0
    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v12

    if-eqz v12, :cond_a

    invoke-interface {v12, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v15

    if-nez v15, :cond_a

    const-string v15, ":android:show_fragment"

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_1
    sget-object v14, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    array-length v5, v14

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_3

    aget-object v9, v14, v7

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/high16 v5, 0x800000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    filled-new-array/range {p6 .. p6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x6e

    invoke-static {v6, v5, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Settings restriction policy blocks "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from starting!"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    invoke-interface {v12, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const-string/jumbo v0, "com.android.settings.password"

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x70

    goto :goto_3

    :cond_4
    const/16 v0, 0x6f

    :goto_3
    filled-new-array/range {p6 .. p6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v0, v5}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    return v16

    :catch_1
    invoke-static {v10, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :cond_5
    sget-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_7

    :cond_6
    const-string/jumbo v0, "com.vlingo.midas"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "com.samsung.voiceserviceplatform"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    :try_start_1
    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v5, 0x1

    invoke-interface {v0, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSVoiceAllowedAsUser(ZI)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v0, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_8
    :goto_5
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    return v16

    :catch_3
    invoke-static {v10, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :cond_9
    :goto_7
    :try_start_2
    const-string/jumbo v0, "kioskmode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v5, 0x1

    invoke-interface {v0, v5, v6}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isTaskManagerAllowedAsUser(ZI)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    return v16

    :catch_4
    const-string v0, "Is edm running?"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_5
    :cond_a
    :goto_8
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    :try_start_3
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    if-nez v0, :cond_b

    const-class v0, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    :cond_b
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    if-nez v5, :cond_c

    const-class v5, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    iput-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    :cond_c
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    if-eqz v0, :cond_d

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;->isChangeRequestedAsUser(I)I

    move-result v0

    if-gtz v0, :cond_e

    goto :goto_9

    :catch_6
    move-exception v0

    goto :goto_c

    :cond_d
    :goto_9
    if-eqz v5, :cond_12

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;->isDodBannerVisibleAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    array-length v9, v7

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_a
    if-ge v10, v9, :cond_11

    aget-object v13, v7, v10

    if-eqz v0, :cond_f

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    const/4 v12, 0x1

    :cond_f
    if-eqz v5, :cond_10

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    const/4 v0, 0x1

    goto :goto_b

    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_11
    const/4 v0, 0x0

    :goto_b
    if-eqz v12, :cond_12

    if-nez v0, :cond_12

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x70

    invoke-static {v6, v5, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_f

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_7
    :cond_12
    :try_start_4
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    if-nez v0, :cond_13

    const-class v0, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    :cond_13
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    if-eqz v0, :cond_15

    const/4 v5, 0x1

    invoke-virtual {v0, v11, v5, v6}, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "ActivityStarter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to open "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    goto/16 :goto_f

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    :cond_14
    const/16 v16, -0x65

    :cond_15
    :goto_d
    if-eqz v3, :cond_16

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    move/from16 v5, p3

    if-ne v5, v0, :cond_16

    const/4 v0, 0x0

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3, v0, v0, v0, v5}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v7

    if-eqz v7, :cond_1a

    invoke-virtual {v3, v0, v0, v0, v5}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getStartedByMDMAdmin()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_16
    if-eqz v2, :cond_1a

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v5

    const/16 v18, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_e
    if-ltz v5, :cond_17

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayContent;

    new-instance v9, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda60;

    const/4 v10, 0x1

    invoke-direct {v9, v0, v6, v3, v10}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda60;-><init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicReference;I)V

    invoke-virtual {v7, v9}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_e

    :cond_17
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_1a

    :try_start_5
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    if-nez v2, :cond_18

    const-class v2, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    iput-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    :cond_18
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    if-eqz v1, :cond_19

    invoke-virtual {v1, v0, v6}, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " which is at prevent start black list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-static {v6, v1, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    :goto_f
    return v16

    :catch_9
    move-exception v0

    goto :goto_10

    :cond_19
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x6e

    invoke-static {v6, v5, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_11

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a
    :goto_11
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/16 v17, 0x0

    return v17
.end method

.method public final deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V
    .locals 14

    move-object v1, p1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->getStartInfo()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7533

    invoke-virtual {p1, v3, v0, v2}, Lcom/android/server/wm/ActivityRecord;->logStartActivity(ILcom/android/server/wm/Task;Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iget-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mShareIdentity:Z

    iget v7, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->computeCallerInfo(Landroid/os/IBinder;Landroid/content/Intent;ILjava/lang/String;Z)V

    move-object v11, v2

    move-object v2, v5

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v5

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    move-object/from16 v9, p2

    invoke-virtual {v0, v9, v5}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    const/4 v12, 0x1

    const-string v13, "ActivityTaskManager"

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v5, "LAUNCH_FROM_NOTIFICATION"

    const/4 v9, -0x1

    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v12, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v5, 0x4000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v12, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchingRequestedFromNotification:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v5, "Exception while parsing intent but ignorable, was : "

    invoke-static {v0, v5, v13}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    const/4 v10, 0x0

    const/4 v9, 0x1

    move-object v6, v3

    move v5, v7

    move v7, v8

    move v8, v4

    move-object v4, v0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    :cond_3
    new-instance v4, Lcom/android/internal/content/ReferrerIntent;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->getFilteredReferrer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v3, v0, v11}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    :goto_3
    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v12

    goto :goto_4

    :cond_5
    move v0, v2

    :goto_4
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v3, v5, :cond_6

    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v3, v6, :cond_6

    if-eqz v0, :cond_8

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/app/servertransaction/NewIntentItem;

    iget-object v6, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v7, v5, :cond_7

    move v2, v12

    :cond_7
    invoke-direct {v3, v6, v0, v2}, Landroid/app/servertransaction/NewIntentItem;-><init>(Landroid/os/IBinder;Ljava/util/List;Z)V

    :try_start_1
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, v2, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_8

    goto :goto_5

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception thrown sending new intent to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    :cond_9
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    iput-boolean v12, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    return-void
.end method

.method public final deliverToCurrentTopIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v2, v3, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v3, v2, :cond_6

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-ne v2, v4, :cond_6

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_2

    iget-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    if-ne v2, v4, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v4

    if-eq v2, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_4

    return v3

    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_5

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    :cond_5
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    iget-object p2, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V

    const/4 p0, 0x3

    return p0

    :cond_6
    :goto_0
    return v1
.end method

.method public final execute()I
    .locals 34

    move-object/from16 v1, p0

    const-string/jumbo v0, "startActivity: reason="

    const-string/jumbo v2, "[SecIpm] intent received, starting preload launch:"

    const-string v3, "Failed active Launch package : "

    const-string v4, "Active launch : App auto run is off : "

    const-string v5, "Checking for the Active launch isDataCleared :"

    const-string v6, "Checking for the Active launch isPkgEverLaunched :"

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionStarted()V

    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v11, v11, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_13
    .catchall {:try_start_0 .. :try_end_0} :catchall_24

    if-eqz v11, :cond_1

    :try_start_1
    invoke-virtual {v11}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v11, v11, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v11, v9}, Landroid/content/Intent;->removeExtendedFlags(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move v4, v8

    move/from16 v22, v9

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    goto/16 :goto_50

    :catch_0
    move-exception v0

    move v4, v8

    move/from16 v22, v9

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    goto/16 :goto_51

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "File descriptors passed in Intent"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v11
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_13
    .catchall {:try_start_2 .. :try_end_2} :catchall_24

    :try_start_3
    iget-object v12, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v12, v12, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    invoke-static {v12}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v13, v13, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_21

    if-ne v13, v8, :cond_2

    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move v4, v8

    move/from16 v22, v9

    const/4 v12, 0x0

    const/16 v16, 0x0

    goto/16 :goto_4f

    :cond_2
    :goto_1
    :try_start_5
    iget-object v14, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v15, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v15, v15, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v14, v15, v12, v13}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_21

    if-eqz v12, :cond_3

    :try_start_6
    iget-object v13, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v16, v13

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    :goto_2
    :try_start_7
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN:Z

    if-eqz v13, :cond_5

    iget-object v13, v1, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v13}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    if-eqz v13, :cond_5

    iget v13, v13, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v13, v9, :cond_5

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v13

    if-eqz v13, :cond_5

    iget-object v13, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v13, v13, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v13, :cond_5

    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APPS_CUTOUT:Z

    if-eqz v14, :cond_4

    const-string/jumbo v14, "com.sec.intent.extra.IS_LAUNCHED_FROM_APPS_COVER_LAUNCHER"

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    iget-boolean v15, v15, Lcom/android/server/wm/Task;->mIsLaunchedFromAppsCoverLauncher:Z

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    :catchall_2
    move-exception v0

    move v4, v8

    move/from16 v22, v9

    const/4 v12, 0x0

    goto/16 :goto_4f

    :cond_4
    :goto_3
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT:Z

    if-eqz v13, :cond_5

    iget-object v13, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v13, v13, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    const-string/jumbo v14, "com.sec.intent.extra.IS_LAUNCHED_FROM_MULTISTAR_COVER_LAUNCHER"

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/server/wm/Task;->mIsLaunchedFromMultistarCoverLauncher:Z

    invoke-virtual {v13, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_5
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v12, v11, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_11
    .catchall {:try_start_8 .. :try_end_8} :catchall_20

    if-eqz v12, :cond_7

    :try_start_9
    iget-boolean v13, v11, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_6

    move v12, v9

    goto :goto_4

    :cond_6
    move v12, v7

    :goto_4
    or-int/2addr v12, v13

    iput-boolean v12, v11, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    move v4, v8

    move/from16 v22, v9

    :goto_5
    const/4 v3, 0x0

    :goto_6
    const/4 v12, 0x0

    goto/16 :goto_50

    :catch_1
    move-exception v0

    move v4, v8

    move/from16 v22, v9

    :goto_7
    const/4 v3, 0x0

    :goto_8
    const/4 v12, 0x0

    goto/16 :goto_51

    :cond_7
    :goto_9
    :try_start_a
    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v12, v11, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_11
    .catchall {:try_start_a .. :try_end_a} :catchall_20

    if-nez v12, :cond_8

    :try_start_b
    iget-object v12, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v11, v12}, Lcom/android/server/wm/ActivityStarter$Request;->resolveActivity(Lcom/android/server/wm/ActivityTaskSupervisor;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :cond_8
    :try_start_c
    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v11, v11, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_11
    .catchall {:try_start_c .. :try_end_c} :catchall_20

    if-eqz v11, :cond_9

    :try_start_d
    iget-object v12, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v11, v12}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v11
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_a

    :cond_9
    const/4 v11, 0x0

    :goto_a
    const/16 v21, -0x60

    if-eqz v11, :cond_1b

    :try_start_e
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->isActiveApplaunch()Z

    move-result v12

    if-eqz v12, :cond_1b

    iget-object v12, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v12, v12, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v12, :cond_1b

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    const-class v14, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v14}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageManagerInternal;
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    if-eqz v14, :cond_c

    :try_start_f
    invoke-virtual {v14, v0, v2}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(ILjava/lang/String;)Z

    move-result v15
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    move/from16 v22, v9

    :try_start_10
    invoke-virtual {v14, v0, v2}, Landroid/content/pm/PackageManagerInternal;->wasPackageStopped(ILjava/lang/String;)Z

    move-result v9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v14, v10, v2}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(ILjava/lang/String;)Z

    move-result v10

    if-eqz v15, :cond_b

    if-nez v9, :cond_b

    if-eqz v10, :cond_a

    goto :goto_c

    :cond_a
    :goto_b
    move/from16 v23, v8

    goto :goto_10

    :cond_b
    :goto_c
    const-string v14, "ActivityTaskManager"
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    move/from16 v23, v8

    :try_start_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isPkgStopped : "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isPkgSuspended : "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move/from16 v6, v21

    goto :goto_11

    :catchall_4
    move-exception v0

    :goto_d
    move/from16 v4, v23

    goto/16 :goto_5

    :catch_2
    move-exception v0

    :goto_e
    move/from16 v4, v23

    goto/16 :goto_7

    :catch_3
    move-exception v0

    :goto_f
    move v6, v7

    goto/16 :goto_14

    :catchall_5
    move-exception v0

    move/from16 v23, v8

    goto :goto_d

    :catch_4
    move-exception v0

    move/from16 v23, v8

    goto :goto_e

    :catch_5
    move-exception v0

    move/from16 v23, v8

    goto :goto_f

    :catchall_6
    move-exception v0

    move/from16 v23, v8

    move/from16 v22, v9

    goto :goto_d

    :catch_6
    move-exception v0

    move/from16 v23, v8

    move/from16 v22, v9

    goto :goto_e

    :catch_7
    move-exception v0

    move/from16 v23, v8

    move/from16 v22, v9

    goto :goto_f

    :cond_c
    move/from16 v22, v9

    goto :goto_b

    :goto_10
    move v6, v7

    :goto_11
    :try_start_12
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v8, v2, v0}, Landroid/app/ActivityManagerInternal;->getIsDataClearedInAms(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v8, "ActivityTaskManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v6, v21

    goto :goto_12

    :catch_8
    move-exception v0

    goto :goto_14

    :cond_d
    :goto_12
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    goto :goto_13

    :cond_e
    move v0, v7

    :goto_13
    const/4 v5, 0x4

    if-ne v0, v5, :cond_f

    const-string v0, "ActivityTaskManager"

    const-string v5, "Checking for the Active launch getApplicationEnabledSetting"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v6, v21

    :cond_f
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v0, v7, v2}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move/from16 v6, v21

    goto :goto_15

    :goto_14
    :try_start_13
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :cond_10
    :goto_15
    :try_start_14
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :try_start_15
    const-string v0, "ActivityTaskManager"

    const-string/jumbo v3, "request preloading for newly launching app"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v3, v5, v4, v0}, Lcom/android/server/wm/TaskOrganizerController;->preloadSplashScreenAppIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Configuration;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    move/from16 v0, v22

    goto :goto_16

    :catchall_7
    move-exception v0

    goto/16 :goto_1b

    :cond_11
    move v0, v7

    :goto_16
    if-nez v6, :cond_12

    const-string v3, "ActivityTaskManager"

    const-string/jumbo v4, "starting ActiveLaunch"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v30, "activelaunch"

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v10, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v24, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda28;

    invoke-direct/range {v24 .. v24}, Ljava/lang/Object;-><init>()V

    iget-object v9, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    sget-object v28, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v29, v28

    move-object/from16 v27, v4

    move-object/from16 v26, v5

    move-object/from16 v31, v8

    move-object/from16 v25, v9

    invoke-static/range {v24 .. v33}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v6, v7

    :cond_12
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    :try_start_17
    invoke-virtual {v11, v7}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v13

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_17

    :cond_13
    const/4 v15, 0x0

    :goto_17
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_14

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v8

    goto :goto_18

    :cond_14
    move/from16 v17, v23

    :goto_18
    if-eqz v2, :cond_15

    :goto_19
    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v10

    goto :goto_1a

    :cond_15
    const/16 v19, 0x0

    :goto_1a
    move-object v12, v0

    check-cast v12, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->notifyActivityLaunchRequestCompleted(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    return v6

    :catch_9
    move-exception v0

    goto :goto_1c

    :goto_1b
    :try_start_18
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    :goto_1c
    :try_start_1a
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActiveLaunching Fail, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    :try_start_1b
    invoke-virtual {v11, v7}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_2
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v13

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_1d

    :cond_16
    const/4 v15, 0x0

    :goto_1d
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_17

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v8

    goto :goto_1e

    :cond_17
    move/from16 v17, v23

    :goto_1e
    if-eqz v2, :cond_18

    :goto_1f
    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v10

    goto :goto_20

    :cond_18
    const/16 v19, 0x0

    :goto_20
    move-object v12, v0

    check-cast v12, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->notifyActivityLaunchRequestCompleted(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    return v21

    :catchall_8
    :try_start_1c
    invoke-virtual {v11, v7}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_2
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v13

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_21

    :cond_19
    const/4 v15, 0x0

    :goto_21
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1a

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v8

    goto :goto_22

    :cond_1a
    move/from16 v17, v23

    :goto_22
    if-eqz v2, :cond_15

    goto/16 :goto_19

    :cond_1b
    move/from16 v23, v8

    move/from16 v22, v9

    if-eqz v11, :cond_23

    :try_start_1d
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->isMlLaunch()I

    move-result v3

    move/from16 v4, v23

    if-le v3, v4, :cond_23

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_23

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    :try_start_1e
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v5
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_b
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    :try_start_1f
    const-string v0, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v30, "IpmLaunch"

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v10, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->isMlLaunch()I

    move-result v9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v24, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda28;

    invoke-direct/range {v24 .. v24}, Ljava/lang/Object;-><init>()V

    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    sget-object v28, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v29, v28

    move-object/from16 v32, v28

    move-object/from16 v27, v2

    move-object/from16 v26, v6

    move-object/from16 v31, v8

    move-object/from16 v25, v10

    invoke-static/range {v24 .. v33}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_b
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    const/4 v2, -0x1

    :try_start_21
    invoke-virtual {v11, v2}, Landroid/app/ActivityOptions;->setMlLaunch(I)V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_a
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v13

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_23

    :cond_1c
    const/4 v15, 0x0

    :goto_23
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1d

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v8

    goto :goto_24

    :cond_1d
    const/16 v17, -0x1

    :goto_24
    if-eqz v2, :cond_1e

    :goto_25
    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v10

    goto :goto_26

    :cond_1e
    const/16 v19, 0x0

    :goto_26
    move-object v12, v0

    check-cast v12, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->notifyActivityLaunchRequestCompleted(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    return v7

    :catchall_9
    move-exception v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    goto/16 :goto_6

    :catch_a
    move-exception v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    goto/16 :goto_8

    :catchall_a
    const/4 v2, -0x1

    goto :goto_2a

    :catch_b
    move-exception v0

    goto :goto_27

    :catchall_b
    move-exception v0

    :try_start_22
    monitor-exit v5
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    :try_start_23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_b
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    :goto_27
    :try_start_24
    const-string v2, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[SecIpm] Launching Fail, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    const/4 v2, -0x1

    :try_start_25
    invoke-virtual {v11, v2}, Landroid/app/ActivityOptions;->setMlLaunch(I)V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_a
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v13

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_28

    :cond_1f
    const/4 v15, 0x0

    :goto_28
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_20

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v8

    goto :goto_29

    :cond_20
    const/16 v17, -0x1

    :goto_29
    if-eqz v2, :cond_18

    goto/16 :goto_1f

    :goto_2a
    :try_start_26
    invoke-virtual {v11, v2}, Landroid/app/ActivityOptions;->setMlLaunch(I)V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_a
    .catchall {:try_start_26 .. :try_end_26} :catchall_9

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v13

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_2b

    :cond_21
    const/4 v15, 0x0

    :goto_2b
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_22

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v8

    goto :goto_2c

    :cond_22
    const/16 v17, -0x1

    :goto_2c
    if-eqz v2, :cond_1e

    goto/16 :goto_25

    :cond_23
    :try_start_27
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_10
    .catchall {:try_start_27 .. :try_end_27} :catchall_1f

    if-eqz v2, :cond_25

    :try_start_28
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    if-eqz v2, :cond_25

    if-eqz v3, :cond_25

    const-string/jumbo v4, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    const-string/jumbo v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    const-string/jumbo v4, "android.intent.action.REBOOT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    :cond_24
    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_a
    .catchall {:try_start_28 .. :try_end_28} :catchall_9

    :cond_25
    :try_start_29
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_10
    .catchall {:try_start_29 .. :try_end_29} :catchall_1f

    if-eqz v2, :cond_2a

    :try_start_2a
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->isExternalStartForSpeg()Z

    move-result v2
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_9

    if-eqz v2, :cond_29

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v13

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_2d

    :cond_26
    const/4 v15, 0x0

    :goto_2d
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_27

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v8

    goto :goto_2e

    :cond_27
    const/16 v17, -0x1

    :goto_2e
    if-eqz v2, :cond_28

    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v10

    goto :goto_2f

    :cond_28
    const/16 v19, 0x0

    :goto_2f
    move-object v12, v0

    check-cast v12, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->notifyActivityLaunchRequestCompleted(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    const/16 v0, 0x66

    return v0

    :cond_29
    :try_start_2b
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->useSpegDisplayIfNeeded()V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_a
    .catchall {:try_start_2b .. :try_end_2b} :catchall_9

    :cond_2a
    :try_start_2c
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_10
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1f

    if-eqz v2, :cond_2f

    :try_start_2d
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_d

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2b

    :try_start_2e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    goto :goto_30

    :catchall_c
    move-exception v0

    goto/16 :goto_5

    :catch_c
    move-exception v0

    goto/16 :goto_7

    :cond_2b
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    :goto_30
    if-eq v3, v2, :cond_2e

    if-nez v3, :cond_2c

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v5

    if-nez v5, :cond_2d

    :cond_2c
    if-nez v2, :cond_2e

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    :cond_2d
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-static {v3, v2}, Lcom/android/server/DualAppManagerService;->changeUriForDualApp(ILandroid/content/Intent;)V

    :cond_2e
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-nez v2, :cond_30

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-static {v2, v3}, Lcom/android/server/DualAppManagerService;->recordDaUsageCount(ILandroid/content/Intent;)V
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_2e} :catch_c
    .catchall {:try_start_2e .. :try_end_2e} :catchall_c

    goto :goto_31

    :catchall_d
    move-exception v0

    const/4 v4, -0x1

    goto/16 :goto_5

    :catch_d
    move-exception v0

    const/4 v4, -0x1

    goto/16 :goto_7

    :cond_2f
    const/4 v4, -0x1

    :cond_30
    :goto_31
    :try_start_2f
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1e

    if-eqz v2, :cond_32

    :try_start_30
    const-string/jumbo v3, "android.intent.action.DELETE"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string/jumbo v2, "android.intent.action.UNINSTALL_PACKAGE"

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    :cond_31
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget v8, v2, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    iget-object v9, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-static {v3, v5, v6, v8, v9}, Lcom/android/server/DualAppManagerService;->changeInfoIfDeletingDualApp(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ILjava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_c
    .catchall {:try_start_30 .. :try_end_30} :catchall_c

    :cond_32
    :try_start_31
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_f
    .catchall {:try_start_31 .. :try_end_31} :catchall_1e

    :try_start_32
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1b

    if-eqz v3, :cond_33

    :try_start_33
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, v5}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_e

    if-eqz v3, :cond_33

    move/from16 v3, v22

    goto :goto_33

    :catchall_e
    move-exception v0

    :goto_32
    const/4 v3, 0x0

    const/4 v12, 0x0

    goto/16 :goto_4a

    :cond_33
    move v3, v7

    :goto_33
    :try_start_34
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v5
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1b

    if-eqz v5, :cond_34

    :try_start_35
    iput-boolean v3, v5, Lcom/android/server/wm/Task;->mConfigWillChange:Z
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_e

    :cond_34
    :try_start_36
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v8, v6, v22
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1b

    if-eqz v8, :cond_35

    :try_start_37
    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-wide v10, 0x171dc0871351371bL

    const/4 v12, 0x3

    invoke-static {v8, v10, v11, v12, v9}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_e

    :cond_35
    :try_start_38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1b

    :try_start_39
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->resolveToHeavyWeightSwitcherIfNeeded()I

    move-result v10
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_19

    if-eqz v10, :cond_39

    :try_start_3a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    const-string v3, " result code="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "ActivityTaskManager"

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v13

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_34

    :cond_36
    const/4 v15, 0x0

    :goto_34
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_37

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v8

    goto :goto_35

    :cond_37
    move/from16 v17, v4

    :goto_35
    if-eqz v2, :cond_38

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v2

    goto :goto_36

    :cond_38
    const/16 v19, 0x0

    :goto_36
    move-object v12, v0

    check-cast v12, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->notifyActivityLaunchRequestCompleted(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    return v10

    :catchall_f
    move-exception v0

    move-object/from16 v13, v16

    goto/16 :goto_32

    :cond_39
    move-object/from16 v13, v16

    :try_start_3b
    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v11, v11, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-static {v11}, Lcom/android/server/am/Pageboost;->onAppLaunch(Landroid/content/Intent;)V

    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v1, v11}, Lcom/android/server/wm/ActivityStarter;->executeRequest(Lcom/android/server/wm/ActivityStarter$Request;)I

    move-result v10
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_18

    :try_start_3c
    invoke-static {}, Lcom/android/server/am/Pageboost;->stopActiveLaunch()V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_17

    :try_start_3d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    const-string v9, " result code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "ActivityTaskManager"

    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v9, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_16

    if-eqz v3, :cond_3c

    :try_start_3e
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v8, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v9, "updateConfiguration()"

    invoke-virtual {v3, v8, v9}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_12

    if-eqz v5, :cond_3a

    :try_start_3f
    iput-boolean v7, v5, Lcom/android/server/wm/Task;->mConfigWillChange:Z
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_10

    goto :goto_37

    :catchall_10
    move-exception v0

    move-object/from16 v16, v13

    goto/16 :goto_32

    :cond_3a
    :goto_37
    :try_start_40
    aget-boolean v3, v6, v22

    if-eqz v3, :cond_3b

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_12

    const-wide v5, 0x41e4c7b09dde3f7aL    # 2.7890495829452486E9

    const/4 v12, 0x0

    :try_start_41
    invoke-static {v3, v5, v6, v7, v12}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_3a

    :catchall_11
    move-exception v0

    :goto_38
    move-object v3, v12

    :goto_39
    move-object/from16 v16, v13

    goto/16 :goto_4a

    :catchall_12
    move-exception v0

    const/4 v12, 0x0

    goto :goto_38

    :cond_3b
    const/4 v12, 0x0

    :goto_3a
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    const/16 v6, -0x2710

    invoke-virtual {v3, v5, v7, v7, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;ZZI)Z
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_11

    goto :goto_3b

    :cond_3c
    const/4 v12, 0x0

    :goto_3b
    :try_start_42
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_15

    if-eqz v3, :cond_3d

    :try_start_43
    invoke-virtual {v3}, Lcom/android/server/wm/SafeActivityOptions;->getOriginalOptions()Landroid/app/ActivityOptions;

    move-result-object v3
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_11

    move-object/from16 v21, v3

    goto :goto_3c

    :cond_3d
    move-object/from16 v21, v12

    :goto_3c
    :try_start_44
    iget-boolean v3, v1, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_15

    if-nez v3, :cond_3f

    :try_start_45
    invoke-static {v10}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_11

    if-eqz v3, :cond_3e

    goto :goto_3d

    :cond_3e
    move-object v3, v12

    goto :goto_3e

    :cond_3f
    :goto_3d
    :try_start_46
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_15

    :goto_3e
    :try_start_47
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v5, v3, :cond_40

    move/from16 v19, v22

    goto :goto_3f

    :cond_40
    move/from16 v19, v7

    :goto_3f
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_13

    move-object/from16 v20, v3

    move-object/from16 v16, v5

    move/from16 v18, v10

    :try_start_48
    invoke-virtual/range {v16 .. v21}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_14

    move-object/from16 v6, v17

    move/from16 v5, v18

    move-object/from16 v3, v20

    :try_start_49
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    if-eqz v8, :cond_41

    iput v5, v8, Landroid/app/WaitResult;->result:I

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v8, v5, v6}, Lcom/android/server/wm/ActivityStarter;->waitResultIfNeeded(Landroid/app/WaitResult;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)I

    move-result v10

    goto :goto_40

    :catchall_13
    move-exception v0

    goto :goto_39

    :cond_41
    move v10, v5

    :goto_40
    invoke-static {v10}, Lcom/android/server/wm/ActivityStarter;->shouldWriteStartActivityDebugLog(I)Z

    move-result v5

    if-eqz v5, :cond_42

    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", result="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    invoke-static {v10}, Lcom/android/server/wm/ActivityStarter;->getExternalResult(I)I

    move-result v0

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    if-eqz v3, :cond_43

    move/from16 v18, v22

    goto :goto_41

    :cond_43
    move/from16 v18, v7

    :goto_41
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_44

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    move-object v15, v6

    goto :goto_42

    :cond_44
    move-object v15, v12

    :goto_42
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v6, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_45

    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v8

    goto :goto_43

    :cond_45
    move/from16 v17, v4

    :goto_43
    if-eqz v6, :cond_46

    iget-object v10, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v10

    goto :goto_44

    :cond_46
    move-object/from16 v19, v12

    :goto_44
    if-eqz v3, :cond_47

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_47

    move/from16 v20, v22

    goto :goto_45

    :cond_47
    move/from16 v20, v7

    :goto_45
    move-object v12, v2

    check-cast v12, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    move-object/from16 v16, v13

    move v13, v5

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->notifyActivityLaunchRequestCompleted(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    return v0

    :catchall_14
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v3, v20

    goto :goto_4a

    :catchall_15
    move-exception v0

    move-object/from16 v16, v13

    :goto_46
    move-object v3, v12

    goto :goto_4a

    :catchall_16
    move-exception v0

    move-object/from16 v16, v13

    :goto_47
    const/4 v12, 0x0

    goto :goto_46

    :catchall_17
    move-exception v0

    move v5, v10

    :goto_48
    move-object/from16 v16, v13

    const/4 v12, 0x0

    goto :goto_49

    :catchall_18
    move-exception v0

    goto :goto_48

    :catchall_19
    move-exception v0

    const/4 v12, 0x0

    move/from16 v10, v21

    :goto_49
    :try_start_4a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    const-string v5, " result code="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "ActivityTaskManager"

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    throw v0
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_1a

    :catchall_1a
    move-exception v0

    goto :goto_46

    :catchall_1b
    move-exception v0

    goto :goto_47

    :goto_4a
    :try_start_4b
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_1d

    :try_start_4c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_4c} :catch_e
    .catchall {:try_start_4c .. :try_end_4c} :catchall_1c

    :catchall_1c
    move-exception v0

    goto :goto_50

    :catch_e
    move-exception v0

    goto/16 :goto_51

    :catchall_1d
    move-exception v0

    goto :goto_4a

    :catchall_1e
    move-exception v0

    :goto_4b
    const/4 v12, 0x0

    :goto_4c
    move-object v3, v12

    goto :goto_50

    :catch_f
    move-exception v0

    :goto_4d
    const/4 v12, 0x0

    :goto_4e
    move-object v3, v12

    goto/16 :goto_51

    :catchall_1f
    move-exception v0

    const/4 v4, -0x1

    goto :goto_4b

    :catch_10
    move-exception v0

    const/4 v4, -0x1

    goto :goto_4d

    :catchall_20
    move-exception v0

    move v4, v8

    move/from16 v22, v9

    goto :goto_4b

    :catch_11
    move-exception v0

    move v4, v8

    move/from16 v22, v9

    goto :goto_4d

    :catchall_21
    move-exception v0

    move v4, v8

    move/from16 v22, v9

    const/4 v12, 0x0

    move-object/from16 v16, v12

    :goto_4f
    :try_start_4d
    monitor-exit v11
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_23

    :try_start_4e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_4e} :catch_12
    .catchall {:try_start_4e .. :try_end_4e} :catchall_22

    :catchall_22
    move-exception v0

    goto :goto_4c

    :catch_12
    move-exception v0

    goto :goto_4e

    :catchall_23
    move-exception v0

    goto :goto_4f

    :catchall_24
    move-exception v0

    move v4, v8

    move/from16 v22, v9

    const/4 v12, 0x0

    move-object v3, v12

    move-object/from16 v16, v3

    goto :goto_50

    :catch_13
    move-exception v0

    move v4, v8

    move/from16 v22, v9

    const/4 v12, 0x0

    move-object v3, v12

    move-object/from16 v16, v3

    goto :goto_51

    :goto_50
    :try_start_4f
    const-string v2, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startActivity: reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0

    :catchall_25
    move-exception v0

    move-object/from16 v17, v16

    goto :goto_52

    :goto_51
    throw v0
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_25

    :goto_52
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v14

    if-eqz v3, :cond_48

    move/from16 v19, v22

    goto :goto_53

    :cond_48
    move/from16 v19, v7

    :goto_53
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_49

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v5

    goto :goto_54

    :cond_49
    move-object/from16 v16, v12

    :goto_54
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v15, v5, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_4a

    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v8

    goto :goto_55

    :cond_4a
    move/from16 v18, v4

    :goto_55
    if-eqz v5, :cond_4b

    iget-object v10, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v10

    goto :goto_56

    :cond_4b
    move-object/from16 v20, v12

    :goto_56
    if-eqz v3, :cond_4c

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_4c

    move/from16 v21, v22

    goto :goto_57

    :cond_4c
    move/from16 v21, v7

    :goto_57
    move-object v13, v2

    check-cast v13, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    invoke-virtual/range {v13 .. v21}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->notifyActivityLaunchRequestCompleted(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    throw v0
.end method

.method public final executeRequest(Lcom/android/server/wm/ActivityStarter$Request;)I
    .locals 92

    move-object/from16 v1, p0

    move-object/from16 v15, p1

    const-string/jumbo v0, "unknown"

    const-string v11, "Activity being started in new voice task does not support: "

    const-string v12, "Activity being started in current voice task does not support voice: "

    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7c

    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iget-object v3, v15, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v13, v15, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    iget-object v14, v15, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget-object v4, v15, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v15, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v15, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v7, v15, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iget-object v9, v15, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iget v8, v15, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    iget v10, v15, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    move-object/from16 v16, v0

    iget v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    move/from16 v17, v8

    iget v8, v15, Lcom/android/server/wm/ActivityStarter$Request;->intentCreatorUid:I

    move-object/from16 v18, v9

    iget-object v9, v15, Lcom/android/server/wm/ActivityStarter$Request;->intentCreatorPackage:Ljava/lang/String;

    move/from16 v19, v0

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    move-object/from16 v24, v4

    iget v4, v15, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    move-object/from16 v31, v9

    iget v9, v15, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    move-object/from16 v32, v13

    iget v13, v15, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    move-object/from16 v21, v5

    iget-object v5, v15, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    move/from16 v42, v13

    iget-object v13, v15, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    move-object/from16 v34, v13

    iget-object v13, v15, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    move-object/from16 v22, v0

    if-eqz v5, :cond_1

    iget-object v0, v5, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v48, v0

    :goto_1
    move-object/from16 v43, v13

    goto :goto_2

    :cond_1
    const/16 v48, 0x0

    goto :goto_1

    :goto_2
    const-string v13, "ActivityTaskManager"

    if-eqz v2, :cond_3

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v10, v0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    iget-object v2, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v27, v0

    move/from16 v23, v10

    const/4 v0, 0x0

    move v10, v2

    goto :goto_3

    :cond_2
    move-object/from16 v23, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unable to find app for caller "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") when starting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5e

    move-object/from16 v27, v23

    move/from16 v23, v10

    move/from16 v10, v19

    goto :goto_3

    :cond_3
    move/from16 v23, v10

    move/from16 v10, v19

    const/4 v0, 0x0

    const/16 v27, 0x0

    :goto_3
    const-string v1, ""

    if-nez v0, :cond_5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    move-object v2, v3

    move-object/from16 v55, v6

    move-object/from16 v16, v7

    move-object/from16 v44, v21

    move-object/from16 v3, v24

    move-object v6, v0

    move-object v7, v1

    move-object/from16 v1, p0

    goto :goto_4

    :catch_0
    const/4 v0, 0x0

    :catch_1
    move-object/from16 v1, v16

    move-object/from16 v16, v7

    move-object v7, v1

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v55, v6

    move-object/from16 v44, v21

    move-object/from16 v3, v24

    move-object v6, v0

    :goto_4
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityStarter;->checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILcom/android/server/wm/SafeActivityOptions;Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v0

    move-object v6, v5

    move v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_5

    :cond_5
    move-object/from16 v2, p0

    move-object/from16 v55, v6

    move-object/from16 v16, v7

    move-object/from16 v44, v21

    move-object v6, v5

    move v5, v4

    move-object/from16 v4, v24

    :goto_5
    if-eqz v4, :cond_6

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_6

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    :goto_6
    move/from16 v19, v0

    if-eqz v4, :cond_7

    iget v0, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    :goto_7
    move-object/from16 v45, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    goto :goto_7

    :goto_8
    const-string v1, ")"

    move-object/from16 v33, v6

    if-nez v19, :cond_f

    iget-object v6, v15, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    move/from16 v21, v0

    const-string/jumbo v0, "START u"

    move/from16 v35, v8

    const-string v8, " {"

    invoke-static {v7, v0, v8, v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    move-object/from16 v24, v11

    const/4 v8, 0x1

    const/4 v11, 0x0

    invoke-virtual {v3, v8, v8, v8, v11}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "} with "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Landroid/content/pm/ActivityInfo;->launchModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from uid "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eq v10, v9, :cond_8

    const/4 v6, -0x1

    if-eq v9, v6, :cond_8

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    const-string v6, " (realCallingUid="

    invoke-static {v9, v6, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_8
    const-string/jumbo v0, "knoxmtd.analysis.features"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v8, 0x1

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_10

    invoke-virtual {v3}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "SKIP_KFBP_CHECK"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/server/wm/ActivityStarter;->mtdManager:Lcom/samsung/android/knox/mtd/KMTDManager;

    if-nez v0, :cond_9

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "knox.mtd"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/mtd/KMTDManager;

    sput-object v0, Lcom/android/server/wm/ActivityStarter;->mtdManager:Lcom/samsung/android/knox/mtd/KMTDManager;

    :cond_9
    invoke-virtual {v3}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez v27, :cond_a

    if-lez v5, :cond_a

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-eqz v0, :cond_a

    goto :goto_9

    :cond_a
    move-object/from16 v0, v27

    :goto_9
    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    goto :goto_a

    :cond_b
    move-object/from16 v0, v20

    goto :goto_a

    :cond_c
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_a
    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "[Reactive] Validating url for "

    const-string v11, "ActivityTaskManager[KnoxPP]"

    invoke-static {v8, v0, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/android/server/wm/ActivityStarter;->prevReactiveUrl:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sget-wide v36, Lcom/android/server/wm/ActivityStarter;->prevReactiveTime:J

    sub-long v25, v25, v36

    const-wide/16 v36, 0x0

    cmp-long v8, v25, v36

    if-gez v8, :cond_d

    const-wide/16 v36, -0x1

    mul-long v25, v25, v36

    :cond_d
    sget-wide v36, Lcom/android/server/wm/ActivityStarter;->REACTIVE_COOLDOWN_TIME:J

    cmp-long v8, v25, v36

    if-gez v8, :cond_e

    const-string v0, "Already analyzed the url"

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sput-wide v25, Lcom/android/server/wm/ActivityStarter;->prevReactiveTime:J

    sput-object v6, Lcom/android/server/wm/ActivityStarter;->prevReactiveUrl:Ljava/lang/String;

    sget-object v8, Lcom/android/server/wm/ActivityStarter;->mtdManager:Lcom/samsung/android/knox/mtd/KMTDManager;

    invoke-virtual {v8, v6, v0, v3, v9}, Lcom/samsung/android/knox/mtd/KMTDManager;->analyzeUrl(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_b

    :cond_f
    move/from16 v35, v8

    move-object/from16 v24, v11

    :cond_10
    :goto_b
    if-eqz v16, :cond_13

    invoke-static/range {v16 .. v16}, Lcom/android/server/wm/ActivityRecord;->isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_12

    if-ltz v17, :cond_11

    iget-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v6, :cond_11

    iget-object v6, v15, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    const-string v8, " (rr="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, v0

    goto :goto_c

    :cond_11
    iget-object v6, v15, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    const-string v8, " (sr="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    :goto_c
    iget-object v8, v15, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v6

    move-object/from16 v6, v16

    goto :goto_d

    :cond_12
    move-object/from16 v16, v0

    move-object/from16 v6, v16

    const/4 v0, 0x0

    goto :goto_d

    :cond_13
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_d
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v11, 0x2000000

    and-int/2addr v11, v8

    if-eqz v11, :cond_18

    if-eqz v6, :cond_18

    if-ltz v17, :cond_14

    invoke-static/range {v33 .. v33}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    const/16 v0, -0x5d

    return v0

    :cond_14
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked()Z

    move-result v11

    if-nez v11, :cond_15

    const/4 v0, 0x0

    :cond_15
    iget-object v11, v6, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    move/from16 v36, v5

    iget v5, v6, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    move/from16 v16, v8

    const/4 v8, 0x0

    iput-object v8, v6, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_16

    invoke-virtual {v0, v6, v11, v5}, Lcom/android/server/wm/ActivityRecord;->removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    :cond_16
    iget v8, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    if-ne v8, v10, :cond_17

    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    move-object/from16 v65, v0

    move/from16 v59, v5

    move-object/from16 v58, v11

    move-object/from16 v56, v17

    goto :goto_f

    :cond_17
    move-object/from16 v17, v0

    move/from16 v59, v5

    move-object/from16 v58, v11

    move-object/from16 v56, v17

    :goto_e
    move-object/from16 v8, v20

    move-object/from16 v65, v22

    goto :goto_f

    :cond_18
    move/from16 v36, v5

    move/from16 v16, v8

    move-object/from16 v56, v0

    move/from16 v59, v17

    move-object/from16 v58, v18

    goto :goto_e

    :goto_f
    if-nez v19, :cond_19

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_19

    const/16 v0, -0x5b

    goto :goto_10

    :cond_19
    move/from16 v0, v19

    :goto_10
    if-nez v0, :cond_22

    if-nez v4, :cond_22

    sget-object v0, Lcom/android/server/pm/PackageArchiver;->OPACITY_LAYER_FILTER:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    iget-object v11, v2, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v11, v11, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1a

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v17

    :goto_11
    move-object/from16 v5, v17

    :goto_12
    const/16 v37, -0x5c

    goto :goto_13

    :cond_1a
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_1b

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    goto :goto_11

    :cond_1b
    const/4 v5, 0x0

    goto :goto_12

    :goto_13
    if-eqz v5, :cond_1c

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    if-nez v17, :cond_1d

    :cond_1c
    move/from16 v22, v10

    goto :goto_15

    :cond_1d
    move/from16 v22, v10

    iget-object v10, v0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v10

    invoke-interface {v10, v5}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    if-nez v10, :cond_1e

    goto :goto_15

    :cond_1e
    invoke-interface {v10, v11}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result v11

    if-nez v11, :cond_1f

    goto :goto_15

    :cond_1f
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/pm/pkg/ArchiveState;->mActivityInfos:Ljava/util/List;

    move-object/from16 v17, v5

    const/4 v11, 0x0

    :goto_14
    move-object v5, v10

    check-cast v5, Ljava/util/ArrayList;

    move-object/from16 v18, v10

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v11, v10, :cond_21

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    iget-object v5, v5, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mOriginalComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, v2, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-virtual {v0, v3, v8, v5, v9}, Lcom/android/server/pm/PackageArchiver;->requestUnarchiveOnActivityStart(Landroid/content/Intent;Ljava/lang/String;II)I

    move-result v0

    goto :goto_16

    :cond_20
    const/16 v30, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v10, v18

    goto :goto_14

    :cond_21
    const-string/jumbo v0, "Package: %s is archived but component to start main activity cannot be found!"

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "PackageArchiverService"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    move/from16 v0, v37

    goto :goto_16

    :cond_22
    move/from16 v22, v10

    const/16 v37, -0x5c

    :goto_16
    const-string v5, "Failure checking voice capabilities"

    if-nez v0, :cond_23

    if-eqz v6, :cond_23

    iget-object v11, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v11, v11, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v11, :cond_23

    const/high16 v11, 0x10000000

    and-int v11, v16, v11

    if-nez v11, :cond_23

    iget-object v11, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v11, v10, :cond_23

    :try_start_2
    const-string/jumbo v10, "android.intent.category.VOICE"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-interface {v10, v11, v3, v14, v7}, Landroid/content/pm/IPackageManager;->activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_17

    :catch_2
    move-exception v0

    invoke-static {v13, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    const/16 v0, -0x61

    :cond_23
    if-nez v0, :cond_24

    if-eqz v55, :cond_24

    :try_start_3
    iget-object v10, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-interface {v10, v11, v3, v14, v7}, Landroid/content/pm/IPackageManager;->activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v10, v24

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_18

    :catch_3
    move-exception v0

    invoke-static {v13, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/16 v10, -0x61

    goto :goto_19

    :cond_24
    move v10, v0

    :goto_19
    if-nez v56, :cond_25

    goto :goto_1a

    :cond_25
    invoke-virtual/range {v56 .. v56}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    :goto_1a
    if-eqz v10, :cond_27

    if-eqz v56, :cond_26

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v57, -0x1

    const/16 v60, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    invoke-virtual/range {v56 .. v64}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    :cond_26
    invoke-static/range {v33 .. v33}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    const/16 v0, 0x6d

    filled-new-array/range {v45 .. v45}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v0, v1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    return v10

    :cond_27
    :try_start_4
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v5, v15, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_c

    if-eqz v34, :cond_28

    const/16 v26, 0x1

    :goto_1b
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v25, v5

    move/from16 v21, v23

    move-object/from16 v28, v56

    move-object/from16 v19, v58

    move/from16 v20, v59

    move-object/from16 v24, v65

    move-object/from16 v23, v8

    goto :goto_1c

    :cond_28
    const/16 v26, 0x0

    goto :goto_1b

    :goto_1c
    :try_start_5
    invoke-virtual/range {v16 .. v28}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_b

    move-object/from16 v3, v18

    move-object/from16 v58, v19

    move/from16 v59, v20

    move/from16 v18, v21

    move/from16 v20, v22

    move-object/from16 v8, v23

    move-object/from16 v5, v24

    move-object/from16 v4, v27

    move-object/from16 v56, v28

    const/16 v30, 0x1

    xor-int/lit8 v0, v0, 0x1

    iget-object v10, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v11, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v10, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    move/from16 v21, v18

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    const/16 v19, 0x0

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v16, v10

    move/from16 v24, v11

    move-object/from16 v23, v14

    move/from16 v22, v21

    move/from16 v21, v20

    move-object/from16 v20, v17

    move-object/from16 v17, v12

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    move-result v10

    move-object/from16 v11, v20

    move/from16 v14, v21

    move/from16 v37, v22

    move-object/from16 v12, v23

    xor-int/lit8 v10, v10, 0x1

    or-int/2addr v0, v10

    iget-object v10, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move/from16 v16, v0

    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

    const-class v38, Lcom/android/server/policy/PermissionPolicyService$Internal;

    if-nez v0, :cond_29

    invoke-static/range {v38 .. v38}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyService$Internal;

    iput-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

    :cond_29
    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

    invoke-virtual {v0, v11, v8, v14}, Lcom/android/server/policy/PermissionPolicyService$Internal;->checkStartActivity(Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v0

    const/16 v30, 0x1

    xor-int/lit8 v0, v0, 0x1

    or-int v10, v16, v0

    move-object/from16 v24, v3

    move-object/from16 v87, v6

    move/from16 v3, v35

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2e

    :try_start_6
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_8

    move-object/from16 v18, v24

    :try_start_7
    const-string v24, ""

    iget-boolean v6, v15, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_7

    if-eqz v34, :cond_2a

    const/16 v26, 0x1

    goto :goto_1d

    :cond_2a
    const/16 v26, 0x0

    :goto_1d
    const/16 v27, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v0

    move/from16 v22, v3

    move/from16 v25, v6

    move-object/from16 v17, v11

    move-object/from16 v23, v31

    move-object/from16 v28, v56

    move-object/from16 v19, v58

    move/from16 v20, v59

    :try_start_8
    invoke-virtual/range {v16 .. v28}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_6

    move-object/from16 v3, v18

    move/from16 v18, v22

    move-object/from16 v19, v23

    if-nez v0, :cond_2b

    :try_start_9
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_5

    const/16 v16, 0x4

    move-object/from16 v21, v8

    move/from16 v20, v14

    :try_start_a
    invoke-static/range {v16 .. v21}, Lcom/android/server/wm/ActivityStarter;->logAndAbortForIntentRedirect(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v10
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_20

    :catch_4
    move-exception v0

    :goto_1e
    move-object/from16 v22, v0

    goto :goto_22

    :catch_5
    move-exception v0

    move-object/from16 v21, v8

    :goto_1f
    move/from16 v20, v14

    goto :goto_1e

    :cond_2b
    move-object/from16 v21, v8

    move/from16 v20, v14

    :goto_20
    move-object/from16 v31, v19

    move/from16 v14, v20

    move-object/from16 v64, v21

    goto :goto_23

    :catch_6
    move-exception v0

    move-object/from16 v21, v8

    move-object/from16 v3, v18

    move-object/from16 v58, v19

    move/from16 v59, v20

    move/from16 v18, v22

    move-object/from16 v19, v23

    move-object/from16 v56, v28

    goto :goto_1f

    :catch_7
    move-exception v0

    move-object/from16 v17, v18

    move/from16 v18, v3

    move-object/from16 v3, v17

    move-object/from16 v21, v8

    move-object/from16 v17, v11

    move/from16 v20, v14

    :goto_21
    move-object/from16 v19, v31

    goto :goto_1e

    :catch_8
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v21, v8

    move-object/from16 v17, v11

    move/from16 v20, v14

    move-object/from16 v3, v24

    goto :goto_21

    :goto_22
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/16 v16, 0x3

    invoke-static/range {v16 .. v22}, Lcom/android/server/wm/ActivityStarter;->logAndThrowExceptionForIntentRedirect(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;Ljava/lang/SecurityException;)V

    goto :goto_20

    :goto_23
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v0, Lcom/android/server/firewall/IntentFirewall;->mActivityResolver:Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;

    move/from16 v35, v18

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    const/16 v19, 0x0

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v22, 0x0

    move-object/from16 v16, v0

    move/from16 v24, v6

    move-object/from16 v23, v12

    move-object/from16 v20, v17

    move/from16 v21, v35

    move-object/from16 v17, v8

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/firewall/IntentFirewall;->checkIntent(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Landroid/content/ComponentName;ILandroid/content/Intent;IILjava/lang/String;I)Z

    move-result v0

    move-object/from16 v17, v20

    move/from16 v18, v21

    if-nez v0, :cond_2c

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/16 v16, 0x5

    move/from16 v20, v14

    move-object/from16 v19, v31

    move-object/from16 v21, v64

    invoke-static/range {v16 .. v21}, Lcom/android/server/wm/ActivityStarter;->logAndAbortForIntentRedirect(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v0

    move-object/from16 v8, v19

    move v10, v0

    :goto_24
    move-object/from16 v11, v17

    move/from16 v6, v18

    goto :goto_25

    :cond_2c
    move/from16 v20, v14

    move-object/from16 v8, v31

    move-object/from16 v21, v64

    goto :goto_24

    :goto_25
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

    if-nez v14, :cond_2d

    invoke-static/range {v38 .. v38}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/policy/PermissionPolicyService$Internal;

    iput-object v14, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

    :cond_2d
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

    invoke-virtual {v0, v11, v8, v6}, Lcom/android/server/policy/PermissionPolicyService$Internal;->checkStartActivity(Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/16 v16, 0x6

    move/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v17, v11

    invoke-static/range {v16 .. v21}, Lcom/android/server/wm/ActivityStarter;->logAndAbortForIntentRedirect(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v10

    goto :goto_26

    :cond_2e
    move-object/from16 v21, v8

    move/from16 v20, v14

    move-object/from16 v3, v24

    :cond_2f
    :goto_26
    invoke-virtual {v11}, Landroid/content/Intent;->removeCreatorToken()V

    if-eqz v33, :cond_30

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move-object/from16 v6, v33

    invoke-virtual {v6, v11, v3, v4, v0}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    move-object/from16 v27, v0

    goto :goto_27

    :cond_30
    const/16 v27, 0x0

    :goto_27
    if-nez v10, :cond_31

    move/from16 v50, v7

    const-wide/16 v6, 0x20

    :try_start_b
    const-string/jumbo v0, "shouldAbortBackgroundActivityStart"

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mBalController:Lcom/android/server/wm/BackgroundActivityStartController;

    iget-object v8, v15, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    iget-boolean v14, v15, Lcom/android/server/wm/ActivityStarter$Request;->allowBalExemptionForSystemProcess:Z

    move-object/from16 v16, v0

    move-object/from16 v22, v4

    move-object/from16 v23, v8

    move-object/from16 v26, v11

    move/from16 v24, v14

    move/from16 v17, v20

    move-object/from16 v19, v21

    move/from16 v21, v36

    move/from16 v18, v37

    move-object/from16 v25, v56

    move/from16 v20, v9

    invoke-virtual/range {v16 .. v27}, Lcom/android/server/wm/BackgroundActivityStartController;->checkBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move/from16 v28, v17

    move/from16 v31, v18

    move/from16 v9, v20

    move/from16 v14, v21

    move-object/from16 v4, v22

    move-object/from16 v56, v25

    move-object/from16 v11, v26

    move-object/from16 v8, v27

    move-wide/from16 v16, v6

    move-object/from16 v6, v19

    :try_start_c
    iget-object v7, v15, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    move/from16 v33, v10

    const-string v10, " ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    :goto_28
    move-object v10, v0

    goto :goto_2a

    :catchall_0
    move-exception v0

    goto :goto_29

    :catchall_1
    move-exception v0

    move-wide/from16 v16, v6

    :goto_29
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_31
    move/from16 v50, v7

    move/from16 v33, v10

    move/from16 v28, v20

    move-object/from16 v6, v21

    move-object/from16 v8, v27

    move/from16 v14, v36

    move/from16 v31, v37

    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->ALLOW_BY_DEFAULT:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    goto :goto_28

    :goto_2a
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-eq v10, v0, :cond_34

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-eqz v4, :cond_32

    iget-object v1, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_32

    iget-object v0, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v4, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iget v7, v4, Lcom/android/server/wm/WindowProcessController;->mPid:I

    move-object/from16 v18, v0

    move/from16 v19, v1

    move/from16 v26, v7

    goto :goto_2b

    :cond_32
    move/from16 v19, v0

    const/16 v18, 0x0

    const/16 v26, 0x0

    :goto_2b
    sget-object v16, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v21, 0x0

    const/16 v25, 0x0

    const-string/jumbo v20, "activity"

    const/16 v23, 0x0

    const/16 v27, 0x0

    move-object/from16 v17, v0

    move-object/from16 v24, v3

    move/from16 v22, v50

    invoke-virtual/range {v16 .. v27}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;IZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    move-result v0

    move/from16 v7, v22

    if-nez v0, :cond_33

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v69, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v7, v4}, Landroid/app/ActivityManagerInternal;->cancelDisablePolicy(Ljava/lang/String;II)Z

    goto :goto_2c

    :cond_33
    move-object/from16 v69, v4

    goto :goto_2c

    :cond_34
    move-object/from16 v69, v4

    move/from16 v7, v50

    :goto_2c
    iget-boolean v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    if-eqz v0, :cond_39

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    iget-object v1, v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;

    if-nez v1, :cond_35

    :goto_2d
    move-object/from16 v27, v8

    goto :goto_2f

    :cond_35
    if-nez v8, :cond_36

    iget-object v4, v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-static {v4}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object v27

    move-object/from16 v8, v27

    goto :goto_2e

    :cond_36
    iget-object v4, v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v8, v4}, Landroid/app/ActivityOptions;->setRemoteAnimationAdapter(Landroid/view/RemoteAnimationAdapter;)V

    :goto_2e
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_REMOTE:Z

    if-eqz v4, :cond_37

    iget-object v4, v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->remoteTransition:Landroid/window/RemoteTransition;

    if-eqz v4, :cond_37

    invoke-virtual {v8, v4}, Landroid/app/ActivityOptions;->setRemoteTransition(Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    :cond_37
    iget-object v1, v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->launchCookie:Landroid/os/IBinder;

    if-eqz v1, :cond_38

    invoke-virtual {v8, v1}, Landroid/app/ActivityOptions;->setLaunchCookie(Landroid/os/IBinder;)V

    :cond_38
    iget-object v0, v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    :goto_2f
    move-object/from16 v38, v27

    goto :goto_30

    :cond_39
    move-object/from16 v38, v8

    :goto_30
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_3a

    :try_start_d
    invoke-virtual {v11}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_9

    const/16 v30, 0x1

    xor-int/lit8 v0, v0, 0x1

    or-int v0, v33, v0

    goto :goto_31

    :catch_9
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    :cond_3a
    move/from16 v0, v33

    :goto_31
    iget-object v1, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    iget-object v4, v2, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v2, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v40, 0x0

    move-object/from16 v33, v1

    move-object/from16 v39, v4

    move-object/from16 v41, v8

    move-object/from16 v37, v87

    invoke-virtual/range {v33 .. v41}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    move-object/from16 v1, v37

    iget-object v4, v2, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v4, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v4, :cond_3b

    :goto_32
    move-object/from16 v26, v4

    goto :goto_33

    :cond_3b
    iget-object v4, v2, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    goto :goto_32

    :goto_33
    iget-object v4, v2, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iput v14, v4, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v9, v4, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v7, v4, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    move/from16 v8, v42

    iput v8, v4, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    iput-object v6, v4, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingFeatureId:Ljava/lang/String;

    iput-object v1, v4, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v87, v1

    const/4 v1, 0x0

    iput-boolean v1, v4, Lcom/android/server/wm/ActivityStartInterceptor;->mIsInterceptedForAliasActivity:Z

    iget-boolean v1, v15, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    move/from16 v27, v1

    move-object/from16 v19, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v11

    move-object/from16 v20, v12

    move/from16 v24, v28

    move/from16 v23, v31

    move-object/from16 v21, v34

    move-object/from16 v25, v38

    move-object/from16 v22, v43

    move-object/from16 v18, v44

    invoke-virtual/range {v16 .. v27}, Lcom/android/server/wm/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;IILandroid/app/ActivityOptions;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v1

    move-object/from16 v11, v22

    move/from16 v21, v23

    move/from16 v4, v24

    move-object/from16 v12, v26

    move-object/from16 v23, v20

    if-eqz v1, :cond_3c

    iget-object v1, v2, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    move/from16 v16, v0

    iget-object v0, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    iget-object v0, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    move-object/from16 v19, v0

    iget v0, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    move/from16 v20, v0

    iget v0, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    iget-object v1, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    move-object/from16 v23, v18

    move-object/from16 v81, v58

    const/16 v32, 0x0

    move/from16 v58, v0

    move-object/from16 v18, v4

    move-object/from16 v4, v17

    goto :goto_34

    :cond_3c
    move/from16 v16, v0

    move/from16 v20, v21

    move-object/from16 v19, v34

    move-object/from16 v1, v38

    move-object/from16 v81, v58

    move/from16 v58, v4

    move-object v4, v3

    move-object/from16 v3, v17

    :goto_34
    if-eqz v16, :cond_3e

    if-eqz v56, :cond_3d

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v57, -0x1

    const/16 v60, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    move-object/from16 v58, v81

    invoke-virtual/range {v56 .. v64}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    :cond_3d
    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/16 v0, 0x6e

    filled-new-array/range {v45 .. v45}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v0, v1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    const/16 v0, 0x66

    return v0

    :cond_3e
    move-object/from16 v28, v56

    move/from16 v82, v59

    const-string/jumbo v0, "android.intent.extra.RESULT_NEEDED"

    move-object/from16 v16, v3

    const-string/jumbo v3, "android.intent.extra.INTENT"

    move-object/from16 v24, v5

    const-string/jumbo v5, "android.intent.extra.PACKAGE_NAME"

    const/high16 v17, 0x8800000

    if-eqz v4, :cond_42

    move-object/from16 v21, v6

    iget-object v6, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    move-object/from16 v31, v10

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v10}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    iget-object v6, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v56, v6

    const/4 v10, 0x1

    new-array v6, v10, [Landroid/content/Intent;

    const/16 v29, 0x0

    aput-object v16, v6, v29

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v68

    const/16 v66, 0x0

    const/16 v60, 0x0

    const/16 v57, 0x2

    const/16 v63, 0x0

    const/high16 v61, 0x50000000

    const/16 v62, 0x0

    move-object/from16 v67, v6

    move/from16 v59, v7

    move-object/from16 v64, v21

    move-object/from16 v65, v24

    invoke-virtual/range {v56 .. v68}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(IIIIILandroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v6

    move/from16 v50, v59

    move-object/from16 v7, v64

    new-instance v10, Landroid/content/Intent;

    move-object/from16 v33, v12

    const-string/jumbo v12, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getFlags()I

    move-result v12

    const/high16 v16, 0x800000

    or-int v16, v12, v16

    const/high16 v18, 0x10080000

    and-int v18, v16, v18

    if-eqz v18, :cond_3f

    or-int v16, v12, v17

    :cond_3f
    move/from16 v12, v16

    invoke-virtual {v10, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentSender;

    invoke-direct {v4, v6}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz v28, :cond_40

    const/4 v4, 0x1

    invoke-virtual {v10, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_40
    iget-object v4, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v6, v15, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    invoke-static {v9, v9, v6}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v26

    const/16 v25, 0x0

    const/16 v23, 0x0

    move-object/from16 v21, v4

    move-object/from16 v22, v10

    move/from16 v27, v14

    move/from16 v24, v50

    invoke-virtual/range {v21 .. v27}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    move-object/from16 v6, v22

    move/from16 v10, v24

    iget-object v12, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v14, 0x0

    invoke-virtual {v12, v6, v4, v8, v14}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    move-object/from16 v18, v4

    move-object/from16 v16, v6

    move/from16 v58, v9

    move-object v4, v12

    move/from16 v20, v27

    const/16 v32, 0x0

    goto :goto_36

    :cond_41
    move v10, v7

    move-object/from16 v7, v21

    :goto_35
    move-object/from16 v33, v12

    move/from16 v27, v14

    move-object/from16 v65, v24

    goto :goto_36

    :cond_42
    move-object/from16 v31, v10

    move v10, v7

    move-object v7, v6

    goto :goto_35

    :goto_36
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->SUPPORT_SMARTMANAGER_CN:Z

    const-string v12, " className:"

    const/high16 v14, 0x100000

    if-eqz v6, :cond_4d

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getFlags()I

    move-result v6

    and-int/2addr v6, v14

    if-eqz v6, :cond_43

    const/4 v6, 0x1

    :goto_37
    move/from16 v34, v14

    goto :goto_38

    :cond_43
    const/4 v6, 0x0

    goto :goto_37

    :goto_38
    iget-object v14, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v14, v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    if-eqz v4, :cond_46

    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v14, :cond_46

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_46

    iget-object v14, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    move/from16 v21, v6

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

    if-eqz v14, :cond_44

    invoke-virtual {v14, v6}, Lcom/android/internal/app/SmRccPolicy;->isSmRccPkg(Ljava/lang/String;)Z

    move-result v6

    goto :goto_39

    :cond_44
    const/4 v6, 0x0

    :goto_39
    if-eqz v6, :cond_46

    if-nez v21, :cond_46

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-nez v6, :cond_46

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "SmRcc pkgName:"

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " callingPackage:"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

    if-eqz v6, :cond_45

    invoke-virtual {v6, v14}, Lcom/android/internal/app/SmRccPolicy;->isSmRccOpen(Ljava/lang/String;)Z

    move-result v6

    goto :goto_3a

    :cond_45
    const/4 v6, 0x0

    :goto_3a
    if-eqz v6, :cond_47

    iget-object v6, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

    if-eqz v6, :cond_46

    invoke-virtual {v6, v14}, Lcom/android/internal/app/SmRccPolicy;->resetSmRccOpen(Ljava/lang/String;)V

    :cond_46
    move-object/from16 v35, v0

    move-object v14, v7

    move-object/from16 v36, v12

    goto/16 :goto_41

    :cond_47
    new-instance v6, Landroid/content/Intent;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v14, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v21, v7

    move/from16 v50, v10

    const/4 v7, 0x1

    new-array v10, v7, [Landroid/content/Intent;

    const/16 v29, 0x0

    aput-object v16, v10, v29

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v68

    const/16 v66, 0x0

    const/16 v60, 0x0

    const/16 v57, 0x2

    const/16 v63, 0x0

    const/high16 v61, 0x50000000

    const/16 v62, 0x0

    move-object/from16 v67, v10

    move-object/from16 v56, v14

    move-object/from16 v64, v21

    move/from16 v59, v50

    invoke-virtual/range {v56 .. v68}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(IIIIILandroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v7

    move/from16 v10, v59

    move-object/from16 v14, v64

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getFlags()I

    move-result v20

    iget-object v15, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v15, v15, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

    if-eqz v15, :cond_48

    invoke-virtual {v15}, Lcom/android/internal/app/SmRccPolicy;->getSmRccAction()Ljava/lang/String;

    move-result-object v15

    :goto_3b
    move-object/from16 v35, v0

    goto :goto_3c

    :cond_48
    const/4 v15, 0x0

    goto :goto_3b

    :goto_3c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v36, v12

    or-int v12, v20, v17

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v12, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v12, Landroid/content/IntentSender;

    invoke-direct {v12, v7}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v0, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz v28, :cond_49

    const-string/jumbo v7, "SM_RCC_EXTRA_RESULT_NEEDED"

    const/4 v12, 0x1

    invoke-virtual {v0, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_49
    const-string/jumbo v7, "SM_RCC_PACKAGE_INTENT"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v6, "SM_RCC_PACKAGE_USERID"

    invoke-virtual {v0, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v1, :cond_4a

    const/4 v6, 0x0

    goto :goto_3d

    :cond_4a
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    :goto_3d
    const-string/jumbo v7, "SM_RCC_PACKAGE_OPTIONS"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {v10}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v6

    const/16 v23, 0x0

    if-eqz v6, :cond_4b

    iget-object v6, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v7, v2, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v7, v7, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    invoke-static {v9, v9, v7}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v26

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v22, v0

    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v27}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    :goto_3e
    move-object/from16 v6, v22

    goto :goto_3f

    :cond_4b
    move-object/from16 v22, v0

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v6, v2, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    invoke-static {v9, v9, v6}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v26

    const/16 v25, 0x0

    move-object/from16 v21, v0

    move/from16 v24, v10

    invoke-virtual/range {v21 .. v27}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_3e

    :goto_3f
    iget-object v7, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v12, 0x0

    invoke-virtual {v7, v6, v0, v8, v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    if-eqz v7, :cond_4c

    iget-object v4, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v4, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v18, v0

    move-object v4, v7

    move/from16 v58, v9

    :goto_40
    move/from16 v20, v27

    goto :goto_42

    :cond_4c
    const-string/jumbo v0, "SmRcc can not resolve Activity , should never happen. Check Action "

    invoke-static {v0, v15, v13}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v58, v9

    move-object/from16 v6, v16

    goto :goto_40

    :cond_4d
    move-object/from16 v35, v0

    move-object/from16 v36, v12

    move/from16 v34, v14

    move-object v14, v7

    :goto_41
    move-object/from16 v6, v16

    :goto_42
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    const-string v7, "LAUNCH_FROM_NOTIFICATION"

    if-eqz v0, :cond_5f

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v12

    and-int v12, v12, v34

    if-eqz v12, :cond_4e

    const/4 v12, 0x1

    :goto_43
    move/from16 v16, v0

    const/4 v15, -0x1

    goto :goto_44

    :cond_4e
    const/4 v12, 0x0

    goto :goto_43

    :goto_44
    invoke-virtual {v6, v7, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v15, 0x1

    if-ne v0, v15, :cond_4f

    const/4 v0, 0x1

    goto :goto_45

    :cond_4f
    const/4 v0, 0x0

    :goto_45
    iget-object v15, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v15, :cond_50

    if-eqz v4, :cond_50

    move/from16 v21, v0

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_51

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v0}, Lcom/android/internal/app/AppLockPolicy;->isActivityInExceptionList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 v0, 0x0

    goto :goto_46

    :cond_50
    move/from16 v21, v0

    :cond_51
    const/4 v0, 0x1

    :goto_46
    iget-object v15, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v15, :cond_52

    if-eqz v4, :cond_52

    move/from16 v22, v0

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_53

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v0}, Lcom/android/internal/app/AppLockPolicy;->isAppLockBypassList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    const/4 v0, 0x0

    goto :goto_47

    :cond_52
    move/from16 v22, v0

    :cond_53
    const/4 v0, 0x1

    :goto_47
    iget-object v15, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v15, v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v15

    if-eqz v4, :cond_5e

    move/from16 v24, v0

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_5e

    if-nez v21, :cond_5e

    move/from16 v50, v10

    iget-object v10, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v10, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    if-nez v12, :cond_56

    invoke-static/range {v50 .. v50}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_54

    if-eqz v15, :cond_55

    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_54

    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_54
    invoke-static/range {v50 .. v50}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    move-result v0

    if-nez v0, :cond_56

    :cond_55
    if-eqz v22, :cond_56

    if-eqz v24, :cond_56

    if-eqz v11, :cond_57

    iget-boolean v0, v11, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-nez v0, :cond_56

    goto :goto_49

    :cond_56
    move-object/from16 v34, v6

    move/from16 v5, v27

    move/from16 v10, v50

    :goto_48
    const/16 v29, 0x0

    goto/16 :goto_51

    :cond_57
    :goto_49
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v10, v6, v1, v14}, Lcom/android/internal/app/AppLockPolicy;->skipLockWhenStart(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;)Z

    move-result v0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "AppLocked pkgName:"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v36

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " skipLockWhenStart:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_56

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v1, :cond_58

    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    goto :goto_4a

    :cond_58
    const/4 v15, 0x1

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v1

    :goto_4a
    iget-object v10, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    new-array v12, v15, [Landroid/content/Intent;

    const/16 v29, 0x0

    aput-object v6, v12, v29

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v68

    const/16 v66, 0x0

    const/16 v60, 0x0

    const/16 v57, 0x2

    const/16 v63, 0x0

    const/high16 v61, 0x50000000

    const/16 v62, 0x0

    move-object/from16 v56, v10

    move-object/from16 v67, v12

    move-object/from16 v64, v14

    move/from16 v59, v50

    invoke-virtual/range {v56 .. v68}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(IIIIILandroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v10

    move/from16 v12, v59

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v15

    move-object/from16 v20, v1

    iget-object v1, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v34, v6

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    or-int v15, v15, v17

    invoke-virtual {v6, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v15, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v5, Landroid/content/IntentSender;

    invoke-direct {v5, v10}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v6, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz v28, :cond_59

    move-object/from16 v3, v35

    const/4 v15, 0x1

    invoke-virtual {v6, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_59
    const-string v3, "LOCKED_PACKAGE_INTENT"

    invoke-virtual {v6, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "LOCKED_PACKAGE_NAME"

    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "LOCKED_PACKAGE_USERID"

    invoke-virtual {v6, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v87, :cond_5a

    move/from16 v0, v29

    goto :goto_4b

    :cond_5a
    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v0

    :goto_4b
    const-string v3, "LOCKED_APP_CAN_SHOW_WHEN_LOCKED"

    invoke-virtual {v6, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez v20, :cond_5b

    const/4 v0, 0x0

    goto :goto_4c

    :cond_5b
    invoke-virtual/range {v20 .. v20}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    :goto_4c
    const-string v3, "LOCKED_PACKAGE_ACTIVITY_OPTIONS"

    invoke-virtual {v6, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.applock"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v12}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    const/16 v23, 0x0

    if-eqz v0, :cond_5c

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v2, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    invoke-static {v9, v9, v3}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v26

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v21, v0

    move-object/from16 v22, v6

    invoke-virtual/range {v21 .. v27}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    move v10, v12

    :goto_4d
    move-object/from16 v3, v22

    move/from16 v5, v27

    goto :goto_4e

    :cond_5c
    move-object/from16 v22, v6

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v2, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    invoke-static {v9, v9, v3}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v26

    const/16 v25, 0x0

    move-object/from16 v21, v0

    move/from16 v24, v12

    invoke-virtual/range {v21 .. v27}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    move/from16 v10, v24

    goto :goto_4d

    :goto_4e
    iget-object v6, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v12, 0x0

    invoke-virtual {v6, v3, v0, v8, v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    if-eqz v6, :cond_5d

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v4, v6

    move/from16 v58, v9

    move-object/from16 v86, v20

    move-object/from16 v46, v23

    move-object v6, v3

    :goto_4f
    move/from16 v20, v5

    goto :goto_52

    :cond_5d
    const-string v0, "AppLock can not resolve Activity, should never happen. Check Action "

    invoke-static {v0, v1, v13}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v58, v9

    move-object/from16 v0, v18

    move-object/from16 v86, v20

    move-object/from16 v46, v23

    move-object/from16 v6, v34

    goto :goto_4f

    :cond_5e
    :goto_50
    move-object/from16 v34, v6

    move/from16 v5, v27

    goto/16 :goto_48

    :cond_5f
    move/from16 v16, v0

    goto :goto_50

    :goto_51
    move-object/from16 v86, v1

    move-object/from16 v0, v18

    move-object/from16 v46, v23

    move-object/from16 v6, v34

    :goto_52
    if-eqz v0, :cond_66

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    if-eqz v1, :cond_66

    move-object/from16 v15, p1

    iget-object v3, v15, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    if-eqz v1, :cond_60

    iget-boolean v4, v1, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v4, :cond_60

    iget-object v4, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v14, v10}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v49

    check-cast v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v43, Landroid/content/pm/InstantAppRequest;

    iget-object v6, v1, Landroid/content/pm/AuxiliaryResolveInfo;->hostDigestPrefixSecure:[I

    iget-object v12, v1, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    const/16 v52, 0x0

    move-object/from16 v44, v1

    move-object/from16 v45, v3

    move-object/from16 v53, v6

    move/from16 v50, v10

    move-object/from16 v54, v12

    move-object/from16 v47, v14

    move-object/from16 v51, v48

    move-object/from16 v48, v65

    invoke-direct/range {v43 .. v54}, Landroid/content/pm/InstantAppRequest;-><init>(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Z[ILjava/lang/String;)V

    move-object/from16 v3, v43

    move-object/from16 v21, v47

    move-object/from16 v48, v51

    const/16 v6, 0x14

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_53

    :cond_60
    move-object/from16 v45, v3

    move/from16 v50, v10

    move-object/from16 v21, v14

    :goto_53
    invoke-static/range {v45 .. v45}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v44

    if-nez v1, :cond_61

    const/4 v3, 0x0

    goto :goto_54

    :cond_61
    iget-object v3, v1, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    :goto_54
    if-nez v1, :cond_62

    const/16 v51, 0x0

    goto :goto_55

    :cond_62
    iget-object v4, v1, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    move-object/from16 v51, v4

    :goto_55
    if-nez v1, :cond_63

    const/16 v52, 0x0

    goto :goto_56

    :cond_63
    iget-object v4, v1, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    move-object/from16 v52, v4

    :goto_56
    if-eqz v1, :cond_64

    iget-boolean v4, v1, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v4, :cond_64

    const/16 v53, 0x1

    goto :goto_57

    :cond_64
    move/from16 v53, v29

    :goto_57
    if-nez v1, :cond_65

    const/16 v54, 0x0

    :goto_58
    move-object/from16 v43, v45

    move-object/from16 v49, v46

    move-object/from16 v47, v65

    move-object/from16 v45, v3

    move-object/from16 v46, v21

    goto :goto_59

    :cond_65
    iget-object v1, v1, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    move-object/from16 v54, v1

    goto :goto_58

    :goto_59
    invoke-static/range {v43 .. v54}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v21, v46

    move-object/from16 v65, v47

    iget-object v1, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v12, 0x0

    invoke-virtual {v1, v6, v0, v8, v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    move/from16 v72, v5

    move/from16 v73, v9

    move-object/from16 v22, v11

    move-object v11, v12

    move-object/from16 v77, v11

    :goto_5a
    move-object/from16 v78, v4

    move-object/from16 v76, v6

    goto :goto_5b

    :cond_66
    move-object/from16 v15, p1

    move/from16 v50, v10

    move-object/from16 v21, v14

    const/4 v12, 0x0

    move-object/from16 v22, v11

    move/from16 v72, v20

    move-object/from16 v11, v32

    move-object/from16 v77, v46

    move/from16 v73, v58

    goto :goto_5a

    :goto_5b
    if-nez v69, :cond_67

    if-lez v5, :cond_67

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v27

    if-eqz v27, :cond_67

    move-object/from16 v71, v27

    goto :goto_5c

    :cond_67
    move-object/from16 v71, v69

    :goto_5c
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-boolean v3, v15, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    if-eqz v55, :cond_68

    const/16 v84, 0x1

    goto :goto_5d

    :cond_68
    move/from16 v84, v29

    :goto_5d
    if-nez v1, :cond_69

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    :cond_69
    move-object/from16 v79, v1

    new-instance v69, Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/16 v89, 0x0

    const-wide/16 v90, 0x0

    const/16 v88, 0x0

    move-object/from16 v70, v0

    move-object/from16 v85, v1

    move/from16 v83, v3

    move-object/from16 v74, v21

    move-object/from16 v80, v28

    move-object/from16 v75, v65

    invoke-direct/range {v69 .. v91}, Lcom/android/server/wm/ActivityRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/PersistableBundle;Landroid/app/ActivityManager$TaskDescription;J)V

    move-object/from16 v3, v69

    move-object/from16 v0, v71

    move-object/from16 v4, v78

    move-object/from16 v1, v87

    iput-object v3, v2, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v2, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityStartInterceptor;->hasAliasActivity(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_6a

    const/4 v10, 0x1

    iput-boolean v10, v3, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-eqz v86, :cond_6a

    invoke-virtual/range {v86 .. v86}, Landroid/app/ActivityOptions;->useExtendedDesktopModeLaunchPolicy()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v5

    if-eqz v5, :cond_6a

    iput-boolean v10, v3, Lcom/android/server/wm/ActivityRecord;->mExtendedDesktopModeLaunchPolicyAppliedAliasActivity:Z

    :cond_6a
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v5, :cond_6b

    if-eqz v1, :cond_6b

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v5, v3, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    :cond_6b
    iget-object v5, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    if-eqz v0, :cond_6c

    iget-object v6, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_6c

    iget-object v5, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v0, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    move/from16 v66, v0

    move-object/from16 v58, v5

    move/from16 v59, v6

    goto :goto_5e

    :cond_6c
    move/from16 v59, v5

    move-object/from16 v58, v12

    move/from16 v66, v29

    :goto_5e
    sget-object v56, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v61, 0x0

    const/16 v65, 0x0

    const-string/jumbo v60, "activity"

    const/16 v63, 0x0

    const/16 v67, 0x0

    move-object/from16 v57, v0

    move-object/from16 v64, v4

    move/from16 v62, v50

    invoke-virtual/range {v56 .. v67}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;IZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_6d

    const/16 v0, -0xc8

    return v0

    :cond_6d
    if-eqz v16, :cond_6f

    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_6f

    :try_start_e
    new-instance v0, Landroid/content/Intent;

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v6, -0x1

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v10, 0x1

    if-eq v0, v10, :cond_6e

    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v5, 0x4000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_6f

    const/4 v10, 0x1

    goto :goto_5f

    :catch_a
    move-exception v0

    goto :goto_60

    :cond_6e
    :goto_5f
    iput-boolean v10, v3, Lcom/android/server/wm/ActivityRecord;->mLaunchingRequestedFromNotification:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_61

    :goto_60
    const-string v5, "Exception while parsing intent but ignorable, was : "

    invoke-static {v0, v5, v13}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    :goto_61
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_70

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne v4, v0, :cond_70

    const/4 v0, 0x1

    goto :goto_62

    :cond_70
    move/from16 v0, v29

    :goto_62
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    if-eqz v4, :cond_71

    iget-object v4, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v4, v4, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v5, v2, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    move-result v4

    if-eqz v4, :cond_71

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->stopAppSwitches()V

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mIsAppSwitchDelayedByTransientLaunch:Z

    goto :goto_63

    :cond_71
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v4

    if-eqz v4, :cond_72

    if-nez v0, :cond_72

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeAppSwitches()V

    :cond_72
    :goto_63
    iget-object v0, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isLaunchAdjacent()Z

    move-result v4

    if-eqz v4, :cond_73

    if-eqz v1, :cond_73

    iget-boolean v4, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_73

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_73

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v4

    if-nez v4, :cond_73

    if-eqz v0, :cond_73

    iget v4, v0, Lcom/android/server/wm/Transition;->mType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_73

    const-string/jumbo v4, "Start Adjacent Activity, Collecting Transition is TRANSIT_CLOSE"

    invoke-static {v13, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->abort()V

    :cond_73
    iget-object v0, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->createAndStartCollecting()Lcom/android/server/wm/Transition;

    move-result-object v0

    goto :goto_64

    :cond_74
    move-object v0, v12

    :goto_64
    if-eqz v0, :cond_75

    const/4 v14, 0x1

    goto :goto_65

    :cond_75
    move/from16 v14, v29

    :goto_65
    if-eqz v14, :cond_76

    :goto_66
    move-object v13, v0

    goto :goto_67

    :cond_76
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    goto :goto_66

    :goto_67
    iget-object v5, v15, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object v4, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v4

    move v6, v8

    move v12, v9

    move-object/from16 v8, v19

    move-object/from16 v9, v22

    move-object/from16 v10, v31

    move-object/from16 v4, v55

    move-object/from16 v7, v86

    invoke-virtual/range {v1 .. v14}, Lcom/android/server/wm/ActivityStarter;->startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;ILcom/android/server/wm/Transition;Z)I

    move-result v0

    iput v0, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_77

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    aput-object v1, v2, v29

    :cond_77
    return v0

    :catch_b
    move-exception v0

    move-object v1, v2

    move v10, v7

    move-object/from16 v58, v19

    move/from16 v59, v20

    move/from16 v4, v22

    move-object/from16 v56, v28

    :goto_68
    move-object/from16 v6, v33

    goto :goto_69

    :catch_c
    move-exception v0

    move-object v1, v2

    move v10, v7

    move/from16 v4, v22

    goto :goto_68

    :goto_69
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    if-eqz v2, :cond_7b

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_78

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7b

    :cond_78
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_79

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_6a

    :cond_79
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    :goto_6a
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    const/4 v15, 0x1

    invoke-virtual {v1, v4, v10, v2, v15}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7b

    if-eqz v56, :cond_7a

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v57, -0x1

    const/16 v60, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    invoke-virtual/range {v56 .. v64}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    :cond_7a
    invoke-static {v6}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    return v37

    :cond_7b
    throw v0

    :cond_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Need to specify a reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v11

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/wm/ActivityStarter;->canMoveTaskToBottomTask(ILcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz p3, :cond_2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getForceLaunchOverTargetTask()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-eq v0, v1, :cond_3

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_3

    invoke-virtual {v2, v0, v10, v11, v10}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v11

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v11

    :goto_1
    const/4 v4, 0x5

    if-eqz v0, :cond_5

    invoke-virtual {v0, v9, v10}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v5

    if-nez v5, :cond_8

    iget v5, v0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5, v10}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    if-eq v0, v9, :cond_6

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    if-eq v0, v4, :cond_6

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_2

    :cond_7
    move-object v0, v11

    :cond_8
    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    if-eq v1, v9, :cond_a

    if-ne v1, v4, :cond_0

    :cond_a
    if-nez p4, :cond_b

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    goto :goto_3

    :cond_b
    move-object/from16 v4, p4

    :goto_3
    invoke-virtual {v4, v1}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, p1, p3}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v7

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v1, p1

    move v6, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;IIZ)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_4
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_5

    :cond_c
    return-object v0

    :cond_d
    :goto_5
    if-eqz p4, :cond_e

    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v0, :cond_f

    move v5, v9

    goto :goto_6

    :cond_f
    move v5, v10

    :goto_6
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_10

    iget-object v11, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    :cond_10
    move-object v4, v11

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    move-object v1, p1

    move v7, p2

    move-object v3, p3

    move-object/from16 v2, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;I)Lcom/android/server/wm/Task;

    move-result-object p2

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isExternalDisplayDesktop()Z

    move-result v2

    iget v4, p2, Lcom/android/server/wm/Task;->mDeskRootTaskType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_12

    if-nez v0, :cond_11

    if-eqz v2, :cond_12

    :cond_11
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_12

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "getOrCreateRootTask: use activated root, "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", r="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_12
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isDeskRootTask()Z

    move-result p1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-ne p3, p1, :cond_13

    if-eqz p4, :cond_13

    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    :cond_13
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-ne p2, p0, :cond_14

    iget-object p0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_14

    iget-object p0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    :cond_14
    return-object p2
.end method

.method public final getStartInfo()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;IZLandroid/window/RemoteTransition;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/Task;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    const/4 v10, 0x1

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v11, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    const/4 v12, 0x0

    iput-boolean v12, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object v14, v13

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    move-object v14, v2

    :goto_0
    invoke-static {v7}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v2

    if-eqz v2, :cond_34

    if-nez v14, :cond_1

    goto/16 :goto_11

    :cond_1
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/Intent;->isAiKeyAppLaunch()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->mIsAiKeyAppTarget:Z

    if-eqz v2, :cond_5

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    iget-object v4, v2, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredTrampolineApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    iget-object v4, v2, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredTrampolineApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "addToSyncDeferredForTrampolineApp: r="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", reason=ai_source_launch, num_remain="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredTrampolineApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ChangeTransitionController"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v2, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredTrampolineApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ne v4, v10, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/wm/ChangeTransitionController;->mSyncStartedTime:J

    iget-object v4, v2, Lcom/android/server/wm/ChangeTransitionController;->mH:Lcom/android/server/wm/ChangeTransitionController$H;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v2, Lcom/android/server/wm/ChangeTransitionController;->mH:Lcom/android/server/wm/ChangeTransitionController$H;

    const-wide/16 v4, 0x320

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    const/4 v4, 0x4

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v5, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    invoke-virtual {v1, v12}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v2, :cond_7

    iget v6, v2, Lcom/android/server/wm/Transition;->mType:I

    if-eq v6, v4, :cond_6

    if-ne v6, v10, :cond_7

    :cond_6
    iget v6, v2, Lcom/android/server/wm/Transition;->mFlags:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_7

    invoke-virtual {v5, v10, v12}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_7

    if-ne v5, v14, :cond_7

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isFullscreenRootForStageTask()Z

    move-result v5

    if-nez v5, :cond_7

    const/high16 v5, 0x20000

    invoke-virtual {v2, v5}, Lcom/android/server/wm/Transition;->addFlag(I)V

    :cond_7
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz p2, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_8

    const/high16 v2, 0x100000

    invoke-virtual {v9, v2}, Lcom/android/server/wm/Transition;->addFlag(I)V

    :cond_8
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->initialCallerInfoAccessToken:Landroid/os/IBinder;

    move v5, v3

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    move v6, v4

    iget v4, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    move/from16 v16, v5

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move/from16 v17, v6

    iget-boolean v6, v1, Lcom/android/server/wm/ActivityRecord;->mShareIdentity:Z

    move/from16 v15, v16

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->computeCallerInfo(Landroid/os/IBinder;Landroid/content/Intent;ILjava/lang/String;Z)V

    goto :goto_2

    :cond_9
    move v15, v3

    :goto_2
    if-eqz p2, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getTaskAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v14, v10}, Lcom/android/server/wm/Task;->setAlwaysOnTop(Z)V

    :cond_a
    const-string v2, "ActivityTaskManager"

    if-eqz p4, :cond_b

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-nez v3, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    if-nez v3, :cond_b

    invoke-virtual {v1, v10}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    move-result v3

    if-nez v3, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Abort "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of invisible launch "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/android/server/wm/Transition;->abort()V

    return-object v14

    :cond_b
    invoke-virtual {v14, v12}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_c

    iget v4, v3, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v5

    if-eq v4, v5, :cond_c

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, v3, v5, v12}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Z)V

    :cond_c
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v4

    if-nez v4, :cond_f

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v5, :cond_d

    const-class v5, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerInternal;

    iput-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    :cond_d
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v5, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/UserManagerInternal;->isVisibleBackgroundFullUser(I)Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v5, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v6, v10, [Z

    aput-boolean v12, v6, v12

    new-instance v12, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda26;

    invoke-direct {v12, v5, v6}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda26;-><init>(I[Z)V

    invoke-virtual {v4, v12, v10}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v4, v4, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    if-nez v5, :cond_e

    const-class v5, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/statusbar/StatusBarManagerService$2;

    iput-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    :cond_e
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    if-eqz v4, :cond_f

    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v4, :cond_f

    :try_start_0
    invoke-interface {v4}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_f
    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v5, 0x3

    if-eqz v7, :cond_14

    if-eq v7, v15, :cond_14

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v6, :cond_11

    if-ne v7, v5, :cond_11

    if-eqz v9, :cond_11

    if-eqz v3, :cond_11

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v6, :cond_11

    iget-object v12, v9, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz v6, :cond_10

    iget-object v12, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    if-eqz v12, :cond_10

    goto :goto_3

    :cond_10
    if-eqz v6, :cond_11

    iget v6, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mForceHidingTransit:I

    if-eq v6, v15, :cond_14

    const/4 v12, 0x4

    if-ne v6, v12, :cond_11

    goto :goto_3

    :cond_11
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    if-eqz v6, :cond_12

    if-ne v7, v5, :cond_12

    if-eqz p2, :cond_12

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->isResumedAffordanceAnimationRequested()Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_3

    :cond_12
    if-ne v7, v5, :cond_13

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v6, :cond_13

    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->getActivatedDesktopTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_13

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->getActivatedDesktopTask()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_3

    :cond_13
    const/4 v6, 0x0

    goto :goto_4

    :cond_14
    :goto_3
    move v6, v10

    :goto_4
    if-eqz p2, :cond_15

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    move-result v12

    if-eqz v12, :cond_15

    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    if-eqz v12, :cond_15

    iget-boolean v12, v0, Lcom/android/server/wm/ActivityStarter;->mDisplayLockAndOccluded:Z

    if-eqz v12, :cond_15

    move v12, v10

    goto :goto_5

    :cond_15
    const/4 v12, 0x0

    :goto_5
    sget-boolean v17, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    if-eqz v17, :cond_16

    if-eqz p2, :cond_16

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->isResumedAffordanceAnimationRequested()Z

    move-result v19

    if-eqz v19, :cond_16

    move/from16 v19, v10

    goto :goto_6

    :cond_16
    const/16 v19, 0x0

    :goto_6
    sget-boolean v20, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v20, :cond_17

    if-eqz v9, :cond_17

    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-boolean v5, v15, Lcom/android/server/wm/ActivityStartInterceptor;->mIsInterceptedForCarLife:Z

    if-eqz v5, :cond_17

    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStartInterceptor;->hasCarLifeDisplay()Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    const/4 v15, 0x0

    iput-boolean v15, v5, Lcom/android/server/wm/ActivityStartInterceptor;->mIsInterceptedForCarLife:Z

    invoke-virtual {v9}, Lcom/android/server/wm/Transition;->abort()V

    move v5, v10

    const/4 v9, 0x0

    goto :goto_7

    :cond_17
    const/4 v5, 0x0

    :goto_7
    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v15, :cond_18

    if-eqz v6, :cond_18

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isSplitEmbedded()Z

    move-result v15

    if-eqz v15, :cond_18

    if-eqz v13, :cond_18

    invoke-virtual {v13, v1}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v13

    if-eqz v13, :cond_18

    move v13, v10

    goto :goto_8

    :cond_18
    const/4 v13, 0x0

    :goto_8
    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v15, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v15

    if-eqz v15, :cond_1a

    iget-boolean v15, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-nez v15, :cond_1a

    if-nez v12, :cond_1a

    if-eqz v9, :cond_1a

    if-eqz v6, :cond_19

    invoke-virtual {v1, v10}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    move-result v15

    if-nez v15, :cond_1a

    :cond_19
    if-nez v13, :cond_1a

    invoke-virtual {v9}, Lcom/android/server/wm/Transition;->abort()V

    :goto_9
    move/from16 v19, v10

    :goto_a
    const/4 v9, 0x0

    goto/16 :goto_f

    :cond_1a
    if-eqz v9, :cond_1b

    iget-boolean v13, v1, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-eqz v13, :cond_1b

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v13

    if-eqz v13, :cond_1b

    invoke-virtual {v9}, Lcom/android/server/wm/Transition;->abort()V

    goto :goto_9

    :cond_1b
    if-eqz v6, :cond_20

    if-nez v5, :cond_20

    if-eqz v17, :cond_1c

    const/4 v5, 0x3

    if-ne v7, v5, :cond_1c

    if-eqz v9, :cond_1c

    if-eqz v19, :cond_1c

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/TransitionController;->setResumedAffordance(Lcom/android/server/wm/WindowContainer;)V

    :cond_1c
    const/4 v15, 0x2

    if-ne v7, v15, :cond_1e

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_1e

    iget-boolean v5, v1, Lcom/android/server/wm/ActivityRecord;->mIsAiKeyAppTarget:Z

    if-eqz v5, :cond_1e

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-nez v5, :cond_1e

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v5, :cond_1e

    const/4 v13, 0x0

    invoke-virtual {v5, v13, v10}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-virtual {v9, v3, v15}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "collect="

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", reason=split_gemini"

    invoke-static {v5, v3, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    :goto_b
    move/from16 v19, v10

    goto/16 :goto_f

    :cond_1e
    iget-object v2, v4, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v2, :cond_1f

    goto :goto_b

    :cond_1f
    invoke-virtual {v2, v1}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_b

    :cond_20
    const/4 v5, 0x3

    if-ne v7, v5, :cond_1d

    if-eqz p4, :cond_1d

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_1d

    iget-object v2, v4, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v2, :cond_21

    move/from16 v19, v10

    goto :goto_d

    :cond_21
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v2, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v15, 0x0

    :goto_c
    if-ge v15, v13, :cond_22

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/2addr v15, v10

    move/from16 v19, v10

    move-object/from16 v10, v17

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    invoke-static {v10, v3}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    move/from16 v10, v19

    goto :goto_c

    :cond_22
    move/from16 v19, v10

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v10, 0x0

    :cond_23
    if-ge v10, v5, :cond_24

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v10, v10, 0x1

    check-cast v13, Lcom/android/server/wm/Task;

    iget-object v15, v2, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_23

    goto :goto_f

    :cond_24
    iget-object v3, v2, Lcom/android/server/wm/Transition;->mOnTopDisplayStart:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eq v3, v2, :cond_25

    goto :goto_f

    :cond_25
    :goto_d
    invoke-virtual {v4, v14}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v9, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    if-nez v2, :cond_26

    const/4 v2, 0x0

    goto :goto_e

    :cond_26
    invoke-virtual {v2}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v2

    :goto_e
    if-nez v2, :cond_27

    if-nez v12, :cond_27

    invoke-virtual {v9}, Lcom/android/server/wm/Transition;->abort()V

    goto/16 :goto_a

    :cond_27
    :goto_f
    if-eqz v12, :cond_28

    if-eqz v9, :cond_28

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v15, 0x0

    invoke-virtual {v9, v2, v15}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    invoke-virtual {v9, v2, v15}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    invoke-virtual {v9, v3, v2}, Lcom/android/server/wm/Transition;->setTransientLaunch(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    move/from16 v3, v19

    invoke-virtual {v9, v2, v3}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_28
    if-nez v11, :cond_29

    if-eqz v9, :cond_29

    const/4 v15, 0x0

    iput-boolean v15, v9, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    :cond_29
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v2

    if-eqz v2, :cond_2a

    if-eqz v9, :cond_2a

    const/high16 v2, 0x10000

    invoke-virtual {v9, v2}, Lcom/android/server/wm/Transition;->addFlag(I)V

    :cond_2a
    if-eqz p4, :cond_2f

    if-eqz v9, :cond_2f

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mIsSystemModalTaskTop:Z

    if-eqz v2, :cond_2b

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v2, :cond_2c

    :cond_2b
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getNeedApplySystemModalPolicy()Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2c
    iget v2, v9, Lcom/android/server/wm/Transition;->mFlags:I

    if-nez v2, :cond_2d

    const/high16 v2, 0x200000

    invoke-virtual {v9, v2}, Lcom/android/server/wm/Transition;->addFlag(I)V

    :cond_2d
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_2e

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    :cond_2e
    const/4 v13, 0x0

    invoke-virtual {v4, v9, v2, v8, v13}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v13}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_33

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    goto :goto_10

    :cond_2f
    if-nez v7, :cond_30

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_10

    :cond_30
    if-eqz v6, :cond_33

    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_31

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_33

    :cond_31
    if-eqz v9, :cond_32

    const/4 v15, 0x0

    invoke-virtual {v9, v1, v15}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_32
    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_PIP_REMOTE_TRANSITION:Z

    if-eqz v2, :cond_33

    if-eqz v8, :cond_33

    if-eqz v1, :cond_33

    iget v2, v1, Lcom/android/server/wm/Transition;->mType:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_33

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_33

    iput-object v8, v1, Lcom/android/server/wm/Transition;->mRemoteTransition:Landroid/window/RemoteTransition;

    :cond_33
    :goto_10
    return-object v14

    :cond_34
    :goto_11
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_35

    const-string/jumbo v2, "startActivity"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    goto :goto_12

    :cond_35
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_36

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    :cond_36
    :goto_12
    if-eqz v14, :cond_37

    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    move-result v1

    if-nez v1, :cond_37

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_37

    iget-boolean v1, v14, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v1, :cond_37

    const-string/jumbo v1, "handleStartResult"

    invoke-virtual {v14, v1}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    :cond_37
    if-eqz p4, :cond_38

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {v9}, Lcom/android/server/wm/Transition;->abort()V

    const/16 v18, 0x0

    return-object v18

    :cond_38
    const/16 v18, 0x0

    return-object v18
.end method

.method public isAllowedToStart(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)I
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v1, p3

    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/16 v0, -0x5c

    return v0

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    const/4 v13, 0x1

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const-string v14, "ActivityTaskManager"

    if-eqz v2, :cond_1

    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v4, v2, v5, v13}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot launch home on display area "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x60

    return v0

    :cond_1
    const/4 v15, 0x0

    const/4 v2, 0x3

    if-nez p2, :cond_4

    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda54;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    const-class v7, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6, v7, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_2

    move v6, v13

    goto :goto_0

    :cond_2
    move v6, v15

    :goto_0
    invoke-interface {v5}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    if-eqz v6, :cond_4

    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v2, v5, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v15

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v13

    :goto_2
    iget v6, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    const/16 v7, 0x7f

    const/16 v16, 0x66

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-ne v6, v7, :cond_7

    if-eqz v5, :cond_7

    iget-object v5, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v5}, Landroid/app/ActivityManagerInternal;->isBackgroundActivityStartsEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, v3, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v4, v3, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    if-eqz v1, :cond_6

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v18, -0x1

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v1

    move-object/from16 v19, v2

    move/from16 v20, v4

    invoke-virtual/range {v17 .. v25}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    :cond_6
    iget-object v1, v3, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Abort background activity starts from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-static {v1, v0, v14}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v16

    :cond_7
    :goto_3
    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v6, 0x10008000

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_8

    move v5, v13

    goto :goto_4

    :cond_8
    move v5, v15

    :goto_4
    const/4 v12, 0x0

    const/16 v6, 0x65

    const-string v7, "Attempted Lock Task Mode violation r="

    if-nez p2, :cond_9

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    invoke-virtual {v8, v1, v5}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    move-result v5

    if-eqz v5, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_9
    iget-object v5, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v8, :cond_a

    invoke-virtual {v5, v8, v15}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    move-result v5

    goto :goto_5

    :cond_a
    invoke-virtual {v5, v12, v3}, Lcom/android/server/wm/LockTaskController;->getLockTaskAuth(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)I

    move-result v8

    iget v9, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v10, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v3, v9, v10, v8}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolationInternal(Lcom/android/server/wm/WindowContainer;ILandroid/content/Intent;I)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v5}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    move v5, v13

    goto :goto_5

    :cond_b
    move v5, v15

    :goto_5
    if-eqz v5, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_c
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v5, :cond_14

    iget-object v5, v5, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_14

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    :goto_6
    move v7, v5

    goto :goto_7

    :cond_d
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    goto :goto_6

    :goto_7
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v5

    move v8, v5

    goto :goto_8

    :cond_e
    move v8, v15

    :goto_8
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_f

    move v10, v13

    goto :goto_9

    :cond_f
    move v10, v15

    :goto_9
    new-instance v11, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda3;

    invoke-direct {v11, v0, v3}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityStarter;Lcom/android/server/wm/ActivityRecord;)V

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v9, v4

    iget-object v4, v9, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez v4, :cond_13

    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    if-eqz v4, :cond_10

    iget-object v6, v9, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v6, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "Checking activity launch with requiredDisplayCategory=\'%s\' on display %d, which doesn\'t have a matching category."

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "DisplayWindowPolicyControllerHelper"

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v13

    goto :goto_a

    :cond_10
    move v4, v15

    :goto_a
    if-eqz v4, :cond_11

    :goto_b
    move v4, v15

    goto :goto_c

    :cond_11
    invoke-virtual {v9, v5}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->launchAllowedByDisplayPolicy(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    if-nez v4, :cond_12

    goto :goto_b

    :cond_12
    move v4, v13

    goto :goto_c

    :cond_13
    move/from16 v9, p2

    invoke-virtual/range {v4 .. v11}, Landroid/window/DisplayWindowPolicyController;->canActivityBeLaunched(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IIZZLjava/util/function/Supplier;)Z

    move-result v4

    :goto_c
    if-nez v4, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Abort to launch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on display area "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    :cond_14
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mBalController:Lcom/android/server/wm/BackgroundActivityStartController;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v10

    iget v6, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget v7, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    iget v8, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    move/from16 v26, v6

    iget v6, v0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x2

    if-eq v7, v9, :cond_38

    if-nez p2, :cond_16

    const/high16 v11, 0x10000000

    and-int v9, v26, v11

    if-ne v9, v11, :cond_15

    goto :goto_d

    :cond_15
    move v9, v15

    goto :goto_e

    :cond_16
    :goto_d
    move v9, v13

    :goto_e
    if-eqz v9, :cond_18

    if-eq v7, v2, :cond_17

    const/4 v11, 0x6

    if-eq v7, v11, :cond_17

    const/4 v11, 0x5

    if-eq v7, v11, :cond_17

    const/4 v11, 0x7

    if-eq v7, v11, :cond_17

    const/4 v11, 0x4

    if-eq v7, v11, :cond_17

    const/16 v11, 0xb

    if-eq v7, v11, :cond_17

    const/16 v11, 0xc

    if-eq v7, v11, :cond_17

    const/16 v11, 0xd

    if-ne v7, v11, :cond_18

    :cond_17
    move/from16 v32, v15

    goto/16 :goto_26

    :cond_18
    new-instance v11, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    if-eqz v5, :cond_1c

    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v9, :cond_19

    move-object v2, v0

    :goto_f
    move/from16 v32, v15

    goto :goto_10

    :cond_19
    move-object v2, v1

    goto :goto_f

    :goto_10
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v15

    invoke-virtual {v4, v2, v15, v5, v11}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v11

    if-eqz v9, :cond_22

    iget-boolean v2, v11, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    if-eqz v2, :cond_22

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1a

    if-ne v0, v1, :cond_1b

    :cond_1a
    move v0, v13

    goto :goto_11

    :cond_1b
    move/from16 v0, v32

    :goto_11
    iput-boolean v0, v11, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    goto :goto_14

    :cond_1c
    move/from16 v32, v15

    if-eqz v1, :cond_1e

    if-eqz v9, :cond_1d

    if-eqz v10, :cond_1e

    :cond_1d
    invoke-virtual {v4, v1, v8, v12, v11}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v11

    goto :goto_14

    :cond_1e
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    :cond_1f
    if-eqz v0, :cond_22

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;

    invoke-direct {v15, v2}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    move/from16 v0, v32

    :goto_12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v0, v15, :cond_22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v12, v13, :cond_21

    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    iput-boolean v13, v11, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    iget-object v15, v11, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    if-nez v15, :cond_20

    iput-object v12, v11, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    :cond_20
    const/4 v12, 0x0

    goto :goto_13

    :cond_21
    const/4 v12, 0x0

    invoke-virtual {v4, v15, v8, v12, v11}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v11

    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_22
    :goto_14
    iget-boolean v0, v11, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    if-eqz v0, :cond_23

    goto/16 :goto_26

    :cond_23
    if-nez v1, :cond_24

    move-object v0, v12

    goto :goto_15

    :cond_24
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_15
    if-nez p2, :cond_27

    if-nez v5, :cond_25

    goto :goto_16

    :cond_25
    iget-object v2, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    move/from16 v27, v13

    goto :goto_17

    :cond_26
    const/16 v27, 0x2

    goto :goto_17

    :cond_27
    :goto_16
    const/16 v27, 0x3

    :goto_17
    iget-boolean v2, v11, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    if-eqz v2, :cond_28

    invoke-static {v8}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldRestrictActivitySwitch(I)Z

    move-result v2

    if-eqz v2, :cond_28

    move v2, v13

    goto :goto_18

    :cond_28
    move/from16 v2, v32

    :goto_18
    const/16 v15, 0x8

    if-ne v7, v15, :cond_2c

    if-eqz v9, :cond_29

    iget-object v15, v4, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz v15, :cond_29

    iget v15, v15, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    if-ne v15, v8, :cond_29

    :goto_19
    move v12, v13

    goto :goto_1a

    :cond_29
    if-eqz v9, :cond_2a

    if-eqz v10, :cond_2c

    :cond_2a
    if-eqz v1, :cond_2b

    iget-object v15, v4, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    iget v12, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz v12, :cond_2b

    iget v12, v12, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    if-ne v12, v8, :cond_2b

    goto :goto_19

    :cond_2b
    if-eqz v5, :cond_2c

    iget-object v12, v4, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    iget-object v15, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v15, v15, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz v12, :cond_2c

    iget v12, v12, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    if-ne v12, v8, :cond_2c

    goto :goto_19

    :cond_2c
    move/from16 v12, v32

    :goto_1a
    iget-object v11, v11, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    const-string v1, "Launch"

    move v13, v12

    move-object v12, v11

    move v11, v13

    move/from16 v13, p2

    move v15, v8

    const/16 v18, 0x0

    move v8, v2

    move-object v2, v5

    move-object v5, v0

    move-object v0, v4

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController;->getDebugInfoForActivitySecurity(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;IIZZZZLcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object v31

    move-object v1, v4

    move/from16 v30, v7

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    move-object/from16 v12, v18

    move/from16 v18, v4

    goto :goto_1b

    :cond_2d
    move-object/from16 v12, v18

    move/from16 v18, v15

    :goto_1b
    if-eqz v2, :cond_2e

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v4

    goto :goto_1c

    :cond_2e
    move-object/from16 v19, v12

    :goto_1c
    if-eqz v5, :cond_2f

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    :goto_1d
    move/from16 v20, v4

    goto :goto_1e

    :cond_2f
    const/4 v4, -0x1

    goto :goto_1d

    :goto_1e
    if-eqz v5, :cond_30

    iget-object v4, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_30
    move-object/from16 v21, v12

    if-nez v13, :cond_32

    if-eqz v2, :cond_32

    if-eqz v1, :cond_32

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    goto :goto_1f

    :cond_31
    move/from16 v22, v32

    goto :goto_20

    :cond_32
    :goto_1f
    const/16 v22, 0x1

    :goto_20
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v23

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    if-eqz v1, :cond_33

    if-eqz v2, :cond_33

    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_33

    const/16 v29, 0x1

    goto :goto_21

    :cond_33
    move/from16 v29, v32

    :goto_21
    const/16 v17, 0x1ef

    const/16 v28, 0xb

    move-object/from16 v24, v4

    invoke-static/range {v17 .. v31}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IIIZILjava/lang/String;)V

    move-object/from16 v1, v31

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-static {v15}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldShowToast(I)Z

    move-result v6

    if-eqz v6, :cond_35

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "go/android-asm"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_34

    const-string v7, " blocked "

    goto :goto_22

    :cond_34
    const-string v7, " would block "

    :goto_22
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-wide/16 v9, 0x0

    :try_start_0
    invoke-static {v9, v10}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_23

    :catch_0
    move-object v7, v4

    :goto_23
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/wm/BackgroundActivityStartController;->showToast(Ljava/lang/String;)V

    invoke-static {v14, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    if-eqz v8, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[ASM] Abort Launching r: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_36

    goto :goto_24

    :cond_36
    move-object v2, v4

    :goto_24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is in background. New task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ". Top activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". BAL Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v30 .. v30}, Lcom/android/server/wm/BackgroundActivityStartController;->balCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v13, v32

    goto :goto_26

    :cond_37
    :goto_25
    const/4 v13, 0x1

    goto :goto_26

    :cond_38
    move/from16 v32, v15

    goto :goto_25

    :goto_26
    if-nez v13, :cond_39

    return v16

    :cond_39
    return v32
.end method

.method public final isExternalStartForSpeg()Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    :cond_2
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    iget-boolean v3, v0, Lcom/android/server/pm/SpegService;->mIsSpegInOpeartion:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iget v3, v0, Lcom/android/server/pm/SpegService;->mSpegUid:I

    if-ne v1, v3, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    const-string v5, "App with uid "

    const-string/jumbo v6, "SPEG"

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/SpegService;->isSpegInOpeartion(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, " is trying to start an external app "

    invoke-static {v1, v5, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-static {v0, p0, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_5

    move v0, v4

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v4

    :goto_1
    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "App "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is trying to start an external intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/SpegService;->isSpegInOpeartion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, " is trying to launch SPEG app "

    invoke-static {v1, v5, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-static {v0, p0, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_7
    :goto_2
    return v2
.end method

.method public final logPIOnlyCreatorAllowsBAL()V
    .locals 4

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v2, "Without Android 15 BAL hardening this activity would be moved to the foreground. The activity is started by a PendingIntent. However, only the creator of the PendingIntent allows BAL while the sender does not allow BAL. realCallingPackage: "

    const-string v3, "; callingPackage: "

    invoke-static {v2, v0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; mTargetRootTask:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; mIntent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; mTargetRootTask.getTopNonFinishingActivity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v1, v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; mTargetRootTask.getRootActivity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final onExecutionComplete()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStartController;->mInExecution:Z

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    if-nez v1, :cond_0

    invoke-interface {v2}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    iget-wide v3, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    iput-wide v3, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    iget-boolean v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    iget-boolean v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget-boolean v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    iget v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    iput v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    iget-boolean v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->allowBalExemptionForSystemProcess:Z

    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowBalExemptionForSystemProcess:Z

    iget-boolean v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->freezeScreen:Z

    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->freezeScreen:Z

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    invoke-interface {v2, p0}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V

    return-void
.end method

.method public final onExecutionStarted()V
    .locals 1

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mInExecution:Z

    return-void
.end method

.method public final postStartActivityProcessing(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .locals 10

    invoke-static {p1}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReorderingOnTimeout()V

    :cond_0
    invoke-static {p1}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move v6, v3

    :goto_0
    if-ltz v0, :cond_8

    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;

    iget-object v8, v7, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    iget-object v8, v8, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    if-eqz v8, :cond_5

    iget-object v8, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne p2, v8, :cond_4

    move v8, v2

    goto :goto_1

    :cond_4
    move v8, v3

    goto :goto_1

    :cond_5
    iget-object v8, v7, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mTargetComponent:Landroid/content/ComponentName;

    iget-object v9, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    :goto_1
    if-nez v8, :cond_6

    goto :goto_2

    :cond_6
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mResult:Landroid/app/WaitResult;

    iput p1, v7, Landroid/app/WaitResult;->result:I

    if-ne p1, v5, :cond_7

    iget-object v6, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v6, v7, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v6, v2

    :cond_7
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_8
    if-eqz v6, :cond_9

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_9
    :goto_3
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    :goto_4
    if-eqz p3, :cond_13

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result p3

    if-nez p3, :cond_b

    goto/16 :goto_8

    :cond_b
    iget-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eq p1, v4, :cond_c

    if-ne p1, v5, :cond_f

    :cond_c
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_d

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v2

    goto :goto_5

    :cond_d
    move v1, v3

    :goto_5
    invoke-virtual {v0, v2, v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_e

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v4, :cond_e

    goto :goto_6

    :cond_e
    move v2, v3

    :goto_6
    iget-object v4, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    iget-object v7, v4, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    iput-object v5, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput v1, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput v6, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput v2, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, v4, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-virtual {v4, v2, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_f
    invoke-static {p1}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityInterceptorCallbacks:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p2}, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityStartInterceptor;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStartInterceptor;->getInterceptorInfo(Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda1;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    move-result-object v0

    move v2, v3

    :goto_7
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_10

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityInterceptorCallback;

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-interface {v4, p1, v5, v0}, Lcom/android/server/wm/ActivityInterceptorCallback;->onActivityLaunched(Landroid/app/TaskInfo;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_10
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lcom/android/server/wm/ActivityStarter;->mIsFreeformLaunching:Z

    if-eqz p1, :cond_13

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result p1

    if-nez p1, :cond_12

    const-string/jumbo p1, "startActivityFromRecents"

    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isWindowManagerCtsPackage(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget p2, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget p1, p1, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-static {p2, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget p2, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget p1, p1, Lcom/android/server/wm/RecentTasks;->mLauncherInfo:I

    invoke-static {p2, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget p2, p1, Lcom/android/server/wm/MultiTaskingController;->mSystemUIUid:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_11

    iget-object p2, p1, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object p2

    const-wide/32 v0, 0x100000

    const-string/jumbo p3, "com.android.systemui"

    invoke-virtual {p2, p3, v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p2

    iput p2, p1, Lcom/android/server/wm/MultiTaskingController;->mSystemUIUid:I

    :cond_11
    iget p1, p1, Lcom/android/server/wm/MultiTaskingController;->mSystemUIUid:I

    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget p2, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    if-eq p1, p2, :cond_12

    goto :goto_8

    :cond_12
    const-string p1, "2004"

    const-string p2, "From application"

    invoke-static {p1, p2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    const-string p1, "2013"

    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_8
    return-void
.end method

.method public final recordTransientLaunchIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/Transition;->setTransientLaunch(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :goto_0
    iget-object p1, v0, Lcom/android/server/wm/TransitionController;->mCleanUpRunnableList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p0, p1, :cond_3

    iget-object p1, v0, Lcom/android/server/wm/TransitionController;->mCleanUpRunnableList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, v0, Lcom/android/server/wm/TransitionController;->mCleanUpRunnableList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    :goto_1
    return-void
.end method

.method public recycleTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)I
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget v5, v4, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v7, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v13, 0x0

    const/4 v8, 0x1

    if-eq v5, v7, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    return v13

    :cond_0
    const/4 v5, 0x0

    if-eqz v2, :cond_3

    iget-object v7, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v7, :cond_1

    invoke-virtual {v4, v6, v5, v5}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    goto :goto_0

    :cond_1
    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/16 v7, 0x4000

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    iget-object v6, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-object v6, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->removeFlags(I)V

    :cond_3
    :goto_0
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    move-result v6

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7, v1, v13}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    iget-object v14, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v9

    goto :goto_1

    :cond_4
    move-object v9, v5

    :goto_1
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    move-result v10

    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v11

    const/4 v15, -0x1

    if-eq v11, v15, :cond_7

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v15

    invoke-virtual {v0, v15, v11}, Lcom/android/server/wm/ActivityStarter;->canMoveTaskToBottomTask(ILcom/android/server/wm/Task;)Z

    move-result v15

    if-nez v15, :cond_5

    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getForceLaunchOverTargetTask()Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_5
    iget v15, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v15, v11, v13}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v13

    if-eq v11, v13, :cond_7

    invoke-virtual {v11, v13}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v15

    if-nez v15, :cond_7

    invoke-static {v13}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v9, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eq v9, v11, :cond_6

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v7, v5, v1, v9}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    :cond_6
    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v19, 0x1

    const/16 v22, 0x1

    const-string/jumbo v23, "reparentToLaunchPolicy"

    move-object/from16 v17, v11

    move-object/from16 v18, v13

    invoke-virtual/range {v17 .. v23}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)V

    move-object/from16 v7, v18

    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    iput-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const v5, 0x7fffffff

    goto/16 :goto_13

    :cond_7
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-nez v11, :cond_9

    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v11, :cond_8

    iget-object v11, v11, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    if-eqz v11, :cond_8

    invoke-static {v11}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    goto :goto_2

    :cond_8
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v13, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v11, v13, v14, v15}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    :cond_9
    :goto_2
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v11

    if-eqz v11, :cond_a

    move-object v15, v14

    const v5, 0x7fffffff

    goto :goto_3

    :cond_a
    move-object v15, v14

    iget-object v14, v12, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v13, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/16 v20, -0x1

    move-object/from16 v18, v5

    move-object/from16 v19, v8

    move-object/from16 v17, v11

    move-object/from16 v16, v13

    const v5, 0x7fffffff

    invoke-virtual/range {v14 .. v20}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;I)Z

    :goto_3
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    if-eqz v8, :cond_b

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->isForceLaunchTaskOnHome()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v11, 0x1

    iput-boolean v11, v8, Lcom/android/server/wm/Task;->mLaunchTaskOnHome:Z

    :cond_b
    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    :cond_c
    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-ne v8, v11, :cond_16

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v8, v8, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v8

    if-nez v8, :cond_d

    const/4 v11, 0x0

    goto :goto_4

    :cond_d
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v8, v11}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    :goto_4
    if-eqz v11, :cond_e

    iget-object v11, v11, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_5

    :cond_e
    const/4 v11, 0x0

    :goto_5
    iget-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v13

    if-eqz v13, :cond_f

    iget-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v15, v13}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v13

    if-nez v13, :cond_f

    const/4 v13, 0x1

    goto :goto_6

    :cond_f
    const/4 v13, 0x0

    :goto_6
    if-nez v10, :cond_10

    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x1

    goto :goto_7

    :cond_10
    const/4 v10, 0x0

    :goto_7
    if-nez v13, :cond_12

    if-eqz v10, :cond_11

    goto :goto_8

    :cond_11
    const/4 v10, 0x0

    goto :goto_9

    :cond_12
    :goto_8
    const/4 v10, 0x1

    :goto_9
    if-ne v11, v15, :cond_15

    if-eqz v8, :cond_13

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v13

    if-ne v11, v13, :cond_15

    :cond_13
    if-eqz v8, :cond_14

    if-eq v8, v9, :cond_14

    goto :goto_a

    :cond_14
    const/4 v8, 0x0

    goto :goto_b

    :cond_15
    :goto_a
    const/4 v8, 0x1

    goto :goto_b

    :cond_16
    const/4 v8, 0x1

    const/4 v10, 0x0

    :goto_b
    if-nez v8, :cond_17

    if-eqz v10, :cond_22

    :cond_17
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v9

    if-nez v9, :cond_22

    if-eqz v8, :cond_18

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v10, 0x400000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_18
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v9, :cond_19

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v9

    if-eqz v9, :cond_19

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-ne v9, v10, :cond_19

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v9

    if-eqz v9, :cond_19

    const/4 v9, 0x1

    goto :goto_c

    :cond_19
    const/4 v9, 0x0

    :goto_c
    iget-boolean v10, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v10, :cond_1a

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v10, :cond_1a

    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v10}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    :cond_1a
    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v10}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v10

    if-eqz v10, :cond_1d

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-eq v9, v15, :cond_1b

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v10

    if-eq v9, v10, :cond_1b

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v15, v10}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v14

    move-object/from16 v26, v14

    goto :goto_d

    :cond_1b
    move-object/from16 v26, v15

    :goto_d
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v9

    if-eqz v9, :cond_1c

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-ne v1, v9, :cond_1c

    iget-object v9, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v9, v10}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result v9

    if-nez v9, :cond_1c

    const/4 v9, 0x1

    goto :goto_e

    :cond_1c
    const/4 v9, 0x0

    :goto_e
    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v14, v14, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const/16 v30, 0x1

    const-string/jumbo v31, "bringingFoundTaskToFront"

    move-object/from16 v25, v10

    move/from16 v27, v11

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    invoke-virtual/range {v25 .. v31}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    const/16 v22, 0x1

    xor-int/lit8 v9, v9, 0x1

    iput-boolean v9, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    move-object/from16 v14, v26

    :goto_f
    const/4 v9, 0x0

    goto :goto_11

    :cond_1d
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1e

    if-eqz v9, :cond_21

    :cond_1e
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v9

    if-eqz v9, :cond_20

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v9

    if-nez v9, :cond_20

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v9, :cond_1f

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v9

    goto :goto_10

    :cond_1f
    const/4 v9, 0x0

    :goto_10
    if-eqz v9, :cond_20

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v10, v15, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    :cond_20
    move-object v14, v15

    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/16 v19, 0x1

    const-string/jumbo v20, "reparentToTargetRootTask"

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v14 .. v20}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)V

    move-object v15, v14

    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    :cond_21
    move-object v14, v15

    goto :goto_f

    :goto_11
    iput-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    goto :goto_12

    :cond_22
    move-object v14, v15

    :goto_12
    if-eqz v8, :cond_23

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->logPIOnlyCreatorAllowsBAL()V

    :cond_23
    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v8, :cond_24

    iput-object v8, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/16 v22, 0x1

    aget-boolean v9, v9, v22

    if-eqz v9, :cond_24

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    int-to-long v10, v10

    sget-object v13, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v9, 0x437c906691e03227L    # 1.2864111290162443E17

    const/16 v11, 0x10

    invoke-static {v13, v9, v10, v11, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_24
    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    if-eqz v8, :cond_25

    iput-object v8, v1, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    :cond_25
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v7, v7, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v10, 0x0

    invoke-virtual {v9, v14, v7, v8, v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V

    :goto_13
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FREEFORM_STASH:Z

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v7, :cond_27

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_27

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    move-result v7

    if-eqz v7, :cond_27

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_26

    if-nez v6, :cond_26

    const/4 v6, 0x1

    goto :goto_14

    :cond_26
    const/4 v6, 0x0

    :goto_14
    iget-object v7, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v6}, Lcom/android/server/wm/TaskOrganizerController;->resetStashedFreeform(Lcom/android/server/wm/Task;Z)V

    :cond_27
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_29

    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v7, :cond_28

    iget-boolean v6, v6, Lcom/android/server/wm/ActivityRecord;->mNoDisplay:Z

    if-eqz v6, :cond_29

    :cond_28
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    :cond_29
    iget v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    const/16 v22, 0x1

    and-int/lit8 v6, v6, 0x1

    const-string/jumbo v7, "intentActivityFound"

    if-eqz v6, :cond_2c

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-nez v2, :cond_2b

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_TASKS_enabled:[Z

    const/4 v10, 0x0

    aget-boolean v2, v2, v10

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0xa2fdae6a8ccd9L

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, v5, v10, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2a
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    :cond_2b
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetRootTaskIfNeeded()V

    const/4 v11, 0x1

    return v11

    :cond_2c
    const/4 v11, 0x1

    if-eqz v2, :cond_2d

    invoke-virtual {v2, v11, v11}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_15

    :cond_2d
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v4, v11, v11}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v2, :cond_2e

    iget v9, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v10, 0x200000

    and-int/2addr v9, v10

    if-eqz v9, :cond_2e

    const/4 v9, 0x1

    goto :goto_16

    :cond_2e
    const/4 v9, 0x0

    :goto_16
    if-eqz v9, :cond_2f

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v10, v6, v11}, Lcom/android/server/wm/Task;->resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    :cond_2f
    iget v10, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v11, 0x10008000

    and-int v13, v10, v11

    const/4 v14, 0x3

    if-ne v13, v11, :cond_30

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lcom/android/server/wm/Task;->performClearTaskForReuse(Z)V

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v9, 0x0

    invoke-virtual {v4, v2, v9, v9}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    move/from16 p3, v14

    goto/16 :goto_1d

    :cond_30
    const/high16 v11, 0x4000000

    and-int v13, v10, v11

    if-nez v13, :cond_31

    const/high16 v13, 0x80000

    and-int/2addr v13, v10

    if-eqz v13, :cond_32

    const/high16 v13, 0x8000000

    and-int/2addr v13, v10

    if-nez v13, :cond_32

    :cond_31
    :goto_17
    move/from16 p3, v14

    const/4 v11, 0x1

    goto/16 :goto_1b

    :cond_32
    iget v13, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq v14, v13, :cond_31

    const/4 v15, 0x2

    if-eq v15, v13, :cond_31

    const/4 v15, 0x4

    if-ne v15, v13, :cond_33

    goto :goto_17

    :cond_33
    and-int/2addr v11, v10

    if-nez v11, :cond_3b

    iget-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v11, :cond_3b

    const/high16 v11, 0x20000

    and-int/2addr v10, v11

    if-eqz v10, :cond_3b

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    new-instance v9, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;

    const/4 v10, 0x3

    invoke-direct {v9, v10}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;-><init>(I)V

    const-class v10, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9, v10, v6, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    if-eqz v6, :cond_3a

    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/16 v24, 0x2

    aget-boolean v9, v9, v24

    if-eqz v9, :cond_34

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v15}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    move/from16 p3, v14

    const-wide v14, 0x59276a74a9683a61L    # 3.02327783715042E121

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v11, v14, v15, v10, v9}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_18

    :cond_34
    move/from16 p3, v14

    :goto_18
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v9

    if-eq v9, v2, :cond_37

    iget-boolean v10, v9, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-eqz v10, :cond_35

    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_35

    iput-boolean v11, v9, Lcom/android/server/wm/TaskFragment;->mClearedForReorderActivityToFront:Z

    :cond_35
    invoke-virtual {v6, v2, v5}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    iget-boolean v5, v9, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-eqz v5, :cond_36

    iget-object v5, v2, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v5, v5, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onActivityReparentedToTask(Lcom/android/server/wm/ActivityRecord;)V

    :cond_36
    :goto_19
    const/4 v5, 0x1

    goto :goto_1a

    :cond_37
    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowContainer;->getDistanceFromTop(Lcom/android/server/wm/WindowContainer;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v2, v5, v6, v10}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowContainer;->getDistanceFromTop(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    if-eq v5, v9, :cond_38

    goto :goto_19

    :cond_38
    const/4 v5, 0x0

    :goto_1a
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    if-eqz v5, :cond_39

    iput-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_39
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    invoke-virtual {v0, v6, v3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    goto/16 :goto_1d

    :cond_3a
    move/from16 p3, v14

    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_1d

    :cond_3b
    move/from16 p3, v14

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v10, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-ne v4, v5, :cond_3c

    goto/16 :goto_1d

    :cond_3c
    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v9, 0x20000000

    and-int/2addr v5, v9

    if-nez v5, :cond_3d

    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v11, 0x1

    if-ne v11, v5, :cond_3f

    :cond_3d
    iget-object v5, v6, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v5, :cond_3f

    iget-boolean v5, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v5, :cond_3f

    iget-object v5, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v5, :cond_3f

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v9, v9}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    :cond_3e
    invoke-virtual {v0, v6, v3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    goto/16 :goto_1d

    :cond_3f
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v6, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-static {v6, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_40

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_40

    iget-object v3, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_40
    iget-object v3, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_41

    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_1d

    :cond_41
    const/4 v11, 0x1

    if-nez v2, :cond_42

    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_1d

    :cond_42
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v3, :cond_4a

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_4a

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->isActivityEmbeddedPlaceholder()Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eqz v3, :cond_4a

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_4a

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_1d

    :cond_43
    const/4 v11, 0x1

    if-nez v9, :cond_44

    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_1d

    :cond_44
    iget-boolean v2, v4, Lcom/android/server/wm/Task;->rootWasReset:Z

    if-nez v2, :cond_4a

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v9, 0x0

    invoke-virtual {v4, v2, v9, v9}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    goto :goto_1d

    :goto_1b
    new-array v2, v11, [I

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v5, v10, v2}, Lcom/android/server/wm/Task;->performClearTop(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_47

    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v6, :cond_47

    const/4 v10, 0x0

    aget v2, v2, v10

    if-lez v2, :cond_45

    iput-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_45
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9, v9}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    :cond_46
    invoke-virtual {v0, v5, v3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    goto :goto_1d

    :cond_47
    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v5, :cond_48

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_48

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-eqz v2, :cond_48

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    :cond_48
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_4a

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v9, 0x0

    invoke-virtual {v0, v2, v3, v9, v5}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    const/16 v22, 0x1

    xor-int/lit8 v3, v3, 0x1

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_49

    const/4 v5, 0x1

    goto :goto_1c

    :cond_49
    const/4 v5, 0x0

    :goto_1c
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/Task;ZZ)V

    :cond_4a
    :goto_1d
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v2, :cond_52

    iget-object v1, v12, Lcom/android/server/wm/ActivityTaskSupervisor;->mBalController:Lcom/android/server/wm/BackgroundActivityStartController;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iget v6, v0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    iget v7, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget v0, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v8, 0x10000000

    and-int v9, v7, v8

    if-ne v9, v8, :cond_4b

    const/4 v11, 0x2

    if-ne v0, v11, :cond_4c

    :cond_4b
    :goto_1e
    const/4 v10, 0x0

    goto/16 :goto_20

    :cond_4c
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v8

    new-instance v9, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda20;

    invoke-direct {v9, v8, v5, v6}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda20;-><init>(III)V

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_4b

    invoke-virtual {v9, v8}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda20;->test(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4d

    goto :goto_1e

    :cond_4d
    const/4 v11, 0x1

    new-array v10, v11, [I

    invoke-static {v5}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldRestrictActivitySwitch(I)Z

    move-result v11

    new-instance v12, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v8, v5, v12}, Lcom/android/server/wm/BackgroundActivityStartController;->checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v12

    const-string v13, "ActivityTaskManager"

    if-eqz v11, :cond_4f

    iget-boolean v14, v12, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    if-eqz v14, :cond_4f

    invoke-virtual {v4, v9}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-nez v9, :cond_4e

    move-object v9, v3

    :cond_4e
    invoke-virtual {v4, v9, v7, v10}, Lcom/android/server/wm/Task;->performClearTop(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;

    const/4 v7, 0x0

    aget v9, v10, v7

    if-lez v9, :cond_4f

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "Cleared top n: "

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v14, v10, v7

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " activities from task t: "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " not matching top uid: "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v5, v13}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_4f
    invoke-static {v5}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldShowToast(I)Z

    move-result v5

    if-eqz v5, :cond_4b

    if-eqz v11, :cond_50

    const/4 v7, 0x0

    aget v5, v10, v7

    if-lez v5, :cond_4b

    :cond_50
    if-eqz v11, :cond_51

    const-string/jumbo v5, "Top activities cleared by "

    goto :goto_1f

    :cond_51
    const-string/jumbo v5, "Top activities would be cleared by "

    :goto_1f
    const-string/jumbo v7, "go/android-asm"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/wm/BackgroundActivityStartController;->showToast(Ljava/lang/String;)V

    iget-object v12, v12, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    move v7, v0

    move-object v0, v1

    const-string v1, "Clear Top"

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v8

    move v8, v11

    const/4 v11, 0x0

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController;->getDebugInfoForActivitySecurity(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;IIZZZZLcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :goto_20
    return v10

    :cond_52
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_53

    move-object v1, v2

    :cond_53
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_54

    const/4 v11, 0x1

    invoke-virtual {v4, v11, v11}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :cond_54
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_55

    if-eq v1, v2, :cond_55

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    iput v2, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    :cond_55
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-eqz v2, :cond_56

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    goto :goto_21

    :cond_56
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_57

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v9}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    :cond_57
    :goto_21
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetRootTaskIfNeeded()V

    iget-object v2, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveDreamComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_58

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v2

    if-eqz v2, :cond_58

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "recycleTask#turnScreenOnFlag::"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(ILjava/lang/String;)V

    :cond_58
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-eqz v0, :cond_59

    const/16 v24, 0x2

    return v24

    :cond_59
    return p3
.end method

.method public final reset(Z)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDisplayLockAndOccluded:Z

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStarter$Request;->reset()V

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    if-eqz p1, :cond_1

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    const-string/jumbo p0, "setAffordanceTargetTask: null"

    const-string/jumbo p1, "MultiTaskingController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final resolveReusableTask(Z)Lcom/android/server/wm/Task;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v2, -0x1

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_16

    return-object v0

    :cond_0
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x10000000

    and-int/2addr v5, v1

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_1

    const/high16 v5, 0x8000000

    and-int/2addr v1, v5

    if-eqz v1, :cond_4

    :cond_1
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq v7, v1, :cond_4

    if-ne v6, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchTaskIdForAliasManagedTarget()I

    move-result v1

    if-eq v1, v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v9

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v8

    :goto_1
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_5

    move v2, v8

    goto :goto_2

    :cond_5
    move v2, v9

    :goto_2
    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v7, v1, :cond_7

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v1, v2, v9}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_11

    const-string/jumbo v2, "Removes redundant singleInstance"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    :cond_6
    move-object v1, v4

    goto/16 :goto_5

    :cond_7
    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eq v6, v1, :cond_8

    move v1, v8

    goto :goto_3

    :cond_8
    move v1, v9

    :goto_3
    invoke-virtual {v3, v2, v5, v1}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto/16 :goto_5

    :cond_9
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v5

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    sget-object v10, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_TASKS_enabled:[Z

    aget-boolean v11, v10, v9

    if-eqz v11, :cond_a

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    sget-object v11, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    filled-new-array/range {v12 .. v17}, [Ljava/lang/Object;

    move-result-object v12

    const-wide v13, 0x36e3a4f36cb337fdL    # 2.7527582584529757E-44

    const/16 v15, 0xc00

    invoke-static {v11, v13, v14, v15, v12}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_a
    iget-object v11, v3, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iput v5, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mActivityType:I

    iput-object v6, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mTaskAffinity:Ljava/lang/String;

    iput-object v7, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    iput-object v1, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    iput-object v4, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object v4, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    move/from16 v5, p1

    iput-boolean v5, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIncludeLaunchedFromBubble:Z

    if-eqz v2, :cond_c

    invoke-virtual {v11, v2}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->process(Lcom/android/server/wm/WindowContainer;)V

    iget-object v5, v3, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v6, v5, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_b

    move-object v1, v6

    goto/16 :goto_5

    :cond_b
    iget-object v5, v5, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_c

    goto :goto_4

    :cond_c
    move-object v5, v4

    :goto_4
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v7, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;

    invoke-direct {v7, v3, v2, v6}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;-><init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/TaskDisplayArea;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v3, v7}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_d

    move-object v1, v2

    goto :goto_5

    :cond_d
    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v2}, Lcom/android/internal/protolog/WmProtoLogGroups;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_e

    if-nez v5, :cond_e

    aget-boolean v6, v10, v9

    if-eqz v6, :cond_e

    const-wide v6, 0x27428b51d2773e63L

    invoke-static {v2, v6, v7, v9, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_e
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSPERF_ACTIVE_APP_ADCP_ENABLE:Z

    if-eqz v2, :cond_10

    if-nez v5, :cond_10

    iget-object v2, v3, Lcom/android/server/wm/RootWindowContainer;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    if-nez v2, :cond_f

    iget-object v2, v3, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "PkgPredictorService"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ipm/SecIpmManager;

    iput-object v2, v3, Lcom/android/server/wm/RootWindowContainer;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    :cond_f
    iget-object v2, v3, Lcom/android/server/wm/RootWindowContainer;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    if-eqz v2, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "mSecIpmManager Preload "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, " dex files"

    const-string/jumbo v10, "[secipm]"

    invoke-static {v2, v6, v7, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v3, Lcom/android/server/wm/RootWindowContainer;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v1, v3}, Lcom/samsung/android/ipm/SecIpmManager;->dexFilePreload(ILjava/lang/String;Ljava/lang/String;)V

    :cond_10
    move-object v1, v5

    :cond_11
    :goto_5
    if-eqz v1, :cond_12

    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_12

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v8, v9}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    move-object v1, v4

    :cond_12
    if-eqz v1, :cond_14

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v2, v3, :cond_14

    move-object v1, v4

    :cond_14
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v2, :cond_15

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eqz v2, :cond_15

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->isActivityEmbeddedPlaceholder()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    :cond_15
    if-eqz v1, :cond_16

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    return-object v0

    :cond_16
    return-object v4
.end method

.method public final resolveToHeavyWeightSwitcherIfNeeded()I
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    move/from16 v17, v2

    goto/16 :goto_3

    :cond_1
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v5, :cond_3

    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v4, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_4

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_4
    move v5, v4

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to find app for caller "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") when starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    invoke-static {v0}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    const/16 v0, -0x5e

    return v0

    :goto_1
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v6, v4, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    const/4 v7, 0x1

    new-array v14, v7, [Landroid/content/Intent;

    iget-object v8, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    aput-object v8, v14, v2

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v15

    const/4 v13, 0x0

    move v4, v7

    const/4 v7, 0x0

    move v8, v4

    const/4 v4, 0x2

    const-string/jumbo v11, "android"

    const/4 v12, 0x0

    const/4 v10, 0x0

    move v9, v8

    const/high16 v8, 0x50000000

    move/from16 v16, v9

    const/4 v9, 0x0

    move/from16 v2, v16

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(IIIIILandroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    if-ltz v5, :cond_6

    const-string/jumbo v5, "has_result"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    new-instance v5, Landroid/content/IntentSender;

    invoke-direct {v5, v3}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string/jumbo v3, "intent"

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    iget-object v1, v1, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "cur_app"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    const-string/jumbo v3, "cur_task"

    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_2
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "new_app"

    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-class v1, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "android"

    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iput v4, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget v7, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    iget v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget v6, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget v8, v1, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    invoke-static {v2, v6, v8}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v9

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v10, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_8

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_8
    iput-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_9

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-virtual {v0, v3, v2}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/16 v17, 0x0

    return v17

    :cond_9
    const/16 v17, 0x0

    :goto_3
    return v17
.end method

.method public final resumeTargetRootTaskIfNeeded()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible$1()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/RootWindowContainer;->updateUserRootTask(ILcom/android/server/wm/Task;)V

    return-void
.end method

.method public final setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;II)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move/from16 v10, p5

    move-object/from16 v5, p6

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    const/4 v12, 0x1

    if-eqz v1, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v12, v0, Lcom/android/server/wm/ActivityStarter;->mIsFreeformLaunching:Z

    goto :goto_0

    :cond_0
    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mIsFreeformLaunching:Z

    :goto_0
    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iput-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget v1, v4, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    move/from16 v1, p10

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    iput-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v13, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v13

    :goto_1
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move/from16 v1, p9

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    iget-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v14}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v15, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    move-object/from16 v2, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_2

    move v3, v12

    goto :goto_2

    :cond_2
    move v3, v11

    :goto_2
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, v6, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :goto_3
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    iget v1, v4, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v3, 0x3

    if-ne v3, v1, :cond_4

    move v7, v12

    goto :goto_4

    :cond_4
    move v7, v11

    :goto_4
    const/4 v8, 0x2

    if-ne v8, v1, :cond_5

    move v1, v12

    goto :goto_5

    :cond_5
    move v1, v11

    :goto_5
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const/high16 v14, 0x80000

    and-int v16, v9, v14

    move/from16 p7, v14

    const/4 v14, 0x4

    const-string v11, "ActivityTaskManager"

    const v17, -0x8080001

    if-eqz v16, :cond_8

    if-nez v7, :cond_6

    if-eqz v1, :cond_8

    :cond_6
    const-string v1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v11, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_6
    and-int v9, v9, v17

    goto :goto_7

    :cond_8
    iget-object v1, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eq v1, v12, :cond_a

    if-eq v1, v8, :cond_a

    if-eq v1, v3, :cond_9

    goto :goto_7

    :cond_9
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v1, v14, :cond_7

    if-eqz v16, :cond_b

    goto :goto_6

    :cond_a
    or-int v9, v9, p7

    :cond_b
    :goto_7
    iput v9, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-boolean v1, v4, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_d

    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq v8, v1, :cond_d

    if-ne v3, v1, :cond_c

    goto :goto_8

    :cond_c
    and-int v1, v9, p7

    if-eqz v1, :cond_d

    move v1, v12

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v1, 0x0

    :goto_9
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/high16 v7, 0x10000000

    if-ne v1, v14, :cond_e

    or-int v1, v9, v7

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    :cond_e
    iget-object v1, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v9, :cond_f

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v1, v7

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    :cond_f
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_10

    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v7

    if-eqz v1, :cond_10

    const-string v1, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v18, -0x1

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v20, v1

    move-object/from16 v19, v3

    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v25}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v13, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    :cond_10
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int v3, v1, p7

    if-eqz v3, :cond_11

    iget-object v3, v4, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v3, :cond_11

    or-int/2addr v1, v7

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    :cond_11
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int v3, v1, v7

    if-eqz v3, :cond_13

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v3, :cond_12

    iget-object v3, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-ne v3, v8, :cond_13

    :cond_12
    const/high16 v3, 0x8000000

    or-int/2addr v1, v3

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    :cond_13
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isLaunchAdjacent()Z

    move-result v1

    if-eqz v1, :cond_14

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-nez v1, :cond_14

    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    :cond_14
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x40000

    and-int/2addr v1, v3

    if-nez v1, :cond_15

    move v1, v12

    goto :goto_a

    :cond_15
    const/4 v1, 0x0

    :goto_a
    iput-boolean v1, v15, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result v1

    if-nez v1, :cond_16

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Can\'t resume non-current user r="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    if-eqz v1, :cond_18

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_17

    goto :goto_b

    :cond_17
    iput-boolean v12, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    goto :goto_c

    :cond_18
    :goto_b
    iput-boolean v12, v4, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    :goto_c
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, -0x1

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    if-eq v1, v3, :cond_19

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    move-result v1

    if-eqz v1, :cond_19

    iput-boolean v12, v4, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    invoke-virtual {v4, v12}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->canTaskOverlayResume()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    iput v8, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    goto :goto_d

    :cond_19
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    iput v8, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    :cond_1a
    :goto_d
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    iget-object v1, v15, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v9, v9, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v9, v9, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v9}, Lcom/android/server/wm/KeyguardController;->isKeyguardOccluded(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDisplayLockAndOccluded:Z

    iget-boolean v9, v0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    if-eqz v9, :cond_1b

    if-eqz v1, :cond_1b

    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    iput v8, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    :cond_1b
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-nez p4, :cond_1d

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1c

    move-object v1, v13

    goto :goto_e

    :cond_1c
    iget-object v9, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v9, v9, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragment;

    :goto_e
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v9

    if-eqz v9, :cond_1e

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v15, "Can not start activity in TaskFragment in PIP: "

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v13

    goto :goto_f

    :cond_1d
    move-object/from16 v1, p4

    :cond_1e
    :goto_f
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v9, :cond_21

    if-eqz v1, :cond_21

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->isActivityEmbeddedPlaceholder()Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    if-eqz v9, :cond_1f

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v15

    if-eqz v15, :cond_1f

    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v15

    if-eqz v15, :cond_1f

    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v15

    move/from16 p7, v14

    new-instance v14, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v14, v3}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v15, v14}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_20

    if-eq v3, v9, :cond_20

    iput v8, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    goto :goto_10

    :cond_1f
    move/from16 p7, v14

    :cond_20
    :goto_10
    iput-boolean v12, v1, Lcom/android/server/wm/TaskFragment;->mIsPlaceholderTaskFragment:Z

    goto :goto_11

    :cond_21
    move/from16 p7, v14

    :goto_11
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartAssistantActivity()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3, v13}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    goto :goto_12

    :cond_22
    move/from16 p7, v14

    move-object/from16 v1, p4

    :cond_23
    :goto_12
    iget v3, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v9, 0x1000000

    and-int/2addr v3, v9

    if-eqz v3, :cond_24

    move-object v3, v5

    goto :goto_13

    :cond_24
    move-object v3, v13

    :goto_13
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_25

    iget-boolean v3, v2, Lcom/android/server/wm/Task;->inRecents:Z

    if-nez v3, :cond_25

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Starting activity in task not in recents: "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    :cond_25
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_28

    iget-object v3, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v2, Lcom/android/server/wm/Task;->mRequiredDisplayCategory:Ljava/lang/String;

    if-eqz v9, :cond_26

    iget-object v14, v3, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_28

    :cond_26
    iget-object v2, v2, Lcom/android/server/wm/Task;->mRequiredDisplayCategory:Ljava/lang/String;

    if-nez v2, :cond_27

    iget-object v2, v3, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    if-nez v2, :cond_27

    goto :goto_14

    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Starting activity in task with different display category: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    :cond_28
    :goto_14
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    iput v10, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/lit8 v1, v10, 0x1

    if-eqz v1, :cond_2b

    if-nez v5, :cond_29

    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_29

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_15

    :cond_29
    move-object v1, v5

    :goto_15
    if-eqz v1, :cond_2a

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    :cond_2a
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    :cond_2b
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2c

    move v1, v12

    goto :goto_16

    :cond_2c
    const/4 v1, 0x0

    :goto_16
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_2d

    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isBackgroundActivityStartsEnabled()Z

    move-result v1

    if-nez v1, :cond_2d

    iput v8, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    :cond_2d
    iget-object v1, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_31

    iget-object v1, v6, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v2

    if-eqz v2, :cond_30

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v3, v9}, [Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    if-eqz v3, :cond_2e

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isMultiSplitActive()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    const/4 v3, 0x0

    :goto_17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_31

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v9

    if-eqz v9, :cond_2f

    const/4 v10, 0x0

    invoke-virtual {v9, v12, v10}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    if-eqz v11, :cond_2f

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v9

    iget v9, v9, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v10, v9, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_30
    const/4 v10, 0x0

    invoke-virtual {v1, v12, v10}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {v1, v12, v10}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_31

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v1, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_31
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v2, 0x10001000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3d

    if-eqz v5, :cond_3d

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    if-ne v1, v12, :cond_3d

    iget-object v1, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_3d

    invoke-virtual {v1, v12}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v1

    if-eqz v1, :cond_3d

    if-eqz p2, :cond_35

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->hasValidLaunchAdjacentExt()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->hasValidHorizontalSplitLayoutWithAdjacentFlag()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->launchToTopSideWithAdjacentFlag()Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v3, 0x5

    goto :goto_18

    :cond_32
    const/4 v3, 0x3

    goto :goto_18

    :cond_33
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->launchToRightSideWithAdjacentFlag()Z

    move-result v1

    if-eqz v1, :cond_34

    move v3, v8

    goto :goto_18

    :cond_34
    move/from16 v3, p7

    :goto_18
    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;

    invoke-direct {v2}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;-><init>()V

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setSplitScreenCreateModeForLaunchAdjacent(I)V

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskOrganizerController;->onSplitLayoutChangeRequested(Landroid/os/Bundle;)V

    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iput-boolean v12, v1, Lcom/android/server/wm/MultiTaskingController;->mDeferEnsureConfig:Z

    goto :goto_1b

    :cond_35
    iget-object v1, v6, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v1

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_LAUNCH_ADJACENT:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_3a

    if-eq v1, v3, :cond_37

    const/16 v2, 0x20

    if-ne v1, v2, :cond_36

    goto :goto_19

    :cond_36
    const/4 v2, 0x0

    goto :goto_1a

    :cond_37
    :goto_19
    move v2, v12

    :goto_1a
    if-eqz v2, :cond_38

    if-eq v1, v3, :cond_39

    :cond_38
    if-nez v2, :cond_3c

    :cond_39
    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iput-boolean v12, v1, Lcom/android/server/wm/MultiTaskingController;->mDeferEnsureConfig:Z

    goto :goto_1b

    :cond_3a
    const/16 v2, 0x10

    if-eq v1, v2, :cond_3b

    if-ne v1, v3, :cond_3c

    :cond_3b
    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iput-boolean v12, v1, Lcom/android/server/wm/MultiTaskingController;->mDeferEnsureConfig:Z

    :cond_3c
    :goto_1b
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_LAUNCH_ADJACENT_SA_LOGGING:Z

    if-eqz v1, :cond_3d

    const-string v1, "1000"

    const-string v2, "From application"

    invoke-static {v1, v2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    if-eqz v5, :cond_3e

    iget-object v13, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    :cond_3e
    if-eqz v13, :cond_44

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {v13}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget-boolean v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isActivityStackTransparent:Z

    if-eqz v2, :cond_43

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    if-lez v1, :cond_43

    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MultiTaskingController;->hasPermissionForSystemModalPolicy(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_40

    :cond_3f
    const/4 v12, 0x0

    goto :goto_1c

    :cond_40
    iget-object v3, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/MultiTaskingController;->hasPermissionForSystemModalPolicy(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->canApplySystemModalPolicyForNonResizable()Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_1c

    :cond_41
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_42

    if-eqz v3, :cond_42

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    goto :goto_1c

    :cond_42
    if-eqz v1, :cond_3f

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->canApplySystemModalPolicyForNonResizable()Z

    move-result v1

    if-eqz v1, :cond_3f

    :goto_1c
    iput-boolean v12, v13, Lcom/android/server/wm/Task;->mIsAllowedFullscreenInDesktop:Z

    goto :goto_1e

    :cond_43
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->canApplySystemModalPolicyForNonResizable()Z

    move-result v1

    if-eqz v1, :cond_46

    goto :goto_1d

    :cond_44
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->canApplySystemModalPolicyForNonResizable()Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_46

    iget-object v2, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v1

    if-eqz v1, :cond_46

    :goto_1d
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-nez v1, :cond_45

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    :cond_45
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v12}, Landroid/app/ActivityOptions;->setNeedApplySystemModalPolicy(Z)V

    :cond_46
    :goto_1e
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mIsSystemModalTaskTop:Z

    return-void
.end method

.method public final setLaunchedAppsCoverLauncher(Lcom/android/server/wm/Task;Z)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mIsLaunchedFromAppsCoverLauncher:Z

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->isLaunchedFromAppsCoverLauncher:Z

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput-boolean p2, p1, Lcom/android/server/wm/Task;->mIsLaunchedFromAppsCoverLauncher:Z

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-boolean p2, p0, Landroid/content/pm/ActivityInfo;->isLaunchedFromAppsCoverLauncher:Z

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final setLaunchedMultistarCoverLauncher(Lcom/android/server/wm/Task;Z)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mIsLaunchedFromMultistarCoverLauncher:Z

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->isLaunchedFromMultistarCoverLauncher:Z

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput-boolean p2, p1, Lcom/android/server/wm/Task;->mIsLaunchedFromMultistarCoverLauncher:Z

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-boolean p2, p0, Landroid/content/pm/ActivityInfo;->isLaunchedFromMultistarCoverLauncher:Z

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public startActivityInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;I)I
    .locals 28

    move-object/from16 v11, p9

    iget-boolean v0, v11, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mBasedOnRealCaller:Z

    iget v1, v11, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    const/4 v12, 0x5

    if-eqz v0, :cond_0

    const/16 v0, 0x7f

    if-eq v1, v0, :cond_0

    move v9, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v5, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v10, p11

    goto :goto_0

    :cond_0
    move v9, v1

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v5, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v10, p11

    move-object/from16 v1, p1

    :goto_0
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/ActivityStarter;->setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;II)V

    move-object v9, v0

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v10, 0x0

    const/4 v13, 0x1

    const/high16 v2, 0x10000000

    const/4 v14, 0x2

    const/4 v15, 0x3

    const/4 v3, 0x0

    if-nez v0, :cond_8

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v4, v9, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v4, v13, v3}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v0, :cond_7

    iget v5, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq v15, v5, :cond_1

    if-ne v14, v5, :cond_2

    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iget-object v7, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v4, :cond_5

    :cond_2
    if-nez v4, :cond_3

    iget v4, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v5, -0x18082001

    and-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v5, 0x18082000

    and-int/2addr v0, v5

    or-int/2addr v0, v4

    iput v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v4, v9, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iget-object v4, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v4, v10, v10}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    iput-boolean v13, v9, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_1

    :cond_3
    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    iput-boolean v3, v9, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_1

    :cond_4
    iput-boolean v13, v9, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_1

    :cond_5
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caller with mInTask "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has root "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but target is singleInstance/Task"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Trying to launch singleInstance/Task "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " into different task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching into task without base intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iput-object v10, v9, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    iput-boolean v13, v9, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    :cond_a
    :goto_1
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    const-string v4, "ActivityTaskManager"

    if-nez v0, :cond_e

    iget-object v5, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v5, :cond_b

    iget v5, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v5, v2

    if-nez v5, :cond_e

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v9, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v2

    iput v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_2

    :cond_b
    iget v0, v5, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-ne v0, v15, :cond_c

    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v2

    iput v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_2

    :cond_c
    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq v15, v0, :cond_d

    if-ne v14, v0, :cond_e

    :cond_d
    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v2

    iput v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    :cond_e
    :goto_2
    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v5, v0, 0x1000

    if-eqz v5, :cond_14

    and-int/2addr v0, v2

    if-eqz v0, :cond_f

    move v0, v13

    goto :goto_3

    :cond_f
    move v0, v3

    :goto_3
    const-string/jumbo v5, "WindowManager"

    if-eqz v0, :cond_10

    iget-object v7, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v7, :cond_12

    :cond_10
    if-nez v0, :cond_11

    const-string v0, "Launch adjacent ignored due to missing NEW_TASK"

    goto :goto_4

    :cond_11
    const-string v0, "Launch adjacent ignored due to missing source activity"

    :goto_4
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    :cond_12
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_14

    :goto_5
    if-eqz v0, :cond_14

    iget-boolean v7, v0, Lcom/android/server/wm/Task;->mLaunchAdjacentDisabled:Z

    if-eqz v7, :cond_13

    const-string v0, "Launch adjacent blocked by source task or ancestor"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_6

    :cond_13
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_5

    :cond_14
    :goto_6
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    const/4 v5, 0x4

    const/4 v7, -0x1

    if-ne v0, v5, :cond_15

    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x8000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_16

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->isStartedFromWindowTypeLauncher()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_7

    :cond_15
    move/from16 p3, v2

    goto/16 :goto_e

    :cond_16
    :goto_7
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v0

    :cond_17
    iget-object v8, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v8

    if-eqz v8, :cond_18

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v16

    if-eqz v16, :cond_18

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v8

    goto :goto_8

    :cond_18
    move v8, v3

    goto :goto_8

    :cond_19
    move v0, v3

    move v8, v0

    :goto_8
    move/from16 p3, v2

    if-nez v8, :cond_1a

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v8

    :cond_1a
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiInstanceController:Lcom/android/server/wm/MultiInstanceController;

    move/from16 p4, v5

    iget-object v5, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v14, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getLaunchTaskIdForSingleInstancePerTask()I

    move-result v15

    if-eq v15, v7, :cond_1b

    goto/16 :goto_e

    :cond_1b
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v2, Lcom/android/server/wm/MultiInstanceController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/MultiInstanceController;->mTmpFindTaskResult:Lcom/android/server/wm/MultiInstanceController$FindTasksResult;

    invoke-virtual {v2, v5, v7, v15}, Lcom/android/server/wm/MultiInstanceController$FindTasksResult;->process(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)V

    new-instance v2, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda0;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/android/server/wm/MultiInstanceController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    if-nez v14, :cond_1c

    if-nez v0, :cond_1c

    if-eqz v8, :cond_1d

    :cond_1c
    if-eqz v14, :cond_1f

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_1f

    if-nez v0, :cond_1f

    if-nez v8, :cond_1f

    :cond_1d
    move v0, v3

    :goto_9
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_1e

    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    goto/16 :goto_e

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1f
    if-eqz v14, :cond_20

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_20

    goto/16 :goto_e

    :cond_20
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v7, v3

    move-object v3, v10

    move-object v14, v3

    :goto_a
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_27

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Task;

    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v17

    if-eqz v17, :cond_21

    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v13

    if-ne v13, v8, :cond_21

    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v2, v10, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    goto/16 :goto_e

    :cond_21
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v13

    if-eqz v13, :cond_23

    invoke-virtual {v10}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v13

    if-nez v13, :cond_22

    if-nez v3, :cond_26

    move-object v3, v10

    goto :goto_b

    :cond_22
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v2, v10, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    goto/16 :goto_e

    :cond_23
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v13

    if-nez v13, :cond_24

    if-nez v14, :cond_26

    move-object v14, v10

    goto :goto_b

    :cond_24
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v13

    if-eqz v13, :cond_25

    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_25
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    :goto_b
    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x1

    goto :goto_a

    :cond_27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    if-nez v0, :cond_28

    if-eqz v14, :cond_28

    goto :goto_c

    :cond_28
    move-object v14, v0

    :goto_c
    if-eqz v14, :cond_29

    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v2, v14, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    goto :goto_e

    :cond_29
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v12, :cond_2b

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_d

    :cond_2a
    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int v0, v0, p4

    iput v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_e

    :cond_2b
    :goto_d
    if-eqz v3, :cond_2c

    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v2, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    :cond_2c
    :goto_e
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v2, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_2d
    if-ge v3, v2, :cond_2e

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v5

    if-ne v5, v12, :cond_2d

    const/4 v10, 0x1

    goto :goto_f

    :cond_2e
    const/4 v10, 0x0

    :goto_f
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object v0

    move-object v13, v0

    goto :goto_10

    :cond_2f
    const/4 v13, 0x0

    :goto_10
    if-eqz v6, :cond_30

    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->mLaunchedFromBubble:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_11

    :cond_30
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v9, v0}, Lcom/android/server/wm/ActivityStarter;->resolveReusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v14

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v2, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iget v0, v0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-static {v2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->isFreezeTaskListReorderingSet()Z

    move-result v0

    if-nez v0, :cond_31

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    :cond_31
    if-eqz v14, :cond_32

    move-object v0, v14

    goto :goto_13

    :cond_32
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_33

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_33

    iget-boolean v2, v9, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v2, :cond_33

    iget v2, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int v2, v2, p3

    if-eqz v2, :cond_33

    :goto_12
    const/4 v0, 0x0

    goto :goto_13

    :cond_33
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_34

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_13

    :cond_34
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iget-object v5, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v9, v0, v2, v3, v5}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    :cond_35
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    goto :goto_13

    :cond_36
    iget v2, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v5, 0x0

    invoke-virtual {v9, v0, v2, v5, v3}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_37

    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_13

    :cond_37
    const-string/jumbo v2, "computeTargetTask"

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    goto :goto_12

    :goto_13
    if-nez v0, :cond_38

    const/4 v15, 0x1

    goto :goto_14

    :cond_38
    const/4 v15, 0x0

    :goto_14
    iput-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_39

    if-ge v2, v12, :cond_39

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    goto :goto_15

    :cond_39
    const/4 v3, 0x0

    :goto_15
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    if-eqz v2, :cond_3a

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_3a

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->setLaunchedFromHome()V

    :cond_3a
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_3b

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isActivatableDeskRoot()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_3b

    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/android/server/wm/ActivityStarter;->mIsSystemModalTaskTop:Z

    :cond_3b
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    if-eqz v12, :cond_3e

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v2}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3e

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v2

    if-eqz v2, :cond_3e

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v2

    if-eqz v2, :cond_3e

    :cond_3c
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-nez v2, :cond_3d

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    iput-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    :cond_3d
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    :cond_3e
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    move-object v1, v0

    move-object v0, v2

    move-object v2, v5

    iget-object v5, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v6, v9, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    const/4 v7, 0x3

    move-object/from16 v3, p1

    move/from16 v16, v10

    move/from16 v18, v12

    const/4 v12, -0x1

    move-object v10, v4

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    move-object v0, v1

    move-object v1, v3

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v3, v2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v3, :cond_3f

    goto :goto_16

    :cond_3f
    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    :goto_16
    iput-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v2, v2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v2, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    invoke-virtual {v9, v1, v15, v0}, Lcom/android/server/wm/ActivityStarter;->isAllowedToStart(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)I

    move-result v2

    if-eqz v2, :cond_41

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_40

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v20, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    move-object/from16 v19, v0

    move/from16 v22, v1

    move-object/from16 v21, v3

    invoke-virtual/range {v19 .. v27}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    :cond_40
    return v2

    :cond_41
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v2, :cond_42

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityStartLocked(Lcom/android/server/wm/ActivityRecord;)V

    :cond_42
    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTreeWeight()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-lez v2, :cond_43

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Remove "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " because it has contained too many activities or windows (abort starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from uid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "bulky-task"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    const/16 v0, 0x66

    return v0

    :cond_43
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v2

    if-nez v2, :cond_47

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_44

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget v2, v2, Lcom/android/server/wm/WindowProcessController;->mUid:I

    move/from16 v3, p11

    if-eq v2, v3, :cond_47

    :cond_44
    if-eqz v13, :cond_47

    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_45

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_17

    :cond_45
    const/4 v2, 0x0

    :goto_17
    if-eqz v2, :cond_46

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isStageRootTask()Z

    move-result v2

    if-eqz v2, :cond_46

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startActivityInner: allow transient-hide task to reparenting, tid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2, v3, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_18

    :cond_46
    const/4 v2, 0x2

    iput v2, v9, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    :cond_47
    :goto_18
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v2

    if-nez v2, :cond_48

    iget-boolean v2, v11, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mOnlyCreatorAllows:Z

    if-eqz v2, :cond_48

    const/4 v2, 0x1

    iput v2, v9, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    :cond_48
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v2

    iput-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    :cond_49
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_4b

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v2

    if-eq v2, v12, :cond_4b

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getForceLaunchOverTargetTask()Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    goto :goto_19

    :cond_4a
    const/4 v3, 0x0

    :goto_19
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    :cond_4b
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    if-eqz v2, :cond_4f

    if-eqz v14, :cond_4f

    if-eqz p6, :cond_4f

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Landroid/app/ActivityOptions;->isResumedAffordanceAnimationRequested()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-ne v2, v3, :cond_4f

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FREEFORM_STASH:Z

    if-eqz v2, :cond_4c

    invoke-virtual {v14}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    move-result v2

    if-eqz v2, :cond_4c

    goto :goto_1b

    :cond_4c
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {v14}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_4f

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    goto :goto_1a

    :cond_4d
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {v14}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v2

    if-eqz v2, :cond_4e

    goto :goto_1a

    :cond_4e
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v2, :cond_4f

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->isSplitEmbedded()Z

    move-result v2

    if-eqz v2, :cond_4f

    :goto_1a
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v3, v2, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    if-eq v3, v14, :cond_4f

    iput-object v14, v2, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setAffordanceTargetTask: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "MultiTaskingController"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    :goto_1b
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/DexController;->showWarningToastIfNeeded(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/Task;)V

    :cond_50
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v3, v3, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v4, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v8, v9, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    if-eqz v14, :cond_51

    iget-object v2, v2, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRemoteAppController:Lcom/android/server/wm/RemoteAppController;

    const-string/jumbo v7, "reusedTask"

    move-object v3, v14

    move-object v14, v0

    move-object v0, v2

    move-object v2, v3

    move-object/from16 v3, p2

    move-object/from16 v6, p10

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/RemoteAppController;->interceptStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Lcom/android/server/wm/ActivityStarter$Request;)Z

    move-result v0

    move-object v7, v1

    move-object v1, v2

    move-object v6, v3

    move v3, v0

    goto :goto_1c

    :cond_51
    move-object/from16 v6, p2

    move-object v7, v1

    move-object v1, v14

    move-object v14, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    :goto_1c
    if-eqz v3, :cond_52

    goto/16 :goto_23

    :cond_52
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    if-nez v0, :cond_53

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_LARGE_COVER_SCREEN_SA_LOGGING:Z

    if-eqz v0, :cond_56

    :cond_53
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_54

    const/4 v0, 0x0

    goto :goto_1d

    :cond_54
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_1d
    if-eqz v0, :cond_55

    iget-object v2, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    :cond_55
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "W005"

    invoke-static {v2, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isDeferSyncSplitTransitionApps(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAiKeyAppLaunch(Z)V

    :cond_57
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v0, :cond_5a

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->hasChildTaskInSideStage()Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionType()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_5a

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_5a

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v2

    if-nez v2, :cond_5a

    invoke-virtual {v7, v3}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v3, v2, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v3, v3, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    iget-object v2, v2, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_58

    const/4 v2, 0x0

    goto :goto_1e

    :cond_58
    new-instance v4, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const-class v5, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    :goto_1e
    if-eqz v2, :cond_5a

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v3, v2, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v3, v3, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    iget-object v2, v2, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_59

    const/4 v2, 0x0

    goto :goto_1f

    :cond_59
    new-instance v4, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const-class v5, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    :goto_1f
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v2, :cond_5a

    iget-object v2, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v2

    const/high16 v3, 0x40000

    invoke-virtual {v2, v3}, Lcom/android/server/wm/Transition;->addFlag(I)V

    :cond_5a
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isLaunchAdjacent()Z

    move-result v2

    if-eqz v2, :cond_5b

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_5b

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_5b

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/server/wm/ActivityRecord;->mWillLaunchAdjacentInSameTask:Z

    goto :goto_20

    :cond_5b
    const/4 v5, 0x1

    :goto_20
    if-eqz v15, :cond_5c

    const/4 v2, 0x0

    goto :goto_21

    :cond_5c
    invoke-virtual {v14, v5, v5}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    :goto_21
    if-eqz v2, :cond_60

    iget v3, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v5, 0x3

    if-ne v5, v3, :cond_5d

    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_5d

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-ne v14, v3, :cond_5d

    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v9, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v5, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v5, v8}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_5d

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eq v4, v14, :cond_5d

    const-string/jumbo v4, "Removes redundant singleInstance"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    :cond_5d
    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v3}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v3

    if-eqz v3, :cond_5f

    if-eqz v14, :cond_5f

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v3

    if-eqz v3, :cond_5f

    iget-boolean v3, v9, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    if-nez v3, :cond_5e

    goto :goto_22

    :cond_5e
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->isExternalDisplayDesktop()Z

    move-result v3

    if-eqz v3, :cond_5f

    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v3, :cond_5f

    iget-object v4, v3, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v4, :cond_5f

    invoke-virtual {v3, v14}, Lcom/android/server/wm/TaskDisplayArea;->positionTaskBehindHome(Lcom/android/server/wm/Task;)V

    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v3

    iput-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "moveRecentsTaskForTransientLaunchIfNeeded: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    :goto_22
    invoke-virtual {v9, v2}, Lcom/android/server/wm/ActivityStarter;->recordTransientLaunchIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    move-object/from16 p7, p10

    move-object/from16 p6, v1

    move-object/from16 p5, v2

    move-object/from16 p3, v9

    move-object/from16 p8, v11

    move-object/from16 p4, v14

    invoke-virtual/range {p3 .. p8}, Lcom/android/server/wm/ActivityStarter;->recycleTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)I

    move-result v1

    move-object/from16 v2, p7

    if-eqz v1, :cond_61

    return v1

    :cond_60
    move-object/from16 v2, p10

    const/4 v5, 0x1

    iput-boolean v5, v9, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    :cond_61
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_62

    invoke-virtual {v9, v1, v2}, Lcom/android/server/wm/ActivityStarter;->deliverToCurrentTopIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I

    move-result v3

    if-eqz v3, :cond_62

    return v3

    :cond_62
    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V

    if-eqz v15, :cond_63

    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v4, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v11, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v11, v11, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v11, v11, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v12, v9, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    move/from16 p3, v0

    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    iget-object v3, v3, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRemoteAppController:Lcom/android/server/wm/RemoteAppController;

    const/16 v21, 0x0

    const-string/jumbo v26, "newTask"

    move-object/from16 v25, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v8

    move/from16 v24, v11

    move-object/from16 v27, v12

    invoke-virtual/range {v19 .. v27}, Lcom/android/server/wm/RemoteAppController;->interceptStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Lcom/android/server/wm/ActivityStarter$Request;)Z

    move-result v0

    if-eqz v0, :cond_64

    :goto_23
    const/16 v0, 0xa

    return v0

    :cond_63
    move/from16 p3, v0

    :cond_64
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_65

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v4, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v9, v0, v3, v14, v4}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    :cond_65
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->isForceLaunchTaskOnHome()Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mLaunchTaskOnHome:Z

    :cond_66
    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_67

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v3

    if-nez v3, :cond_67

    iget-object v0, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_67

    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    const-string/jumbo v3, "adjacent"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_67
    if-eqz v15, :cond_6f

    iget-boolean v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_68

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_68

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_24

    :cond_68
    const/4 v0, 0x0

    :goto_24
    iget-boolean v3, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v3, :cond_69

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v3

    if-nez v3, :cond_69

    const/16 v24, 0x1

    goto :goto_25

    :cond_69
    const/16 v24, 0x0

    :goto_25
    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v8, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v10, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v9, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v12, v9, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    const/16 p3, 0x1

    iget-object v5, v9, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v4, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    move-object/from16 p5, v1

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object/from16 v27, v1

    move-object/from16 v19, v3

    move-object/from16 v26, v4

    move-object/from16 v23, v5

    move-object/from16 v25, v8

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    invoke-virtual/range {v19 .. v27}, Lcom/android/server/wm/Task;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v1

    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v3, :cond_6a

    goto :goto_26

    :cond_6a
    invoke-virtual {v3, v1}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    :goto_26
    const-string/jumbo v3, "setTaskFromReuseOrCreateNewTask"

    invoke-virtual {v9, v3, v1}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_TASKS_enabled:[Z

    aget-boolean v1, v1, p3

    if-eqz v1, :cond_6b

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v10, -0x1e660f29cd5dc2c7L    # -1.458816009883848E162

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v4, v10, v11, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_6b
    if-eqz v0, :cond_6c

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    :cond_6c
    if-eqz v6, :cond_6d

    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-nez v0, :cond_6e

    :cond_6d
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_71

    const-string/jumbo v1, "com.samsung.android.multiwindow.activity.alias.targetactivity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_71

    :cond_6e
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mIsAliasManaged:Z

    goto :goto_28

    :cond_6f
    move-object/from16 p5, v1

    iget-boolean v0, v9, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v0, :cond_71

    const-string/jumbo v0, "adding to task"

    invoke-virtual {v9, v0, v14}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v1, 0x10008000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_70

    const/4 v3, 0x1

    goto :goto_27

    :cond_70
    const/4 v3, 0x0

    :goto_27
    if-eqz p3, :cond_71

    if-eqz v3, :cond_71

    if-eqz v6, :cond_71

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_71

    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_71

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startActivityInner: ensure visible earlier for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {v14, v5, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_71
    :goto_28
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v9, v0}, Lcom/android/server/wm/ActivityStarter;->recordTransientLaunchIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    iget-boolean v0, v9, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_73

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const-string/jumbo v1, "reuseOrNewTask"

    invoke-virtual {v0, v1, v14}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v0

    if-nez v0, :cond_73

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveDreamComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_73

    if-nez v16, :cond_73

    const/4 v5, 0x1

    iput-boolean v5, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    iput-boolean v5, v7, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    goto :goto_29

    :cond_72
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStarter;->logPIOnlyCreatorAllowsBAL()V

    :cond_73
    :goto_29
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v1

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_74

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_74

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-wide/16 v3, 0x0

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v23

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v22

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    const/16 v24, 0x1

    const/16 v25, 0x0

    move/from16 v20, v2

    move-object/from16 v21, v3

    invoke-virtual/range {v19 .. v25}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    goto :goto_2a

    :cond_74
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mShareIdentity:Z

    if-eqz v0, :cond_75

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v22

    iget v1, v7, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    const/16 v24, 0x1

    const/16 v25, 0x0

    move/from16 v23, v1

    move/from16 v20, v2

    move-object/from16 v21, v3

    invoke-virtual/range {v19 .. v25}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    :cond_75
    :goto_2a
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v15, :cond_76

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v1, v8, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7534

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_76
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/16 v1, 0x7535

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStarter;->getStartInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v8, v2}, Lcom/android/server/wm/ActivityRecord;->logStartActivity(ILcom/android/server/wm/Task;Ljava/lang/String;)V

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v0

    const/4 v12, -0x1

    if-eq v0, v12, :cond_77

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v0, v12, v3}, Landroid/content/Intent;->semSetLaunchOverTargetTask(IZ)V

    :cond_77
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz v10, :cond_78

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v0, :cond_78

    iget-boolean v1, v9, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v1, :cond_78

    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AppLockPolicy;->isActivityInExceptionList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    const/4 v11, 0x1

    goto :goto_2b

    :cond_78
    const/4 v11, 0x0

    :goto_2b
    if-eqz v10, :cond_79

    if-eqz v11, :cond_79

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysOnTop()Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.applock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_79

    const/4 v5, 0x1

    iput-boolean v5, v7, Lcom/android/server/wm/ActivityRecord;->mIsAppLockExceptionActivity:Z

    :cond_79
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    if-eq v8, v13, :cond_7a

    const/4 v4, 0x1

    goto :goto_2c

    :cond_7a
    const/4 v4, 0x0

    :goto_2c
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object/from16 v2, p5

    move v3, v15

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    iget-boolean v0, v9, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_81

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v1

    if-eqz v1, :cond_80

    if-eqz v0, :cond_7b

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v1, :cond_7b

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, v0, :cond_7b

    goto :goto_2e

    :cond_7b
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_7c

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v1, v0, :cond_7d

    goto :goto_2d

    :cond_7c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_7d
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v0

    if-nez v0, :cond_7e

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->moveToFront()V

    goto :goto_2d

    :cond_7e
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStarter;->logPIOnlyCreatorAllowsBAL()V

    :cond_7f
    :goto_2d
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-boolean v5, v9, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    goto :goto_2f

    :cond_80
    :goto_2e
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    :cond_81
    :goto_2f
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->updateUserRootTask(ILcom/android/server/wm/Task;)V

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v4, 0x0

    invoke-virtual {v0, v8, v1, v2, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_82

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->isLaunchIntoPip()Z

    move-result v0

    if-eqz v0, :cond_82

    if-eqz v6, :cond_82

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v0, v1, :cond_82

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const-string/jumbo v1, "launch-into-pip"

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_82

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1, v6}, Lcom/android/server/wm/RootWindowContainer;->moveActivityToPinnedRootTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    :cond_82
    if-eqz v18, :cond_83

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    move-result v0

    if-nez v0, :cond_87

    :cond_83
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_84

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getNeedApplySystemModalPolicy()Z

    move-result v0

    if-nez v0, :cond_87

    :cond_84
    if-eqz v6, :cond_85

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_85

    const/4 v0, 0x1

    goto :goto_30

    :cond_85
    const/4 v0, 0x0

    :goto_30
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_86

    move v13, v5

    goto :goto_31

    :cond_86
    const/4 v13, 0x0

    :goto_31
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v1

    if-eqz v0, :cond_87

    if-eqz v3, :cond_87

    if-eqz v13, :cond_87

    if-nez v1, :cond_87

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v0}, Lcom/android/server/wm/FreeformController;->showNotSupportMultiWindowToast()V

    :cond_87
    if-eqz v10, :cond_88

    if-eqz v11, :cond_88

    const/4 v3, 0x0

    iput-boolean v3, v7, Lcom/android/server/wm/ActivityRecord;->mIsAppLockExceptionActivity:Z

    goto :goto_32

    :cond_88
    const/4 v3, 0x0

    :goto_32
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getBackgroundActivityLaunchController()Lcom/android/server/wm/BackgroundActivityStartController;

    move-result-object v0

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->onNewActivityLaunched(Lcom/android/server/wm/ActivityRecord;)V

    return v3
.end method

.method public final startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;ILcom/android/server/wm/Transition;Z)I
    .locals 10

    move-object/from16 v7, p12

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    const/4 v8, 0x0

    iput-object v8, p1, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    const/4 v9, 0x0

    if-eqz p13, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->freezeScreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v7, v0, v9}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {v7, v0}, Lcom/android/server/wm/Transition;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_2

    :cond_1
    if-eqz p13, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    const-string/jumbo v1, "com.sec.intent.extra.FREEZE_TASK_DISPLAY_AREA"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    :goto_1
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TransitionController;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    :cond_3
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x20

    const/16 v4, -0x60

    :try_start_1
    const-string/jumbo v0, "startActivityInner"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual/range {p0 .. p11}, Lcom/android/server/wm/ActivityStarter;->startActivityInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;I)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    move/from16 v5, p13

    :goto_3
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;IZLandroid/window/RemoteTransition;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/Task;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_e

    :catchall_1
    move-exception v0

    move-object p2, v0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-object p3, v0

    :try_start_3
    const-string v0, "ActivityTaskManager"

    const-string v3, "Exception on startActivityInner"

    invoke-static {v0, v3, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    move-object/from16 v7, p12

    move/from16 v5, p13

    goto :goto_3

    :goto_4
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APPS_CUTOUT:Z

    if-nez v0, :cond_4

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT:Z

    if-eqz v1, :cond_b

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_b

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    if-eqz p3, :cond_b

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT:Z

    if-eqz v1, :cond_5

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_5

    const-string/jumbo v7, "com.sec.intent.extra.IS_LAUNCHED_FROM_MULTISTAR_COVER_LAUNCHER"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0, p3, v2}, Lcom/android/server/wm/ActivityStarter;->setLaunchedMultistarCoverLauncher(Lcom/android/server/wm/Task;Z)V

    goto :goto_7

    :cond_5
    if-eqz v0, :cond_6

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_6

    const-string/jumbo v7, "com.sec.intent.extra.IS_LAUNCHED_FROM_APPS_COVER_LAUNCHER"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0, p3, v9}, Lcom/android/server/wm/ActivityStarter;->setLaunchedMultistarCoverLauncher(Lcom/android/server/wm/Task;Z)V

    invoke-virtual {p0, p3, v2}, Lcom/android/server/wm/ActivityStarter;->setLaunchedAppsCoverLauncher(Lcom/android/server/wm/Task;Z)V

    goto :goto_7

    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v1, :cond_8

    if-eqz p2, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v8

    :cond_8
    :goto_5
    if-eqz v0, :cond_a

    if-eqz p2, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v8

    :cond_a
    :goto_6
    invoke-virtual {p0, p3, v9}, Lcom/android/server/wm/ActivityStarter;->setLaunchedMultistarCoverLauncher(Lcom/android/server/wm/Task;Z)V

    invoke-virtual {p0, p3, v9}, Lcom/android/server/wm/ActivityStarter;->setLaunchedAppsCoverLauncher(Lcom/android/server/wm/Task;Z)V

    :cond_b
    :goto_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    const-string/jumbo v1, "adjacent"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p0, v4, p1, p3}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    if-eqz p1, :cond_11

    if-eqz p3, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_11

    if-eqz p2, :cond_d

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p2, :cond_d

    iget p2, p2, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_8

    :cond_d
    const/4 p2, -0x1

    :goto_8
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget-object p1, p1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v0, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_a

    :cond_e
    :goto_9
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_b

    :goto_a
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_f
    :goto_b
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContentDispatcher:Lcom/android/server/pm/ContentDispatcher;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget p3, p3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_11

    iget-object v3, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_11

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_11

    if-nez v2, :cond_10

    goto :goto_c

    :cond_10
    invoke-virtual {v2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/pm/ContentDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;

    move-object/from16 p7, p0

    move-object p5, p1

    move/from16 p11, p2

    move/from16 p9, p3

    move/from16 p8, v0

    move-object/from16 p10, v1

    move-object/from16 p6, v2

    move-object p4, v5

    invoke-direct/range {p4 .. p11}, Lcom/android/server/pm/ContentDispatcher$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/ContentDispatcher;Landroid/content/Intent;Ljava/lang/String;IILjava/lang/String;I)V

    move-object p0, p4

    invoke-virtual {v3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    :goto_c
    return v4

    :goto_d
    :try_start_7
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    move-object/from16 v7, p12

    move/from16 v5, p13

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;IZLandroid/window/RemoteTransition;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/Task;

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_e
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw p1
.end method

.method public final useSpegDisplayIfNeeded()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    :cond_2
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    iget-boolean v3, v0, Lcom/android/server/pm/SpegService;->mIsSpegInOpeartion:Z

    if-eqz v3, :cond_6

    iget v3, v0, Lcom/android/server/pm/SpegService;->mSpegUid:I

    if-ne v1, v3, :cond_6

    if-ne v1, v3, :cond_3

    iget v2, v0, Lcom/android/server/pm/SpegService;->mSpegDisplayId:I

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v3, v3, v3, v4}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v3

    if-eq v3, v2, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    new-instance v4, Lcom/android/server/wm/SafeActivityOptions;

    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    if-nez v5, :cond_5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    :cond_5
    invoke-direct {v4, v0, v5, v1}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;II)V

    iput-object v4, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    const-string/jumbo v0, "Reuse hidden display #"

    const-string v1, " for "

    invoke-static {v2, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "SPEG"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method

.method public final waitResultIfNeeded(Landroid/app/WaitResult;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)I
    .locals 3

    iget v0, p1, Landroid/app/WaitResult;->result:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v2, p2, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p2, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p1, Landroid/app/WaitResult;->result:I

    if-eq v2, v1, :cond_1

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;-><init>(Landroid/app/WaitResult;Landroid/content/ComponentName;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)V

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :try_start_0
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_0
    if-nez v0, :cond_3

    iget p0, p1, Landroid/app/WaitResult;->result:I

    if-ne p0, v1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    iput-boolean p0, p1, Landroid/app/WaitResult;->timeout:Z

    iget-object p0, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object p0, p1, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Landroid/app/WaitResult;->totalTime:J

    return v0
.end method
