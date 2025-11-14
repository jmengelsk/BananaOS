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
    .registers 2

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
    .registers 7

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
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_10

    if-eq p2, v0, :cond_9

    goto :goto_10

    :cond_9
    iget p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivity(ILcom/android/server/wm/ActivityRecord;)I

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x3

    return p0
.end method

.method public static computeResolveFilterUid(III)I
    .registers 4

    const/16 v0, -0x2710

    if-eq p2, v0, :cond_5

    return p2

    :cond_5
    if-ltz p0, :cond_8

    return p0

    :cond_8
    return p1
.end method

.method public static getExternalResult(I)I
    .registers 2

    const/16 v0, 0x66

    if-eq p0, v0, :cond_5

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static getIntentRedirectPreventedLogMessage(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    packed-switch p0, :pswitch_data_3e

    const-string/jumbo v0, "Unknown error code: "

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1c

    :pswitch_b  #0x6
    const-string p0, "INTENT_REDIRECT_ABORT_PERMISSION_POLICY_START_ACTIVITY (Creator PermissionPolicyService.checkStartActivity, abort)"

    goto :goto_1c

    :pswitch_e  #0x5
    const-string p0, "INTENT_REDIRECT_ABORT_INTENT_FIREWALL_START_ACTIVITY (Creator IntentFirewall.checkStartActivity, abort)"

    goto :goto_1c

    :pswitch_11  #0x4
    const-string p0, "INTENT_REDIRECT_ABORT_START_ANY_ACTIVITY_PERMISSION (Creator checkStartAnyActivityPermission, abort)"

    goto :goto_1c

    :pswitch_14  #0x3
    const-string p0, "INTENT_REDIRECT_ABORT_START_ANY_ACTIVITY_PERMISSION (Creator checkStartAnyActivityPermission, throw exception)"

    goto :goto_1c

    :pswitch_17  #0x2
    const-string p0, "INTENT_REDIRECT_EXCEPTION_GRANT_URI_PERMISSION (Creator URI permission grant throw exception.)"

    goto :goto_1c

    :pswitch_1a  #0x1
    const-string p0, "INTENT_REDIRECT_EXCEPTION_MISSING_OR_INVALID_TOKEN (Unparceled intent does not have a creator token set, throw exception.)"

    :goto_1c
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

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_1a  #00000001
        :pswitch_17  #00000002
        :pswitch_14  #00000003
        :pswitch_11  #00000004
        :pswitch_e  #00000005
        :pswitch_b  #00000006
    .end packed-switch
.end method

.method public static logAndAbortForIntentRedirect(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Z
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/wm/ActivityStarter;->getIntentRedirectPreventedLogMessage(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "ActivityTaskManager"

    invoke-static {p3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x40d

    invoke-static {p1, p2, p4, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    const-wide/32 p0, 0x1c40476

    invoke-static {p0, p1, p4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static logAndThrowExceptionForIntentRedirect(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;Ljava/lang/SecurityException;)V
    .registers 7

    invoke-static/range {p0 .. p5}, Lcom/android/server/wm/ActivityStarter;->getIntentRedirectPreventedLogMessage(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "ActivityTaskManager"

    invoke-static {p3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x40d

    invoke-static {p3, p2, p4, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    const-wide/32 p2, 0x1c40476

    invoke-static {p2, p3, p4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-nez p0, :cond_18

    return-void

    :cond_18
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static shouldWriteStartActivityDebugLog(I)Z
    .registers 3

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v1, 0x2

    if-eq p0, v1, :cond_c

    const/4 v1, 0x3

    if-eq p0, v1, :cond_c

    return v0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final addOrReparentStartingActivity(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_c3

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, v2, p2}, Lcom/android/server/wm/ActivityStarter;->canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v0

    if-nez v0, :cond_17

    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, p2, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mRequestedLaunchingTaskFragmentToken:Landroid/os/IBinder;

    goto/16 :goto_12b

    :cond_17
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eq v0, v1, :cond_7a

    const/4 v2, 0x2

    const-string v3, "Cannot embed "

    if-eq v0, v2, :cond_51

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2c

    const-string/jumbo v2, "Unhandled embed result:"

    invoke-static {v0, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2a
    move v2, v1

    goto :goto_97

    :cond_2c
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

    goto :goto_97

    :cond_51
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

    goto :goto_2a

    :cond_7a
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

    goto :goto_2a

    :goto_97
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->isOrganized()Z

    move-result v3

    if-eqz v3, :cond_bc

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v4, v6, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    if-eqz v2, :cond_b0

    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    :goto_ae
    move-object v8, v2

    goto :goto_b6

    :cond_b0
    new-instance v2, Landroid/os/OperationCanceledException;

    invoke-direct {v2, v0}, Landroid/os/OperationCanceledException;-><init>(Ljava/lang/String;)V

    goto :goto_ae

    :goto_b6
    const/4 v7, 0x2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto/16 :goto_12b

    :cond_bc
    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12b

    :cond_c3
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-nez v0, :cond_11c

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    if-eqz v0, :cond_d1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    goto :goto_d2

    :cond_d1
    move-object v0, v2

    :goto_d2
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_d7
    if-ltz v3, :cond_e8

    invoke-virtual {p2, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_ea

    iget-boolean v4, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_e8

    goto :goto_119

    :cond_e8
    :goto_e8
    move-object v0, v2

    goto :goto_11c

    :cond_ea
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_119

    iget-boolean v5, v4, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    if-eqz v5, :cond_f5

    goto :goto_119

    :cond_f5
    new-instance v5, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_102

    goto :goto_119

    :cond_102
    iget-boolean v5, v4, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-eqz v5, :cond_10b

    iget-boolean v6, v4, Lcom/android/server/wm/TaskFragment;->mIsolatedNav:Z

    if-eqz v6, :cond_10b

    goto :goto_e8

    :cond_10b
    if-eqz v0, :cond_110

    if-ne v0, v4, :cond_110

    goto :goto_117

    :cond_110
    if-eqz v5, :cond_117

    iget-boolean v5, v4, Lcom/android/server/wm/TaskFragment;->mPinned:Z

    if-eqz v5, :cond_117

    goto :goto_119

    :cond_117
    :goto_117
    move-object v0, v4

    goto :goto_11c

    :cond_119
    :goto_119
    add-int/lit8 v3, v3, -0x1

    goto :goto_d7

    :cond_11c
    :goto_11c
    if-eqz v0, :cond_12b

    iget-boolean v2, v0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-eqz v2, :cond_12b

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, v2, p2}, Lcom/android/server/wm/ActivityStarter;->canEmbedActivity(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v2

    if-nez v2, :cond_12b

    move-object p2, v0

    :cond_12b
    :goto_12b
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_146

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-ne v0, p2, :cond_13c

    goto :goto_146

    :cond_13c
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    return-void

    :cond_146
    :goto_146
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz p1, :cond_162

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-nez p1, :cond_162

    iget-boolean p1, p2, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-eqz p1, :cond_162

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_15e

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq p1, v0, :cond_162

    :cond_15e
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mIsActivityReparentToEmbeddedTask:Z

    :cond_162
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRootTask:Lcom/android/server/wm/Task;

    if-eqz p1, :cond_167

    goto :goto_16c

    :cond_167
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    :goto_16c
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const p1, 0x7fffffff

    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/TaskFragment;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    return-void
.end method

.method public final avoidMoveToFront()Z
    .registers 1

    iget p0, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final canMoveTaskToBottomTask(ILcom/android/server/wm/Task;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p2, :cond_4

    goto :goto_47

    :cond_4
    iget v1, p2, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v1, p1, :cond_9

    goto :goto_47

    :cond_9
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_27

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    if-eqz v1, :cond_47

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    if-nez v1, :cond_47

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-eqz p1, :cond_47

    :cond_27
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object p1, p1, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    if-eqz p1, :cond_36

    if-ne p1, p2, :cond_36

    return v0

    :cond_36
    const/4 p1, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_48

    iget p2, p2, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    if-eqz p0, :cond_48

    :cond_47
    :goto_47
    return v0

    :cond_48
    return p1
.end method

.method public final checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILcom/android/server/wm/SafeActivityOptions;Landroid/content/ComponentName;Ljava/lang/String;)I
    .registers 26

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

    if-eqz v2, :cond_28

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    goto :goto_29

    :cond_28
    move v6, v5

    :goto_29
    const-string v8, "ActivityTaskManager"

    if-eqz p5, :cond_1fa

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1fa

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "com.android.settings"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string/jumbo v13, "OutOfMemoryError is happened"

    const-string/jumbo v15, "restriction_policy"

    const/16 v16, -0x65

    const-string v10, "ActivityManager"

    if-eqz v12, :cond_c9

    :try_start_4a
    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v12

    if-eqz v12, :cond_12f

    invoke-interface {v12, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v15

    if-nez v15, :cond_12f

    const-string v15, ":android:show_fragment"

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_69

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    goto :goto_69

    :catch_67
    move-exception v0

    goto :goto_c5

    :cond_69
    :goto_69
    sget-object v14, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    array-length v5, v14

    const/4 v7, 0x0

    :goto_6d
    if-ge v7, v5, :cond_8a

    aget-object v9, v14, v7

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_87

    const/high16 v5, 0x800000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    filled-new-array/range {p6 .. p6}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x6e

    invoke-static {v6, v5, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    goto/16 :goto_12f

    :cond_87
    add-int/lit8 v7, v7, 0x1

    goto :goto_6d

    :cond_8a
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

    if-eqz v0, :cond_b7

    const/16 v0, 0x70

    goto :goto_b9

    :cond_b7
    const/16 v0, 0x6f

    :goto_b9
    filled-new-array/range {p6 .. p6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v0, v5}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_c0} :catch_12f
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_c0} :catch_67
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4a .. :try_end_c0} :catch_c1

    return v16

    :catch_c1
    invoke-static {v10, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12f

    :goto_c5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12f

    :cond_c9
    sget-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_112

    sget-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_da

    goto :goto_112

    :cond_da
    const-string/jumbo v0, "com.vlingo.midas"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ec

    const-string/jumbo v0, "com.samsung.voiceserviceplatform"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12f

    :cond_ec
    :try_start_ec
    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_12f

    const/4 v5, 0x1

    invoke-interface {v0, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSVoiceAllowedAsUser(ZI)Z

    move-result v7

    if-eqz v7, :cond_106

    invoke-interface {v0, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v0

    if-nez v0, :cond_12f

    goto :goto_106

    :catch_104
    move-exception v0

    goto :goto_10e

    :cond_106
    :goto_106
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_109
    .catch Landroid/os/RemoteException; {:try_start_ec .. :try_end_109} :catch_12f
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_109} :catch_104
    .catch Ljava/lang/OutOfMemoryError; {:try_start_ec .. :try_end_109} :catch_10a

    return v16

    :catch_10a
    invoke-static {v10, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12f

    :goto_10e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12f

    :cond_112
    :goto_112
    :try_start_112
    const-string/jumbo v0, "kioskmode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_12f

    const/4 v5, 0x1

    invoke-interface {v0, v5, v6}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isTaskManagerAllowedAsUser(ZI)Z

    move-result v0

    if-nez v0, :cond_12f

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_129
    .catch Landroid/os/RemoteException; {:try_start_112 .. :try_end_129} :catch_12f
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_129} :catch_12a

    return v16

    :catch_12a
    const-string v0, "Is edm running?"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_12f
    :cond_12f
    :goto_12f
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1fc

    :try_start_135
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    if-nez v0, :cond_143

    const-class v0, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    :cond_143
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mPasswordPolicy:Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    if-nez v5, :cond_153

    const-class v5, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    iput-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    :cond_153
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mSecurityPolicy:Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;

    if-eqz v0, :cond_161

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/samsung/android/knox/localservice/PasswordPolicyInternal;->isChangeRequestedAsUser(I)I

    move-result v0

    if-gtz v0, :cond_169

    goto :goto_161

    :catch_15f
    move-exception v0

    goto :goto_1bd

    :cond_161
    :goto_161
    if-eqz v5, :cond_1c0

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/localservice/SecurityPolicyInternal;->isDodBannerVisibleAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_1c0

    :cond_169
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1c0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1c0

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

    :goto_190
    if-ge v10, v9, :cond_1aa

    aget-object v13, v7, v10

    if-eqz v0, :cond_19d

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19d

    const/4 v12, 0x1

    :cond_19d
    if-eqz v5, :cond_1a7

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a7

    const/4 v0, 0x1

    goto :goto_1ab

    :cond_1a7
    add-int/lit8 v10, v10, 0x1

    goto :goto_190

    :cond_1aa
    const/4 v0, 0x0

    :goto_1ab
    if-eqz v12, :cond_1c0

    if-nez v0, :cond_1c0

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x70

    invoke-static {v6, v5, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_1bb
    .catch Landroid/os/RemoteException; {:try_start_135 .. :try_end_1bb} :catch_1c0
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_1bb} :catch_15f

    goto/16 :goto_28d

    :goto_1bd
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_1c0
    :cond_1c0
    :try_start_1c0
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    if-nez v0, :cond_1ce

    const-class v0, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    :cond_1ce
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    if-eqz v0, :cond_1fc

    const/4 v5, 0x1

    invoke-virtual {v0, v11, v5, v6}, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_1fc

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
    :try_end_1f3
    .catch Ljava/lang/Exception; {:try_start_1c0 .. :try_end_1f3} :catch_1f5

    goto/16 :goto_28d

    :catch_1f5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1fc

    :cond_1fa
    const/16 v16, -0x65

    :cond_1fc
    :goto_1fc
    if-eqz v3, :cond_219

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    move/from16 v5, p3

    if-ne v5, v0, :cond_219

    const/4 v0, 0x0

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3, v0, v0, v0, v5}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v7

    if-eqz v7, :cond_29d

    invoke-virtual {v3, v0, v0, v0, v5}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getStartedByMDMAdmin()Z

    move-result v0

    if-nez v0, :cond_29d

    :cond_219
    if-eqz v2, :cond_29d

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v5

    const/16 v18, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_22f
    if-ltz v5, :cond_243

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayContent;

    new-instance v9, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda60;

    const/4 v10, 0x1

    invoke-direct {v9, v0, v6, v3, v10}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda60;-><init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicReference;I)V

    invoke-virtual {v7, v9}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_22f

    :cond_243
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_29d

    :try_start_24b
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    if-nez v2, :cond_259

    const-class v2, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    iput-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    :cond_259
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter;->mApplicationPolicy:Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;

    if-eqz v1, :cond_290

    invoke-virtual {v1, v0, v6}, Lcom/samsung/android/knox/localservice/ApplicationPolicyInternal;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_290

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

    :goto_28d
    return v16

    :catch_28e
    move-exception v0

    goto :goto_29a

    :cond_290
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v5, 0x6e

    invoke-static {v6, v5, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_299
    .catch Ljava/lang/Exception; {:try_start_24b .. :try_end_299} :catch_28e

    goto :goto_29d

    :goto_29a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_29d
    :goto_29d
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/16 v17, 0x0

    return v17
.end method

.method public final deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V
    .registers 17

    move-object v1, p1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    if-eqz v0, :cond_6

    return-void

    :cond_6
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

    if-eqz v0, :cond_69

    :try_start_47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v5, "LAUNCH_FROM_NOTIFICATION"

    const/4 v9, -0x1

    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v12, :cond_61

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v5, 0x4000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_69

    goto :goto_61

    :catch_5f
    move-exception v0

    goto :goto_64

    :cond_61
    :goto_61
    iput-boolean v12, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchingRequestedFromNotification:Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_63} :catch_5f

    goto :goto_69

    :goto_64
    const-string v5, "Exception while parsing intent but ignorable, was : "

    invoke-static {v0, v5, v13}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    :goto_69
    if-eqz v6, :cond_7d

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

    :cond_7d
    new-instance v4, Lcom/android/internal/content/ReferrerIntent;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->getFilteredReferrer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v3, v0, v11}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result v0

    goto :goto_93

    :cond_8f
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    :goto_93
    const/4 v2, 0x0

    if-eqz v0, :cond_9e

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v0

    if-eqz v0, :cond_9e

    move v0, v12

    goto :goto_9f

    :cond_9e
    move v0, v2

    :goto_9f
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v3, v5, :cond_ab

    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v3, v6, :cond_ab

    if-eqz v0, :cond_e6

    :cond_ab
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_e6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/app/servertransaction/NewIntentItem;

    iget-object v6, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v7, v5, :cond_c2

    move v2, v12

    :cond_c2
    invoke-direct {v3, v6, v0, v2}, Landroid/app/servertransaction/NewIntentItem;-><init>(Landroid/os/IBinder;Ljava/util/List;Z)V

    :try_start_c5
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, v2, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    move-result v0
    :try_end_d1
    .catch Landroid/os/RemoteException; {:try_start_c5 .. :try_end_d1} :catch_d4

    if-eqz v0, :cond_e6

    goto :goto_f6

    :catch_d4
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception thrown sending new intent to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e6
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_f1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    :cond_f1
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f6
    iput-boolean v12, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    return-void
.end method

.method public final deliverToCurrentTopIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I
    .registers 15

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b1

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget v2, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v2, v3, :cond_b1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2

    if-eqz v2, :cond_b1

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-nez v2, :cond_2f

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v3, v2, :cond_b1

    :cond_2f
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-ne v2, v4, :cond_b1

    :cond_3d
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_6c

    iget-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-eqz v4, :cond_6c

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    if-ne v2, v4, :cond_b1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_6c

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v4

    if-eq v2, v4, :cond_6c

    goto :goto_b1

    :cond_6c
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_7c

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    :cond_7c
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_87

    return v3

    :cond_87
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_9f

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

    :cond_9f
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    iget-object p2, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V

    const/4 p0, 0x3

    return p0

    :cond_b1
    :goto_b1
    return v1
.end method

.method public final execute()I
    .registers 35

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

    :try_start_13
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionStarted()V

    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v11, v11, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1a} :catch_89a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_891

    if-eqz v11, :cond_46

    :try_start_1c
    invoke-virtual {v11}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v11

    if-nez v11, :cond_3e

    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v11, v11, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v11, v9}, Landroid/content/Intent;->removeExtendedFlags(I)V

    goto :goto_46

    :catchall_2a
    move-exception v0

    move v4, v8

    move/from16 v22, v9

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    goto/16 :goto_8a3

    :catch_34
    move-exception v0

    move v4, v8

    move/from16 v22, v9

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    goto/16 :goto_8c3

    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "File descriptors passed in Intent"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_46} :catch_34
    .catchall {:try_start_1c .. :try_end_46} :catchall_2a

    :cond_46
    :goto_46
    :try_start_46
    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v11
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_4e} :catch_89a
    .catchall {:try_start_46 .. :try_end_4e} :catchall_891

    :try_start_4e
    iget-object v12, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v12, v12, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    invoke-static {v12}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v13, v13, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I
    :try_end_5a
    .catchall {:try_start_4e .. :try_end_5a} :catchall_87f

    if-ne v13, v8, :cond_6a

    :try_start_5c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_61

    goto :goto_6a

    :catchall_61
    move-exception v0

    move v4, v8

    move/from16 v22, v9

    const/4 v12, 0x0

    const/16 v16, 0x0

    goto/16 :goto_886

    :cond_6a
    :goto_6a
    :try_start_6a
    iget-object v14, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v15, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v15, v15, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v14, v15, v12, v13}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v17
    :try_end_76
    .catchall {:try_start_6a .. :try_end_76} :catchall_87f

    if-eqz v12, :cond_7f

    :try_start_78
    iget-object v13, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_61

    move-object/from16 v16, v13

    goto :goto_81

    :cond_7f
    const/16 v16, 0x0

    :goto_81
    :try_start_81
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN:Z

    if-eqz v13, :cond_cb

    iget-object v13, v1, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v13}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    if-eqz v13, :cond_cb

    iget v13, v13, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v13, v9, :cond_cb

    if-eqz v12, :cond_cb

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v13

    if-eqz v13, :cond_cb

    iget-object v13, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v13, v13, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v13, :cond_cb

    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APPS_CUTOUT:Z

    if-eqz v14, :cond_b7

    const-string/jumbo v14, "com.sec.intent.extra.IS_LAUNCHED_FROM_APPS_COVER_LAUNCHER"

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    iget-boolean v15, v15, Lcom/android/server/wm/Task;->mIsLaunchedFromAppsCoverLauncher:Z

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_b7

    :catchall_b0
    move-exception v0

    move v4, v8

    move/from16 v22, v9

    const/4 v12, 0x0

    goto/16 :goto_886

    :cond_b7
    :goto_b7
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT:Z

    if-eqz v13, :cond_cb

    iget-object v13, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v13, v13, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    const-string/jumbo v14, "com.sec.intent.extra.IS_LAUNCHED_FROM_MULTISTAR_COVER_LAUNCHER"

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/server/wm/Task;->mIsLaunchedFromMultistarCoverLauncher:Z

    invoke-virtual {v13, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_cb
    monitor-exit v11
    :try_end_cc
    .catchall {:try_start_81 .. :try_end_cc} :catchall_b0

    :try_start_cc
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v12, v11, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;
    :try_end_d3
    .catch Ljava/lang/RuntimeException; {:try_start_cc .. :try_end_d3} :catch_87a
    .catchall {:try_start_cc .. :try_end_d3} :catchall_875

    if-eqz v12, :cond_f4

    :try_start_d5
    iget-boolean v13, v11, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_df

    move v12, v9

    goto :goto_e0

    :cond_df
    move v12, v7

    :goto_e0
    or-int/2addr v12, v13

    iput-boolean v12, v11, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z
    :try_end_e3
    .catch Ljava/lang/RuntimeException; {:try_start_d5 .. :try_end_e3} :catch_ec
    .catchall {:try_start_d5 .. :try_end_e3} :catchall_e4

    goto :goto_f4

    :catchall_e4
    move-exception v0

    move v4, v8

    move/from16 v22, v9

    :goto_e8
    const/4 v3, 0x0

    :goto_e9
    const/4 v12, 0x0

    goto/16 :goto_8a3

    :catch_ec
    move-exception v0

    move v4, v8

    move/from16 v22, v9

    :goto_f0
    const/4 v3, 0x0

    :goto_f1
    const/4 v12, 0x0

    goto/16 :goto_8c3

    :cond_f4
    :goto_f4
    :try_start_f4
    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v12, v11, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_f8
    .catch Ljava/lang/RuntimeException; {:try_start_f4 .. :try_end_f8} :catch_87a
    .catchall {:try_start_f4 .. :try_end_f8} :catchall_875

    if-nez v12, :cond_ff

    :try_start_fa
    iget-object v12, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v11, v12}, Lcom/android/server/wm/ActivityStarter$Request;->resolveActivity(Lcom/android/server/wm/ActivityTaskSupervisor;)V
    :try_end_ff
    .catch Ljava/lang/RuntimeException; {:try_start_fa .. :try_end_ff} :catch_ec
    .catchall {:try_start_fa .. :try_end_ff} :catchall_e4

    :cond_ff
    :try_start_ff
    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v11, v11, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;
    :try_end_103
    .catch Ljava/lang/RuntimeException; {:try_start_ff .. :try_end_103} :catch_87a
    .catchall {:try_start_ff .. :try_end_103} :catchall_875

    if-eqz v11, :cond_10c

    :try_start_105
    iget-object v12, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v11, v12}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v11
    :try_end_10b
    .catch Ljava/lang/RuntimeException; {:try_start_105 .. :try_end_10b} :catch_ec
    .catchall {:try_start_105 .. :try_end_10b} :catchall_e4

    goto :goto_10d

    :cond_10c
    const/4 v11, 0x0

    :goto_10d
    const/16 v21, -0x60

    if-eqz v11, :cond_392

    :try_start_111
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->isActiveApplaunch()Z

    move-result v12

    if-eqz v12, :cond_392

    iget-object v12, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v12, v12, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v12, :cond_392

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
    :try_end_131
    .catch Ljava/lang/RuntimeException; {:try_start_111 .. :try_end_131} :catch_195
    .catchall {:try_start_111 .. :try_end_131} :catchall_18f

    if-eqz v14, :cond_1a1

    :try_start_133
    invoke-virtual {v14, v0, v2}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(ILjava/lang/String;)Z

    move-result v15
    :try_end_137
    .catch Ljava/lang/IllegalArgumentException; {:try_start_133 .. :try_end_137} :catch_19b
    .catch Ljava/lang/RuntimeException; {:try_start_133 .. :try_end_137} :catch_195
    .catchall {:try_start_133 .. :try_end_137} :catchall_18f

    move/from16 v22, v9

    :try_start_139
    invoke-virtual {v14, v0, v2}, Landroid/content/pm/PackageManagerInternal;->wasPackageStopped(ILjava/lang/String;)Z

    move-result v9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v14, v10, v2}, Landroid/content/pm/PackageManagerInternal;->isPackageSuspended(ILjava/lang/String;)Z

    move-result v10

    if-eqz v15, :cond_14f

    if-nez v9, :cond_14f

    if-eqz v10, :cond_14c

    goto :goto_14f

    :cond_14c
    :goto_14c
    move/from16 v23, v8

    goto :goto_1a4

    :cond_14f
    :goto_14f
    const-string v14, "ActivityTaskManager"
    :try_end_151
    .catch Ljava/lang/IllegalArgumentException; {:try_start_139 .. :try_end_151} :catch_18b
    .catch Ljava/lang/RuntimeException; {:try_start_139 .. :try_end_151} :catch_187
    .catchall {:try_start_139 .. :try_end_151} :catchall_183

    move/from16 v23, v8

    :try_start_153
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
    :try_end_172
    .catch Ljava/lang/IllegalArgumentException; {:try_start_153 .. :try_end_172} :catch_17f
    .catch Ljava/lang/RuntimeException; {:try_start_153 .. :try_end_172} :catch_17a
    .catchall {:try_start_153 .. :try_end_172} :catchall_175

    move/from16 v6, v21

    goto :goto_1a5

    :catchall_175
    move-exception v0

    :goto_176
    move/from16 v4, v23

    goto/16 :goto_e8

    :catch_17a
    move-exception v0

    :goto_17b
    move/from16 v4, v23

    goto/16 :goto_f0

    :catch_17f
    move-exception v0

    :goto_180
    move v6, v7

    goto/16 :goto_208

    :catchall_183
    move-exception v0

    move/from16 v23, v8

    goto :goto_176

    :catch_187
    move-exception v0

    move/from16 v23, v8

    goto :goto_17b

    :catch_18b
    move-exception v0

    move/from16 v23, v8

    goto :goto_180

    :catchall_18f
    move-exception v0

    move/from16 v23, v8

    move/from16 v22, v9

    goto :goto_176

    :catch_195
    move-exception v0

    move/from16 v23, v8

    move/from16 v22, v9

    goto :goto_17b

    :catch_19b
    move-exception v0

    move/from16 v23, v8

    move/from16 v22, v9

    goto :goto_180

    :cond_1a1
    move/from16 v22, v9

    goto :goto_14c

    :goto_1a4
    move v6, v7

    :goto_1a5
    :try_start_1a5
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v8, v2, v0}, Landroid/app/ActivityManagerInternal;->getIsDataClearedInAms(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c5

    const-string v8, "ActivityTaskManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v6, v21

    goto :goto_1c5

    :catch_1c3
    move-exception v0

    goto :goto_208

    :cond_1c5
    :goto_1c5
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_1d4

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    goto :goto_1d5

    :cond_1d4
    move v0, v7

    :goto_1d5
    const/4 v5, 0x4

    if-ne v0, v5, :cond_1e1

    const-string v0, "ActivityTaskManager"

    const-string v5, "Checking for the Active launch getApplicationEnabledSetting"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v6, v21

    :cond_1e1
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v5

    if-eqz v5, :cond_221

    invoke-virtual {v0, v7, v2}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_221

    const-string v0, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_205
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a5 .. :try_end_205} :catch_1c3
    .catch Ljava/lang/RuntimeException; {:try_start_1a5 .. :try_end_205} :catch_17a
    .catchall {:try_start_1a5 .. :try_end_205} :catchall_175

    move/from16 v6, v21

    goto :goto_221

    :goto_208
    :try_start_208
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
    :try_end_221
    .catch Ljava/lang/RuntimeException; {:try_start_208 .. :try_end_221} :catch_17a
    .catchall {:try_start_208 .. :try_end_221} :catchall_175

    :cond_221
    :goto_221
    :try_start_221
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_229
    .catch Ljava/lang/Exception; {:try_start_221 .. :try_end_229} :catch_2fa
    .catchall {:try_start_221 .. :try_end_229} :catchall_35e

    :try_start_229
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

    if-eqz v0, :cond_260

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    move-result v0

    if-nez v0, :cond_260

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_260

    move/from16 v0, v22

    goto :goto_261

    :catchall_25d
    move-exception v0

    goto/16 :goto_2fc

    :cond_260
    move v0, v7

    :goto_261
    if-nez v6, :cond_2af

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

    :cond_2af
    monitor-exit v2
    :try_end_2b0
    .catchall {:try_start_229 .. :try_end_2b0} :catchall_25d

    :try_start_2b0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2b3
    .catch Ljava/lang/Exception; {:try_start_2b0 .. :try_end_2b3} :catch_2fa
    .catchall {:try_start_2b0 .. :try_end_2b3} :catchall_35e

    :try_start_2b3
    invoke-virtual {v11, v7}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2b9
    .catch Ljava/lang/RuntimeException; {:try_start_2b3 .. :try_end_2b9} :catch_17a
    .catchall {:try_start_2b3 .. :try_end_2b9} :catchall_175

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v13

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_2d1

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_2d2

    :cond_2d1
    const/4 v15, 0x0

    :goto_2d2
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_2e1

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v8

    goto :goto_2e3

    :cond_2e1
    move/from16 v17, v23

    :goto_2e3
    if-eqz v2, :cond_2ea

    :goto_2e5
    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v10

    goto :goto_2ec

    :cond_2ea
    const/16 v19, 0x0

    :goto_2ec
    move-object v12, v0

    check-cast v12, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->notifyActivityLaunchRequestCompleted(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    return v6

    :catch_2fa
    move-exception v0

    goto :goto_301

    :goto_2fc
    :try_start_2fc
    monitor-exit v2
    :try_end_2fd
    .catchall {:try_start_2fc .. :try_end_2fd} :catchall_25d

    :try_start_2fd
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_301
    .catch Ljava/lang/Exception; {:try_start_2fd .. :try_end_301} :catch_2fa
    .catchall {:try_start_2fd .. :try_end_301} :catchall_35e

    :goto_301
    :try_start_301
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActiveLaunching Fail, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_317
    .catchall {:try_start_301 .. :try_end_317} :catchall_35e

    :try_start_317
    invoke-virtual {v11, v7}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_31d
    .catch Ljava/lang/RuntimeException; {:try_start_317 .. :try_end_31d} :catch_17a
    .catchall {:try_start_317 .. :try_end_31d} :catchall_175

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v13

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_335

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_336

    :cond_335
    const/4 v15, 0x0

    :goto_336
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_345

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v8

    goto :goto_347

    :cond_345
    move/from16 v17, v23

    :goto_347
    if-eqz v2, :cond_34e

    :goto_349
    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v10

    goto :goto_350

    :cond_34e
    const/16 v19, 0x0

    :goto_350
    move-object v12, v0

    check-cast v12, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->notifyActivityLaunchRequestCompleted(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    return v21

    :catchall_35e
    :try_start_35e
    invoke-virtual {v11, v7}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_364
    .catch Ljava/lang/RuntimeException; {:try_start_35e .. :try_end_364} :catch_17a
    .catchall {:try_start_35e .. :try_end_364} :catchall_175

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v13

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_37c

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_37d

    :cond_37c
    const/4 v15, 0x0

    :goto_37d
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_38c

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v8

    goto :goto_38e

    :cond_38c
    move/from16 v17, v23

    :goto_38e
    if-eqz v2, :cond_2ea

    goto/16 :goto_2e5

    :cond_392
    move/from16 v23, v8

    move/from16 v22, v9

    if-eqz v11, :cond_4eb

    :try_start_398
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->isMlLaunch()I

    move-result v3

    move/from16 v4, v23

    if-le v3, v4, :cond_4eb

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_4eb

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_3aa
    .catch Ljava/lang/RuntimeException; {:try_start_398 .. :try_end_3aa} :catch_45c
    .catchall {:try_start_398 .. :try_end_3aa} :catchall_457

    :try_start_3aa
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v5
    :try_end_3b2
    .catch Ljava/lang/Exception; {:try_start_3aa .. :try_end_3b2} :catch_463
    .catchall {:try_start_3aa .. :try_end_3b2} :catchall_461

    :try_start_3b2
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
    :try_end_40c
    .catchall {:try_start_3b2 .. :try_end_40c} :catchall_465

    :try_start_40c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_40f
    .catch Ljava/lang/Exception; {:try_start_40c .. :try_end_40f} :catch_463
    .catchall {:try_start_40c .. :try_end_40f} :catchall_461

    const/4 v2, -0x1

    :try_start_410
    invoke-virtual {v11, v2}, Landroid/app/ActivityOptions;->setMlLaunch(I)V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_416
    .catch Ljava/lang/RuntimeException; {:try_start_410 .. :try_end_416} :catch_45c
    .catchall {:try_start_410 .. :try_end_416} :catchall_457

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v13

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_42e

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_42f

    :cond_42e
    const/4 v15, 0x0

    :goto_42f
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_43e

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v8

    goto :goto_440

    :cond_43e
    const/16 v17, -0x1

    :goto_440
    if-eqz v2, :cond_447

    :goto_442
    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v10

    goto :goto_449

    :cond_447
    const/16 v19, 0x0

    :goto_449
    move-object v12, v0

    check-cast v12, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->notifyActivityLaunchRequestCompleted(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    return v7

    :catchall_457
    move-exception v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    goto/16 :goto_e9

    :catch_45c
    move-exception v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    goto/16 :goto_f1

    :catchall_461
    const/4 v2, -0x1

    goto :goto_4b7

    :catch_463
    move-exception v0

    goto :goto_46b

    :catchall_465
    move-exception v0

    :try_start_466
    monitor-exit v5
    :try_end_467
    .catchall {:try_start_466 .. :try_end_467} :catchall_465

    :try_start_467
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_46b
    .catch Ljava/lang/Exception; {:try_start_467 .. :try_end_46b} :catch_463
    .catchall {:try_start_467 .. :try_end_46b} :catchall_461

    :goto_46b
    :try_start_46b
    const-string v2, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[SecIpm] Launching Fail, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_482
    .catchall {:try_start_46b .. :try_end_482} :catchall_461

    const/4 v2, -0x1

    :try_start_483
    invoke-virtual {v11, v2}, Landroid/app/ActivityOptions;->setMlLaunch(I)V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_489
    .catch Ljava/lang/RuntimeException; {:try_start_483 .. :try_end_489} :catch_45c
    .catchall {:try_start_483 .. :try_end_489} :catchall_457

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v13

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_4a1

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_4a2

    :cond_4a1
    const/4 v15, 0x0

    :goto_4a2
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_4b1

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v8

    goto :goto_4b3

    :cond_4b1
    const/16 v17, -0x1

    :goto_4b3
    if-eqz v2, :cond_34e

    goto/16 :goto_349

    :goto_4b7
    :try_start_4b7
    invoke-virtual {v11, v2}, Landroid/app/ActivityOptions;->setMlLaunch(I)V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4bd
    .catch Ljava/lang/RuntimeException; {:try_start_4b7 .. :try_end_4bd} :catch_45c
    .catchall {:try_start_4b7 .. :try_end_4bd} :catchall_457

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v13

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_4d5

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_4d6

    :cond_4d5
    const/4 v15, 0x0

    :goto_4d6
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_4e5

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v8

    goto :goto_4e7

    :cond_4e5
    const/16 v17, -0x1

    :goto_4e7
    if-eqz v2, :cond_447

    goto/16 :goto_442

    :cond_4eb
    :try_start_4eb
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;
    :try_end_4ef
    .catch Ljava/lang/RuntimeException; {:try_start_4eb .. :try_end_4ef} :catch_872
    .catchall {:try_start_4eb .. :try_end_4ef} :catchall_86f

    if-eqz v2, :cond_51b

    :try_start_4f1
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    if-eqz v2, :cond_51b

    if-eqz v3, :cond_51b

    const-string/jumbo v4, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_518

    const-string/jumbo v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_518

    const-string/jumbo v4, "android.intent.action.REBOOT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51b

    :cond_518
    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51b
    .catch Ljava/lang/RuntimeException; {:try_start_4f1 .. :try_end_51b} :catch_45c
    .catchall {:try_start_4f1 .. :try_end_51b} :catchall_457

    :cond_51b
    :try_start_51b
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z
    :try_end_51d
    .catch Ljava/lang/RuntimeException; {:try_start_51b .. :try_end_51d} :catch_872
    .catchall {:try_start_51b .. :try_end_51d} :catchall_86f

    if-eqz v2, :cond_56b

    :try_start_51f
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->isExternalStartForSpeg()Z

    move-result v2
    :try_end_523
    .catch Ljava/lang/RuntimeException; {:try_start_51f .. :try_end_523} :catch_45c
    .catchall {:try_start_51f .. :try_end_523} :catchall_457

    if-eqz v2, :cond_568

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v13

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_53d

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_53e

    :cond_53d
    const/4 v15, 0x0

    :goto_53e
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_54d

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v8

    goto :goto_54f

    :cond_54d
    const/16 v17, -0x1

    :goto_54f
    if-eqz v2, :cond_556

    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v10

    goto :goto_558

    :cond_556
    const/16 v19, 0x0

    :goto_558
    move-object v12, v0

    check-cast v12, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->notifyActivityLaunchRequestCompleted(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    const/16 v0, 0x66

    return v0

    :cond_568
    :try_start_568
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->useSpegDisplayIfNeeded()V
    :try_end_56b
    .catch Ljava/lang/RuntimeException; {:try_start_568 .. :try_end_56b} :catch_45c
    .catchall {:try_start_568 .. :try_end_56b} :catchall_457

    :cond_56b
    :try_start_56b
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_56f
    .catch Ljava/lang/RuntimeException; {:try_start_56b .. :try_end_56f} :catch_872
    .catchall {:try_start_56b .. :try_end_56f} :catchall_86f

    if-eqz v2, :cond_5d2

    :try_start_571
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I
    :try_end_57d
    .catch Ljava/lang/RuntimeException; {:try_start_571 .. :try_end_57d} :catch_5ce
    .catchall {:try_start_571 .. :try_end_57d} :catchall_5ca

    const/4 v4, -0x1

    if-ne v3, v4, :cond_58f

    :try_start_580
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    goto :goto_593

    :catchall_589
    move-exception v0

    goto/16 :goto_e8

    :catch_58c
    move-exception v0

    goto/16 :goto_f0

    :cond_58f
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    :goto_593
    if-eq v3, v2, :cond_5ac

    if-nez v3, :cond_59d

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v5

    if-nez v5, :cond_5a5

    :cond_59d
    if-nez v2, :cond_5ac

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_5ac

    :cond_5a5
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-static {v3, v2}, Lcom/android/server/DualAppManagerService;->changeUriForDualApp(ILandroid/content/Intent;)V

    :cond_5ac
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_5d3

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-nez v2, :cond_5d3

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-static {v2, v3}, Lcom/android/server/DualAppManagerService;->recordDaUsageCount(ILandroid/content/Intent;)V
    :try_end_5c9
    .catch Ljava/lang/RuntimeException; {:try_start_580 .. :try_end_5c9} :catch_58c
    .catchall {:try_start_580 .. :try_end_5c9} :catchall_589

    goto :goto_5d3

    :catchall_5ca
    move-exception v0

    const/4 v4, -0x1

    goto/16 :goto_e8

    :catch_5ce
    move-exception v0

    const/4 v4, -0x1

    goto/16 :goto_f0

    :cond_5d2
    const/4 v4, -0x1

    :cond_5d3
    :goto_5d3
    :try_start_5d3
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;
    :try_end_5d7
    .catch Ljava/lang/RuntimeException; {:try_start_5d3 .. :try_end_5d7} :catch_86a
    .catchall {:try_start_5d3 .. :try_end_5d7} :catchall_866

    if-eqz v2, :cond_60b

    :try_start_5d9
    const-string/jumbo v3, "android.intent.action.DELETE"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f7

    const-string/jumbo v2, "android.intent.action.UNINSTALL_PACKAGE"

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60b

    :cond_5f7
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
    :try_end_60b
    .catch Ljava/lang/RuntimeException; {:try_start_5d9 .. :try_end_60b} :catch_58c
    .catchall {:try_start_5d9 .. :try_end_60b} :catchall_589

    :cond_60b
    :try_start_60b
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_613
    .catch Ljava/lang/RuntimeException; {:try_start_60b .. :try_end_613} :catch_86a
    .catchall {:try_start_60b .. :try_end_613} :catchall_866

    :try_start_613
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;
    :try_end_617
    .catchall {:try_start_613 .. :try_end_617} :catchall_858

    if-eqz v3, :cond_631

    :try_start_619
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, v5}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3
    :try_end_627
    .catchall {:try_start_619 .. :try_end_627} :catchall_62c

    if-eqz v3, :cond_631

    move/from16 v3, v22

    goto :goto_632

    :catchall_62c
    move-exception v0

    :goto_62d
    const/4 v3, 0x0

    const/4 v12, 0x0

    goto/16 :goto_85a

    :cond_631
    move v3, v7

    :goto_632
    :try_start_632
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v5
    :try_end_638
    .catchall {:try_start_632 .. :try_end_638} :catchall_858

    if-eqz v5, :cond_63c

    :try_start_63a
    iput-boolean v3, v5, Lcom/android/server/wm/Task;->mConfigWillChange:Z
    :try_end_63c
    .catchall {:try_start_63a .. :try_end_63c} :catchall_62c

    :cond_63c
    :try_start_63c
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v8, v6, v22
    :try_end_640
    .catchall {:try_start_63c .. :try_end_640} :catchall_858

    if-eqz v8, :cond_655

    :try_start_642
    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-wide v10, 0x171dc0871351371bL

    const/4 v12, 0x3

    invoke-static {v8, v10, v11, v12, v9}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    :try_end_655
    .catchall {:try_start_642 .. :try_end_655} :catchall_62c

    :cond_655
    :try_start_655
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_659
    .catchall {:try_start_655 .. :try_end_659} :catchall_858

    :try_start_659
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->resolveToHeavyWeightSwitcherIfNeeded()I

    move-result v10
    :try_end_65d
    .catchall {:try_start_659 .. :try_end_65d} :catchall_82e

    if-eqz v10, :cond_6cc

    :try_start_65f
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
    :try_end_683
    .catchall {:try_start_65f .. :try_end_683} :catchall_6c7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v13

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_69e

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_69f

    :cond_69e
    const/4 v15, 0x0

    :goto_69f
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_6ae

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v8

    goto :goto_6b0

    :cond_6ae
    move/from16 v17, v4

    :goto_6b0
    if-eqz v2, :cond_6b7

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v2

    goto :goto_6b9

    :cond_6b7
    const/16 v19, 0x0

    :goto_6b9
    move-object v12, v0

    check-cast v12, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->notifyActivityLaunchRequestCompleted(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    return v10

    :catchall_6c7
    move-exception v0

    move-object/from16 v13, v16

    goto/16 :goto_62d

    :cond_6cc
    move-object/from16 v13, v16

    :try_start_6ce
    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v11, v11, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-static {v11}, Lcom/android/server/am/Pageboost;->onAppLaunch(Landroid/content/Intent;)V

    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v1, v11}, Lcom/android/server/wm/ActivityStarter;->executeRequest(Lcom/android/server/wm/ActivityStarter$Request;)I

    move-result v10
    :try_end_6db
    .catchall {:try_start_6ce .. :try_end_6db} :catchall_82c

    :try_start_6db
    invoke-static {}, Lcom/android/server/am/Pageboost;->stopActiveLaunch()V
    :try_end_6de
    .catchall {:try_start_6db .. :try_end_6de} :catchall_826

    :try_start_6de
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
    :try_end_701
    .catchall {:try_start_6de .. :try_end_701} :catchall_821

    if-eqz v3, :cond_740

    :try_start_703
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v8, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v9, "updateConfiguration()"

    invoke-virtual {v3, v8, v9}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_710
    .catchall {:try_start_703 .. :try_end_710} :catchall_730

    if-eqz v5, :cond_71a

    :try_start_712
    iput-boolean v7, v5, Lcom/android/server/wm/Task;->mConfigWillChange:Z
    :try_end_714
    .catchall {:try_start_712 .. :try_end_714} :catchall_715

    goto :goto_71a

    :catchall_715
    move-exception v0

    move-object/from16 v16, v13

    goto/16 :goto_62d

    :cond_71a
    :goto_71a
    :try_start_71a
    aget-boolean v3, v6, v22

    if-eqz v3, :cond_733

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;
    :try_end_720
    .catchall {:try_start_71a .. :try_end_720} :catchall_730

    const-wide v5, 0x41e4c7b09dde3f7aL  # 2.7890495829452486E9

    const/4 v12, 0x0

    :try_start_726
    invoke-static {v3, v5, v6, v7, v12}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_734

    :catchall_72a
    move-exception v0

    :goto_72b
    move-object v3, v12

    :goto_72c
    move-object/from16 v16, v13

    goto/16 :goto_85a

    :catchall_730
    move-exception v0

    const/4 v12, 0x0

    goto :goto_72b

    :cond_733
    const/4 v12, 0x0

    :goto_734
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    const/16 v6, -0x2710

    invoke-virtual {v3, v5, v7, v7, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;ZZI)Z
    :try_end_73f
    .catchall {:try_start_726 .. :try_end_73f} :catchall_72a

    goto :goto_741

    :cond_740
    const/4 v12, 0x0

    :goto_741
    :try_start_741
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;
    :try_end_745
    .catchall {:try_start_741 .. :try_end_745} :catchall_81c

    if-eqz v3, :cond_74e

    :try_start_747
    invoke-virtual {v3}, Lcom/android/server/wm/SafeActivityOptions;->getOriginalOptions()Landroid/app/ActivityOptions;

    move-result-object v3
    :try_end_74b
    .catchall {:try_start_747 .. :try_end_74b} :catchall_72a

    move-object/from16 v21, v3

    goto :goto_750

    :cond_74e
    move-object/from16 v21, v12

    :goto_750
    :try_start_750
    iget-boolean v3, v1, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z
    :try_end_752
    .catchall {:try_start_750 .. :try_end_752} :catchall_81c

    if-nez v3, :cond_769

    :try_start_754
    invoke-static {v10}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v3

    if-eqz v3, :cond_767

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3
    :try_end_764
    .catchall {:try_start_754 .. :try_end_764} :catchall_72a

    if-eqz v3, :cond_767

    goto :goto_769

    :cond_767
    move-object v3, v12

    goto :goto_76b

    :cond_769
    :goto_769
    :try_start_769
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;
    :try_end_76b
    .catchall {:try_start_769 .. :try_end_76b} :catchall_81c

    :goto_76b
    :try_start_76b
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v5, v3, :cond_772

    move/from16 v19, v22

    goto :goto_774

    :cond_772
    move/from16 v19, v7

    :goto_774
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;
    :try_end_778
    .catchall {:try_start_76b .. :try_end_778} :catchall_796

    move-object/from16 v20, v3

    move-object/from16 v16, v5

    move/from16 v18, v10

    :try_start_77e
    invoke-virtual/range {v16 .. v21}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    :try_end_781
    .catchall {:try_start_77e .. :try_end_781} :catchall_816

    move-object/from16 v6, v17

    move/from16 v5, v18

    move-object/from16 v3, v20

    :try_start_787
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    if-eqz v8, :cond_798

    iput v5, v8, Landroid/app/WaitResult;->result:I

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v8, v5, v6}, Lcom/android/server/wm/ActivityStarter;->waitResultIfNeeded(Landroid/app/WaitResult;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)I

    move-result v10

    goto :goto_799

    :catchall_796
    move-exception v0

    goto :goto_72c

    :cond_798
    move v10, v5

    :goto_799
    invoke-static {v10}, Lcom/android/server/wm/ActivityStarter;->shouldWriteStartActivityDebugLog(I)Z

    move-result v5

    if-eqz v5, :cond_7bc

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

    :cond_7bc
    invoke-static {v10}, Lcom/android/server/wm/ActivityStarter;->getExternalResult(I)I

    move-result v0

    monitor-exit v2
    :try_end_7c1
    .catchall {:try_start_787 .. :try_end_7c1} :catchall_796

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    if-eqz v3, :cond_7d5

    move/from16 v18, v22

    goto :goto_7d7

    :cond_7d5
    move/from16 v18, v7

    :goto_7d7
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_7e3

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    move-object v15, v6

    goto :goto_7e4

    :cond_7e3
    move-object v15, v12

    :goto_7e4
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v6, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_7f3

    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v8

    goto :goto_7f5

    :cond_7f3
    move/from16 v17, v4

    :goto_7f5
    if-eqz v6, :cond_7fc

    iget-object v10, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v10

    goto :goto_7fe

    :cond_7fc
    move-object/from16 v19, v12

    :goto_7fe
    if-eqz v3, :cond_807

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_807

    move/from16 v20, v22

    goto :goto_809

    :cond_807
    move/from16 v20, v7

    :goto_809
    move-object v12, v2

    check-cast v12, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    move-object/from16 v16, v13

    move v13, v5

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->notifyActivityLaunchRequestCompleted(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    return v0

    :catchall_816
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v3, v20

    goto :goto_85a

    :catchall_81c
    move-exception v0

    move-object/from16 v16, v13

    :goto_81f
    move-object v3, v12

    goto :goto_85a

    :catchall_821
    move-exception v0

    move-object/from16 v16, v13

    :goto_824
    const/4 v12, 0x0

    goto :goto_81f

    :catchall_826
    move-exception v0

    move v5, v10

    :goto_828
    move-object/from16 v16, v13

    const/4 v12, 0x0

    goto :goto_832

    :catchall_82c
    move-exception v0

    goto :goto_828

    :catchall_82e
    move-exception v0

    const/4 v12, 0x0

    move/from16 v10, v21

    :goto_832
    :try_start_832
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
    :try_end_856
    .catchall {:try_start_832 .. :try_end_856} :catchall_856

    :catchall_856
    move-exception v0

    goto :goto_81f

    :catchall_858
    move-exception v0

    goto :goto_824

    :goto_85a
    :try_start_85a
    monitor-exit v2
    :try_end_85b
    .catchall {:try_start_85a .. :try_end_85b} :catchall_864

    :try_start_85b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_85f
    .catch Ljava/lang/RuntimeException; {:try_start_85b .. :try_end_85f} :catch_861
    .catchall {:try_start_85b .. :try_end_85f} :catchall_85f

    :catchall_85f
    move-exception v0

    goto :goto_8a3

    :catch_861
    move-exception v0

    goto/16 :goto_8c3

    :catchall_864
    move-exception v0

    goto :goto_85a

    :catchall_866
    move-exception v0

    :goto_867
    const/4 v12, 0x0

    :goto_868
    move-object v3, v12

    goto :goto_8a3

    :catch_86a
    move-exception v0

    :goto_86b
    const/4 v12, 0x0

    :goto_86c
    move-object v3, v12

    goto/16 :goto_8c3

    :catchall_86f
    move-exception v0

    const/4 v4, -0x1

    goto :goto_867

    :catch_872
    move-exception v0

    const/4 v4, -0x1

    goto :goto_86b

    :catchall_875
    move-exception v0

    move v4, v8

    move/from16 v22, v9

    goto :goto_867

    :catch_87a
    move-exception v0

    move v4, v8

    move/from16 v22, v9

    goto :goto_86b

    :catchall_87f
    move-exception v0

    move v4, v8

    move/from16 v22, v9

    const/4 v12, 0x0

    move-object/from16 v16, v12

    :goto_886
    :try_start_886
    monitor-exit v11
    :try_end_887
    .catchall {:try_start_886 .. :try_end_887} :catchall_88f

    :try_start_887
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_88b
    .catch Ljava/lang/RuntimeException; {:try_start_887 .. :try_end_88b} :catch_88d
    .catchall {:try_start_887 .. :try_end_88b} :catchall_88b

    :catchall_88b
    move-exception v0

    goto :goto_868

    :catch_88d
    move-exception v0

    goto :goto_86c

    :catchall_88f
    move-exception v0

    goto :goto_886

    :catchall_891
    move-exception v0

    move v4, v8

    move/from16 v22, v9

    const/4 v12, 0x0

    move-object v3, v12

    move-object/from16 v16, v3

    goto :goto_8a3

    :catch_89a
    move-exception v0

    move v4, v8

    move/from16 v22, v9

    const/4 v12, 0x0

    move-object v3, v12

    move-object/from16 v16, v3

    goto :goto_8c3

    :goto_8a3
    :try_start_8a3
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

    :catchall_8bf
    move-exception v0

    move-object/from16 v17, v16

    goto :goto_8c4

    :goto_8c3
    throw v0
    :try_end_8c4
    .catchall {:try_start_8a3 .. :try_end_8c4} :catchall_8bf

    :goto_8c4
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v14

    if-eqz v3, :cond_8d5

    move/from16 v19, v22

    goto :goto_8d7

    :cond_8d5
    move/from16 v19, v7

    :goto_8d7
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_8e4

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v5

    goto :goto_8e6

    :cond_8e4
    move-object/from16 v16, v12

    :goto_8e6
    iget-object v5, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v15, v5, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_8f5

    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v8

    goto :goto_8f7

    :cond_8f5
    move/from16 v18, v4

    :goto_8f7
    if-eqz v5, :cond_8fe

    iget-object v10, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v10

    goto :goto_900

    :cond_8fe
    move-object/from16 v20, v12

    :goto_900
    if-eqz v3, :cond_909

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_909

    move/from16 v21, v22

    goto :goto_90b

    :cond_909
    move/from16 v21, v7

    :goto_90b
    move-object v13, v2

    check-cast v13, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    invoke-virtual/range {v13 .. v21}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->notifyActivityLaunchRequestCompleted(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    throw v0
.end method

.method public final executeRequest(Lcom/android/server/wm/ActivityStarter$Request;)I
    .registers 94

    move-object/from16 v1, p0

    move-object/from16 v15, p1

    const-string/jumbo v0, "unknown"

    const-string v11, "Activity being started in new voice task does not support: "

    const-string v12, "Activity being started in current voice task does not support voice: "

    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_eab

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

    if-eqz v5, :cond_72

    iget-object v0, v5, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_6d

    :cond_6c
    const/4 v0, 0x0

    :goto_6d
    move-object/from16 v48, v0

    :goto_6f
    move-object/from16 v43, v13

    goto :goto_75

    :cond_72
    const/16 v48, 0x0

    goto :goto_6f

    :goto_75
    const-string v13, "ActivityTaskManager"

    if-eqz v2, :cond_bf

    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-eqz v0, :cond_8e

    iget v10, v0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    iget-object v2, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v27, v0

    move/from16 v23, v10

    const/4 v0, 0x0

    move v10, v2

    goto :goto_c6

    :cond_8e
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

    goto :goto_c6

    :cond_bf
    move/from16 v23, v10

    move/from16 v10, v19

    const/4 v0, 0x0

    const/16 v27, 0x0

    :goto_c6
    const-string v1, ""

    if-nez v0, :cond_102

    :try_start_ca
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d3} :catch_e7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_ca .. :try_end_d3} :catch_e7

    if-eqz v0, :cond_d9

    :try_start_d5
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_d9} :catch_e8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d5 .. :try_end_d9} :catch_e8

    :cond_d9
    move-object v2, v3

    move-object/from16 v55, v6

    move-object/from16 v16, v7

    move-object/from16 v44, v21

    move-object/from16 v3, v24

    move-object v6, v0

    move-object v7, v1

    move-object/from16 v1, p0

    goto :goto_f7

    :catch_e7
    const/4 v0, 0x0

    :catch_e8
    move-object/from16 v1, v16

    move-object/from16 v16, v7

    move-object v7, v1

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v55, v6

    move-object/from16 v44, v21

    move-object/from16 v3, v24

    move-object v6, v0

    :goto_f7
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityStarter;->checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILcom/android/server/wm/SafeActivityOptions;Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v0

    move-object v6, v5

    move v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_10e

    :cond_102
    move-object/from16 v2, p0

    move-object/from16 v55, v6

    move-object/from16 v16, v7

    move-object/from16 v44, v21

    move-object v6, v5

    move v5, v4

    move-object/from16 v4, v24

    :goto_10e
    if-eqz v4, :cond_11b

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_11b

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    goto :goto_11c

    :cond_11b
    const/4 v7, 0x0

    :goto_11c
    move/from16 v19, v0

    if-eqz v4, :cond_125

    iget v0, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    :goto_122
    move-object/from16 v45, v1

    goto :goto_127

    :cond_125
    const/4 v0, 0x0

    goto :goto_122

    :goto_127
    const-string v1, ")"

    move-object/from16 v33, v6

    if-nez v19, :cond_205

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

    if-eq v10, v9, :cond_167

    const/4 v6, -0x1

    if-eq v9, v6, :cond_167

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    const-string v6, " (realCallingUid="

    invoke-static {v9, v6, v1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_167
    const-string/jumbo v0, "knoxmtd.analysis.features"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_209

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_209

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v8, 0x1

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_209

    invoke-virtual {v3}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-eqz v0, :cond_209

    const-string/jumbo v0, "SKIP_KFBP_CHECK"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_209

    sget-object v0, Lcom/android/server/wm/ActivityStarter;->mtdManager:Lcom/samsung/android/knox/mtd/KMTDManager;

    if-nez v0, :cond_1a0

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "knox.mtd"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/mtd/KMTDManager;

    sput-object v0, Lcom/android/server/wm/ActivityStarter;->mtdManager:Lcom/samsung/android/knox/mtd/KMTDManager;

    :cond_1a0
    invoke-virtual {v3}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-eqz v0, :cond_1bf

    if-nez v27, :cond_1b5

    if-lez v5, :cond_1b5

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-eqz v0, :cond_1b5

    goto :goto_1b7

    :cond_1b5
    move-object/from16 v0, v27

    :goto_1b7
    if-eqz v0, :cond_1bc

    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    goto :goto_1c5

    :cond_1bc
    move-object/from16 v0, v20

    goto :goto_1c5

    :cond_1bf
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_1c5
    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "[Reactive] Validating url for "

    const-string v11, "ActivityTaskManager[KnoxPP]"

    invoke-static {v8, v0, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/android/server/wm/ActivityStarter;->prevReactiveUrl:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sget-wide v36, Lcom/android/server/wm/ActivityStarter;->prevReactiveTime:J

    sub-long v25, v25, v36

    const-wide/16 v36, 0x0

    cmp-long v8, v25, v36

    if-gez v8, :cond_1eb

    const-wide/16 v36, -0x1

    mul-long v25, v25, v36

    :cond_1eb
    sget-wide v36, Lcom/android/server/wm/ActivityStarter;->REACTIVE_COOLDOWN_TIME:J

    cmp-long v8, v25, v36

    if-gez v8, :cond_1f7

    const-string v0, "Already analyzed the url"

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_209

    :cond_1f7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sput-wide v25, Lcom/android/server/wm/ActivityStarter;->prevReactiveTime:J

    sput-object v6, Lcom/android/server/wm/ActivityStarter;->prevReactiveUrl:Ljava/lang/String;

    sget-object v8, Lcom/android/server/wm/ActivityStarter;->mtdManager:Lcom/samsung/android/knox/mtd/KMTDManager;

    invoke-virtual {v8, v6, v0, v3, v9}, Lcom/samsung/android/knox/mtd/KMTDManager;->analyzeUrl(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_209

    :cond_205
    move/from16 v35, v8

    move-object/from16 v24, v11

    :cond_209
    :goto_209
    if-eqz v16, :cond_24c

    invoke-static/range {v16 .. v16}, Lcom/android/server/wm/ActivityRecord;->isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_246

    if-ltz v17, :cond_220

    iget-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v6, :cond_220

    iget-object v6, v15, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    const-string v8, " (rr="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, v0

    goto :goto_228

    :cond_220
    iget-object v6, v15, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    const-string v8, " (sr="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    :goto_228
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

    goto :goto_24e

    :cond_246
    move-object/from16 v16, v0

    move-object/from16 v6, v16

    const/4 v0, 0x0

    goto :goto_24e

    :cond_24c
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_24e
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v11, 0x2000000

    and-int/2addr v11, v8

    if-eqz v11, :cond_29c

    if-eqz v6, :cond_29c

    if-ltz v17, :cond_261

    invoke-static/range {v33 .. v33}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    const/16 v0, -0x5d

    return v0

    :cond_261
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_26c

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked()Z

    move-result v11

    if-nez v11, :cond_26c

    const/4 v0, 0x0

    :cond_26c
    iget-object v11, v6, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    move/from16 v36, v5

    iget v5, v6, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    move/from16 v16, v8

    const/4 v8, 0x0

    iput-object v8, v6, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_27c

    invoke-virtual {v0, v6, v11, v5}, Lcom/android/server/wm/ActivityRecord;->removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    :cond_27c
    iget v8, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    if-ne v8, v10, :cond_28f

    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    move-object/from16 v65, v0

    move/from16 v59, v5

    move-object/from16 v58, v11

    move-object/from16 v56, v17

    goto :goto_2a7

    :cond_28f
    move-object/from16 v17, v0

    move/from16 v59, v5

    move-object/from16 v58, v11

    move-object/from16 v56, v17

    :goto_297
    move-object/from16 v8, v20

    move-object/from16 v65, v22

    goto :goto_2a7

    :cond_29c
    move/from16 v36, v5

    move/from16 v16, v8

    move-object/from16 v56, v0

    move/from16 v59, v17

    move-object/from16 v58, v18

    goto :goto_297

    :goto_2a7
    if-nez v19, :cond_2b2

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2b2

    const/16 v0, -0x5b

    goto :goto_2b4

    :cond_2b2
    move/from16 v0, v19

    :goto_2b4
    if-nez v0, :cond_35e

    if-nez v4, :cond_35e

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

    if-eqz v17, :cond_2de

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v17

    :goto_2d9
    move-object/from16 v5, v17

    :goto_2db
    const/16 v37, -0x5c

    goto :goto_2ef

    :cond_2de
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_2ed

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    goto :goto_2d9

    :cond_2ed
    const/4 v5, 0x0

    goto :goto_2db

    :goto_2ef
    if-eqz v5, :cond_2f7

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    if-nez v17, :cond_2fa

    :cond_2f7
    move/from16 v22, v10

    goto :goto_35b

    :cond_2fa
    move/from16 v22, v10

    iget-object v10, v0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v10

    invoke-interface {v10, v5}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    if-nez v10, :cond_309

    goto :goto_35b

    :cond_309
    invoke-interface {v10, v11}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result v11

    if-nez v11, :cond_314

    goto :goto_35b

    :cond_314
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/pm/pkg/ArchiveState;->mActivityInfos:Ljava/util/List;

    move-object/from16 v17, v5

    const/4 v11, 0x0

    :goto_31d
    move-object v5, v10

    check-cast v5, Ljava/util/ArrayList;

    move-object/from16 v18, v10

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v11, v10, :cond_34a

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    iget-object v5, v5, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->mOriginalComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_343

    iget-object v5, v2, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-virtual {v0, v3, v8, v5, v9}, Lcom/android/server/pm/PackageArchiver;->requestUnarchiveOnActivityStart(Landroid/content/Intent;Ljava/lang/String;II)I

    move-result v0

    goto :goto_362

    :cond_343
    const/16 v30, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v10, v18

    goto :goto_31d

    :cond_34a
    const-string/jumbo v0, "Package: %s is archived but component to start main activity cannot be found!"

    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "PackageArchiverService"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35b
    move/from16 v0, v37

    goto :goto_362

    :cond_35e
    move/from16 v22, v10

    const/16 v37, -0x5c

    :goto_362
    const-string v5, "Failure checking voice capabilities"

    if-nez v0, :cond_3af

    if-eqz v6, :cond_3af

    iget-object v11, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v11, v11, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v11, :cond_3af

    const/high16 v11, 0x10000000

    and-int v11, v16, v11

    if-nez v11, :cond_3af

    iget-object v11, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v11, v10, :cond_3af

    :try_start_380
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

    if-nez v10, :cond_3af

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a8
    .catch Landroid/os/RemoteException; {:try_start_380 .. :try_end_3a8} :catch_3a9

    goto :goto_3ad

    :catch_3a9
    move-exception v0

    invoke-static {v13, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3ad
    const/16 v0, -0x61

    :cond_3af
    if-nez v0, :cond_3df

    if-eqz v55, :cond_3df

    :try_start_3b3
    iget-object v10, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-interface {v10, v11, v3, v14, v7}, Landroid/content/pm/IPackageManager;->activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_3df

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v10, v24

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d7
    .catch Landroid/os/RemoteException; {:try_start_3b3 .. :try_end_3d7} :catch_3d8

    goto :goto_3dc

    :catch_3d8
    move-exception v0

    invoke-static {v13, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3dc
    const/16 v10, -0x61

    goto :goto_3e0

    :cond_3df
    move v10, v0

    :goto_3e0
    if-nez v56, :cond_3e3

    goto :goto_3e6

    :cond_3e3
    invoke-virtual/range {v56 .. v56}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    :goto_3e6
    if-eqz v10, :cond_406

    if-eqz v56, :cond_3f9

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v57, -0x1

    const/16 v60, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    invoke-virtual/range {v56 .. v64}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    :cond_3f9
    invoke-static/range {v33 .. v33}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    const/16 v0, 0x6d

    filled-new-array/range {v45 .. v45}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v0, v1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    return v10

    :cond_406
    :try_start_406
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v5, v15, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z
    :try_end_40a
    .catch Ljava/lang/SecurityException; {:try_start_406 .. :try_end_40a} :catch_e5f

    if-eqz v34, :cond_423

    const/16 v26, 0x1

    :goto_40e
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

    goto :goto_426

    :cond_423
    const/16 v26, 0x0

    goto :goto_40e

    :goto_426
    :try_start_426
    invoke-virtual/range {v16 .. v28}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0
    :try_end_42a
    .catch Ljava/lang/SecurityException; {:try_start_426 .. :try_end_42a} :catch_e51

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

    if-nez v0, :cond_481

    invoke-static/range {v38 .. v38}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyService$Internal;

    iput-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

    :cond_481
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

    if-eq v3, v6, :cond_58f

    :try_start_496
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;
    :try_end_498
    .catch Ljava/lang/SecurityException; {:try_start_496 .. :try_end_498} :catch_509

    move-object/from16 v18, v24

    :try_start_49a
    const-string v24, ""

    iget-boolean v6, v15, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z
    :try_end_49e
    .catch Ljava/lang/SecurityException; {:try_start_49a .. :try_end_49e} :catch_4f9

    if-eqz v34, :cond_4a3

    const/16 v26, 0x1

    goto :goto_4a5

    :cond_4a3
    const/16 v26, 0x0

    :goto_4a5
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

    :try_start_4b9
    invoke-virtual/range {v16 .. v28}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0
    :try_end_4bd
    .catch Ljava/lang/SecurityException; {:try_start_4b9 .. :try_end_4bd} :catch_4e9

    move-object/from16 v3, v18

    move/from16 v18, v22

    move-object/from16 v19, v23

    if-nez v0, :cond_4de

    :try_start_4c5
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;
    :try_end_4c9
    .catch Ljava/lang/SecurityException; {:try_start_4c5 .. :try_end_4c9} :catch_4d8

    const/16 v16, 0x4

    move-object/from16 v21, v8

    move/from16 v20, v14

    :try_start_4cf
    invoke-static/range {v16 .. v21}, Lcom/android/server/wm/ActivityStarter;->logAndAbortForIntentRedirect(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v10
    :try_end_4d3
    .catch Ljava/lang/SecurityException; {:try_start_4cf .. :try_end_4d3} :catch_4d4

    goto :goto_4e2

    :catch_4d4
    move-exception v0

    :goto_4d5
    move-object/from16 v22, v0

    goto :goto_515

    :catch_4d8
    move-exception v0

    move-object/from16 v21, v8

    :goto_4db
    move/from16 v20, v14

    goto :goto_4d5

    :cond_4de
    move-object/from16 v21, v8

    move/from16 v20, v14

    :goto_4e2
    move-object/from16 v31, v19

    move/from16 v14, v20

    move-object/from16 v64, v21

    goto :goto_51f

    :catch_4e9
    move-exception v0

    move-object/from16 v21, v8

    move-object/from16 v3, v18

    move-object/from16 v58, v19

    move/from16 v59, v20

    move/from16 v18, v22

    move-object/from16 v19, v23

    move-object/from16 v56, v28

    goto :goto_4db

    :catch_4f9
    move-exception v0

    move-object/from16 v17, v18

    move/from16 v18, v3

    move-object/from16 v3, v17

    move-object/from16 v21, v8

    move-object/from16 v17, v11

    move/from16 v20, v14

    :goto_506
    move-object/from16 v19, v31

    goto :goto_4d5

    :catch_509
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v21, v8

    move-object/from16 v17, v11

    move/from16 v20, v14

    move-object/from16 v3, v24

    goto :goto_506

    :goto_515
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/16 v16, 0x3

    invoke-static/range {v16 .. v22}, Lcom/android/server/wm/ActivityStarter;->logAndThrowExceptionForIntentRedirect(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;Ljava/lang/SecurityException;)V

    goto :goto_4e2

    :goto_51f
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

    if-nez v0, :cond_561

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

    :goto_55c
    move-object/from16 v11, v17

    move/from16 v6, v18

    goto :goto_568

    :cond_561
    move/from16 v20, v14

    move-object/from16 v8, v31

    move-object/from16 v21, v64

    goto :goto_55c

    :goto_568
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

    if-nez v14, :cond_576

    invoke-static/range {v38 .. v38}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/policy/PermissionPolicyService$Internal;

    iput-object v14, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

    :cond_576
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyService$Internal;

    invoke-virtual {v0, v11, v8, v6}, Lcom/android/server/policy/PermissionPolicyService$Internal;->checkStartActivity(Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_595

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/16 v16, 0x6

    move/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v17, v11

    invoke-static/range {v16 .. v21}, Lcom/android/server/wm/ActivityStarter;->logAndAbortForIntentRedirect(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v10

    goto :goto_595

    :cond_58f
    move-object/from16 v21, v8

    move/from16 v20, v14

    move-object/from16 v3, v24

    :cond_595
    :goto_595
    invoke-virtual {v11}, Landroid/content/Intent;->removeCreatorToken()V

    if-eqz v33, :cond_5a5

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move-object/from16 v6, v33

    invoke-virtual {v6, v11, v3, v4, v0}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    move-object/from16 v27, v0

    goto :goto_5a7

    :cond_5a5
    const/16 v27, 0x0

    :goto_5a7
    if-nez v10, :cond_606

    move/from16 v50, v7

    const-wide/16 v6, 0x20

    :try_start_5ad
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
    :try_end_5d5
    .catchall {:try_start_5ad .. :try_end_5d5} :catchall_5ff

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

    :try_start_5e9
    iget-object v7, v15, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    move/from16 v33, v10

    const-string v10, " ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5f8
    .catchall {:try_start_5e9 .. :try_end_5f8} :catchall_5fd

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    :goto_5fb
    move-object v10, v0

    goto :goto_617

    :catchall_5fd
    move-exception v0

    goto :goto_602

    :catchall_5ff
    move-exception v0

    move-wide/from16 v16, v6

    :goto_602
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_606
    move/from16 v50, v7

    move/from16 v33, v10

    move/from16 v28, v20

    move-object/from16 v6, v21

    move-object/from16 v8, v27

    move/from16 v14, v36

    move/from16 v31, v37

    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->ALLOW_BY_DEFAULT:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    goto :goto_5fb

    :goto_617
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-eq v10, v0, :cond_676

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-eqz v4, :cond_638

    iget-object v1, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_638

    iget-object v0, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v4, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iget v7, v4, Lcom/android/server/wm/WindowProcessController;->mPid:I

    move-object/from16 v18, v0

    move/from16 v19, v1

    move/from16 v26, v7

    goto :goto_63e

    :cond_638
    move/from16 v19, v0

    const/16 v18, 0x0

    const/16 v26, 0x0

    :goto_63e
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

    if-nez v0, :cond_673

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v69, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v7, v4}, Landroid/app/ActivityManagerInternal;->cancelDisablePolicy(Ljava/lang/String;II)Z

    goto :goto_67a

    :cond_673
    move-object/from16 v69, v4

    goto :goto_67a

    :cond_676
    move-object/from16 v69, v4

    move/from16 v7, v50

    :goto_67a
    iget-boolean v0, v15, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    if-eqz v0, :cond_6bc

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    iget-object v1, v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;

    if-nez v1, :cond_691

    :goto_68e
    move-object/from16 v27, v8

    goto :goto_6b9

    :cond_691
    if-nez v8, :cond_69c

    iget-object v4, v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-static {v4}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object v27

    move-object/from16 v8, v27

    goto :goto_6a1

    :cond_69c
    iget-object v4, v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v8, v4}, Landroid/app/ActivityOptions;->setRemoteAnimationAdapter(Landroid/view/RemoteAnimationAdapter;)V

    :goto_6a1
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_REMOTE:Z

    if-eqz v4, :cond_6ac

    iget-object v4, v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->remoteTransition:Landroid/window/RemoteTransition;

    if-eqz v4, :cond_6ac

    invoke-virtual {v8, v4}, Landroid/app/ActivityOptions;->setRemoteTransition(Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    :cond_6ac
    iget-object v1, v1, Lcom/android/server/wm/PendingRemoteAnimationRegistry$Entry;->launchCookie:Landroid/os/IBinder;

    if-eqz v1, :cond_6b3

    invoke-virtual {v8, v1}, Landroid/app/ActivityOptions;->setLaunchCookie(Landroid/os/IBinder;)V

    :cond_6b3
    iget-object v0, v0, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->mEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_68e

    :goto_6b9
    move-object/from16 v38, v27

    goto :goto_6be

    :cond_6bc
    move-object/from16 v38, v8

    :goto_6be
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_6e0

    :try_start_6c4
    invoke-virtual {v11}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0
    :try_end_6d4
    .catch Landroid/os/RemoteException; {:try_start_6c4 .. :try_end_6d4} :catch_6db

    const/16 v30, 0x1

    xor-int/lit8 v0, v0, 0x1

    or-int v0, v33, v0

    goto :goto_6e2

    :catch_6db
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    :cond_6e0
    move/from16 v0, v33

    :goto_6e2
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

    if-eqz v4, :cond_706

    :goto_703
    move-object/from16 v26, v4

    goto :goto_70f

    :cond_706
    iget-object v4, v2, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    goto :goto_703

    :goto_70f
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

    if-eqz v1, :cond_777

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

    goto :goto_786

    :cond_777
    move/from16 v16, v0

    move/from16 v20, v21

    move-object/from16 v19, v34

    move-object/from16 v1, v38

    move-object/from16 v81, v58

    move/from16 v58, v4

    move-object v4, v3

    move-object/from16 v3, v17

    :goto_786
    if-eqz v16, :cond_7aa

    if-eqz v56, :cond_79b

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v57, -0x1

    const/16 v60, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    move-object/from16 v58, v81

    invoke-virtual/range {v56 .. v64}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    :cond_79b
    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/16 v0, 0x6e

    filled-new-array/range {v45 .. v45}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v0, v1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    const/16 v0, 0x66

    return v0

    :cond_7aa
    move-object/from16 v28, v56

    move/from16 v82, v59

    const-string/jumbo v0, "android.intent.extra.RESULT_NEEDED"

    move-object/from16 v16, v3

    const-string/jumbo v3, "android.intent.extra.INTENT"

    move-object/from16 v24, v5

    const-string/jumbo v5, "android.intent.extra.PACKAGE_NAME"

    const/high16 v17, 0x8800000

    if-eqz v4, :cond_867

    move-object/from16 v21, v6

    iget-object v6, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    move-object/from16 v31, v10

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v10}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_85d

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

    if-eqz v18, :cond_816

    or-int v16, v12, v17

    :cond_816
    move/from16 v12, v16

    invoke-virtual {v10, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentSender;

    invoke-direct {v4, v6}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz v28, :cond_82e

    const/4 v4, 0x1

    invoke-virtual {v10, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_82e
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

    goto :goto_86c

    :cond_85d
    move v10, v7

    move-object/from16 v7, v21

    :goto_860
    move-object/from16 v33, v12

    move/from16 v27, v14

    move-object/from16 v65, v24

    goto :goto_86c

    :cond_867
    move-object/from16 v31, v10

    move v10, v7

    move-object v7, v6

    goto :goto_860

    :goto_86c
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->SUPPORT_SMARTMANAGER_CN:Z

    const-string v12, " className:"

    const/high16 v14, 0x100000

    if-eqz v6, :cond_9e1

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getFlags()I

    move-result v6

    and-int/2addr v6, v14

    if-eqz v6, :cond_87f

    const/4 v6, 0x1

    :goto_87c
    move/from16 v34, v14

    goto :goto_881

    :cond_87f
    const/4 v6, 0x0

    goto :goto_87c

    :goto_881
    iget-object v14, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v14, v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    if-eqz v4, :cond_8f1

    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v14, :cond_8f1

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8f1

    iget-object v14, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    move/from16 v21, v6

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

    if-eqz v14, :cond_8a3

    invoke-virtual {v14, v6}, Lcom/android/internal/app/SmRccPolicy;->isSmRccPkg(Ljava/lang/String;)Z

    move-result v6

    goto :goto_8a4

    :cond_8a3
    const/4 v6, 0x0

    :goto_8a4
    if-eqz v6, :cond_8f1

    if-nez v21, :cond_8f1

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-nez v6, :cond_8f1

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

    if-eqz v6, :cond_8e1

    invoke-virtual {v6, v14}, Lcom/android/internal/app/SmRccPolicy;->isSmRccOpen(Ljava/lang/String;)Z

    move-result v6

    goto :goto_8e2

    :cond_8e1
    const/4 v6, 0x0

    :goto_8e2
    if-eqz v6, :cond_8f8

    iget-object v6, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

    if-eqz v6, :cond_8f1

    invoke-virtual {v6, v14}, Lcom/android/internal/app/SmRccPolicy;->resetSmRccOpen(Ljava/lang/String;)V

    :cond_8f1
    move-object/from16 v35, v0

    move-object v14, v7

    move-object/from16 v36, v12

    goto/16 :goto_9e8

    :cond_8f8
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

    if-eqz v15, :cond_948

    invoke-virtual {v15}, Lcom/android/internal/app/SmRccPolicy;->getSmRccAction()Ljava/lang/String;

    move-result-object v15

    :goto_945
    move-object/from16 v35, v0

    goto :goto_94a

    :cond_948
    const/4 v15, 0x0

    goto :goto_945

    :goto_94a
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

    if-eqz v28, :cond_96c

    const-string/jumbo v7, "SM_RCC_EXTRA_RESULT_NEEDED"

    const/4 v12, 0x1

    invoke-virtual {v0, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_96c
    const-string/jumbo v7, "SM_RCC_PACKAGE_INTENT"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v6, "SM_RCC_PACKAGE_USERID"

    invoke-virtual {v0, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v1, :cond_97c

    const/4 v6, 0x0

    goto :goto_980

    :cond_97c
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    :goto_980
    const-string/jumbo v7, "SM_RCC_PACKAGE_OPTIONS"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {v10}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v6

    const/16 v23, 0x0

    if-eqz v6, :cond_9a7

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

    :goto_9a4
    move-object/from16 v6, v22

    goto :goto_9be

    :cond_9a7
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

    goto :goto_9a4

    :goto_9be
    iget-object v7, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v12, 0x0

    invoke-virtual {v7, v6, v0, v8, v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    if-eqz v7, :cond_9d6

    iget-object v4, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v4, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v18, v0

    move-object v4, v7

    move/from16 v58, v9

    :goto_9d3
    move/from16 v20, v27

    goto :goto_9ea

    :cond_9d6
    const-string/jumbo v0, "SmRcc can not resolve Activity , should never happen. Check Action "

    invoke-static {v0, v15, v13}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v58, v9

    move-object/from16 v6, v16

    goto :goto_9d3

    :cond_9e1
    move-object/from16 v35, v0

    move-object/from16 v36, v12

    move/from16 v34, v14

    move-object v14, v7

    :goto_9e8
    move-object/from16 v6, v16

    :goto_9ea
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    const-string v7, "LAUNCH_FROM_NOTIFICATION"

    if-eqz v0, :cond_be6

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v12

    and-int v12, v12, v34

    if-eqz v12, :cond_9fd

    const/4 v12, 0x1

    :goto_9f9
    move/from16 v16, v0

    const/4 v15, -0x1

    goto :goto_9ff

    :cond_9fd
    const/4 v12, 0x0

    goto :goto_9f9

    :goto_9ff
    invoke-virtual {v6, v7, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v15, 0x1

    if-ne v0, v15, :cond_a08

    const/4 v0, 0x1

    goto :goto_a09

    :cond_a08
    const/4 v0, 0x0

    :goto_a09
    iget-object v15, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v15, :cond_a29

    if-eqz v4, :cond_a29

    move/from16 v21, v0

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_a2b

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v0}, Lcom/android/internal/app/AppLockPolicy;->isActivityInExceptionList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a2b

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2b

    const/4 v0, 0x0

    goto :goto_a2c

    :cond_a29
    move/from16 v21, v0

    :cond_a2b
    const/4 v0, 0x1

    :goto_a2c
    iget-object v15, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v15, :cond_a44

    if-eqz v4, :cond_a44

    move/from16 v22, v0

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_a46

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v0}, Lcom/android/internal/app/AppLockPolicy;->isAppLockBypassList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a46

    const/4 v0, 0x0

    goto :goto_a47

    :cond_a44
    move/from16 v22, v0

    :cond_a46
    const/4 v0, 0x1

    :goto_a47
    iget-object v15, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v15, v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v15

    if-eqz v4, :cond_be0

    move/from16 v24, v0

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_be0

    if-nez v21, :cond_be0

    move/from16 v50, v10

    iget-object v10, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v10, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a98

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a98

    if-nez v12, :cond_a98

    invoke-static/range {v50 .. v50}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_a81

    if-eqz v15, :cond_a8d

    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_a81

    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_a8d

    :cond_a81
    invoke-static/range {v50 .. v50}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_a98

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    move-result v0

    if-nez v0, :cond_a98

    :cond_a8d
    if-eqz v22, :cond_a98

    if-eqz v24, :cond_a98

    if-eqz v11, :cond_aa2

    iget-boolean v0, v11, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-nez v0, :cond_a98

    goto :goto_aa2

    :cond_a98
    move-object/from16 v34, v6

    move/from16 v5, v27

    move/from16 v10, v50

    :goto_a9e
    const/16 v29, 0x0

    goto/16 :goto_be9

    :cond_aa2
    :goto_aa2
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

    if-nez v0, :cond_a98

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v1, :cond_aea

    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    goto :goto_af3

    :cond_aea
    const/4 v15, 0x1

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v1

    :goto_af3
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

    if-eqz v28, :cond_b46

    move-object/from16 v3, v35

    const/4 v15, 0x1

    invoke-virtual {v6, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_b46
    const-string v3, "LOCKED_PACKAGE_INTENT"

    invoke-virtual {v6, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "LOCKED_PACKAGE_NAME"

    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "LOCKED_PACKAGE_USERID"

    invoke-virtual {v6, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v87, :cond_b5c

    move/from16 v0, v29

    goto :goto_b60

    :cond_b5c
    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v0

    :goto_b60
    const-string v3, "LOCKED_APP_CAN_SHOW_WHEN_LOCKED"

    invoke-virtual {v6, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez v20, :cond_b69

    const/4 v0, 0x0

    goto :goto_b6d

    :cond_b69
    invoke-virtual/range {v20 .. v20}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    :goto_b6d
    const-string v3, "LOCKED_PACKAGE_ACTIVITY_OPTIONS"

    invoke-virtual {v6, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.applock"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v12}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    const/16 v23, 0x0

    if-eqz v0, :cond_b9c

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

    :goto_b97
    move-object/from16 v3, v22

    move/from16 v5, v27

    goto :goto_bb5

    :cond_b9c
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

    goto :goto_b97

    :goto_bb5
    iget-object v6, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v12, 0x0

    invoke-virtual {v6, v3, v0, v8, v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    if-eqz v6, :cond_bd0

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v4, v6

    move/from16 v58, v9

    move-object/from16 v86, v20

    move-object/from16 v46, v23

    move-object v6, v3

    :goto_bcd
    move/from16 v20, v5

    goto :goto_bf1

    :cond_bd0
    const-string v0, "AppLock can not resolve Activity, should never happen. Check Action "

    invoke-static {v0, v1, v13}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v58, v9

    move-object/from16 v0, v18

    move-object/from16 v86, v20

    move-object/from16 v46, v23

    move-object/from16 v6, v34

    goto :goto_bcd

    :cond_be0
    :goto_be0
    move-object/from16 v34, v6

    move/from16 v5, v27

    goto/16 :goto_a9e

    :cond_be6
    move/from16 v16, v0

    goto :goto_be0

    :goto_be9
    move-object/from16 v86, v1

    move-object/from16 v0, v18

    move-object/from16 v46, v23

    move-object/from16 v6, v34

    :goto_bf1
    if-eqz v0, :cond_c9d

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    if-eqz v1, :cond_c9d

    move-object/from16 v15, p1

    iget-object v3, v15, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    if-eqz v1, :cond_c3f

    iget-boolean v4, v1, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v4, :cond_c3f

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

    goto :goto_c45

    :cond_c3f
    move-object/from16 v45, v3

    move/from16 v50, v10

    move-object/from16 v21, v14

    :goto_c45
    invoke-static/range {v45 .. v45}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v44

    if-nez v1, :cond_c4d

    const/4 v3, 0x0

    goto :goto_c4f

    :cond_c4d
    iget-object v3, v1, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    :goto_c4f
    if-nez v1, :cond_c54

    const/16 v51, 0x0

    goto :goto_c58

    :cond_c54
    iget-object v4, v1, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    move-object/from16 v51, v4

    :goto_c58
    if-nez v1, :cond_c5d

    const/16 v52, 0x0

    goto :goto_c61

    :cond_c5d
    iget-object v4, v1, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    move-object/from16 v52, v4

    :goto_c61
    if-eqz v1, :cond_c6a

    iget-boolean v4, v1, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v4, :cond_c6a

    const/16 v53, 0x1

    goto :goto_c6c

    :cond_c6a
    move/from16 v53, v29

    :goto_c6c
    if-nez v1, :cond_c7b

    const/16 v54, 0x0

    :goto_c70
    move-object/from16 v43, v45

    move-object/from16 v49, v46

    move-object/from16 v47, v65

    move-object/from16 v45, v3

    move-object/from16 v46, v21

    goto :goto_c80

    :cond_c7b
    iget-object v1, v1, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    move-object/from16 v54, v1

    goto :goto_c70

    :goto_c80
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

    :goto_c98
    move-object/from16 v78, v4

    move-object/from16 v76, v6

    goto :goto_caf

    :cond_c9d
    move-object/from16 v15, p1

    move/from16 v50, v10

    move-object/from16 v21, v14

    const/4 v12, 0x0

    move-object/from16 v22, v11

    move/from16 v72, v20

    move-object/from16 v11, v32

    move-object/from16 v77, v46

    move/from16 v73, v58

    goto :goto_c98

    :goto_caf
    if-nez v69, :cond_cc0

    if-lez v5, :cond_cc0

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v27

    if-eqz v27, :cond_cc0

    move-object/from16 v71, v27

    goto :goto_cc2

    :cond_cc0
    move-object/from16 v71, v69

    :goto_cc2
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-boolean v3, v15, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    if-eqz v55, :cond_ccf

    const/16 v84, 0x1

    goto :goto_cd1

    :cond_ccf
    move/from16 v84, v29

    :goto_cd1
    if-nez v1, :cond_cd7

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    :cond_cd7
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

    if-eqz v5, :cond_d19

    const/4 v10, 0x1

    iput-boolean v10, v3, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-eqz v86, :cond_d19

    invoke-virtual/range {v86 .. v86}, Landroid/app/ActivityOptions;->useExtendedDesktopModeLaunchPolicy()Z

    move-result v5

    if-eqz v5, :cond_d19

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v5

    if-eqz v5, :cond_d19

    iput-boolean v10, v3, Lcom/android/server/wm/ActivityRecord;->mExtendedDesktopModeLaunchPolicyAppliedAliasActivity:Z

    :cond_d19
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v5, :cond_d23

    if-eqz v1, :cond_d23

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v5, v3, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    :cond_d23
    iget-object v5, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    if-eqz v0, :cond_d40

    iget-object v6, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_d40

    iget-object v5, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v0, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    move/from16 v66, v0

    move-object/from16 v58, v5

    move/from16 v59, v6

    goto :goto_d46

    :cond_d40
    move/from16 v59, v5

    move-object/from16 v58, v12

    move/from16 v66, v29

    :goto_d46
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

    if-eqz v0, :cond_d6d

    const/16 v0, -0xc8

    return v0

    :cond_d6d
    if-eqz v16, :cond_d99

    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_d99

    :try_start_d73
    new-instance v0, Landroid/content/Intent;

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v6, -0x1

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v10, 0x1

    if-eq v0, v10, :cond_d91

    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v5, 0x4000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_d99

    const/4 v10, 0x1

    goto :goto_d91

    :catch_d8f
    move-exception v0

    goto :goto_d94

    :cond_d91
    :goto_d91
    iput-boolean v10, v3, Lcom/android/server/wm/ActivityRecord;->mLaunchingRequestedFromNotification:Z
    :try_end_d93
    .catch Ljava/lang/Exception; {:try_start_d73 .. :try_end_d93} :catch_d8f

    goto :goto_d99

    :goto_d94
    const-string v5, "Exception while parsing intent but ignorable, was : "

    invoke-static {v0, v5, v13}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d99
    :goto_d99
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_da9

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne v4, v0, :cond_da9

    const/4 v0, 0x1

    goto :goto_dab

    :cond_da9
    move/from16 v0, v29

    :goto_dab
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    if-eqz v4, :cond_dcc

    iget-object v4, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v4, v4, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v5, v2, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    move-result v4

    if-eqz v4, :cond_dcc

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->stopAppSwitches()V

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mIsAppSwitchDelayedByTransientLaunch:Z

    goto :goto_dd9

    :cond_dcc
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v4

    if-eqz v4, :cond_dd9

    if-nez v0, :cond_dd9

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeAppSwitches()V

    :cond_dd9
    :goto_dd9
    iget-object v0, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isLaunchAdjacent()Z

    move-result v4

    if-eqz v4, :cond_e0b

    if-eqz v1, :cond_e0b

    iget-boolean v4, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_e0b

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_e0b

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v4

    if-nez v4, :cond_e0b

    if-eqz v0, :cond_e0b

    iget v4, v0, Lcom/android/server/wm/Transition;->mType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e0b

    const-string/jumbo v4, "Start Adjacent Activity, Collecting Transition is TRANSIT_CLOSE"

    invoke-static {v13, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->abort()V

    :cond_e0b
    iget-object v0, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_e1a

    iget-object v0, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->createAndStartCollecting()Lcom/android/server/wm/Transition;

    move-result-object v0

    goto :goto_e1b

    :cond_e1a
    move-object v0, v12

    :goto_e1b
    if-eqz v0, :cond_e1f

    const/4 v14, 0x1

    goto :goto_e21

    :cond_e1f
    move/from16 v14, v29

    :goto_e21
    if-eqz v14, :cond_e25

    :goto_e23
    move-object v13, v0

    goto :goto_e30

    :cond_e25
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    goto :goto_e23

    :goto_e30
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

    if-eqz v2, :cond_e50

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    aput-object v1, v2, v29

    :cond_e50
    return v0

    :catch_e51
    move-exception v0

    move-object v1, v2

    move v10, v7

    move-object/from16 v58, v19

    move/from16 v59, v20

    move/from16 v4, v22

    move-object/from16 v56, v28

    :goto_e5c
    move-object/from16 v6, v33

    goto :goto_e65

    :catch_e5f
    move-exception v0

    move-object v1, v2

    move v10, v7

    move/from16 v4, v22

    goto :goto_e5c

    :goto_e65
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    if-eqz v2, :cond_eaa

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_e75

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_eaa

    :cond_e75
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_e84

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_e88

    :cond_e84
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    :goto_e88
    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    const/4 v15, 0x1

    invoke-virtual {v1, v4, v10, v2, v15}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_eaa

    if-eqz v56, :cond_ea6

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v57, -0x1

    const/16 v60, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    invoke-virtual/range {v56 .. v64}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    :cond_ea6
    invoke-static {v6}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    return v37

    :cond_eaa
    throw v0

    :cond_eab
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Need to specify a reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;
    .registers 17

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v0, :cond_ee

    invoke-virtual {v0}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_ee

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p3, :cond_27

    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_24
    move-object v0, v11

    goto/16 :goto_d0

    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/wm/ActivityStarter;->canMoveTaskToBottomTask(ILcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz p3, :cond_3d

    if-nez v2, :cond_3d

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getForceLaunchOverTargetTask()Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_3d
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-eq v0, v1, :cond_4a

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_4a

    invoke-virtual {v2, v0, v10, v11, v10}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_4b

    :cond_4a
    move-object v0, v11

    :goto_4b
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_54

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_55

    :cond_54
    move-object v1, v11

    :goto_55
    const/4 v4, 0x5

    if-eqz v0, :cond_6f

    invoke-virtual {v0, v9, v10}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_6f

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v5

    if-nez v5, :cond_8b

    iget v5, v0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5, v10}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v5

    if-eqz v5, :cond_6f

    goto :goto_8b

    :cond_6f
    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    if-eq v0, v9, :cond_87

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    if-eq v0, v4, :cond_87

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_8a

    :cond_87
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_8b

    :cond_8a
    move-object v0, v11

    :cond_8b
    :goto_8b
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v1

    if-eqz v1, :cond_a0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_d0

    :cond_a0
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    if-eq v1, v9, :cond_a8

    if-ne v1, v4, :cond_24

    :cond_a8
    if-nez p4, :cond_b1

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    goto :goto_b3

    :cond_b1
    move-object/from16 v4, p4

    :goto_b3
    invoke-virtual {v4, v1}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, p1, p3}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v7

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_24

    move-object v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v1, p1

    move v6, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;IIZ)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_24

    :goto_d0
    if-eqz v0, :cond_ee

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_ee

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_ed

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result v1

    if-eqz v1, :cond_ed

    goto :goto_ee

    :cond_ed
    return-object v0

    :cond_ee
    :goto_ee
    if-eqz p4, :cond_f6

    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v0

    if-nez v0, :cond_fc

    :cond_f6
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v0, :cond_fc

    move v5, v9

    goto :goto_fd

    :cond_fc
    move v5, v10

    :goto_fd
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_103

    iget-object v11, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    :cond_103
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

    if-ne v4, v5, :cond_153

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_153

    if-nez v0, :cond_126

    if-eqz v2, :cond_153

    :cond_126
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_153

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

    :cond_153
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isDeskRootTask()Z

    move-result p1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    if-eqz p1, :cond_174

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-ne p3, p1, :cond_174

    if-eqz p4, :cond_174

    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_174

    iget-object p1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_174

    iget-object p1, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    :cond_174
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_191

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result p1

    if-nez p1, :cond_191

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-ne p2, p0, :cond_191

    iget-object p0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_191

    iget-object p0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    :cond_191
    return-object p2
.end method

.method public final getStartInfo()Ljava/lang/String;
    .registers 4

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
    .registers 28

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

    if-eqz v13, :cond_1a

    move-object v14, v13

    goto :goto_1d

    :cond_1a
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    move-object v14, v2

    :goto_1d
    invoke-static {v7}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v2

    if-eqz v2, :cond_435

    if-nez v14, :cond_27

    goto/16 :goto_435

    :cond_27
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v3, 0x2

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Landroid/content/Intent;->isAiKeyAppLaunch()Z

    move-result v2

    if-nez v2, :cond_36

    :cond_32
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->mIsAiKeyAppTarget:Z

    if-eqz v2, :cond_8a

    :cond_36
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    iget-object v4, v2, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredTrampolineApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    goto :goto_8a

    :cond_49
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

    if-ne v4, v10, :cond_8a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/wm/ChangeTransitionController;->mSyncStartedTime:J

    iget-object v4, v2, Lcom/android/server/wm/ChangeTransitionController;->mH:Lcom/android/server/wm/ChangeTransitionController$H;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v2, Lcom/android/server/wm/ChangeTransitionController;->mH:Lcom/android/server/wm/ChangeTransitionController$H;

    const-wide/16 v4, 0x320

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8a
    :goto_8a
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    const/4 v4, 0x4

    if-eqz v2, :cond_c4

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v5, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    invoke-virtual {v1, v12}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v6

    if-eqz v6, :cond_c4

    if-eqz v2, :cond_c4

    iget v6, v2, Lcom/android/server/wm/Transition;->mType:I

    if-eq v6, v4, :cond_ab

    if-ne v6, v10, :cond_c4

    :cond_ab
    iget v6, v2, Lcom/android/server/wm/Transition;->mFlags:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_c4

    invoke-virtual {v5, v10, v12}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_c4

    if-ne v5, v14, :cond_c4

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isFullscreenRootForStageTask()Z

    move-result v5

    if-nez v5, :cond_c4

    const/high16 v5, 0x20000

    invoke-virtual {v2, v5}, Lcom/android/server/wm/Transition;->addFlag(I)V

    :cond_c4
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_dc

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_dc

    if-eqz p2, :cond_dc

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_dc

    const/high16 v2, 0x100000

    invoke-virtual {v9, v2}, Lcom/android/server/wm/Transition;->addFlag(I)V

    :cond_dc
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_f8

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

    goto :goto_f9

    :cond_f8
    move v15, v3

    :goto_f9
    if-eqz p2, :cond_104

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getTaskAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_104

    invoke-virtual {v14, v10}, Lcom/android/server/wm/Task;->setAlwaysOnTop(Z)V

    :cond_104
    const-string v2, "ActivityTaskManager"

    if-eqz p4, :cond_139

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-nez v3, :cond_139

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v3

    if-eqz v3, :cond_139

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    if-nez v3, :cond_139

    invoke-virtual {v1, v10}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    move-result v3

    if-nez v3, :cond_139

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

    :cond_139
    invoke-virtual {v14, v12}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_14e

    iget v4, v3, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v5

    if-eq v4, v5, :cond_14e

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, v3, v5, v12}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Z)V

    :cond_14e
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v4

    if-nez v4, :cond_1af

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v4, :cond_1af

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v5, :cond_168

    const-class v5, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerInternal;

    iput-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    :cond_168
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v5, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/UserManagerInternal;->isVisibleBackgroundFullUser(I)Z

    move-result v4

    if-nez v4, :cond_1af

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v5, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v6, v10, [Z

    aput-boolean v12, v6, v12

    new-instance v12, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda26;

    invoke-direct {v12, v5, v6}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda26;-><init>(I[Z)V

    invoke-virtual {v4, v12, v10}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v4

    if-eqz v4, :cond_1af

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v4, v4, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-eqz v4, :cond_1af

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    if-nez v5, :cond_1a2

    const-class v5, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/statusbar/StatusBarManagerService$2;

    iput-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    :cond_1a2
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    if-eqz v4, :cond_1af

    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v4, :cond_1af

    :try_start_1ac
    invoke-interface {v4}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_1af
    .catch Landroid/os/RemoteException; {:try_start_1ac .. :try_end_1af} :catch_1af

    :catch_1af
    :cond_1af
    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v5, 0x3

    if-eqz v7, :cond_20f

    if-eq v7, v15, :cond_20f

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v6, :cond_1dd

    if-ne v7, v5, :cond_1dd

    if-eqz v9, :cond_1dd

    if-eqz v3, :cond_1dd

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v6, :cond_1dd

    iget-object v12, v9, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz v6, :cond_1d3

    iget-object v12, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    if-eqz v12, :cond_1d3

    goto :goto_20f

    :cond_1d3
    if-eqz v6, :cond_1dd

    iget v6, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mForceHidingTransit:I

    if-eq v6, v15, :cond_20f

    const/4 v12, 0x4

    if-ne v6, v12, :cond_1dd

    goto :goto_20f

    :cond_1dd
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    if-eqz v6, :cond_1ec

    if-ne v7, v5, :cond_1ec

    if-eqz p2, :cond_1ec

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->isResumedAffordanceAnimationRequested()Z

    move-result v6

    if-eqz v6, :cond_1ec

    goto :goto_20f

    :cond_1ec
    if-ne v7, v5, :cond_20d

    if-eqz v3, :cond_20d

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_20d

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v6, :cond_20d

    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->getActivatedDesktopTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_20d

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->getActivatedDesktopTask()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v6

    if-eqz v6, :cond_20d

    goto :goto_20f

    :cond_20d
    const/4 v6, 0x0

    goto :goto_210

    :cond_20f
    :goto_20f
    move v6, v10

    :goto_210
    if-eqz p2, :cond_222

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    move-result v12

    if-eqz v12, :cond_222

    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    if-eqz v12, :cond_222

    iget-boolean v12, v0, Lcom/android/server/wm/ActivityStarter;->mDisplayLockAndOccluded:Z

    if-eqz v12, :cond_222

    move v12, v10

    goto :goto_223

    :cond_222
    const/4 v12, 0x0

    :goto_223
    sget-boolean v17, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    if-eqz v17, :cond_232

    if-eqz p2, :cond_232

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->isResumedAffordanceAnimationRequested()Z

    move-result v19

    if-eqz v19, :cond_232

    move/from16 v19, v10

    goto :goto_234

    :cond_232
    const/16 v19, 0x0

    :goto_234
    sget-boolean v20, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v20, :cond_251

    if-eqz v9, :cond_251

    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-boolean v5, v15, Lcom/android/server/wm/ActivityStartInterceptor;->mIsInterceptedForCarLife:Z

    if-eqz v5, :cond_251

    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStartInterceptor;->hasCarLifeDisplay()Z

    move-result v5

    if-eqz v5, :cond_251

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    const/4 v15, 0x0

    iput-boolean v15, v5, Lcom/android/server/wm/ActivityStartInterceptor;->mIsInterceptedForCarLife:Z

    invoke-virtual {v9}, Lcom/android/server/wm/Transition;->abort()V

    move v5, v10

    const/4 v9, 0x0

    goto :goto_252

    :cond_251
    const/4 v5, 0x0

    :goto_252
    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v15, :cond_268

    if-eqz v6, :cond_268

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isSplitEmbedded()Z

    move-result v15

    if-eqz v15, :cond_268

    if-eqz v13, :cond_268

    invoke-virtual {v13, v1}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v13

    if-eqz v13, :cond_268

    move v13, v10

    goto :goto_269

    :cond_268
    const/4 v13, 0x0

    :goto_269
    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v15, :cond_28d

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v15

    if-eqz v15, :cond_28d

    iget-boolean v15, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-nez v15, :cond_28d

    if-nez v12, :cond_28d

    if-eqz v9, :cond_28d

    if-eqz v6, :cond_283

    invoke-virtual {v1, v10}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    move-result v15

    if-nez v15, :cond_28d

    :cond_283
    if-nez v13, :cond_28d

    invoke-virtual {v9}, Lcom/android/server/wm/Transition;->abort()V

    :goto_288
    move/from16 v19, v10

    :goto_28a
    const/4 v9, 0x0

    goto/16 :goto_375

    :cond_28d
    if-eqz v9, :cond_29d

    iget-boolean v13, v1, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-eqz v13, :cond_29d

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v13

    if-eqz v13, :cond_29d

    invoke-virtual {v9}, Lcom/android/server/wm/Transition;->abort()V

    goto :goto_288

    :cond_29d
    if-eqz v6, :cond_2fc

    if-nez v5, :cond_2fc

    if-eqz v17, :cond_2b4

    const/4 v5, 0x3

    if-ne v7, v5, :cond_2b4

    if-eqz v9, :cond_2b4

    if-eqz v19, :cond_2b4

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/TransitionController;->setResumedAffordance(Lcom/android/server/wm/WindowContainer;)V

    :cond_2b4
    const/4 v15, 0x2

    if-ne v7, v15, :cond_2f3

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_2f3

    iget-boolean v5, v1, Lcom/android/server/wm/ActivityRecord;->mIsAiKeyAppTarget:Z

    if-eqz v5, :cond_2f3

    if-eqz v3, :cond_2f3

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_2f3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-nez v5, :cond_2f3

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    move-result v5

    if-eqz v5, :cond_2f3

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v5, :cond_2f3

    const/4 v13, 0x0

    invoke-virtual {v5, v13, v10}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-virtual {v9, v3, v15}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "collect="

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", reason=split_gemini"

    invoke-static {v5, v3, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2ef
    :goto_2ef
    move/from16 v19, v10

    goto/16 :goto_375

    :cond_2f3
    iget-object v2, v4, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v2, :cond_2f8

    goto :goto_2ef

    :cond_2f8
    invoke-virtual {v2, v1}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_2ef

    :cond_2fc
    const/4 v5, 0x3

    if-ne v7, v5, :cond_2ef

    if-eqz p4, :cond_2ef

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_2ef

    iget-object v2, v4, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v2, :cond_30c

    move/from16 v19, v10

    goto :goto_354

    :cond_30c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v2, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v15, 0x0

    :goto_318
    if-ge v15, v13, :cond_32b

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/2addr v15, v10

    move/from16 v19, v10

    move-object/from16 v10, v17

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    invoke-static {v10, v3}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    move/from16 v10, v19

    goto :goto_318

    :cond_32b
    move/from16 v19, v10

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v10, 0x0

    :cond_332
    if-ge v10, v5, :cond_345

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v10, v10, 0x1

    check-cast v13, Lcom/android/server/wm/Task;

    iget-object v15, v2, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_332

    goto :goto_375

    :cond_345
    iget-object v3, v2, Lcom/android/server/wm/Transition;->mOnTopDisplayStart:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eq v3, v2, :cond_354

    goto :goto_375

    :cond_354
    :goto_354
    invoke-virtual {v4, v14}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-nez v2, :cond_375

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v9, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    if-nez v2, :cond_368

    const/4 v2, 0x0

    goto :goto_36c

    :cond_368
    invoke-virtual {v2}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v2

    :goto_36c
    if-nez v2, :cond_375

    if-nez v12, :cond_375

    invoke-virtual {v9}, Lcom/android/server/wm/Transition;->abort()V

    goto/16 :goto_28a

    :cond_375
    :goto_375
    if-eqz v12, :cond_39b

    if-eqz v9, :cond_39b

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

    :cond_39b
    if-nez v11, :cond_3a2

    if-eqz v9, :cond_3a2

    const/4 v15, 0x0

    iput-boolean v15, v9, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    :cond_3a2
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v2

    if-eqz v2, :cond_3af

    if-eqz v9, :cond_3af

    const/high16 v2, 0x10000

    invoke-virtual {v9, v2}, Lcom/android/server/wm/Transition;->addFlag(I)V

    :cond_3af
    if-eqz p4, :cond_3f9

    if-eqz v9, :cond_3f9

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mIsSystemModalTaskTop:Z

    if-eqz v2, :cond_3bb

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v2, :cond_3c5

    :cond_3bb
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_3ce

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getNeedApplySystemModalPolicy()Z

    move-result v2

    if-eqz v2, :cond_3ce

    :cond_3c5
    iget v2, v9, Lcom/android/server/wm/Transition;->mFlags:I

    if-nez v2, :cond_3ce

    const/high16 v2, 0x200000

    invoke-virtual {v9, v2}, Lcom/android/server/wm/Transition;->addFlag(I)V

    :cond_3ce
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_3d4

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    :cond_3d4
    const/4 v13, 0x0

    invoke-virtual {v4, v9, v2, v8, v13}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_434

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_434

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_434

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v13}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_434

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    goto :goto_434

    :cond_3f9
    if-nez v7, :cond_406

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_406

    goto :goto_434

    :cond_406
    if-eqz v6, :cond_434

    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_412

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_434

    :cond_412
    if-eqz v9, :cond_418

    const/4 v15, 0x0

    invoke-virtual {v9, v1, v15}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_418
    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_PIP_REMOTE_TRANSITION:Z

    if-eqz v2, :cond_434

    if-eqz v8, :cond_434

    if-eqz v1, :cond_434

    iget v2, v1, Lcom/android/server/wm/Transition;->mType:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_434

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_434

    iput-object v8, v1, Lcom/android/server/wm/Transition;->mRemoteTransition:Landroid/window/RemoteTransition;

    :cond_434
    :goto_434
    return-object v14

    :cond_435
    :goto_435
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_443

    const-string/jumbo v2, "startActivity"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    goto :goto_454

    :cond_443
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_454

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    :cond_454
    :goto_454
    if-eqz v14, :cond_472

    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_472

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    move-result v1

    if-nez v1, :cond_472

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_472

    iget-boolean v1, v14, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v1, :cond_472

    const-string/jumbo v1, "handleStartResult"

    invoke-virtual {v14, v1}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    :cond_472
    if-eqz p4, :cond_486

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_486

    invoke-virtual {v9}, Lcom/android/server/wm/Transition;->abort()V

    const/16 v18, 0x0

    return-object v18

    :cond_486
    const/16 v18, 0x0

    return-object v18
.end method

.method public isAllowedToStart(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)I
    .registers 37

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v1, p3

    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v2, :cond_12

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/16 v0, -0x5c

    return v0

    :cond_12
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    const/4 v13, 0x1

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const-string v14, "ActivityTaskManager"

    if-eqz v2, :cond_3d

    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v4, v2, v5, v13}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v2

    if-nez v2, :cond_3d

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

    :cond_3d
    const/4 v15, 0x0

    const/4 v2, 0x3

    if-nez p2, :cond_74

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

    if-eqz v6, :cond_61

    move v6, v13

    goto :goto_62

    :cond_61
    move v6, v15

    :goto_62
    invoke-interface {v5}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    if-eqz v6, :cond_74

    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v2, v5, :cond_72

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_72

    goto :goto_74

    :cond_72
    move v5, v15

    goto :goto_75

    :cond_74
    :goto_74
    move v5, v13

    :goto_75
    iget v6, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    const/16 v7, 0x7f

    const/16 v16, 0x66

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-ne v6, v7, :cond_b9

    if-eqz v5, :cond_b9

    iget-object v5, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v5}, Landroid/app/ActivityManagerInternal;->isBackgroundActivityStartsEnabled()Z

    move-result v5

    if-eqz v5, :cond_8a

    goto :goto_b9

    :cond_8a
    iget-object v1, v3, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v4, v3, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    if-eqz v1, :cond_a7

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

    :cond_a7
    iget-object v1, v3, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Abort background activity starts from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-static {v1, v0, v14}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v16

    :cond_b9
    :goto_b9
    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v6, 0x10008000

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_c3

    move v5, v13

    goto :goto_c4

    :cond_c3
    move v5, v15

    :goto_c4
    const/4 v12, 0x0

    const/16 v6, 0x65

    const-string v7, "Attempted Lock Task Mode violation r="

    if-nez p2, :cond_e3

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    invoke-virtual {v8, v1, v5}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    move-result v5

    if-eqz v5, :cond_117

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_e3
    iget-object v5, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v8, :cond_f1

    invoke-virtual {v5, v8, v15}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    move-result v5

    goto :goto_105

    :cond_f1
    invoke-virtual {v5, v12, v3}, Lcom/android/server/wm/LockTaskController;->getLockTaskAuth(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)I

    move-result v8

    iget v9, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v10, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v3, v9, v10, v8}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolationInternal(Lcom/android/server/wm/WindowContainer;ILandroid/content/Intent;I)Z

    move-result v8

    if-eqz v8, :cond_104

    invoke-virtual {v5}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    move v5, v13

    goto :goto_105

    :cond_104
    move v5, v15

    :goto_105
    if-eqz v5, :cond_117

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_117
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v5, :cond_1a9

    iget-object v5, v5, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_1a9

    if-eqz v1, :cond_12d

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    :goto_12b
    move v7, v5

    goto :goto_132

    :cond_12d
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    goto :goto_12b

    :goto_132
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_13c

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v5

    move v8, v5

    goto :goto_13d

    :cond_13c
    move v8, v15

    :goto_13d
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_143

    move v10, v13

    goto :goto_144

    :cond_143
    move v10, v15

    :goto_144
    new-instance v11, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda3;

    invoke-direct {v11, v0, v3}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityStarter;Lcom/android/server/wm/ActivityRecord;)V

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v9, v4

    iget-object v4, v9, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez v4, :cond_17f

    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    if-eqz v4, :cond_171

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

    goto :goto_172

    :cond_171
    move v4, v15

    :goto_172
    if-eqz v4, :cond_176

    :goto_174
    move v4, v15

    goto :goto_185

    :cond_176
    invoke-virtual {v9, v5}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->launchAllowedByDisplayPolicy(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    if-nez v4, :cond_17d

    goto :goto_174

    :cond_17d
    move v4, v13

    goto :goto_185

    :cond_17f
    move/from16 v9, p2

    invoke-virtual/range {v4 .. v11}, Landroid/window/DisplayWindowPolicyController;->canActivityBeLaunched(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IIZZLjava/util/function/Supplier;)Z

    move-result v4

    :goto_185
    if-nez v4, :cond_1a9

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

    :cond_1a9
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

    if-eq v7, v9, :cond_400

    if-nez p2, :cond_1d0

    const/high16 v11, 0x10000000

    and-int v9, v26, v11

    if-ne v9, v11, :cond_1ce

    goto :goto_1d0

    :cond_1ce
    move v9, v15

    goto :goto_1d1

    :cond_1d0
    :goto_1d0
    move v9, v13

    :goto_1d1
    if-eqz v9, :cond_1f1

    if-eq v7, v2, :cond_1ed

    const/4 v11, 0x6

    if-eq v7, v11, :cond_1ed

    const/4 v11, 0x5

    if-eq v7, v11, :cond_1ed

    const/4 v11, 0x7

    if-eq v7, v11, :cond_1ed

    const/4 v11, 0x4

    if-eq v7, v11, :cond_1ed

    const/16 v11, 0xb

    if-eq v7, v11, :cond_1ed

    const/16 v11, 0xc

    if-eq v7, v11, :cond_1ed

    const/16 v11, 0xd

    if-ne v7, v11, :cond_1f1

    :cond_1ed
    move/from16 v32, v15

    goto/16 :goto_403

    :cond_1f1
    new-instance v11, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    if-eqz v5, :cond_221

    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v9, :cond_200

    move-object v2, v0

    :goto_1fd
    move/from16 v32, v15

    goto :goto_202

    :cond_200
    move-object v2, v1

    goto :goto_1fd

    :goto_202
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v15

    invoke-virtual {v4, v2, v15, v5, v11}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v11

    if-eqz v9, :cond_279

    iget-boolean v2, v11, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    if-eqz v2, :cond_279

    if-eqz v0, :cond_21c

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v2

    if-nez v2, :cond_21a

    if-ne v0, v1, :cond_21c

    :cond_21a
    move v0, v13

    goto :goto_21e

    :cond_21c
    move/from16 v0, v32

    :goto_21e
    iput-boolean v0, v11, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    goto :goto_279

    :cond_221
    move/from16 v32, v15

    if-eqz v1, :cond_22e

    if-eqz v9, :cond_229

    if-eqz v10, :cond_22e

    :cond_229
    invoke-virtual {v4, v1, v8, v12, v11}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v11

    goto :goto_279

    :cond_22e
    if-eqz v1, :cond_23a

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_23a

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    :cond_23a
    if-eqz v0, :cond_279

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;

    invoke-direct {v15, v2}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    move/from16 v0, v32

    :goto_24b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v0, v15, :cond_279

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v12, v13, :cond_271

    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v12

    if-eqz v12, :cond_271

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    iput-boolean v13, v11, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    iget-object v15, v11, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    if-nez v15, :cond_26f

    iput-object v12, v11, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    :cond_26f
    const/4 v12, 0x0

    goto :goto_276

    :cond_271
    const/4 v12, 0x0

    invoke-virtual {v4, v15, v8, v12, v11}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v11

    :goto_276
    add-int/lit8 v0, v0, 0x1

    goto :goto_24b

    :cond_279
    :goto_279
    iget-boolean v0, v11, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    if-eqz v0, :cond_27f

    goto/16 :goto_403

    :cond_27f
    if-nez v1, :cond_283

    move-object v0, v12

    goto :goto_28d

    :cond_283
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_28d
    if-nez p2, :cond_2a0

    if-nez v5, :cond_292

    goto :goto_2a0

    :cond_292
    iget-object v2, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29d

    move/from16 v27, v13

    goto :goto_2a2

    :cond_29d
    const/16 v27, 0x2

    goto :goto_2a2

    :cond_2a0
    :goto_2a0
    const/16 v27, 0x3

    :goto_2a2
    iget-boolean v2, v11, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    if-eqz v2, :cond_2ae

    invoke-static {v8}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldRestrictActivitySwitch(I)Z

    move-result v2

    if-eqz v2, :cond_2ae

    move v2, v13

    goto :goto_2b0

    :cond_2ae
    move/from16 v2, v32

    :goto_2b0
    const/16 v15, 0x8

    if-ne v7, v15, :cond_2f4

    if-eqz v9, :cond_2c0

    iget-object v15, v4, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz v15, :cond_2c0

    iget v15, v15, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    if-ne v15, v8, :cond_2c0

    :goto_2be
    move v12, v13

    goto :goto_2f6

    :cond_2c0
    if-eqz v9, :cond_2c4

    if-eqz v10, :cond_2f4

    :cond_2c4
    if-eqz v1, :cond_2db

    iget-object v15, v4, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    iget v12, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz v12, :cond_2db

    iget v12, v12, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    if-ne v12, v8, :cond_2db

    goto :goto_2be

    :cond_2db
    if-eqz v5, :cond_2f4

    iget-object v12, v4, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    iget-object v15, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v15, v15, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-eqz v12, :cond_2f4

    iget v12, v12, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    if-ne v12, v8, :cond_2f4

    goto :goto_2be

    :cond_2f4
    move/from16 v12, v32

    :goto_2f6
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

    if-eqz v2, :cond_31a

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    move-object/from16 v12, v18

    move/from16 v18, v4

    goto :goto_31e

    :cond_31a
    move-object/from16 v12, v18

    move/from16 v18, v15

    :goto_31e
    if-eqz v2, :cond_327

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v4

    goto :goto_329

    :cond_327
    move-object/from16 v19, v12

    :goto_329
    if-eqz v5, :cond_332

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    :goto_32f
    move/from16 v20, v4

    goto :goto_334

    :cond_332
    const/4 v4, -0x1

    goto :goto_32f

    :goto_334
    if-eqz v5, :cond_33a

    iget-object v4, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_33a
    move-object/from16 v21, v12

    if-nez v13, :cond_34e

    if-eqz v2, :cond_34e

    if-eqz v1, :cond_34e

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34b

    goto :goto_34e

    :cond_34b
    move/from16 v22, v32

    goto :goto_350

    :cond_34e
    :goto_34e
    const/16 v22, 0x1

    :goto_350
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v23

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    if-eqz v1, :cond_373

    if-eqz v2, :cond_373

    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_373

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_373

    const/16 v29, 0x1

    goto :goto_375

    :cond_373
    move/from16 v29, v32

    :goto_375
    const/16 v17, 0x1ef

    const/16 v28, 0xb

    move-object/from16 v24, v4

    invoke-static/range {v17 .. v31}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IIIZILjava/lang/String;)V

    move-object/from16 v1, v31

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-static {v15}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldShowToast(I)Z

    move-result v6

    if-eqz v6, :cond_3bf

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "go/android-asm"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_395

    const-string v7, " blocked "

    goto :goto_397

    :cond_395
    const-string v7, " would block "

    :goto_397
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-wide/16 v9, 0x0

    :try_start_3a4
    invoke-static {v9, v10}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7
    :try_end_3b0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3a4 .. :try_end_3b0} :catch_3b1

    goto :goto_3b2

    :catch_3b1
    move-object v7, v4

    :goto_3b2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/wm/BackgroundActivityStartController;->showToast(Ljava/lang/String;)V

    invoke-static {v14, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3bf
    if-eqz v8, :cond_3fe

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[ASM] Abort Launching r: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3d4

    goto :goto_3d5

    :cond_3d4
    move-object v2, v4

    :goto_3d5
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

    goto :goto_403

    :cond_3fe
    :goto_3fe
    const/4 v13, 0x1

    goto :goto_403

    :cond_400
    move/from16 v32, v15

    goto :goto_3fe

    :goto_403
    if-nez v13, :cond_406

    return v16

    :cond_406
    return v32
.end method

.method public final isExternalStartForSpeg()Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    const/4 v2, 0x0

    if-nez v1, :cond_9

    goto/16 :goto_a2

    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_a2

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    if-nez v3, :cond_15

    goto/16 :goto_a2

    :cond_15
    iget v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1e

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    :cond_1e
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    iget-boolean v3, v0, Lcom/android/server/pm/SpegService;->mIsSpegInOpeartion:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2b

    iget v3, v0, Lcom/android/server/pm/SpegService;->mSpegUid:I

    if-ne v1, v3, :cond_2b

    move v3, v4

    goto :goto_2c

    :cond_2b
    move v3, v2

    :goto_2c
    const-string v5, "App with uid "

    const-string/jumbo v6, "SPEG"

    if-eqz v3, :cond_8a

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/SpegService;->isSpegInOpeartion(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-string v0, " is trying to start an external app "

    invoke-static {v1, v5, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-static {v0, p0, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_4b
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_59

    move v0, v4

    goto :goto_66

    :cond_59
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v4

    :goto_66
    if-eqz v0, :cond_a2

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

    :cond_8a
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/SpegService;->isSpegInOpeartion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a2

    const-string v0, " is trying to launch SPEG app "

    invoke-static {v1, v5, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-static {v0, p0, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_a2
    :goto_a2
    return v2
.end method

.method public final logPIOnlyCreatorAllowsBAL()V
    .registers 5

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_70

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mRealCallingUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_26
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

    :cond_70
    return-void
.end method

.method public final onExecutionComplete()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStartController;->mInExecution:Z

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    if-nez v1, :cond_11

    invoke-interface {v2}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    :cond_11
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
    .registers 2

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStartController;->mInExecution:Z

    return-void
.end method

.method public final postStartActivityProcessing(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .registers 14

    invoke-static {p1}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReorderingOnTimeout()V

    :cond_11
    invoke-static {p1}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-eqz v0, :cond_19

    goto/16 :goto_17e

    :cond_19
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v0, :cond_26

    goto :goto_72

    :cond_26
    if-eq p1, v5, :cond_2b

    if-eq p1, v4, :cond_2b

    goto :goto_72

    :cond_2b
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move v6, v3

    :goto_33
    if-ltz v0, :cond_69

    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;

    iget-object v8, v7, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    iget-object v8, v8, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    if-eqz v8, :cond_4b

    iget-object v8, v8, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne p2, v8, :cond_49

    move v8, v2

    goto :goto_53

    :cond_49
    move v8, v3

    goto :goto_53

    :cond_4b
    iget-object v8, v7, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mTargetComponent:Landroid/content/ComponentName;

    iget-object v9, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    :goto_53
    if-nez v8, :cond_56

    goto :goto_66

    :cond_56
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mResult:Landroid/app/WaitResult;

    iput p1, v7, Landroid/app/WaitResult;->result:I

    if-ne p1, v5, :cond_66

    iget-object v6, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v6, v7, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v6, v2

    :cond_66
    :goto_66
    add-int/lit8 v0, v0, -0x1

    goto :goto_33

    :cond_69
    if-eqz v6, :cond_72

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_72
    :goto_72
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_77

    goto :goto_79

    :cond_77
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    :goto_79
    if-eqz p3, :cond_17e

    if-eqz v0, :cond_17e

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result p3

    if-nez p3, :cond_85

    goto/16 :goto_17e

    :cond_85
    iget-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eq p1, v4, :cond_8b

    if-ne p1, v5, :cond_cf

    :cond_8b
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_9c

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_9c

    move v1, v2

    goto :goto_9d

    :cond_9c
    move v1, v3

    :goto_9d
    invoke-virtual {v0, v2, v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_a8

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v4, :cond_a8

    goto :goto_a9

    :cond_a8
    move v2, v3

    :goto_a9
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

    :cond_cf
    invoke-static {p1}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result p1

    if-eqz p1, :cond_fd

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

    :goto_e9
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_fd

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityInterceptorCallback;

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-interface {v4, p1, v5, v0}, Lcom/android/server/wm/ActivityInterceptorCallback;->onActivityLaunched(Landroid/app/TaskInfo;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e9

    :cond_fd
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz p1, :cond_17e

    iget-boolean p1, p0, Lcom/android/server/wm/ActivityStarter;->mIsFreeformLaunching:Z

    if-eqz p1, :cond_17e

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_17e

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result p1

    if-nez p1, :cond_16e

    const-string/jumbo p1, "startActivityFromRecents"

    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16e

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isWindowManagerCtsPackage(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16e

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_16e

    iget-object p1, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget p2, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget p1, p1, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-static {p2, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p1

    if-nez p1, :cond_16e

    iget-object p1, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget p2, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget p1, p1, Lcom/android/server/wm/RecentTasks;->mLauncherInfo:I

    invoke-static {p2, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p1

    if-nez p1, :cond_16e

    iget-object p1, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget p2, p1, Lcom/android/server/wm/MultiTaskingController;->mSystemUIUid:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_165

    iget-object p2, p1, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object p2

    const-wide/32 v0, 0x100000

    const-string/jumbo p3, "com.android.systemui"

    invoke-virtual {p2, p3, v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p2

    iput p2, p1, Lcom/android/server/wm/MultiTaskingController;->mSystemUIUid:I

    :cond_165
    iget p1, p1, Lcom/android/server/wm/MultiTaskingController;->mSystemUIUid:I

    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget p2, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    if-eq p1, p2, :cond_16e

    goto :goto_17e

    :cond_16e
    const-string p1, "2004"

    const-string p2, "From application"

    invoke-static {p1, p2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    const-string p1, "2013"

    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17e
    :goto_17e
    return-void
.end method

.method public final recordTransientLaunchIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    if-eqz p1, :cond_46

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    if-nez v0, :cond_7

    goto :goto_46

    :cond_7
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v1, :cond_1a

    invoke-virtual {v1, p1}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return-void

    :cond_1a
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v1, :cond_21

    goto :goto_46

    :cond_21
    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/Transition;->setTransientLaunch(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result p0

    if-nez p0, :cond_46

    const/4 p0, 0x0

    :goto_2b
    iget-object p1, v0, Lcom/android/server/wm/TransitionController;->mCleanUpRunnableList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p0, p1, :cond_41

    iget-object p1, v0, Lcom/android/server/wm/TransitionController;->mCleanUpRunnableList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_2b

    :cond_41
    iget-object p0, v0, Lcom/android/server/wm/TransitionController;->mCleanUpRunnableList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_46
    :goto_46
    return-void
.end method

.method public recycleTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;)I
    .registers 38

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

    if-eq v5, v7, :cond_1d

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    return v13

    :cond_1d
    const/4 v5, 0x0

    if-eqz v2, :cond_3e

    iget-object v7, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v7, :cond_28

    invoke-virtual {v4, v6, v5, v5}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    goto :goto_3e

    :cond_28
    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/16 v7, 0x4000

    and-int/2addr v6, v7

    if-eqz v6, :cond_39

    iget-object v6, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_3e

    :cond_39
    iget-object v6, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->removeFlags(I)V

    :cond_3e
    :goto_3e
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    move-result v6

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7, v1, v13}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    iget-object v14, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v14, :cond_57

    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v9

    goto :goto_58

    :cond_57
    move-object v9, v5

    :goto_58
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    move-result v10

    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    if-eqz v11, :cond_c7

    invoke-virtual {v11}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v11

    const/4 v15, -0x1

    if-eq v11, v15, :cond_c7

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v11

    if-eqz v11, :cond_c7

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v11

    if-eqz v11, :cond_c7

    iget-object v11, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v15

    invoke-virtual {v0, v15, v11}, Lcom/android/server/wm/ActivityStarter;->canMoveTaskToBottomTask(ILcom/android/server/wm/Task;)Z

    move-result v15

    if-nez v15, :cond_8b

    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getForceLaunchOverTargetTask()Z

    move-result v15

    if-eqz v15, :cond_c7

    :cond_8b
    iget v15, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v15, v11, v13}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v13

    if-eq v11, v13, :cond_c7

    invoke-virtual {v11, v13}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v15

    if-nez v15, :cond_c7

    invoke-static {v13}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_aa

    iget-object v9, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eq v9, v11, :cond_aa

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v7, v5, v1, v9}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    :cond_aa
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

    goto/16 :goto_2da

    :cond_c7
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-nez v11, :cond_e6

    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v11, :cond_da

    iget-object v11, v11, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    if-eqz v11, :cond_da

    invoke-static {v11}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    goto :goto_e6

    :cond_da
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v13, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v11, v13, v14, v15}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    :cond_e6
    :goto_e6
    if-eqz v14, :cond_f3

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v11

    if-eqz v11, :cond_f3

    move-object v15, v14

    const v5, 0x7fffffff

    goto :goto_110

    :cond_f3
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

    :goto_110
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    if-eqz v8, :cond_12b

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v8

    if-eqz v8, :cond_12b

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v8, :cond_12b

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->isForceLaunchTaskOnHome()Z

    move-result v8

    if-eqz v8, :cond_12b

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v11, 0x1

    iput-boolean v11, v8, Lcom/android/server/wm/Task;->mLaunchTaskOnHome:Z

    :cond_12b
    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-eqz v8, :cond_132

    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    :cond_132
    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-ne v8, v11, :cond_18d

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v8, v8, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v8

    if-nez v8, :cond_148

    const/4 v11, 0x0

    goto :goto_14e

    :cond_148
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v8, v11}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    :goto_14e
    if-eqz v11, :cond_153

    iget-object v11, v11, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_154

    :cond_153
    const/4 v11, 0x0

    :goto_154
    iget-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v13

    if-eqz v13, :cond_166

    iget-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v15, v13}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v13

    if-nez v13, :cond_166

    const/4 v13, 0x1

    goto :goto_167

    :cond_166
    const/4 v13, 0x0

    :goto_167
    if-nez v10, :cond_171

    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTopFreeform()Z

    move-result v10

    if-eqz v10, :cond_171

    const/4 v10, 0x1

    goto :goto_172

    :cond_171
    const/4 v10, 0x0

    :goto_172
    if-nez v13, :cond_179

    if-eqz v10, :cond_177

    goto :goto_179

    :cond_177
    const/4 v10, 0x0

    goto :goto_17a

    :cond_179
    :goto_179
    const/4 v10, 0x1

    :goto_17a
    if-ne v11, v15, :cond_18b

    if-eqz v8, :cond_184

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v13

    if-ne v11, v13, :cond_18b

    :cond_184
    if-eqz v8, :cond_189

    if-eq v8, v9, :cond_189

    goto :goto_18b

    :cond_189
    const/4 v8, 0x0

    goto :goto_18f

    :cond_18b
    :goto_18b
    const/4 v8, 0x1

    goto :goto_18f

    :cond_18d
    const/4 v8, 0x1

    const/4 v10, 0x0

    :goto_18f
    if-nez v8, :cond_193

    if-eqz v10, :cond_285

    :cond_193
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v9

    if-nez v9, :cond_285

    if-eqz v8, :cond_1a4

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v10, 0x400000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1a4
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v9, :cond_1be

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v9

    if-eqz v9, :cond_1be

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-ne v9, v10, :cond_1be

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v9

    if-eqz v9, :cond_1be

    const/4 v9, 0x1

    goto :goto_1bf

    :cond_1be
    const/4 v9, 0x0

    :goto_1bf
    iget-boolean v10, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v10, :cond_1cc

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v10, :cond_1cc

    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v10}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    :cond_1cc
    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v10}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v10

    if-eqz v10, :cond_241

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-eq v9, v15, :cond_1f9

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v10

    if-eq v9, v10, :cond_1f9

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

    goto :goto_1fb

    :cond_1f9
    move-object/from16 v26, v15

    :goto_1fb
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v9

    if-eqz v9, :cond_21c

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v9

    if-eqz v9, :cond_21c

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-ne v1, v9, :cond_21c

    iget-object v9, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v9, v10}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result v9

    if-nez v9, :cond_21c

    const/4 v9, 0x1

    goto :goto_21d

    :cond_21c
    const/4 v9, 0x0

    :goto_21d
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

    :goto_23f
    const/4 v9, 0x0

    goto :goto_282

    :cond_241
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_24a

    if-eqz v9, :cond_280

    :cond_24a
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v9

    if-eqz v9, :cond_26b

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v9

    if-nez v9, :cond_26b

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v9, :cond_261

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v9

    goto :goto_262

    :cond_261
    const/4 v9, 0x0

    :goto_262
    if-eqz v9, :cond_26b

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v10, v15, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    :cond_26b
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

    :cond_280
    move-object v14, v15

    goto :goto_23f

    :goto_282
    iput-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    goto :goto_286

    :cond_285
    move-object v14, v15

    :goto_286
    if-eqz v8, :cond_28b

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->logPIOnlyCreatorAllowsBAL()V

    :cond_28b
    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v8, :cond_2be

    iput-object v8, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/16 v22, 0x1

    aget-boolean v9, v9, v22

    if-eqz v9, :cond_2be

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

    const-wide v9, 0x437c906691e03227L  # 1.28641112901624432E17

    const/16 v11, 0x10

    invoke-static {v13, v9, v10, v11, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2be
    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    if-eqz v8, :cond_2c6

    iput-object v8, v1, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    :cond_2c6
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

    :goto_2da
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FREEFORM_STASH:Z

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v7, :cond_307

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_307

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    move-result v7

    if-eqz v7, :cond_307

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_2fc

    if-nez v6, :cond_2fc

    const/4 v6, 0x1

    goto :goto_2fd

    :cond_2fc
    const/4 v6, 0x0

    :goto_2fd
    iget-object v7, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v6}, Lcom/android/server/wm/TaskOrganizerController;->resetStashedFreeform(Lcom/android/server/wm/Task;Z)V

    :cond_307
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_315

    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v7, :cond_313

    iget-boolean v6, v6, Lcom/android/server/wm/ActivityRecord;->mNoDisplay:Z

    if-eqz v6, :cond_315

    :cond_313
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    :cond_315
    iget v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    const/16 v22, 0x1

    and-int/lit8 v6, v6, 0x1

    const-string/jumbo v7, "intentActivityFound"

    if-eqz v6, :cond_352

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-nez v2, :cond_34d

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_34d

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_TASKS_enabled:[Z

    const/4 v10, 0x0

    aget-boolean v2, v2, v10

    if-eqz v2, :cond_347

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

    :cond_347
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    :cond_34d
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetRootTaskIfNeeded()V

    const/4 v11, 0x1

    return v11

    :cond_352
    const/4 v11, 0x1

    if-eqz v2, :cond_35a

    invoke-virtual {v2, v11, v11}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_35b

    :cond_35a
    const/4 v2, 0x0

    :goto_35b
    invoke-virtual {v4, v11, v11}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v2, :cond_36a

    iget v9, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v10, 0x200000

    and-int/2addr v9, v10

    if-eqz v9, :cond_36a

    const/4 v9, 0x1

    goto :goto_36b

    :cond_36a
    const/4 v9, 0x0

    :goto_36b
    if-eqz v9, :cond_375

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v10, v6, v11}, Lcom/android/server/wm/Task;->resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    :cond_375
    iget v10, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v11, 0x10008000

    and-int v13, v10, v11

    const/4 v14, 0x3

    if-ne v13, v11, :cond_391

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lcom/android/server/wm/Task;->performClearTaskForReuse(Z)V

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v9, 0x0

    invoke-virtual {v4, v2, v9, v9}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mIsTaskCleared:Z

    move/from16 p3, v14

    goto/16 :goto_593

    :cond_391
    const/high16 v11, 0x4000000

    and-int v13, v10, v11

    if-nez v13, :cond_3a1

    const/high16 v13, 0x80000

    and-int/2addr v13, v10

    if-eqz v13, :cond_3a6

    const/high16 v13, 0x8000000

    and-int/2addr v13, v10

    if-nez v13, :cond_3a6

    :cond_3a1
    :goto_3a1
    move/from16 p3, v14

    const/4 v11, 0x1

    goto/16 :goto_52a

    :cond_3a6
    iget v13, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq v14, v13, :cond_3a1

    const/4 v15, 0x2

    if-eq v15, v13, :cond_3a1

    const/4 v15, 0x4

    if-ne v15, v13, :cond_3b1

    goto :goto_3a1

    :cond_3b1
    and-int/2addr v11, v10

    if-nez v11, :cond_461

    iget-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v11, :cond_461

    const/high16 v11, 0x20000

    and-int/2addr v10, v11

    if-eqz v10, :cond_461

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

    if-eqz v6, :cond_45a

    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/16 v24, 0x2

    aget-boolean v9, v9, v24

    if-eqz v9, :cond_40b

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v15}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    move/from16 p3, v14

    const-wide v14, 0x59276a74a9683a61L  # 3.02327783715042E121

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v11, v14, v15, v10, v9}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_40d

    :cond_40b
    move/from16 p3, v14

    :goto_40d
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v9

    if-eq v9, v2, :cond_432

    iget-boolean v10, v9, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-eqz v10, :cond_420

    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_420

    iput-boolean v11, v9, Lcom/android/server/wm/TaskFragment;->mClearedForReorderActivityToFront:Z

    :cond_420
    invoke-virtual {v6, v2, v5}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    iget-boolean v5, v9, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-eqz v5, :cond_430

    iget-object v5, v2, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v5, v5, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onActivityReparentedToTask(Lcom/android/server/wm/ActivityRecord;)V

    :cond_430
    :goto_430
    const/4 v5, 0x1

    goto :goto_442

    :cond_432
    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowContainer;->getDistanceFromTop(Lcom/android/server/wm/WindowContainer;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v2, v5, v6, v10}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowContainer;->getDistanceFromTop(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    if-eq v5, v9, :cond_441

    goto :goto_430

    :cond_441
    const/4 v5, 0x0

    :goto_442
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    if-eqz v5, :cond_449

    iput-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_449
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    invoke-virtual {v0, v6, v3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    goto/16 :goto_593

    :cond_45a
    move/from16 p3, v14

    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_593

    :cond_461
    move/from16 p3, v14

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v10, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_518

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-ne v4, v5, :cond_475

    goto/16 :goto_593

    :cond_475
    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v9, 0x20000000

    and-int/2addr v5, v9

    if-nez v5, :cond_481

    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v11, 0x1

    if-ne v11, v5, :cond_4ae

    :cond_481
    iget-object v5, v6, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4ae

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v5, :cond_4ae

    iget-boolean v5, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v5, :cond_4ae

    iget-object v5, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v5, :cond_4ae

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v2

    if-eqz v2, :cond_4a9

    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v9, v9}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    :cond_4a9
    invoke-virtual {v0, v6, v3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    goto/16 :goto_593

    :cond_4ae
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v6, v4, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-static {v6, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4db

    iget-object v3, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_4db

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_4db

    iget-object v3, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_4db
    iget-object v3, v4, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_4e8

    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_593

    :cond_4e8
    const/4 v11, 0x1

    if-nez v2, :cond_4ef

    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_593

    :cond_4ef
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v3, :cond_593

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_593

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->isActivityEmbeddedPlaceholder()Z

    move-result v3

    if-eqz v3, :cond_593

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eqz v3, :cond_593

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_593

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_593

    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_593

    :cond_518
    const/4 v11, 0x1

    if-nez v9, :cond_51f

    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_593

    :cond_51f
    iget-boolean v2, v4, Lcom/android/server/wm/Task;->rootWasReset:Z

    if-nez v2, :cond_593

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v9, 0x0

    invoke-virtual {v4, v2, v9, v9}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    goto :goto_593

    :goto_52a
    new-array v2, v11, [I

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v5, v10, v2}, Lcom/android/server/wm/Task;->performClearTop(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_551

    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v6, :cond_551

    const/4 v10, 0x0

    aget v2, v2, v10

    if-lez v2, :cond_53f

    iput-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_53f
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v2

    if-eqz v2, :cond_54d

    iget-object v2, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9, v9}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    :cond_54d
    invoke-virtual {v0, v5, v3}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/uri/NeededUriGrants;)V

    goto :goto_593

    :cond_551
    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v5, :cond_56a

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_56a

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-eqz v2, :cond_56a

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTaskFragment:Lcom/android/server/wm/TaskFragment;

    :cond_56a
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_593

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

    if-eqz v5, :cond_58f

    const/4 v5, 0x1

    goto :goto_590

    :cond_58f
    const/4 v5, 0x0

    :goto_590
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/Task;ZZ)V

    :cond_593
    :goto_593
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v2, :cond_641

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

    if-ne v9, v8, :cond_5b1

    const/4 v11, 0x2

    if-ne v0, v11, :cond_5b4

    :cond_5b1
    :goto_5b1
    const/4 v10, 0x0

    goto/16 :goto_640

    :cond_5b4
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v8

    new-instance v9, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda20;

    invoke-direct {v9, v8, v5, v6}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda20;-><init>(III)V

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_5b1

    invoke-virtual {v9, v8}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda20;->test(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5ca

    goto :goto_5b1

    :cond_5ca
    const/4 v11, 0x1

    new-array v10, v11, [I

    invoke-static {v5}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldRestrictActivitySwitch(I)Z

    move-result v11

    new-instance v12, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v8, v5, v12}, Lcom/android/server/wm/BackgroundActivityStartController;->checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    move-result-object v12

    const-string v13, "ActivityTaskManager"

    if-eqz v11, :cond_60d

    iget-boolean v14, v12, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    if-eqz v14, :cond_60d

    invoke-virtual {v4, v9}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-nez v9, :cond_5e9

    move-object v9, v3

    :cond_5e9
    invoke-virtual {v4, v9, v7, v10}, Lcom/android/server/wm/Task;->performClearTop(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;

    const/4 v7, 0x0

    aget v9, v10, v7

    if-lez v9, :cond_60d

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

    :cond_60d
    invoke-static {v5}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldShowToast(I)Z

    move-result v5

    if-eqz v5, :cond_5b1

    if-eqz v11, :cond_61a

    const/4 v7, 0x0

    aget v5, v10, v7

    if-lez v5, :cond_5b1

    :cond_61a
    if-eqz v11, :cond_620

    const-string/jumbo v5, "Top activities cleared by "

    goto :goto_623

    :cond_620
    const-string/jumbo v5, "Top activities would be cleared by "

    :goto_623
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

    :goto_640
    return v10

    :cond_641
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToTopActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_646

    move-object v1, v2

    :cond_646
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_64f

    const/4 v11, 0x1

    invoke-virtual {v4, v11, v11}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :cond_64f
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_659

    if-eq v1, v2, :cond_659

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    iput v2, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    :cond_659
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-eqz v2, :cond_662

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    goto :goto_66c

    :cond_662
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_66c

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v9}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    :cond_66c
    :goto_66c
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetRootTaskIfNeeded()V

    iget-object v2, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveDreamComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_693

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v2

    if-eqz v2, :cond_693

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

    :cond_693
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-eqz v0, :cond_69c

    const/16 v24, 0x2

    return v24

    :cond_69c
    return p3
.end method

.method public final reset(Z)V
    .registers 5

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

    if-eqz p1, :cond_54

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStarter$Request;->reset()V

    :cond_54
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    if-eqz p1, :cond_70

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    if-eqz p1, :cond_70

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    const-string/jumbo p0, "setAffordanceTargetTask: null"

    const-string/jumbo p1, "MultiTaskingController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    return-void
.end method

.method public final resolveReusableTask(Z)Lcom/android/server/wm/Task;
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v2, -0x1

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    if-eq v1, v2, :cond_23

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1b5

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_1b5

    return-object v0

    :cond_23
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x10000000

    and-int/2addr v5, v1

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_33

    const/high16 v5, 0x8000000

    and-int/2addr v1, v5

    if-eqz v1, :cond_47

    :cond_33
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq v7, v1, :cond_47

    if-ne v6, v1, :cond_3a

    goto :goto_47

    :cond_3a
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchTaskIdForAliasManagedTarget()I

    move-result v1

    if-eq v1, v2, :cond_45

    goto :goto_47

    :cond_45
    move v1, v9

    goto :goto_48

    :cond_47
    :goto_47
    move v1, v8

    :goto_48
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_54

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_54

    move v2, v8

    goto :goto_55

    :cond_54
    move v2, v9

    :goto_55
    and-int/2addr v1, v2

    if-eqz v1, :cond_7c

    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v7, v1, :cond_7f

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v1, v2, v9}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_164

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_164

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_164

    const-string/jumbo v2, "Removes redundant singleInstance"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    :cond_7c
    move-object v1, v4

    goto/16 :goto_164

    :cond_7f
    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_96

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eq v6, v1, :cond_8f

    move v1, v8

    goto :goto_90

    :cond_8f
    move v1, v9

    :goto_90
    invoke-virtual {v3, v2, v5, v1}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto/16 :goto_164

    :cond_96
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

    if-eqz v11, :cond_d5

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

    const-wide v13, 0x36e3a4f36cb337fdL  # 2.7527582584529757E-44

    const/16 v15, 0xc00

    invoke-static {v11, v13, v14, v15, v12}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_d5
    iget-object v11, v3, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iput v5, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mActivityType:I

    iput-object v6, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mTaskAffinity:Ljava/lang/String;

    iput-object v7, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIntent:Landroid/content/Intent;

    iput-object v1, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mInfo:Landroid/content/pm/ActivityInfo;

    iput-object v4, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object v4, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    move/from16 v5, p1

    iput-boolean v5, v11, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIncludeLaunchedFromBubble:Z

    if-eqz v2, :cond_fa

    invoke-virtual {v11, v2}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->process(Lcom/android/server/wm/WindowContainer;)V

    iget-object v5, v3, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v6, v5, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_f5

    move-object v1, v6

    goto/16 :goto_164

    :cond_f5
    iget-object v5, v5, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mCandidateRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_fa

    goto :goto_fb

    :cond_fa
    move-object v5, v4

    :goto_fb
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v7, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;

    invoke-direct {v7, v3, v2, v6}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda45;-><init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/TaskDisplayArea;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v3, v7}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_10f

    move-object v1, v2

    goto :goto_164

    :cond_10f
    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v2}, Lcom/android/internal/protolog/WmProtoLogGroups;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_125

    if-nez v5, :cond_125

    aget-boolean v6, v10, v9

    if-eqz v6, :cond_125

    const-wide v6, 0x27428b51d2773e63L

    invoke-static {v2, v6, v7, v9, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_125
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSPERF_ACTIVE_APP_ADCP_ENABLE:Z

    if-eqz v2, :cond_163

    if-nez v5, :cond_163

    iget-object v2, v3, Lcom/android/server/wm/RootWindowContainer;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    if-nez v2, :cond_13e

    iget-object v2, v3, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "PkgPredictorService"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ipm/SecIpmManager;

    iput-object v2, v3, Lcom/android/server/wm/RootWindowContainer;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    :cond_13e
    iget-object v2, v3, Lcom/android/server/wm/RootWindowContainer;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    if-eqz v2, :cond_163

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

    :cond_163
    move-object v1, v5

    :cond_164
    :goto_164
    if-eqz v1, :cond_17e

    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_17e

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v8, v9}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17e

    move-object v1, v4

    :cond_17e
    if-eqz v1, :cond_197

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_18e

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_197

    :cond_18e
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v2, v3, :cond_197

    move-object v1, v4

    :cond_197
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v2, :cond_1b0

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eqz v2, :cond_1b0

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_1b0

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->isActivityEmbeddedPlaceholder()Z

    move-result v2

    if-eqz v2, :cond_1b0

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    :cond_1b0
    if-eqz v1, :cond_1b5

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    return-object v0

    :cond_1b5
    return-object v4
.end method

.method public final resolveToHeavyWeightSwitcherIfNeeded()I
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v3, :cond_17

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1b

    :cond_17
    :goto_17
    move/from16 v17, v2

    goto/16 :goto_179

    :cond_1b
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_17

    :cond_26
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_17

    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v5, :cond_45

    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    goto :goto_17

    :cond_45
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v4, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_59

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    if-eqz v3, :cond_5b

    iget-object v3, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_59
    move v5, v4

    goto :goto_99

    :cond_5b
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

    :goto_99
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

    if-ltz v5, :cond_d3

    const-string/jumbo v5, "has_result"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_d3
    new-instance v5, Landroid/content/IntentSender;

    invoke-direct {v5, v3}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string/jumbo v3, "intent"

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e7

    goto :goto_102

    :cond_e7
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

    :goto_102
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

    if-eqz v2, :cond_164

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_164
    iput-object v3, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_177

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    invoke-virtual {v0, v3, v2}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/16 v17, 0x0

    return v17

    :cond_177
    const/16 v17, 0x0

    :goto_179
    return v17
.end method

.method public final resumeTargetRootTaskIfNeeded()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_11

    iput-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    goto :goto_2d

    :cond_24
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible$1()V

    goto :goto_2d

    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    :goto_2d
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/RootWindowContainer;->updateUserRootTask(ILcom/android/server/wm/Task;)V

    return-void
.end method

.method public final setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;II)V
    .registers 37

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move/from16 v10, p5

    move-object/from16 v5, p6

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    const/4 v12, 0x1

    if-eqz v1, :cond_28

    if-eqz v6, :cond_28

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    iput-boolean v12, v0, Lcom/android/server/wm/ActivityStarter;->mIsFreeformLaunching:Z

    goto :goto_2a

    :cond_28
    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mIsFreeformLaunching:Z

    :goto_2a
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

    if-eqz v5, :cond_44

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_45

    :cond_44
    move-object v1, v13

    :goto_45
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

    if-eqz v1, :cond_70

    move v3, v12

    goto :goto_71

    :cond_70
    move v3, v11

    :goto_71
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-eqz v3, :cond_76

    goto :goto_7c

    :cond_76
    iget-object v1, v6, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :goto_7c
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    iget v1, v4, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v3, 0x3

    if-ne v3, v1, :cond_8b

    move v7, v12

    goto :goto_8c

    :cond_8b
    move v7, v11

    :goto_8c
    const/4 v8, 0x2

    if-ne v8, v1, :cond_91

    move v1, v12

    goto :goto_92

    :cond_91
    move v1, v11

    :goto_92
    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const/high16 v14, 0x80000

    and-int v16, v9, v14

    move/from16 p7, v14

    const/4 v14, 0x4

    const-string v11, "ActivityTaskManager"

    const v17, -0x8080001

    if-eqz v16, :cond_b2

    if-nez v7, :cond_aa

    if-eqz v1, :cond_b2

    :cond_aa
    const-string v1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v11, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_af
    :goto_af
    and-int v9, v9, v17

    goto :goto_c6

    :cond_b2
    iget-object v1, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eq v1, v12, :cond_c4

    if-eq v1, v8, :cond_c4

    if-eq v1, v3, :cond_bd

    goto :goto_c6

    :cond_bd
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v1, v14, :cond_af

    if-eqz v16, :cond_c6

    goto :goto_af

    :cond_c4
    or-int v9, v9, p7

    :cond_c6
    :goto_c6
    iput v9, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-boolean v1, v4, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_d9

    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq v8, v1, :cond_d9

    if-ne v3, v1, :cond_d3

    goto :goto_d9

    :cond_d3
    and-int v1, v9, p7

    if-eqz v1, :cond_d9

    move v1, v12

    goto :goto_da

    :cond_d9
    :goto_d9
    const/4 v1, 0x0

    :goto_da
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/high16 v7, 0x10000000

    if-ne v1, v14, :cond_e6

    or-int v1, v9, v7

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    :cond_e6
    iget-object v1, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    if-eqz v1, :cond_ff

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v9, :cond_ff

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ff

    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v1, v7

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    :cond_ff
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_130

    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v7

    if-eqz v1, :cond_130

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

    :cond_130
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int v3, v1, p7

    if-eqz v3, :cond_13d

    iget-object v3, v4, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v3, :cond_13d

    or-int/2addr v1, v7

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    :cond_13d
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int v3, v1, v7

    if-eqz v3, :cond_152

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v3, :cond_14d

    iget-object v3, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-ne v3, v8, :cond_152

    :cond_14d
    const/high16 v3, 0x8000000

    or-int/2addr v1, v3

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    :cond_152
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isLaunchAdjacent()Z

    move-result v1

    if-eqz v1, :cond_162

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-nez v1, :cond_162

    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    :cond_162
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x40000

    and-int/2addr v1, v3

    if-nez v1, :cond_16b

    move v1, v12

    goto :goto_16c

    :cond_16b
    const/4 v1, 0x0

    :goto_16c
    iput-boolean v1, v15, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result v1

    if-nez v1, :cond_185

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Can\'t resume non-current user r="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_185
    if-eqz v1, :cond_18f

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_18c

    goto :goto_18f

    :cond_18c
    iput-boolean v12, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    goto :goto_194

    :cond_18f
    :goto_18f
    iput-boolean v12, v4, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    :goto_194
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, -0x1

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v1, :cond_29c

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    if-eq v1, v3, :cond_1ce

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    move-result v1

    if-eqz v1, :cond_1ce

    iput-boolean v12, v4, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    invoke-virtual {v4, v12}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->canTaskOverlayResume()Z

    move-result v1

    if-nez v1, :cond_1db

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1db

    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_1db

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    iput v8, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    goto :goto_1db

    :cond_1ce
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v1

    if-eqz v1, :cond_1db

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    iput v8, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    :cond_1db
    :goto_1db
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

    if-eqz v9, :cond_206

    if-eqz v1, :cond_206

    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v1, v1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_206

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    iput v8, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    :cond_206
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-nez p4, :cond_243

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_21e

    move-object v1, v13

    goto :goto_228

    :cond_21e
    iget-object v9, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v9, v9, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragment;

    :goto_228
    if-eqz v1, :cond_245

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v9

    if-eqz v9, :cond_245

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v15, "Can not start activity in TaskFragment in PIP: "

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v13

    goto :goto_245

    :cond_243
    move-object/from16 v1, p4

    :cond_245
    :goto_245
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v9, :cond_284

    if-eqz v1, :cond_284

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->isActivityEmbeddedPlaceholder()Z

    move-result v9

    if-eqz v9, :cond_284

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    if-eqz v9, :cond_27f

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v15

    if-eqz v15, :cond_27f

    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v15

    if-eqz v15, :cond_27f

    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v15

    move/from16 p7, v14

    new-instance v14, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v14, v3}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v15, v14}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_281

    if-eq v3, v9, :cond_281

    iput v8, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    goto :goto_281

    :cond_27f
    move/from16 p7, v14

    :cond_281
    :goto_281
    iput-boolean v12, v1, Lcom/android/server/wm/TaskFragment;->mIsPlaceholderTaskFragment:Z

    goto :goto_286

    :cond_284
    move/from16 p7, v14

    :goto_286
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_2a0

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getStartAssistantActivity()Z

    move-result v3

    if-eqz v3, :cond_2a0

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v3

    if-eqz v3, :cond_2a0

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3, v13}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    goto :goto_2a0

    :cond_29c
    move/from16 p7, v14

    move-object/from16 v1, p4

    :cond_2a0
    :goto_2a0
    iget v3, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v9, 0x1000000

    and-int/2addr v3, v9

    if-eqz v3, :cond_2a9

    move-object v3, v5

    goto :goto_2aa

    :cond_2a9
    move-object v3, v13

    :goto_2aa
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_2c8

    iget-boolean v3, v2, Lcom/android/server/wm/Task;->inRecents:Z

    if-nez v3, :cond_2c8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Starting activity in task not in recents: "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    :cond_2c8
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_2f9

    iget-object v3, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v2, Lcom/android/server/wm/Task;->mRequiredDisplayCategory:Ljava/lang/String;

    if-eqz v9, :cond_2da

    iget-object v14, v3, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2f9

    :cond_2da
    iget-object v2, v2, Lcom/android/server/wm/Task;->mRequiredDisplayCategory:Ljava/lang/String;

    if-nez v2, :cond_2e3

    iget-object v2, v3, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    if-nez v2, :cond_2e3

    goto :goto_2f9

    :cond_2e3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Starting activity in task with different display category: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    :cond_2f9
    :goto_2f9
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    iput v10, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/lit8 v1, v10, 0x1

    if-eqz v1, :cond_323

    if-nez v5, :cond_310

    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_310

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_311

    :cond_310
    move-object v1, v5

    :goto_311
    if-eqz v1, :cond_31d

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_323

    :cond_31d
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    :cond_323
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_32c

    move v1, v12

    goto :goto_32d

    :cond_32c
    const/4 v1, 0x0

    :goto_32d
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mBalCode:I

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_342

    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isBackgroundActivityStartsEnabled()Z

    move-result v1

    if-nez v1, :cond_342

    iput v8, v0, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    :cond_342
    iget-object v1, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3c1

    iget-object v1, v6, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v2

    if-eqz v2, :cond_3a9

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

    if-eqz v3, :cond_37d

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isMultiSplitActive()Z

    move-result v3

    if-eqz v3, :cond_37d

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37d
    const/4 v3, 0x0

    :goto_37e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_3c1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v9

    if-eqz v9, :cond_3a6

    const/4 v10, 0x0

    invoke-virtual {v9, v12, v10}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    if-eqz v11, :cond_3a6

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v9

    iget v9, v9, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v10, v9, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_3a6
    add-int/lit8 v3, v3, 0x1

    goto :goto_37e

    :cond_3a9
    const/4 v10, 0x0

    invoke-virtual {v1, v12, v10}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_3c1

    invoke-virtual {v1, v12, v10}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_3c1

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSavedFrontTaskIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v1, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_3c1
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v2, 0x10001000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_45e

    if-eqz v5, :cond_45e

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v1

    if-nez v1, :cond_45e

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    if-ne v1, v12, :cond_45e

    iget-object v1, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_45e

    invoke-virtual {v1, v12}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v1

    if-eqz v1, :cond_45e

    if-eqz p2, :cond_41c

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->hasValidLaunchAdjacentExt()Z

    move-result v1

    if-eqz v1, :cond_41c

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->hasValidHorizontalSplitLayoutWithAdjacentFlag()Z

    move-result v1

    if-eqz v1, :cond_3f9

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->launchToTopSideWithAdjacentFlag()Z

    move-result v1

    if-eqz v1, :cond_3f7

    const/4 v3, 0x5

    goto :goto_403

    :cond_3f7
    const/4 v3, 0x3

    goto :goto_403

    :cond_3f9
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityOptions;->launchToRightSideWithAdjacentFlag()Z

    move-result v1

    if-eqz v1, :cond_401

    move v3, v8

    goto :goto_403

    :cond_401
    move/from16 v3, p7

    :goto_403
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

    goto :goto_453

    :cond_41c
    iget-object v1, v6, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_453

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v1

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_LAUNCH_ADJACENT:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_449

    if-eq v1, v3, :cond_43d

    const/16 v2, 0x20

    if-ne v1, v2, :cond_43b

    goto :goto_43d

    :cond_43b
    const/4 v2, 0x0

    goto :goto_43e

    :cond_43d
    :goto_43d
    move v2, v12

    :goto_43e
    if-eqz v2, :cond_442

    if-eq v1, v3, :cond_444

    :cond_442
    if-nez v2, :cond_453

    :cond_444
    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iput-boolean v12, v1, Lcom/android/server/wm/MultiTaskingController;->mDeferEnsureConfig:Z

    goto :goto_453

    :cond_449
    const/16 v2, 0x10

    if-eq v1, v2, :cond_44f

    if-ne v1, v3, :cond_453

    :cond_44f
    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iput-boolean v12, v1, Lcom/android/server/wm/MultiTaskingController;->mDeferEnsureConfig:Z

    :cond_453
    :goto_453
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_LAUNCH_ADJACENT_SA_LOGGING:Z

    if-eqz v1, :cond_45e

    const-string v1, "1000"

    const-string v2, "From application"

    invoke-static {v1, v2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45e
    if-eqz v5, :cond_462

    iget-object v13, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    :cond_462
    if-eqz v13, :cond_4be

    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_4be

    invoke-virtual {v13}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget-boolean v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isActivityStackTransparent:Z

    if-eqz v2, :cond_4b7

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    if-lez v1, :cond_4b7

    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MultiTaskingController;->hasPermissionForSystemModalPolicy(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_487

    :cond_485
    const/4 v12, 0x0

    goto :goto_4b4

    :cond_487
    iget-object v3, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/MultiTaskingController;->hasPermissionForSystemModalPolicy(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v5

    if-eqz v5, :cond_49d

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->canApplySystemModalPolicyForNonResizable()Z

    move-result v1

    if-eqz v1, :cond_485

    goto :goto_4b4

    :cond_49d
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_4ac

    if-eqz v3, :cond_4ac

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4ac

    goto :goto_4b4

    :cond_4ac
    if-eqz v1, :cond_485

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->canApplySystemModalPolicyForNonResizable()Z

    move-result v1

    if-eqz v1, :cond_485

    :goto_4b4
    iput-boolean v12, v13, Lcom/android/server/wm/Task;->mIsAllowedFullscreenInDesktop:Z

    goto :goto_4e4

    :cond_4b7
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->canApplySystemModalPolicyForNonResizable()Z

    move-result v1

    if-eqz v1, :cond_4e4

    goto :goto_4d5

    :cond_4be
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->canApplySystemModalPolicyForNonResizable()Z

    move-result v1

    if-eqz v1, :cond_4e4

    iget-object v1, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_4e4

    iget-object v2, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v1

    if-eqz v1, :cond_4e4

    :goto_4d5
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-nez v1, :cond_4df

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    :cond_4df
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v12}, Landroid/app/ActivityOptions;->setNeedApplySystemModalPolicy(Z)V

    :cond_4e4
    :goto_4e4
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mIsSystemModalTaskTop:Z

    return-void
.end method

.method public final setLaunchedAppsCoverLauncher(Lcom/android/server/wm/Task;Z)V
    .registers 4

    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mIsLaunchedFromAppsCoverLauncher:Z

    if-ne v0, p2, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->isLaunchedFromAppsCoverLauncher:Z

    if-eq v0, p2, :cond_d

    goto :goto_e

    :cond_d
    return-void

    :cond_e
    :goto_e
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
    .registers 4

    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mIsLaunchedFromMultistarCoverLauncher:Z

    if-ne v0, p2, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->isLaunchedFromMultistarCoverLauncher:Z

    if-eq v0, p2, :cond_d

    goto :goto_e

    :cond_d
    return-void

    :cond_e
    :goto_e
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
    .registers 40

    move-object/from16 v11, p9

    iget-boolean v0, v11, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mBasedOnRealCaller:Z

    iget v1, v11, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    const/4 v12, 0x5

    if-eqz v0, :cond_23

    const/16 v0, 0x7f

    if-eq v1, v0, :cond_23

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

    goto :goto_38

    :cond_23
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

    :goto_38
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/ActivityStarter;->setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;II)V

    move-object v9, v0

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v10, 0x0

    const/4 v13, 0x1

    const/high16 v2, 0x10000000

    const/4 v14, 0x2

    const/4 v15, 0x3

    const/4 v3, 0x0

    if-nez v0, :cond_112

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_112

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_112

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v4, v9, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v4, v13, v3}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v0, :cond_f7

    iget v5, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq v15, v5, :cond_65

    if-ne v14, v5, :cond_79

    :cond_65
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iget-object v7, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d1

    if-nez v4, :cond_a9

    :cond_79
    if-nez v4, :cond_9c

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

    goto/16 :goto_129

    :cond_9c
    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_a5

    iput-boolean v3, v9, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_129

    :cond_a5
    iput-boolean v13, v9, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto/16 :goto_129

    :cond_a9
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

    :cond_d1
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

    :cond_f7
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

    :cond_112
    iput-object v10, v9, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v0

    if-eqz v0, :cond_129

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_129

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_127

    goto :goto_129

    :cond_127
    iput-boolean v13, v9, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    :cond_129
    :goto_129
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    const-string v4, "ActivityTaskManager"

    if-nez v0, :cond_169

    iget-object v5, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v5, :cond_154

    iget v5, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v5, v2

    if-nez v5, :cond_169

    if-nez v0, :cond_169

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

    goto :goto_169

    :cond_154
    iget v0, v5, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-ne v0, v15, :cond_15e

    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v2

    iput v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_169

    :cond_15e
    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq v15, v0, :cond_164

    if-ne v14, v0, :cond_169

    :cond_164
    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v2

    iput v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    :cond_169
    :goto_169
    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v5, v0, 0x1000

    if-eqz v5, :cond_1b1

    and-int/2addr v0, v2

    if-eqz v0, :cond_174

    move v0, v13

    goto :goto_175

    :cond_174
    move v0, v3

    :goto_175
    const-string/jumbo v5, "WindowManager"

    if-eqz v0, :cond_17e

    iget-object v7, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v7, :cond_18e

    :cond_17e
    if-nez v0, :cond_183

    const-string v0, "Launch adjacent ignored due to missing NEW_TASK"

    goto :goto_185

    :cond_183
    const-string v0, "Launch adjacent ignored due to missing source activity"

    :goto_185
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    :cond_18e
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1b1

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_1b1

    :goto_196
    if-eqz v0, :cond_1b1

    iget-boolean v7, v0, Lcom/android/server/wm/Task;->mLaunchAdjacentDisabled:Z

    if-eqz v7, :cond_1a8

    const-string v0, "Launch adjacent blocked by source task or ancestor"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_1b1

    :cond_1a8
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_196

    :cond_1b1
    :goto_1b1
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    const/4 v5, 0x4

    const/4 v7, -0x1

    if-ne v0, v5, :cond_1cb

    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x8000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_1cf

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_1cb

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->isStartedFromWindowTypeLauncher()Z

    move-result v0

    if-eqz v0, :cond_1cb

    goto :goto_1cf

    :cond_1cb
    move/from16 p3, v2

    goto/16 :goto_321

    :cond_1cf
    :goto_1cf
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_1f8

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    if-nez v0, :cond_1df

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v0

    :cond_1df
    iget-object v8, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v8

    if-eqz v8, :cond_1f6

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v16

    if-eqz v16, :cond_1f6

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v8

    goto :goto_1fa

    :cond_1f6
    move v8, v3

    goto :goto_1fa

    :cond_1f8
    move v0, v3

    move v8, v0

    :goto_1fa
    move/from16 p3, v2

    if-nez v8, :cond_20e

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_20e

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_20e

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v8

    :cond_20e
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiInstanceController:Lcom/android/server/wm/MultiInstanceController;

    move/from16 p4, v5

    iget-object v5, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v14, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getLaunchTaskIdForSingleInstancePerTask()I

    move-result v15

    if-eq v15, v7, :cond_225

    goto/16 :goto_321

    :cond_225
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

    if-nez v14, :cond_242

    if-nez v0, :cond_242

    if-eqz v8, :cond_24e

    :cond_242
    if-eqz v14, :cond_26d

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_26d

    if-nez v0, :cond_26d

    if-nez v8, :cond_26d

    :cond_24e
    move v0, v3

    :goto_24f
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_321

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_26a

    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    goto/16 :goto_321

    :cond_26a
    add-int/lit8 v0, v0, 0x1

    goto :goto_24f

    :cond_26d
    if-eqz v14, :cond_27d

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_27d

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_27d

    goto/16 :goto_321

    :cond_27d
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v7, v3

    move-object v3, v10

    move-object v14, v3

    :goto_285
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_2ea

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Task;

    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v17

    if-eqz v17, :cond_2a6

    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v13

    if-ne v13, v8, :cond_2a6

    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v2, v10, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    goto/16 :goto_321

    :cond_2a6
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v13

    if-eqz v13, :cond_2bf

    invoke-virtual {v10}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v13

    if-nez v13, :cond_2b6

    if-nez v3, :cond_2e6

    move-object v3, v10

    goto :goto_2e6

    :cond_2b6
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v2, v10, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    goto/16 :goto_321

    :cond_2bf
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v13

    if-nez v13, :cond_2c9

    if-nez v14, :cond_2e6

    move-object v14, v10

    goto :goto_2e6

    :cond_2c9
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v13

    if-eqz v13, :cond_2db

    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e6

    :cond_2db
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e6
    :goto_2e6
    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x1

    goto :goto_285

    :cond_2ea
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    if-nez v0, :cond_2f9

    if-eqz v14, :cond_2f9

    goto :goto_2fa

    :cond_2f9
    move-object v14, v0

    :goto_2fa
    if-eqz v14, :cond_304

    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v2, v14, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    goto :goto_321

    :cond_304
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v12, :cond_318

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_311

    goto :goto_318

    :cond_311
    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int v0, v0, p4

    iput v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_321

    :cond_318
    :goto_318
    if-eqz v3, :cond_321

    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v2, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setLaunchTaskIdForSingleInstancePerTask(I)V

    :cond_321
    :goto_321
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v2, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_331
    if-ge v3, v2, :cond_343

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v5

    if-ne v5, v12, :cond_331

    const/4 v10, 0x1

    goto :goto_344

    :cond_343
    const/4 v10, 0x0

    :goto_344
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_352

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object v0

    move-object v13, v0

    goto :goto_353

    :cond_352
    const/4 v13, 0x0

    :goto_353
    if-eqz v6, :cond_35b

    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->mLaunchedFromBubble:Z

    if-eqz v0, :cond_35b

    const/4 v0, 0x1

    goto :goto_35c

    :cond_35b
    const/4 v0, 0x0

    :goto_35c
    invoke-virtual {v9, v0}, Lcom/android/server/wm/ActivityStarter;->resolveReusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v14

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_38c

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    move-result v0

    if-eqz v0, :cond_38c

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v2, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iget v0, v0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-static {v2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_38c

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->isFreezeTaskListReorderingSet()Z

    move-result v0

    if-nez v0, :cond_38c

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    :cond_38c
    if-eqz v14, :cond_390

    move-object v0, v14

    goto :goto_3df

    :cond_390
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_3a6

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_3a6

    iget-boolean v2, v9, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v2, :cond_3a6

    iget v2, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int v2, v2, p3

    if-eqz v2, :cond_3a6

    :goto_3a4
    const/4 v0, 0x0

    goto :goto_3df

    :cond_3a6
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_3ad

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_3df

    :cond_3ad
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_3c5

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-nez v0, :cond_3c2

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    iget-object v5, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v9, v0, v2, v3, v5}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    :cond_3c2
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/Task;

    goto :goto_3df

    :cond_3c5
    iget v2, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v5, 0x0

    invoke-virtual {v9, v0, v2, v5, v3}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_3d8

    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_3df

    :cond_3d8
    const-string/jumbo v2, "computeTargetTask"

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    goto :goto_3a4

    :goto_3df
    if-nez v0, :cond_3e3

    const/4 v15, 0x1

    goto :goto_3e4

    :cond_3e3
    const/4 v15, 0x0

    :goto_3e4
    iput-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetTask:Lcom/android/server/wm/Task;

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_3ff

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3ff

    if-ge v2, v12, :cond_3ff

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    goto :goto_400

    :cond_3ff
    const/4 v3, 0x0

    :goto_400
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    if-eqz v2, :cond_417

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_417

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_417

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_417

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->setLaunchedFromHome()V

    :cond_417
    if-eqz v0, :cond_440

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_440

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isActivatableDeskRoot()Z

    move-result v2

    if-eqz v2, :cond_440

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_440

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_440

    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/android/server/wm/ActivityStarter;->mIsSystemModalTaskTop:Z

    :cond_440
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    if-eqz v12, :cond_46d

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v2}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_46d

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v2

    if-eqz v2, :cond_46d

    if-eqz v0, :cond_45d

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v2

    if-eqz v2, :cond_46d

    :cond_45d
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-nez v2, :cond_467

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    iput-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    :cond_467
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    :cond_46d
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

    if-eqz v3, :cond_495

    goto :goto_49d

    :cond_495
    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    :goto_49d
    iput-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v2, v2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iput v2, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredWindowingMode:I

    invoke-virtual {v9, v1, v15, v0}, Lcom/android/server/wm/ActivityStarter;->isAllowedToStart(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)I

    move-result v2

    if-eqz v2, :cond_4c7

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_4c6

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

    :cond_4c6
    return v2

    :cond_4c7
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v2, :cond_4d0

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityStartLocked(Lcom/android/server/wm/ActivityRecord;)V

    :cond_4d0
    if-eqz v0, :cond_56e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTreeWeight()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-lez v2, :cond_50a

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

    :cond_50a
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v2

    if-nez v2, :cond_557

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_520

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget v2, v2, Lcom/android/server/wm/WindowProcessController;->mUid:I

    move/from16 v3, p11

    if-eq v2, v3, :cond_557

    :cond_520
    if-eqz v13, :cond_557

    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v2

    if-eqz v2, :cond_557

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_557

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_53d

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_53e

    :cond_53d
    const/4 v2, 0x0

    :goto_53e
    if-eqz v2, :cond_554

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isStageRootTask()Z

    move-result v2

    if-eqz v2, :cond_554

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startActivityInner: allow transient-hide task to reparenting, tid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v2, v3, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_557

    :cond_554
    const/4 v2, 0x2

    iput v2, v9, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    :cond_557
    :goto_557
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v2

    if-nez v2, :cond_564

    iget-boolean v2, v11, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mOnlyCreatorAllows:Z

    if-eqz v2, :cond_564

    const/4 v2, 0x1

    iput v2, v9, Lcom/android/server/wm/ActivityStarter;->mCanMoveToFrontCode:I

    :cond_564
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v2

    iput-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mPriorAboveTask:Lcom/android/server/wm/Task;

    :cond_56e
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_59f

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v2

    if-eq v2, v12, :cond_59f

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getForceLaunchOverTargetTask()Z

    move-result v2

    if-eqz v2, :cond_59f

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v2

    if-eqz v2, :cond_591

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    goto :goto_592

    :cond_591
    const/4 v3, 0x0

    :goto_592
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v2

    if-eqz v2, :cond_59f

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    :cond_59f
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    if-eqz v2, :cond_620

    if-eqz v14, :cond_620

    if-eqz p6, :cond_620

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Landroid/app/ActivityOptions;->isResumedAffordanceAnimationRequested()Z

    move-result v2

    if-eqz v2, :cond_620

    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-ne v2, v3, :cond_620

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FREEFORM_STASH:Z

    if-eqz v2, :cond_5c7

    invoke-virtual {v14}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    move-result v2

    if-eqz v2, :cond_5c7

    goto :goto_620

    :cond_5c7
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_5e4

    invoke-virtual {v14}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_620

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_620

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_620

    goto :goto_601

    :cond_5e4
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_5f1

    invoke-virtual {v14}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v2

    if-eqz v2, :cond_5f1

    goto :goto_601

    :cond_5f1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v2, :cond_620

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_620

    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->isSplitEmbedded()Z

    move-result v2

    if-eqz v2, :cond_620

    :goto_601
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v3, v2, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    if-eq v3, v14, :cond_620

    iput-object v14, v2, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setAffordanceTargetTask: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "MultiTaskingController"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_620
    :goto_620
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v2

    if-eqz v2, :cond_631

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/DexController;->showWarningToastIfNeeded(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/Task;)V

    :cond_631
    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v3, v3, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v4, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v8, v9, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    if-eqz v14, :cond_659

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

    goto :goto_662

    :cond_659
    move-object/from16 v6, p2

    move-object v7, v1

    move-object v1, v14

    move-object v14, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    :goto_662
    if-eqz v3, :cond_666

    goto/16 :goto_858

    :cond_666
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_SA_LOGGING:Z

    if-nez v0, :cond_66e

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_LARGE_COVER_SCREEN_SA_LOGGING:Z

    if-eqz v0, :cond_6ab

    :cond_66e
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_6ab

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6ab

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_68c

    const/4 v0, 0x0

    goto :goto_690

    :cond_68c
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_690
    if-eqz v0, :cond_69c

    iget-object v2, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6ab

    :cond_69c
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "W005"

    invoke-static {v2, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6ab
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_6c7

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_6c7

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isDeferSyncSplitTransitionApps(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c7

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAiKeyAppLaunch(Z)V

    :cond_6c7
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v0, :cond_75a

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v2

    if-eqz v2, :cond_75a

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->hasChildTaskInSideStage()Z

    move-result v2

    if-eqz v2, :cond_75a

    iget-object v2, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionType()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_75a

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_75a

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_75a

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v2

    if-nez v2, :cond_75a

    invoke-virtual {v7, v3}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v2

    if-eqz v2, :cond_75a

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v3, v2, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v3, v3, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    iget-object v2, v2, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_709

    const/4 v2, 0x0

    goto :goto_723

    :cond_709
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

    :goto_723
    if-eqz v2, :cond_75a

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v3, v2, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v3, v3, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    iget-object v2, v2, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_731

    const/4 v2, 0x0

    goto :goto_74b

    :cond_731
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

    :goto_74b
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v2, :cond_75a

    iget-object v2, v7, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v2

    const/high16 v3, 0x40000

    invoke-virtual {v2, v3}, Lcom/android/server/wm/Transition;->addFlag(I)V

    :cond_75a
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isLaunchAdjacent()Z

    move-result v2

    if-eqz v2, :cond_778

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_778

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_778

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_778

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/server/wm/ActivityRecord;->mWillLaunchAdjacentInSameTask:Z

    goto :goto_779

    :cond_778
    const/4 v5, 0x1

    :goto_779
    if-eqz v15, :cond_77d

    const/4 v2, 0x0

    goto :goto_781

    :cond_77d
    invoke-virtual {v14, v5, v5}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    :goto_781
    if-eqz v2, :cond_807

    iget v3, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v5, 0x3

    if-ne v5, v3, :cond_7a9

    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_7a9

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-ne v14, v3, :cond_7a9

    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v9, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v5, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v5, v8}, Lcom/android/server/wm/RootWindowContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_7a9

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eq v4, v14, :cond_7a9

    const-string/jumbo v4, "Removes redundant singleInstance"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    :cond_7a9
    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v3}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v3

    if-eqz v3, :cond_7ef

    if-eqz v14, :cond_7ef

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v3

    if-eqz v3, :cond_7ef

    iget-boolean v3, v9, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    if-nez v3, :cond_7c0

    goto :goto_7ef

    :cond_7c0
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->isExternalDisplayDesktop()Z

    move-result v3

    if-eqz v3, :cond_7ef

    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v3, :cond_7ef

    iget-object v4, v3, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v4, :cond_7ef

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

    :cond_7ef
    :goto_7ef
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

    if-eqz v1, :cond_80c

    return v1

    :cond_807
    move-object/from16 v2, p10

    const/4 v5, 0x1

    iput-boolean v5, v9, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    :cond_80c
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_81b

    invoke-virtual {v9, v1, v2}, Lcom/android/server/wm/ActivityStarter;->deliverToCurrentTopIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/uri/NeededUriGrants;)I

    move-result v3

    if-eqz v3, :cond_81b

    return v3

    :cond_81b
    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V

    if-eqz v15, :cond_85b

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

    if-eqz v0, :cond_85d

    :goto_858
    const/16 v0, 0xa

    return v0

    :cond_85b
    move/from16 p3, v0

    :cond_85d
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_86d

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v4, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v9, v0, v3, v14, v4}, Lcom/android/server/wm/ActivityStarter;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    :cond_86d
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_884

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_884

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->isForceLaunchTaskOnHome()Z

    move-result v0

    if-eqz v0, :cond_884

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mLaunchTaskOnHome:Z

    :cond_884
    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8b0

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_8b0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v3

    if-nez v3, :cond_8b0

    iget-object v0, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_8b0

    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_8b0

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    const-string/jumbo v3, "adjacent"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8b0
    if-eqz v15, :cond_952

    iget-boolean v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_8bd

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_8bd

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_8be

    :cond_8bd
    const/4 v0, 0x0

    :goto_8be
    iget-boolean v3, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v3, :cond_8cb

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v3

    if-nez v3, :cond_8cb

    const/16 v24, 0x1

    goto :goto_8cd

    :cond_8cb
    const/16 v24, 0x0

    :goto_8cd
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

    if-nez v3, :cond_8fc

    goto :goto_8ff

    :cond_8fc
    invoke-virtual {v3, v1}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    :goto_8ff
    const-string/jumbo v3, "setTaskFromReuseOrCreateNewTask"

    invoke-virtual {v9, v3, v1}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_TASKS_enabled:[Z

    aget-boolean v1, v1, p3

    if-eqz v1, :cond_928

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v10, -0x1e660f29cd5dc2c7L  # -1.458816009883848E162

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v4, v10, v11, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_928
    if-eqz v0, :cond_92f

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    :cond_92f
    if-eqz v6, :cond_935

    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-nez v0, :cond_94a

    :cond_935
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_998

    const-string/jumbo v1, "com.samsung.android.multiwindow.activity.alias.targetactivity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_998

    :cond_94a
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mIsAliasManaged:Z

    goto :goto_998

    :cond_952
    move-object/from16 p5, v1

    iget-boolean v0, v9, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v0, :cond_998

    const-string/jumbo v0, "adding to task"

    invoke-virtual {v9, v0, v14}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    iget v0, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v1, 0x10008000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_968

    const/4 v3, 0x1

    goto :goto_969

    :cond_968
    const/4 v3, 0x0

    :goto_969
    if-eqz p3, :cond_998

    if-eqz v3, :cond_998

    if-eqz v6, :cond_998

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_998

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_998

    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_998

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startActivityInner: ensure visible earlier for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {v14, v5, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_998
    :goto_998
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v9, v0}, Lcom/android/server/wm/ActivityStarter;->recordTransientLaunchIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    iget-boolean v0, v9, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_9cc

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v0

    if-nez v0, :cond_9c9

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const-string/jumbo v1, "reuseOrNewTask"

    invoke-virtual {v0, v1, v14}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v0

    if-nez v0, :cond_9cc

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveDreamComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_9cc

    if-nez v16, :cond_9cc

    const/4 v5, 0x1

    iput-boolean v5, v9, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    iput-boolean v5, v7, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    goto :goto_9cc

    :cond_9c9
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStarter;->logPIOnlyCreatorAllowsBAL()V

    :cond_9cc
    :goto_9cc
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v1

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_a1b

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_a1b

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

    goto :goto_a48

    :cond_a1b
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mShareIdentity:Z

    if-eqz v0, :cond_a48

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

    :cond_a48
    :goto_a48
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v15, :cond_a75

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

    :cond_a75
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

    if-eq v0, v12, :cond_a93

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v0, v12, v3}, Landroid/content/Intent;->semSetLaunchOverTargetTask(IZ)V

    :cond_a93
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_APPLOCK:Z

    if-eqz v10, :cond_aad

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    if-eqz v0, :cond_aad

    iget-boolean v1, v9, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-eqz v1, :cond_aad

    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AppLockPolicy;->isActivityInExceptionList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_aad

    const/4 v11, 0x1

    goto :goto_aae

    :cond_aad
    const/4 v11, 0x0

    :goto_aae
    if-eqz v10, :cond_ace

    if-eqz v11, :cond_ace

    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_ace

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysOnTop()Z

    move-result v1

    if-eqz v1, :cond_ace

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.applock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ace

    const/4 v5, 0x1

    iput-boolean v5, v7, Lcom/android/server/wm/ActivityRecord;->mIsAppLockExceptionActivity:Z

    :cond_ace
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    if-eq v8, v13, :cond_adb

    const/4 v4, 0x1

    goto :goto_adc

    :cond_adb
    const/4 v4, 0x0

    :goto_adc
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object/from16 v2, p5

    move v3, v15

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    iget-boolean v0, v9, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_b46

    invoke-virtual {v8}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v1

    if-eqz v1, :cond_b38

    if-eqz v0, :cond_b03

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v1, :cond_b03

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, v0, :cond_b03

    goto :goto_b38

    :cond_b03
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v0

    if-eqz v0, :cond_b2a

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_b18

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v1, v0, :cond_b1b

    goto :goto_b2a

    :cond_b18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_b1b
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStarter;->avoidMoveToFront()Z

    move-result v0

    if-nez v0, :cond_b27

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->moveToFront()V

    goto :goto_b2a

    :cond_b27
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStarter;->logPIOnlyCreatorAllowsBAL()V

    :cond_b2a
    :goto_b2a
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v2, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-boolean v5, v9, Lcom/android/server/wm/ActivityStarter;->mTransientLaunch:Z

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    goto :goto_b46

    :cond_b38
    :goto_b38
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mTargetRootTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    :cond_b46
    :goto_b46
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

    if-eqz v0, :cond_b94

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->isLaunchIntoPip()Z

    move-result v0

    if-eqz v0, :cond_b94

    if-eqz v6, :cond_b94

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v0, v1, :cond_b94

    invoke-virtual/range {p9 .. p9}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result v0

    if-eqz v0, :cond_b94

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const-string/jumbo v1, "launch-into-pip"

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_b94

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1, v6}, Lcom/android/server/wm/RootWindowContainer;->moveActivityToPinnedRootTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    :cond_b94
    if-eqz v18, :cond_b9c

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    move-result v0

    if-nez v0, :cond_bd2

    :cond_b9c
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_ba6

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getNeedApplySystemModalPolicy()Z

    move-result v0

    if-nez v0, :cond_bd2

    :cond_ba6
    if-eqz v6, :cond_bb0

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_bb0

    const/4 v0, 0x1

    goto :goto_bb1

    :cond_bb0
    const/4 v0, 0x0

    :goto_bb1
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_bbc

    move v13, v5

    goto :goto_bbd

    :cond_bbc
    const/4 v13, 0x0

    :goto_bbd
    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v1

    if-eqz v0, :cond_bd2

    if-eqz v3, :cond_bd2

    if-eqz v13, :cond_bd2

    if-nez v1, :cond_bd2

    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v0}, Lcom/android/server/wm/FreeformController;->showNotSupportMultiWindowToast()V

    :cond_bd2
    if-eqz v10, :cond_bda

    if-eqz v11, :cond_bda

    const/4 v3, 0x0

    iput-boolean v3, v7, Lcom/android/server/wm/ActivityRecord;->mIsAppLockExceptionActivity:Z

    goto :goto_bdb

    :cond_bda
    const/4 v3, 0x0

    :goto_bdb
    iget-object v0, v9, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getBackgroundActivityLaunchController()Lcom/android/server/wm/BackgroundActivityStartController;

    move-result-object v0

    iget-object v1, v9, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->onNewActivityLaunched(Lcom/android/server/wm/ActivityRecord;)V

    return v3
.end method

.method public final startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;ILcom/android/server/wm/Transition;Z)I
    .registers 24

    move-object/from16 v7, p12

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    const/4 v8, 0x0

    iput-object v8, p1, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    const/4 v9, 0x0

    if-eqz p13, :cond_32

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->freezeScreen:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v0, :cond_17

    goto :goto_1f

    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    :goto_1f
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-virtual {v7, v0, v9}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {v7, v0}, Lcom/android/server/wm/Transition;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_5a

    :cond_32
    if-eqz p13, :cond_5a

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_5a

    const-string/jumbo v1, "com.sec.intent.extra.FREEZE_TASK_DISPLAY_AREA"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v0, :cond_48

    goto :goto_50

    :cond_48
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    :goto_50
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TransitionController;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    :cond_5a
    :goto_5a
    :try_start_5a
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_80

    const-wide/16 v1, 0x20

    const/16 v4, -0x60

    :try_start_68
    const-string/jumbo v0, "startActivityInner"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual/range {p0 .. p11}, Lcom/android/server/wm/ActivityStarter;->startActivityInner(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/uri/NeededUriGrants;I)I

    move-result v4
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_72} :catch_88
    .catchall {:try_start_68 .. :try_end_72} :catchall_84

    :try_start_72
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    move/from16 v5, p13

    :goto_7b
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;IZLandroid/window/RemoteTransition;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/Task;

    move-result-object p3
    :try_end_7f
    .catchall {:try_start_72 .. :try_end_7f} :catchall_80

    goto :goto_9d

    :catchall_80
    move-exception v0

    move-object p1, v0

    goto/16 :goto_1ac

    :catchall_84
    move-exception v0

    move-object p2, v0

    goto/16 :goto_19d

    :catch_88
    move-exception v0

    move-object p3, v0

    :try_start_8a
    const-string v0, "ActivityTaskManager"

    const-string v3, "Exception on startActivityInner"

    invoke-static {v0, v3, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_84

    :try_start_91
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_80

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    move-object/from16 v7, p12

    move/from16 v5, p13

    goto :goto_7b

    :goto_9d
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APPS_CUTOUT:Z

    if-nez v0, :cond_aa

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT:Z

    if-eqz v1, :cond_102

    :cond_aa
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_102

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_102

    if-eqz p3, :cond_102

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT:Z

    if-eqz v1, :cond_d0

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_d0

    const-string/jumbo v7, "com.sec.intent.extra.IS_LAUNCHED_FROM_MULTISTAR_COVER_LAUNCHER"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_d0

    invoke-virtual {p0, p3, v2}, Lcom/android/server/wm/ActivityStarter;->setLaunchedMultistarCoverLauncher(Lcom/android/server/wm/Task;Z)V

    goto :goto_102

    :cond_d0
    if-eqz v0, :cond_e8

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_e8

    const-string/jumbo v7, "com.sec.intent.extra.IS_LAUNCHED_FROM_APPS_COVER_LAUNCHER"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_e8

    invoke-virtual {p0, p3, v9}, Lcom/android/server/wm/ActivityStarter;->setLaunchedMultistarCoverLauncher(Lcom/android/server/wm/Task;Z)V

    invoke-virtual {p0, p3, v2}, Lcom/android/server/wm/ActivityStarter;->setLaunchedAppsCoverLauncher(Lcom/android/server/wm/Task;Z)V

    goto :goto_102

    :cond_e8
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v1, :cond_f3

    if-eqz p2, :cond_ef

    goto :goto_f3

    :cond_ef
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v8

    :cond_f3
    :goto_f3
    if-eqz v0, :cond_fc

    if-eqz p2, :cond_f8

    goto :goto_fc

    :cond_f8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v8

    :cond_fc
    :goto_fc
    invoke-virtual {p0, p3, v9}, Lcom/android/server/wm/ActivityStarter;->setLaunchedMultistarCoverLauncher(Lcom/android/server/wm/Task;Z)V

    invoke-virtual {p0, p3, v9}, Lcom/android/server/wm/ActivityStarter;->setLaunchedAppsCoverLauncher(Lcom/android/server/wm/Task;Z)V

    :cond_102
    :goto_102
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_118

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    const-string/jumbo v1, "adjacent"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V

    :cond_118
    invoke-virtual {p0, v4, p1, p3}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    if-eqz p1, :cond_19c

    if-eqz p3, :cond_19c

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_19c

    if-eqz p2, :cond_12e

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p2, :cond_12e

    iget p2, p2, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_12f

    :cond_12e
    const/4 p2, -0x1

    :goto_12f
    iget v0, p1, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget-object p1, p1, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    if-eqz p1, :cond_15b

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    :try_start_13d
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    if-eqz v1, :cond_151

    iget-object v0, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_151

    :catchall_14e
    move-exception v0

    move-object p0, v0

    goto :goto_156

    :cond_151
    :goto_151
    monitor-exit p1
    :try_end_152
    .catchall {:try_start_13d .. :try_end_152} :catchall_14e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_15b

    :goto_156
    :try_start_156
    monitor-exit p1
    :try_end_157
    .catchall {:try_start_156 .. :try_end_157} :catchall_14e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_15b
    :goto_15b
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContentDispatcher:Lcom/android/server/pm/ContentDispatcher;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget p3, p3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_19c

    iget-object v3, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_19c

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_19c

    if-nez v2, :cond_179

    goto :goto_19c

    :cond_179
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

    :cond_19c
    :goto_19c
    return v4

    :goto_19d
    :try_start_19d
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    move-object/from16 v7, p12

    move/from16 v5, p13

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityStarter;->handleStartResult(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;IZLandroid/window/RemoteTransition;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/Task;

    throw p2
    :try_end_1ac
    .catchall {:try_start_19d .. :try_end_1ac} :catchall_80

    :goto_1ac
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw p1
.end method

.method public final useSpegDisplayIfNeeded()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    if-nez v1, :cond_7

    goto :goto_75

    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_75

    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    if-nez v2, :cond_12

    goto :goto_75

    :cond_12
    iget v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    :cond_1b
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSpeg:Lcom/android/server/pm/SpegService;

    iget-boolean v3, v0, Lcom/android/server/pm/SpegService;->mIsSpegInOpeartion:Z

    if-eqz v3, :cond_75

    iget v3, v0, Lcom/android/server/pm/SpegService;->mSpegUid:I

    if-ne v1, v3, :cond_75

    if-ne v1, v3, :cond_29

    iget v2, v0, Lcom/android/server/pm/SpegService;->mSpegDisplayId:I

    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    if-eqz v0, :cond_37

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v3, v3, v3, v4}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_3b

    :cond_37
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    :goto_3b
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v3

    if-eq v3, v2, :cond_75

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    new-instance v4, Lcom/android/server/wm/SafeActivityOptions;

    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    if-nez v5, :cond_56

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    :cond_56
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

    :cond_75
    :goto_75
    return-void
.end method

.method public final waitResultIfNeeded(Landroid/app/WaitResult;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)I
    .registers 7

    iget v0, p1, Landroid/app/WaitResult;->result:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_44

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    iget-boolean v2, p2, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_15

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p2, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_44

    :cond_15
    iget-object p0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p1, Landroid/app/WaitResult;->result:I

    if-eq v2, v1, :cond_21

    if-eqz v2, :cond_21

    goto :goto_3c

    :cond_21
    new-instance v2, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;-><init>(Landroid/app/WaitResult;Landroid/content/ComponentName;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)V

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    :try_start_2d
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_34} :catch_34

    :catch_34
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2d

    :goto_3c
    if-nez v0, :cond_43

    iget p0, p1, Landroid/app/WaitResult;->result:I

    if-ne p0, v1, :cond_43

    return v1

    :cond_43
    return v0

    :cond_44
    :goto_44
    const/4 p0, 0x0

    iput-boolean p0, p1, Landroid/app/WaitResult;->timeout:Z

    iget-object p0, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object p0, p1, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Landroid/app/WaitResult;->totalTime:J

    return v0
.end method
