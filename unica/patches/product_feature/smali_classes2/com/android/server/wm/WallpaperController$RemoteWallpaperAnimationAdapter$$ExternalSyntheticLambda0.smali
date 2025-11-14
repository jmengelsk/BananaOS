.class public final synthetic Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;

.field public final synthetic f$1:Landroid/view/SurfaceControl;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:[Landroid/view/RemoteAnimationTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;Landroid/view/SurfaceControl;Ljava/lang/String;[Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;

    iput-object p2, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$3:[Landroid/view/RemoteAnimationTarget;

    return-void
.end method


# virtual methods
.method public final onTransactionCommitted()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$3:[Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "mRunner#onAnimationStart for remote wallpaper="

    const-string/jumbo v3, "invalid leash for transaction="

    :try_start_0
    iget-object v4, v0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->this$0:Lcom/android/server/wm/WallpaperController;

    iget-object v4, v4, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v4, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo p0, "WindowManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    :try_start_2
    const-string/jumbo v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", transaction="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->mRunner:Landroid/view/IRemoteAnimationRunner;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :goto_0
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    return-void
.end method
