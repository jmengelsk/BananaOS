.class public final synthetic Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingBinder;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingBinder;Landroid/content/Intent;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/MultiTaskingBinder;

    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    iput p3, p0, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda3;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/MultiTaskingBinder;

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    iget p0, p0, Lcom/android/server/wm/MultiTaskingBinder$$ExternalSyntheticLambda3;->f$2:F

    iget-object v2, v0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/MultiTaskingController;->startAssistantActivityToSplitLocked(Landroid/content/Intent;F)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
