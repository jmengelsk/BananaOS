.class public final synthetic Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowOrganizerController;

.field public final synthetic f$1:Lcom/android/server/wm/TaskFragment;

.field public final synthetic f$2:Landroid/content/Intent;

.field public final synthetic f$3:Lcom/android/server/wm/SafeActivityOptions;

.field public final synthetic f$4:Landroid/os/IBinder;

.field public final synthetic f$5:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

.field public final synthetic f$6:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/TaskFragment;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iput-object p2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$1:Lcom/android/server/wm/TaskFragment;

    iput-object p3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$2:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$3:Lcom/android/server/wm/SafeActivityOptions;

    iput-object p5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$4:Landroid/os/IBinder;

    iput-object p6, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$5:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    iput-object p7, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$6:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .locals 11

    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$1:Lcom/android/server/wm/TaskFragment;

    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$2:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$3:Lcom/android/server/wm/SafeActivityOptions;

    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$4:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$5:Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;->f$6:Landroid/os/IBinder;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    iget v6, v5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    iget-object v8, v0, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "startActivityInTaskFragment"

    invoke-virtual {v0, v2, v10}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object v3, v2, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    iput-object v1, v2, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    iput-object v4, v2, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    const/4 v1, -0x1

    iput v1, v2, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    iput-object v9, v2, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iput v6, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget v1, v5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iput v1, v2, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    iput v6, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iput v1, v2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    if-eqz v7, :cond_1

    iget v1, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    goto :goto_1

    :cond_1
    iget-object v1, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v1

    :goto_1
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput v1, v2, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    iput-object p0, v2, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p0

    return p0
.end method
