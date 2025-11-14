.class public final synthetic Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    iput p2, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry$$ExternalSyntheticLambda0;->f$1:I

    iget-object v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    iget-object v1, v1, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_e
    iget-object v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    iget-object v2, v2, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2a

    iget-object v2, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    iget-object v2, v2, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_38

    :cond_2a
    :goto_2a
    iget-object p0, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->this$0:Lcom/android/server/wm/BackgroundActivityStartController;

    iget-object v2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    if-ne v2, v0, :cond_33

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    :cond_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_38
    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
