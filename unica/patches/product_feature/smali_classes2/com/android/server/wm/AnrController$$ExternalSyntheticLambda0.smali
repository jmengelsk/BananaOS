.class public final synthetic Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AnrController;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$2:Lcom/android/server/wm/WindowState;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AnrController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AnrController;

    iput-object p2, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/ActivityRecord;

    iput-object p3, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/WindowState;

    iput-object p4, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AnrController;

    iget-object v1, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v3, 0x40

    :try_start_d
    const-string/jumbo v5, "dumpAnrStateLocked()"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v5
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_2f

    :try_start_1b
    iget-object v6, v0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v1, v2, p0}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->saveANRState(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    monitor-exit v5
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_31

    :try_start_28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2f

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_2f
    move-exception p0

    goto :goto_37

    :catchall_31
    move-exception p0

    :try_start_32
    monitor-exit v5
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_2f

    :goto_37
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method
