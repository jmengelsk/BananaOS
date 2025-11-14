.class Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mTaskOrganizer:Landroid/window/ITaskOrganizer;

.field public final synthetic this$0:Lcom/android/server/wm/TaskOrganizerController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    iput-object p2, p0, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v1, v1, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-interface {p0}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    if-eqz p0, :cond_23

    invoke-static {p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->-$$Nest$mremoveOrganizedPipTaskFromBinderDied(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->dispose()V

    goto :goto_23

    :catchall_21
    move-exception p0

    goto :goto_28

    :cond_23
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_28
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
