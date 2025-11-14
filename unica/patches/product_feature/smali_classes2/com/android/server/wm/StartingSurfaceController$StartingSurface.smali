.class public final Lcom/android/server/wm/StartingSurfaceController$StartingSurface;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mTask:Lcom/android/server/wm/Task;

.field public final mTaskOrganizer:Landroid/window/ITaskOrganizer;

.field public final synthetic this$0:Lcom/android/server/wm/StartingSurfaceController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/StartingSurfaceController;Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->this$0:Lcom/android/server/wm/StartingSurfaceController;

    iput-object p2, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->mTask:Lcom/android/server/wm/Task;

    iput-object p3, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    return-void
.end method


# virtual methods
.method public final remove(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->this$0:Lcom/android/server/wm/StartingSurfaceController;

    iget-object v0, v0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->this$0:Lcom/android/server/wm/StartingSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v2, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->mTask:Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {v1, v2, p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController;->removeStartingWindow(Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;ZZ)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
