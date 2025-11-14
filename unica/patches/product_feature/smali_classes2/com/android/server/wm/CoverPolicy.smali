.class public final Lcom/android/server/wm/CoverPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

.field public mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field public mCoverWindow:Lcom/android/server/wm/WindowState;

.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

.field public mHandler:Lcom/android/server/wm/CoverPolicy$CoverPolicyHandler;

.field public mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

.field public mLastClearCoverState:Z

.field public mLastCoverAppCovered:Z

.field public mViewCoverDisplay:Lcom/android/server/wm/DisplayContent;

.field public mWallpaperTargetMayChange:Z

.field public mWindowPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field public mWmService:Lcom/android/server/wm/WindowManagerService;


# virtual methods
.method public final declared-synchronized getCoverManager()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "CoverPolicy"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public shouldApplyAodPolicy()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    return p0
.end method

.method public final updateCoverStateLocked(Lcom/samsung/android/cover/CoverState;)V
    .locals 5

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, p1, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-boolean v2, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eq v2, v1, :cond_1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    :cond_1
    iget p1, v0, Lcom/samsung/android/cover/CoverState;->type:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean p1, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/server/wm/WindowState;->mDisableHideSViewOnce:Z

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mViewCoverDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/CoverPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v4

    iget-boolean v4, v4, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v4, :cond_4

    const/4 v4, 0x4

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowManagerServiceExt;->moveDisplayToTop(I)V

    :goto_2
    if-eqz v1, :cond_5

    iget-boolean p1, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez p1, :cond_5

    iget-object p1, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/TaskSnapshotController;->snapshotForSleeping(I)V

    :cond_5
    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object p1, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mHandler:Lcom/android/server/wm/CoverPolicy$CoverPolicyHandler;

    new-instance v0, Lcom/android/server/wm/CoverPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/CoverPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CoverPolicy;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
