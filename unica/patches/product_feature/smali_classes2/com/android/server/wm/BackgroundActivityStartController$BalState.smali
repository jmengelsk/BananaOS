.class Lcom/android/server/wm/BackgroundActivityStartController$BalState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAllowBalExemptionForSystemProcess:Z

.field public final mAppSwitchState:I

.field public final mAutoOptInCaller:Z

.field public final mAutoOptInReason:Ljava/lang/String;

.field public final mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

.field public final mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

.field public final mCallerApp:Lcom/android/server/wm/WindowProcessController;

.field public final mCallingPackage:Ljava/lang/String;

.field public final mCallingPid:I

.field public final mCallingUid:I

.field public final mCallingUidHasNonAppVisibleWindow:Z

.field public final mCallingUidHasVisibleActivity:Z

.field public final mCallingUidHasVisibleNotPinnedActivity:Z

.field public final mCallingUidProcState:I

.field public final mCheckedOptions:Landroid/app/ActivityOptions;

.field public final mIntent:Landroid/content/Intent;

.field public final mIsCallForResult:Z

.field public final mIsCallingUidPersistentSystemProcess:Z

.field public final mIsRealCallingUidPersistentSystemProcess:Z

.field public final mOriginatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

.field public final mRealCallerApp:Lcom/android/server/wm/WindowProcessController;

.field public final mRealCallingPackage:Ljava/lang/String;

.field public final mRealCallingPid:I

.field public final mRealCallingUid:I

.field public final mRealCallingUidHasNonAppVisibleWindow:Z

.field public final mRealCallingUidHasVisibleActivity:Z

.field public final mRealCallingUidHasVisibleNotPinnedActivity:Z

.field public final mRealCallingUidProcState:I

.field public mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

.field public mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

