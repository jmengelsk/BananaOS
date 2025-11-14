.class public final Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallingPid:I

.field public final mRemoteWallpaperAnimArea:Lcom/android/server/wm/DisplayArea;

.field public final mRunner:Landroid/view/IRemoteAnimationRunner;

.field public final mRunnerToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/wm/WallpaperController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WallpaperController;Landroid/os/IBinder;Lcom/android/server/wm/DisplayArea;ILandroid/view/IRemoteAnimationRunner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->this$0:Lcom/android/server/wm/WallpaperController;

    iput-object p5, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->mRunner:Landroid/view/IRemoteAnimationRunner;

    iput-object p2, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->mRunnerToken:Landroid/os/IBinder;

    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object p3, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->mRemoteWallpaperAnimArea:Lcom/android/server/wm/DisplayArea;

    iput p4, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->mCallingPid:I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->this$0:Lcom/android/server/wm/WallpaperController;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->mRemoteWallpaperAnimArea:Lcom/android/server/wm/DisplayArea;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

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

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "RemoteWallpaperAnimAdapter callingPid="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->mCallingPid:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final dumpDebug$1(Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    return-void
.end method

.method public final getDurationHint()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .locals 3

    const-string/jumbo v0, "mRunner#onAnimationCancelled, leash="

    :try_start_0
    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", caller="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x5

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->mRunner:Landroid/view/IRemoteAnimationRunner;

    invoke-interface {p0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 19

    move-object/from16 v4, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startAnimation for remote wallpaper, leash="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    move-object v2, v1

    new-instance v1, Landroid/view/RemoteAnimationTarget;

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v3, v2

    const/4 v2, -0x1

    move-object v5, v3

    const/4 v3, -0x1

    move-object v6, v5

    const/4 v5, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v10, v8

    const/4 v8, -0x1

    move-object v11, v10

    const/4 v10, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v13, v12

    const/4 v12, 0x0

    move-object v14, v13

    const/4 v13, 0x1

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v18, v15

    const/4 v15, 0x0

    move-object/from16 v0, v18

    invoke-direct/range {v1 .. v17}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    move-object/from16 v1, p2

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startRemoteWallpaperAnimation_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p0

    iget-object v5, v3, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->mRunner:Landroid/view/IRemoteAnimationRunner;

    invoke-interface {v5}, Landroid/view/IRemoteAnimationRunner;->hashCode()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->addLowDebugName(Ljava/lang/String;)V

    new-instance v5, Landroid/os/HandlerExecutor;

    iget-object v6, v3, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->this$0:Lcom/android/server/wm/WallpaperController;

    iget-object v6, v6, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v5, v6}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v6, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v6, v3, v4, v2, v0}, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;Landroid/view/SurfaceControl;Ljava/lang/String;[Landroid/view/RemoteAnimationTarget;)V

    invoke-virtual {v1, v5, v6}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method
