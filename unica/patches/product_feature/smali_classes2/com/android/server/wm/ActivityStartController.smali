.class public Lcom/android/server/wm/ActivityStartController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCheckedForSetup:Z

.field public final mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

.field public final mHandler:Landroid/os/Handler;

.field public final mHomeLaunchingTaskDisplayAreas:Ljava/util/ArrayList;

.field public mInExecution:Z

.field public mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

.field public mLastHomeActivityStartResult:I

.field public mLastStarter:Lcom/android/server/wm/ActivityStarter;

.field public final mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStarter$Factory;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/server/wm/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartController;->tmpOutRecord:[Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStartController;->mCheckedForSetup:Z

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStartController;->mInExecution:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mHomeLaunchingTaskDisplayAreas:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    new-instance p2, Landroid/os/Handler;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {p3, p0}, Lcom/android/server/wm/ActivityStarter$Factory;->setController(Lcom/android/server/wm/ActivityStartController;)V

    new-instance p2, Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    iget-object p3, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {p2, p3, p1}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/wm/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    return-void
.end method


# virtual methods
.method public final checkTargetUser(IILjava/lang/String;IZ)I
    .registers 6

    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz p5, :cond_9

    invoke-virtual {p0, p2, p4, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p0

    return p0

    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->ensureNotSpecialUser(I)V

    return p1
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    const-string/jumbo v4, "mLastHomeActivityStartResult="

    const-string v5, "  "

    if-eqz v3, :cond_38

    if-eqz v2, :cond_1a

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    :cond_1a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastHomeActivityStartRecord:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3, v0}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    move v1, v0

    :cond_38
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    if-eqz v3, :cond_16f

    if-eqz v2, :cond_63

    iget-object v6, v3, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_4a

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_63

    :cond_4a
    iget-object v3, v3, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_57

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    goto :goto_63

    :cond_57
    iget-object v3, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_16f

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16f

    :cond_63
    :goto_63
    if-nez v1, :cond_71

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/wm/ActivityStartController;->mLastHomeActivityStartResult:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    move v1, v0

    :cond_71
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mLastStarter:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/ActivityStartController;->mLastStarter:Lcom/android/server/wm/ActivityStarter;

    invoke-virtual {p2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mCurrentUser="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/ActivityStarter;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v4, v4, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    const-string/jumbo v6, "mLastStartReason="

    invoke-static {v4, p1, v3, v6}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mLastStartActivityTimeMs="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v4

    new-instance v6, Ljava/util/Date;

    iget-wide v7, p3, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mLastStartActivityResult="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p3, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    iget-object v4, p3, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_e5

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mLastStartActivityRecord:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v6, v0}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_e5
    iget-object v4, p3, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_106

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mStartActivity:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5, v0}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :cond_106
    iget-object v4, p3, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    if-eqz v4, :cond_118

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mIntent="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_118
    iget-object v4, p3, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v4, :cond_12a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mOptions="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_12a
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mLaunchMode="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p3, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->launchModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mLaunchFlags=0x"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p3, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " mDoResume="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p3, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " mAddingToTask="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p3, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " mInTaskFragment="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p3, Lcom/android/server/wm/ActivityStarter;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v2, :cond_16f

    goto :goto_196

    :cond_16f
    iget-object p3, p0, Lcom/android/server/wm/ActivityStartController;->mHomeLaunchingTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_18b

    const-string/jumbo p3, "mHomeLaunchingTaskDisplayAreas:"

    invoke-static {p1, p2, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mHomeLaunchingTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18c

    :cond_18b
    move v0, v1

    :goto_18c
    if-nez v0, :cond_196

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "(nothing)"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_196
    :goto_196
    return-void
.end method

.method public final obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 4

    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    invoke-interface {p0}, Lcom/android/server/wm/ActivityStarter$Factory;->obtain()Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iput-object p2, v0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public final startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I
    .registers 54

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p10

    if-eqz v0, :cond_3fd

    if-eqz v10, :cond_3f4

    array-length v3, v0

    array-length v4, v10

    if-ne v3, v4, :cond_3eb

    if-eqz p3, :cond_17

    move/from16 v12, p3

    goto :goto_1c

    :cond_17
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    move v12, v3

    :goto_1c
    const/4 v13, -0x1

    move/from16 v3, p4

    if-eq v3, v13, :cond_23

    :goto_21
    move v14, v3

    goto :goto_28

    :cond_23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    goto :goto_21

    :goto_28
    if-ltz p2, :cond_2e

    move/from16 v15, p2

    move v9, v13

    goto :goto_35

    :cond_2e
    if-nez v2, :cond_33

    move v9, v12

    move v15, v14

    goto :goto_35

    :cond_33
    move v9, v13

    move v15, v9

    :goto_35
    const/16 v3, -0x2710

    invoke-static {v15, v14, v3}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v18

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23

    const/4 v6, 0x1

    if-eqz v11, :cond_be

    iput-boolean v6, v11, Lcom/android/server/wm/SafeActivityOptions;->mShouldCheckFreeform:Z

    iget-object v7, v11, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    invoke-static {v7}, Lcom/android/server/wm/SafeActivityOptions;->cloneLaunchingOptions(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v7

    iget-object v8, v11, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    invoke-static {v8}, Lcom/android/server/wm/SafeActivityOptions;->cloneLaunchingOptions(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v8

    if-nez v7, :cond_5e

    if-nez v8, :cond_5e

    move-object/from16 v17, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_bc

    :cond_5e
    iget-boolean v4, v11, Lcom/android/server/wm/SafeActivityOptions;->mShouldCheckFreeform:Z

    if-eqz v4, :cond_a6

    iget-object v4, v11, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v4, :cond_6b

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v4

    goto :goto_6c

    :cond_6b
    const/4 v4, 0x0

    :goto_6c
    iget-object v13, v11, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    if-eqz v13, :cond_75

    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v13

    goto :goto_76

    :cond_75
    const/4 v13, 0x0

    :goto_76
    iget-object v6, v11, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    if-eqz v6, :cond_7f

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v6

    goto :goto_80

    :cond_7f
    const/4 v6, 0x0

    :goto_80
    iget-object v5, v11, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    if-eqz v5, :cond_8b

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v5

    :goto_88
    move-object/from16 v17, v3

    goto :goto_8d

    :cond_8b
    const/4 v5, 0x0

    goto :goto_88

    :goto_8d
    const/4 v3, 0x5

    if-ne v4, v3, :cond_93

    invoke-virtual {v7, v3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    :cond_93
    if-eqz v13, :cond_98

    invoke-virtual {v7, v13}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    :cond_98
    if-ne v6, v3, :cond_9d

    invoke-virtual {v8, v3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    :cond_9d
    if-eqz v5, :cond_a2

    invoke-virtual {v8, v5}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    :cond_a2
    const/4 v3, 0x0

    iput-boolean v3, v11, Lcom/android/server/wm/SafeActivityOptions;->mShouldCheckFreeform:Z

    goto :goto_a9

    :cond_a6
    move-object/from16 v17, v3

    const/4 v3, 0x0

    :goto_a9
    new-instance v4, Lcom/android/server/wm/SafeActivityOptions;

    iget v5, v11, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    iget v6, v11, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingUid:I

    invoke-direct {v4, v7, v5, v6}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;II)V

    iput-object v8, v4, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    iget v5, v11, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    iput v5, v4, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    iget v5, v11, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    iput v5, v4, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    :goto_bc
    move-object v13, v4

    goto :goto_c2

    :cond_be
    move-object/from16 v17, v3

    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_c2
    :try_start_c2
    new-instance v4, Lcom/android/server/wm/ActivityStartController$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Landroid/content/Intent;

    array-length v5, v4

    new-array v6, v5, [Lcom/android/server/wm/ActivityStarter;

    move v7, v3

    :goto_d2
    array-length v0, v4

    const/16 v25, -0x60

    if-ge v7, v0, :cond_264

    aget-object v0, v4, v7

    invoke-virtual {v0}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v8

    if-nez v8, :cond_25c

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_e9

    const/4 v8, 0x1

    :goto_e6
    move-object/from16 v16, v4

    goto :goto_eb

    :cond_e9
    move v8, v3

    goto :goto_e6

    :goto_eb
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/content/Intent;->removeExtendedFlags(I)V

    move/from16 v20, v3

    iget-object v3, v1, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move/from16 v21, v5

    aget-object v5, v10, v7

    move/from16 v22, v7

    const/4 v7, 0x0

    move-object/from16 v36, v6

    move/from16 v38, v8

    move-object/from16 p2, v13

    move-object/from16 v34, v16

    move-object/from16 v33, v17

    move/from16 v8, v18

    move/from16 v35, v21

    move/from16 v37, v22

    const/4 v10, 0x0

    const/4 v13, 0x0

    move/from16 v6, p11

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    move v7, v8

    invoke-virtual {v3, v4, v0, v13, v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    move/from16 v5, p11

    invoke-virtual {v3, v0, v5}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->isValid(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_140

    invoke-virtual {v4}, Landroid/content/Intent;->getCreatorToken()Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken;->mKeyFields:Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    iget v6, v0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorUid:I

    if-eq v6, v7, :cond_140

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorPackage:Ljava/lang/String;
    :try_end_13a
    .catchall {:try_start_c2 .. :try_end_13a} :catchall_13d

    move v8, v6

    move-object v6, v0

    goto :goto_142

    :catchall_13d
    move-exception v0

    goto/16 :goto_3e7

    :cond_140
    move-object v6, v10

    const/4 v8, -0x1

    :goto_142
    if-eqz v3, :cond_1ee

    :try_start_144
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    move/from16 p4, v13

    iget-object v13, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v4

    move/from16 v18, v7

    move-object/from16 v19, v10

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->internalCheckGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v10
    :try_end_168
    .catch Ljava/lang/SecurityException; {:try_start_144 .. :try_end_168} :catch_1e2
    .catchall {:try_start_144 .. :try_end_168} :catchall_13d

    const/4 v13, -0x1

    if-eq v8, v13, :cond_1bb

    :try_start_16b
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v13, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    iget-object v0, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v30

    move-object/from16 v26, v16

    check-cast v26, Lcom/android/server/uri/UriGrantsManagerService$LocalService;
    :try_end_181
    .catch Ljava/lang/SecurityException; {:try_start_16b .. :try_end_181} :catch_1a5
    .catchall {:try_start_16b .. :try_end_181} :catchall_13d

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v29, v0

    move-object/from16 v27, v4

    move/from16 v28, v8

    :try_start_18b
    invoke-virtual/range {v26 .. v32}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->internalCheckGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0
    :try_end_18f
    .catch Ljava/lang/SecurityException; {:try_start_18b .. :try_end_18f} :catch_1a1
    .catchall {:try_start_18b .. :try_end_18f} :catchall_13d

    if-nez v10, :cond_193

    move-object v10, v0

    goto :goto_196

    :cond_193
    :try_start_193
    invoke-virtual {v10, v0}, Lcom/android/server/uri/NeededUriGrants;->merge(Lcom/android/server/uri/NeededUriGrants;)V
    :try_end_196
    .catch Ljava/lang/SecurityException; {:try_start_193 .. :try_end_196} :catch_19f
    .catchall {:try_start_193 .. :try_end_196} :catchall_13d

    :goto_196
    move-object/from16 v8, p5

    move v13, v9

    move-object/from16 v16, v10

    move/from16 v5, v28

    :goto_19d
    move-object v10, v3

    goto :goto_1c2

    :catch_19f
    move-exception v0

    goto :goto_1a8

    :catch_1a1
    move-exception v0

    move-object/from16 v4, v27

    goto :goto_1a8

    :catch_1a5
    move-exception v0

    move/from16 v28, v8

    :goto_1a8
    :try_start_1a8
    iget-object v8, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    move-object v8, v3

    const/4 v3, 0x2

    move v13, v9

    move-object/from16 v16, v10

    move/from16 v5, v28

    move-object v9, v0

    move-object v10, v8

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v9}, Lcom/android/server/wm/ActivityStarter;->logAndThrowExceptionForIntentRedirect(ILandroid/content/Intent;ILjava/lang/String;ILjava/lang/String;Ljava/lang/SecurityException;)V

    goto :goto_1c2

    :cond_1bb
    move v5, v8

    move v13, v9

    move-object/from16 v16, v10

    move-object/from16 v8, p5

    goto :goto_19d

    :goto_1c2
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1da

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v9, v33

    invoke-virtual {v9, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, v16

    :goto_1d5
    move/from16 v18, v7

    move-object/from16 v3, v34

    goto :goto_1f9

    :cond_1da
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1e2
    const-string v0, "ActivityTaskManager"

    const-string/jumbo v1, "Not allowed to start activity since no uri permission."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ea
    .catchall {:try_start_1a8 .. :try_end_1ea} :catchall_13d

    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v25

    :cond_1ee
    move-object v10, v3

    move v5, v8

    move/from16 p4, v13

    move-object/from16 v8, p5

    move v13, v9

    move-object/from16 v9, v33

    const/4 v0, 0x0

    goto :goto_1d5

    :goto_1f9
    :try_start_1f9
    array-length v7, v3

    move-object/from16 v16, v3

    const/4 v3, 0x1

    sub-int/2addr v7, v3

    move/from16 v3, v37

    if-ne v3, v7, :cond_204

    const/4 v7, 0x1

    goto :goto_206

    :cond_204
    move/from16 v7, p4

    :goto_206
    if-eqz v7, :cond_20d

    :goto_208
    move/from16 v22, v3

    move-object/from16 v3, p12

    goto :goto_210

    :cond_20d
    move-object/from16 v11, p2

    goto :goto_208

    :goto_210
    invoke-virtual {v1, v4, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v4

    iget-object v3, v4, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object v0, v3, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    iput-object v2, v3, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    aget-object v0, p8, v22

    iput-object v0, v3, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iput-object v10, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v10, -0x1

    iput v10, v3, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    iput v13, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    iput v15, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iput-object v8, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    move-object/from16 v10, p6

    iput-object v10, v3, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    iput v5, v3, Lcom/android/server/wm/ActivityStarter$Request;->intentCreatorUid:I

    iput-object v6, v3, Lcom/android/server/wm/ActivityStarter$Request;->intentCreatorPackage:Ljava/lang/String;

    iput v12, v3, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iput v14, v3, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iput-object v11, v3, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    move/from16 v5, v38

    iput-boolean v5, v3, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    iput-boolean v7, v3, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    move-object/from16 v5, p13

    iput-object v5, v3, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    move/from16 v6, p14

    iput-boolean v6, v3, Lcom/android/server/wm/ActivityStarter$Request;->allowBalExemptionForSystemProcess:Z

    aput-object v4, v36, v22

    add-int/lit8 v7, v22, 0x1

    move/from16 v3, p4

    move-object/from16 v10, p8

    move-object/from16 v11, p10

    move-object/from16 v17, v9

    move v9, v13

    move-object/from16 v4, v16

    move/from16 v5, v35

    move-object/from16 v6, v36

    move-object/from16 v13, p2

    goto/16 :goto_d2

    :cond_25c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_264
    move-object/from16 v8, p5

    move/from16 p4, v3

    move/from16 v35, v5

    move-object/from16 v36, v6

    move-object/from16 v9, v17

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_2b0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startActivities: different apps ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v5, p4

    :goto_283
    if-ge v5, v2, :cond_29e

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, -0x1

    if-ne v5, v3, :cond_296

    const-string/jumbo v3, "]"

    goto :goto_298

    :cond_296
    const-string v3, ", "

    :goto_298
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_283

    :cond_29e
    const-string v2, " from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ActivityTaskManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_2b0
    new-array v0, v3, [Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_2ba
    .catchall {:try_start_1f9 .. :try_end_2ba} :catchall_13d

    :try_start_2ba
    iget-object v3, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    iget-object v3, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/wm/StartingSurfaceController;->mDeferringAddStartingWindow:Z
    :try_end_2c8
    .catchall {:try_start_2ba .. :try_end_2c8} :catchall_311

    move/from16 v5, p4

    move-object/from16 v4, p9

    move/from16 v3, v35

    :goto_2ce
    if-ge v5, v3, :cond_3a2

    :try_start_2d0
    aget-object v6, v36, v5

    iget-object v7, v6, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object v4, v7, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iput-object v0, v7, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v4

    if-gez v4, :cond_33c

    const/16 v20, 0x1

    add-int/lit8 v5, v5, 0x1

    :goto_2e2
    if-ge v5, v3, :cond_2f3

    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mFactory:Lcom/android/server/wm/ActivityStarter$Factory;

    aget-object v6, v36, v5

    invoke-interface {v0, v6}, Lcom/android/server/wm/ActivityStarter$Factory;->recycle(Lcom/android/server/wm/ActivityStarter;)V
    :try_end_2eb
    .catchall {:try_start_2d0 .. :try_end_2eb} :catchall_2ee

    add-int/lit8 v5, v5, 0x1

    goto :goto_2e2

    :catchall_2ee
    move-exception v0

    move-object/from16 v11, p10

    goto/16 :goto_36c

    :cond_2f3
    :try_start_2f3
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    if-eqz p10, :cond_300

    move-object/from16 v11, p10

    iget-object v3, v11, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    goto :goto_301

    :cond_300
    const/4 v3, 0x0

    :goto_301
    invoke-virtual {v0, v3}, Lcom/android/server/wm/StartingSurfaceController;->endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V
    :try_end_304
    .catch Ljava/lang/Exception; {:try_start_2f3 .. :try_end_304} :catch_314
    .catchall {:try_start_2f3 .. :try_end_304} :catchall_311

    :try_start_304
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    monitor-exit v2
    :try_end_30a
    .catchall {:try_start_304 .. :try_end_30a} :catchall_311

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_311
    move-exception v0

    goto/16 :goto_3e2

    :catch_314
    move-exception v0

    :try_start_315
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "endDeferAddStartingWindow failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/android/server/wm/WindowManagerServiceExt;->logCriticalInfo(Ljava/lang/String;Ljava/util/List;)V

    :goto_334
    monitor-exit v2
    :try_end_335
    .catchall {:try_start_315 .. :try_end_335} :catchall_311

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v25

    :cond_33c
    move-object/from16 v11, p10

    const/16 v20, 0x1

    :try_start_340
    aget-object v4, v0, p4

    if-eqz v4, :cond_351

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v6

    move/from16 v7, v18

    if-ne v6, v7, :cond_353

    iget-object v4, v4, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    goto :goto_366

    :catchall_34f
    move-exception v0

    goto :goto_36c

    :cond_351
    move/from16 v7, v18

    :cond_353
    add-int/lit8 v4, v3, -0x1

    if-ge v5, v4, :cond_364

    add-int/lit8 v4, v5, 0x1

    aget-object v4, v36, v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_364
    .catchall {:try_start_340 .. :try_end_364} :catchall_34f

    :cond_364
    move-object/from16 v4, p9

    :goto_366
    add-int/lit8 v5, v5, 0x1

    move/from16 v18, v7

    goto/16 :goto_2ce

    :goto_36c
    :try_start_36c
    iget-object v3, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    if-eqz v11, :cond_377

    iget-object v4, v11, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    goto :goto_378

    :cond_377
    const/4 v4, 0x0

    :goto_378
    invoke-virtual {v3, v4}, Lcom/android/server/wm/StartingSurfaceController;->endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V
    :try_end_37b
    .catch Ljava/lang/Exception; {:try_start_36c .. :try_end_37b} :catch_381
    .catchall {:try_start_36c .. :try_end_37b} :catchall_311

    :try_start_37b
    iget-object v1, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0

    :catch_381
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "endDeferAddStartingWindow failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/android/server/wm/WindowManagerServiceExt;->logCriticalInfo(Ljava/lang/String;Ljava/util/List;)V
    :try_end_3a1
    .catchall {:try_start_37b .. :try_end_3a1} :catchall_311

    goto :goto_334

    :cond_3a2
    move-object/from16 v11, p10

    :try_start_3a4
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    if-eqz v11, :cond_3af

    iget-object v4, v11, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    goto :goto_3b0

    :cond_3af
    const/4 v4, 0x0

    :goto_3b0
    invoke-virtual {v0, v4}, Lcom/android/server/wm/StartingSurfaceController;->endDeferAddStartingWindow(Landroid/app/ActivityOptions;)V
    :try_end_3b3
    .catch Ljava/lang/Exception; {:try_start_3a4 .. :try_end_3b3} :catch_3c0
    .catchall {:try_start_3a4 .. :try_end_3b3} :catchall_311

    :try_start_3b3
    iget-object v0, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    monitor-exit v2
    :try_end_3b9
    .catchall {:try_start_3b3 .. :try_end_3b9} :catchall_311

    :try_start_3b9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3bc
    .catchall {:try_start_3b9 .. :try_end_3bc} :catchall_13d

    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p4

    :catch_3c0
    move-exception v0

    :try_start_3c1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "endDeferAddStartingWindow failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/android/server/wm/WindowManagerServiceExt;->logCriticalInfo(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_334

    :goto_3e2
    monitor-exit v2
    :try_end_3e3
    .catchall {:try_start_3c1 .. :try_end_3e3} :catchall_311

    :try_start_3e3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_3e7
    .catchall {:try_start_3e3 .. :try_end_3e7} :catchall_13d

    :goto_3e7
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_3eb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "intents are length different than resolvedTypes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "resolvedTypes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3fd
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "intents is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;ILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I
    .registers 24

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_b

    iget v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    if-lez v1, :cond_1e

    :cond_b
    invoke-virtual {v0, p6}, Lcom/android/server/wm/ActivityTaskManagerService;->isPossibleToStart(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 p0, -0x66

    return p0

    :cond_1e
    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move v4, p3

    move/from16 v1, p12

    move-object/from16 v3, p14

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IILjava/lang/String;IZ)I

    move-result v1

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_9b

    if-eqz p6, :cond_9b

    invoke-virtual {p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_9b

    invoke-virtual {p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "com.tencent.mm"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    invoke-virtual {p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "com.tencent.mobileqq"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    :cond_5e
    const/16 v3, 0x3e8

    if-eq p3, v3, :cond_9b

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3, v1, p3, p6, p4}, Lcom/android/server/DualAppManagerService;->startDAChooserActivity(IIILandroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_6e

    const/4 p7, 0x0

    move-object p6, v6

    :cond_6e
    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_9b

    invoke-virtual {p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_83

    invoke-virtual {p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_87

    :cond_83
    invoke-virtual {p6}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    :goto_87
    if-eqz p4, :cond_9b

    if-eqz v3, :cond_9b

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b

    invoke-static {v3}, Lcom/android/server/DualAppManagerService;->shouldForwardToOwner(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9b

    move-object/from16 v3, p14

    move v1, v5

    goto :goto_9d

    :cond_9b
    move-object/from16 v3, p14

    :goto_9d
    invoke-virtual {p0, p6, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    iget-object p6, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, p6, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iput p2, p6, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iput p3, p6, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iput-object p4, p6, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iput-object p5, p6, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    iput-object p7, p6, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iput-object p8, p6, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    move-object/from16 p1, p9

    iput-object p1, p6, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    move/from16 p1, p10

    iput p1, p6, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    iput v5, p6, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    move-object/from16 p1, p11

    iput-object p1, p6, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    iput v1, p6, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    move-object/from16 p1, p13

    iput-object p1, p6, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    move-object/from16 p1, p15

    iput-object p1, p6, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    move/from16 p1, p16

    iput-boolean p1, p6, Lcom/android/server/wm/ActivityStarter$Request;->allowBalExemptionForSystemProcess:Z

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p0

    return p0
.end method

.method public final startExistingRecents(Landroid/content/Intent;Landroid/app/ActivityOptions;)Z
    .registers 15

    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v0, v0, Lcom/android/server/wm/RecentTasks;->mRecentsComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x3

    goto :goto_13

    :cond_12
    const/4 v0, 0x2

    :goto_13
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_LARGE_FLIP_RECENTS_TRANSITION:Z

    const/4 v3, 0x0

    if-nez v2, :cond_fd

    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_29

    goto/16 :goto_f4

    :cond_29
    invoke-virtual {v0, v5}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    if-nez v2, :cond_f5

    if-eqz v10, :cond_f4

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v2

    if-nez v2, :cond_f4

    :cond_3d
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, v10, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, v10, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_63

    goto/16 :goto_f4

    :cond_63
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v2, :cond_7f

    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v2

    if-eqz v2, :cond_7f

    :try_start_6d
    invoke-virtual {p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v6, v10, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v4, v2, v6}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_79} :catch_7d

    if-nez v2, :cond_7f

    goto/16 :goto_f4

    :catch_7d
    iput-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    :cond_7f
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_8c

    iget-boolean v6, v2, Lcom/android/server/wm/DisplayContent;->mIsInExitingRecents:Z

    if-eq v6, v4, :cond_8c

    iput-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->mIsInExitingRecents:Z

    :cond_8c
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6, v10, v4}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V

    iget-object p0, p0, Lcom/android/server/wm/ActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    const/4 v7, -0x1

    invoke-virtual {v6, p1, v3, v7}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v7

    iget-object p1, v10, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    :try_start_9f
    iget-object v6, v10, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v6

    if-eqz v6, :cond_c5

    iget-object v8, v10, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v8, v8, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    iget-object v9, v6, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v11, v9, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v11, v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v8

    if-eqz v8, :cond_ba

    iget-object v9, v9, Lcom/android/server/wm/TransitionController;->mRemotePlayer:Lcom/android/server/wm/TransitionController$RemotePlayer;

    invoke-virtual {v9, v8, v4, v4}, Lcom/android/server/wm/TransitionController$RemotePlayer;->update(Lcom/android/server/wm/WindowProcessController;ZZ)V

    :cond_ba
    invoke-static {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v6, v0, v10}, Lcom/android/server/wm/Transition;->setTransientLaunch(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_c5

    :catchall_c2
    move-exception v0

    move-object p0, v0

    goto :goto_e6

    :cond_c5
    :goto_c5
    const-string/jumbo v0, "startExistingRecents"

    invoke-virtual {p1, v0, v3}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    iput-boolean v4, p1, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    invoke-virtual {p1, v3, p2, v4}, Lcom/android/server/wm/TaskFragment;->resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v11, p2

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    :try_end_d8
    .catchall {:try_start_9f .. :try_end_d8} :catchall_c2

    if-eqz v2, :cond_e0

    iget-boolean p0, v2, Lcom/android/server/wm/DisplayContent;->mIsInExitingRecents:Z

    if-eqz p0, :cond_e0

    iput-boolean v5, v2, Lcom/android/server/wm/DisplayContent;->mIsInExitingRecents:Z

    :cond_e0
    iput-boolean v5, p1, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return v4

    :goto_e6
    if-eqz v2, :cond_ee

    iget-boolean p2, v2, Lcom/android/server/wm/DisplayContent;->mIsInExitingRecents:Z

    if-eqz p2, :cond_ee

    iput-boolean v5, v2, Lcom/android/server/wm/DisplayContent;->mIsInExitingRecents:Z

    :cond_ee
    iput-boolean v5, p1, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw p0

    :cond_f4
    :goto_f4
    return v5

    :cond_f5
    iget-object p0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v3

    :cond_fd
    iget-object p0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v3
.end method
