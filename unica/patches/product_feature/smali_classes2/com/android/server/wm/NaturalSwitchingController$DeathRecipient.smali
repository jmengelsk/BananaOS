.class public final Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/NaturalSwitchingController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/NaturalSwitchingController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;->this$0:Lcom/android/server/wm/NaturalSwitchingController;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 5

    const-string/jumbo v0, "binderDied: "

    iget-object v1, p0, Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;->this$0:Lcom/android/server/wm/NaturalSwitchingController;

    iget-object v1, v1, Lcom/android/server/wm/NaturalSwitchingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_d
    const-string/jumbo v2, "NaturalSwitchingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;->this$0:Lcom/android/server/wm/NaturalSwitchingController;

    iget-object v0, v0, Lcom/android/server/wm/NaturalSwitchingController;->mClient:Landroid/os/IBinder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingController$DeathRecipient;->this$0:Lcom/android/server/wm/NaturalSwitchingController;

    invoke-virtual {p0}, Lcom/android/server/wm/NaturalSwitchingController;->finishNaturalSwitching()V

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2d
    move-exception p0

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
