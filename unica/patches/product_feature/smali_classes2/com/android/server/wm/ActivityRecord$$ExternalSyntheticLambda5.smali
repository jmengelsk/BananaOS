.class public final synthetic Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/Intent;

.field public final synthetic f$4:Landroid/os/IBinder;

.field public final synthetic f$5:Lcom/android/server/uri/NeededUriGrants;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/ActivityRecord;

    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/ActivityRecord;

    iput p3, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;->f$3:Landroid/content/Intent;

    iput-object p5, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;->f$4:Landroid/os/IBinder;

    iput-object p6, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;->f$5:Lcom/android/server/uri/NeededUriGrants;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/ActivityRecord;

    iget v5, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;->f$2:I

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;->f$3:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;->f$4:Landroid/os/IBinder;

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;->f$5:Lcom/android/server/uri/NeededUriGrants;

    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    :try_start_14
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    iget-boolean v9, v0, Lcom/android/server/wm/ActivityRecord;->mForceSendResultForMediaProjection:Z

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