.field public final synthetic this$0:Lcom/android/server/wm/BackgroundActivityStartController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BackgroundActivityStartController;IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    const/4 v8, 0x0

    iput-object v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPackage:Ljava/lang/String;

    iput v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    move/from16 v9, p3

    iput v9, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPid:I

    iput v4, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    iput v5, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPid:I

    iput-object v6, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallerApp:Lcom/android/server/wm/WindowProcessController;

    move/from16 v9, p9

    iput-boolean v9, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAllowBalExemptionForSystemProcess:Z

    iput-object v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mOriginatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    move-object/from16 v9, p11

    iput-object v9, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIntent:Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v9, v5}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v9

    const-string v10, ", pid="

    const-string/jumbo v11, "callingPackage for (uid="

    const-string v12, "ActivityTaskManager"

    const/4 v14, 0x1

    if-eqz v9, :cond_2

    iget v15, v9, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-eq v15, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v9}, Lcom/android/server/wm/WindowProcessController;->getPackageList()Ljava/util/List;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eq v13, v14, :cond_1

    const-string v13, ") is ambiguous: "

    invoke-static {v4, v5, v11, v10, v13}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_2

    :cond_2
    :goto_1
    const-string v9, ") has no WPC"

    invoke-static {v4, v5, v11, v10, v9}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_2
    iput-object v9, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPackage:Ljava/lang/String;

    if-eqz p10, :cond_3

    move v10, v14

    goto :goto_3

    :cond_3
    move v10, v8

    :goto_3
    iput-boolean v10, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsCallForResult:Z

    move-object/from16 v11, p12

    iput-object v11, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v12

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v13

    const/4 v15, -0x1

    if-nez v7, :cond_4

    const-string/jumbo v7, "notPendingIntent"

    iput-object v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    iput-boolean v14, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInCaller:Z

    goto :goto_4

    :cond_4
    if-eqz v10, :cond_5

    const-string/jumbo v7, "callForResult"

    iput-object v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    iput-boolean v8, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInCaller:Z

    goto :goto_4

    :cond_5
    if-ne v2, v4, :cond_6

    const-string/jumbo v7, "sameUid"

    iput-object v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    iput-boolean v8, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInCaller:Z

    goto :goto_4

    :cond_6
    if-ne v13, v15, :cond_7

    const-string/jumbo v7, "compatibility"

    iput-object v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    iput-boolean v8, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInCaller:Z

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    iput-boolean v8, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInCaller:Z

    :goto_4
    iget-boolean v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInCaller:Z

    const/4 v10, 0x2

    if-eqz v7, :cond_9

    if-ne v12, v10, :cond_8

    sget-object v3, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    goto :goto_5

    :cond_8
    sget-object v3, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    :goto_5
    iput-object v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    goto :goto_9

    :cond_9
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v7

    if-eqz v7, :cond_d

    if-eq v7, v14, :cond_c

    if-eq v7, v10, :cond_b

    const/4 v3, 0x3

    if-eq v7, v3, :cond_c

    const/4 v3, 0x4

    if-ne v7, v3, :cond_a

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unsupported BackgroundActivityStartMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    sget-object v3, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    goto :goto_8

    :cond_c
    :goto_6
    sget-object v3, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    goto :goto_8

    :cond_d
    if-eqz v2, :cond_12

    const/16 v7, 0x3e8

    if-ne v2, v7, :cond_e

    goto :goto_7

    :cond_e
    const-wide/32 v14, 0x11abe8e7

    if-eqz v3, :cond_10

    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-static {v14, v15, v3, v7}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    goto :goto_8

    :cond_f
    sget-object v3, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    goto :goto_8

    :cond_10
    invoke-static {v14, v15, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v3

    if-eqz v3, :cond_11

    sget-object v3, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    goto :goto_8

    :cond_11
    sget-object v3, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    goto :goto_8

    :cond_12
    :goto_7
    sget-object v3, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    :goto_8
    iput-object v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    :goto_9
    iget-object v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    if-eqz v3, :cond_14

    if-ne v13, v10, :cond_13

    sget-object v3, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    goto :goto_a

    :cond_13
    sget-object v3, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    :goto_a
    iput-object v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    goto :goto_c

    :cond_14
    sget v3, Lcom/android/server/am/PendingIntentRecord;->$r8$clinit:I

    invoke-virtual {v11}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_15

    invoke-static {v4, v9}, Lcom/android/server/am/PendingIntentRecord;->getDefaultBackgroundStartPrivileges(ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v3

    goto :goto_b

    :cond_15
    const-string/jumbo v7, "android.pendingIntent.backgroundActivityAllowed"

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_17

    if-eq v3, v10, :cond_16

    sget-object v3, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    goto :goto_b

    :cond_16
    sget-object v3, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    goto :goto_b

    :cond_17
    invoke-static {v4, v9}, Lcom/android/server/am/PendingIntentRecord;->getDefaultBackgroundStartPrivileges(ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v3

    :goto_b
    iput-object v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    :goto_c
    iget-object v3, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    iput v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAppSwitchState:I

    iget-object v3, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    monitor-enter v3

    :try_start_0
    iget-object v7, v3, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    const/16 v9, 0x14

    invoke-virtual {v7, v2, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v3

    iput v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidProcState:I

    const/4 v3, 0x1

    if-gt v7, v3, :cond_18

    const/4 v3, 0x1

    goto :goto_d

    :cond_18
    move v3, v8

    :goto_d
    iput-boolean v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsCallingUidPersistentSystemProcess:Z

    iget-object v10, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/wm/WindowContainer;->alwaysTruePredicate()Ljava/util/function/Predicate;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Lcom/android/server/wm/VisibleActivityProcessTracker;->match(ILjava/util/function/Predicate;)Z

    move-result v10

    iput-boolean v10, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidHasVisibleActivity:Z

    iget-object v11, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lcom/android/server/wm/VisibleActivityProcessTracker$$ExternalSyntheticLambda0;

    invoke-direct {v12, v8}, Lcom/android/server/wm/VisibleActivityProcessTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v11, v2, v12}, Lcom/android/server/wm/VisibleActivityProcessTracker;->match(ILjava/util/function/Predicate;)Z

    move-result v11

    iput-boolean v11, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidHasVisibleNotPinnedActivity:Z

    iget-object v12, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {v12, v2}, Lcom/android/server/wm/MirrorActiveUids;->hasNonAppVisibleWindow(I)Z

    move-result v12

    iput-boolean v12, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidHasNonAppVisibleWindow:Z

    const/4 v13, -0x1

    if-ne v4, v13, :cond_19

    iput v9, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidProcState:I

    iput-boolean v8, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasVisibleActivity:Z

    iput-boolean v8, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasVisibleNotPinnedActivity:Z

    iput-boolean v8, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasNonAppVisibleWindow:Z

    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallerApp:Lcom/android/server/wm/WindowProcessController;

    iput-boolean v8, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsRealCallingUidPersistentSystemProcess:Z

    return-void

    :cond_19
    if-ne v2, v4, :cond_1b

    iput v7, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidProcState:I

    iput-boolean v10, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasVisibleActivity:Z

    iput-boolean v11, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasVisibleNotPinnedActivity:Z

    iput-boolean v12, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasNonAppVisibleWindow:Z

    if-nez v6, :cond_1a

    iget-object v1, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v5, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    move-object v6, v1

    :cond_1a
    iput-object v6, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallerApp:Lcom/android/server/wm/WindowProcessController;

    iput-boolean v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsRealCallingUidPersistentSystemProcess:Z

    return-void

    :cond_1b
    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    monitor-enter v2

    :try_start_1
    iget-object v3, v2, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    iput v3, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidProcState:I

    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/wm/WindowContainer;->alwaysTruePredicate()Ljava/util/function/Predicate;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/android/server/wm/VisibleActivityProcessTracker;->match(ILjava/util/function/Predicate;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasVisibleActivity:Z

    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/server/wm/VisibleActivityProcessTracker$$ExternalSyntheticLambda0;

    invoke-direct {v6, v8}, Lcom/android/server/wm/VisibleActivityProcessTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v2, v4, v6}, Lcom/android/server/wm/VisibleActivityProcessTracker;->match(ILjava/util/function/Predicate;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasVisibleNotPinnedActivity:Z

    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/MirrorActiveUids;->hasNonAppVisibleWindow(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasNonAppVisibleWindow:Z

    iget-object v1, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v5, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallerApp:Lcom/android/server/wm/WindowProcessController;

    const/4 v1, 0x1

    if-gt v3, v1, :cond_1c

    move v8, v1

    :cond_1c
    iput-boolean v8, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsRealCallingUidPersistentSystemProcess:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method


# virtual methods
.method public final callerExplicitOptInOrAutoOptIn()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInCaller:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result p0

    if-ne p0, v1, :cond_0

    move v0, v3

    :cond_0
    xor-int/lit8 p0, v0, 0x1

    return p0

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v2

    if-eq v2, v1, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result p0

    if-eqz p0, :cond_2

    return v3

    :cond_2
    return v0
.end method

.method public final getDebugPackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p0, "root[debugOnly]"

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const-string/jumbo p0, "uid="

    invoke-static {p1, p0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const-string/jumbo p1, "[debugOnly]"

    invoke-static {p0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isPendingIntent()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mOriginatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final realCallerExplicitOptInOrAutoOptIn()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result p0

    if-ne p0, v1, :cond_0

    move v0, v3

    :cond_0
    xor-int/lit8 p0, v0, 0x1

    return p0

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v2

    if-eq v2, v1, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result p0

    if-eqz p0, :cond_2

    return v3

    :cond_2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    const/16 v0, 0x800

    const-string/jumbo v1, "[callingPackage: "

    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPackage:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->getDebugPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; callingPackageTargetSdk: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_FOREGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    iget-object v3, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; callingUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; callingPid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; appSwitchState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAppSwitchState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; callingUidHasVisibleActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidHasVisibleActivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; callingUidHasVisibleNotPinnedActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidHasVisibleNotPinnedActivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; callingUidHasNonAppVisibleWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidHasNonAppVisibleWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; callingUidProcState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/app/ActivityManager;

    iget v2, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidProcState:I

    const-string/jumbo v4, "PROCESS_STATE_"

    invoke-static {v1, v4, v2}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; isCallingUidPersistentSystemProcess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsCallingUidPersistentSystemProcess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; allowBalExemptionForSystemProcess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAllowBalExemptionForSystemProcess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; callerApp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallerApp:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/high16 v2, 0x400000

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_1

    const-string v7, "; inVisibleTask: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "; balAllowedByPiCreator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-eqz v1, :cond_2

    const-string v1, "; resultIfPiCreatorAllowsBal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    iget v1, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController;->balCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "; callerStartMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController;->balStartModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; hasRealCaller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    const/4 v7, -0x1

    if-eq v1, v7, :cond_3

    move v1, v6

    goto :goto_1

    :cond_3
    move v1, v5

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; isCallForResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsCallForResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; isPendingIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->isPendingIntent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; autoOptInReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    if-eq v1, v7, :cond_7

    const-string v1, "; realCallingPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPackage:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    invoke-virtual {p0, v7, v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->getDebugPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; realCallingPackageTargetSdk: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; realCallingUid: "

    const-string v3, "; realCallingPid: "

    invoke-static {v7, v1, v3, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; realCallingUidHasVisibleActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasVisibleActivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; realCallingUidHasVisibleNotPinnedActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasVisibleNotPinnedActivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; realCallingUidHasNonAppVisibleWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasNonAppVisibleWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; realCallingUidProcState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/app/ActivityManager;

    iget v3, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidProcState:I

    invoke-static {v1, v4, v3}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; isRealCallingUidPersistentSystemProcess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsRealCallingUidPersistentSystemProcess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; originatingPendingIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mOriginatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; realCallerApp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallerApp:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_5

    const-string v3, "; realInVisibleTask: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "; balAllowedByPiSender: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-eqz v1, :cond_6

    const-string v1, "; resultIfPiSenderAllowsBal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    iget v1, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController;->balCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v1, "; realCallerStartMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/wm/BackgroundActivityStartController;->balStartModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string p0, "; balRequireOptInByPendingIntentCreator: true; balDontBringExistingBackgroundTaskStackToFg: true]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
