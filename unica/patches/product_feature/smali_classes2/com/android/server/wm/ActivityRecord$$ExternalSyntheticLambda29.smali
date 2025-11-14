.class public final synthetic Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:[F

.field public final synthetic f$2:[F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;[F[F)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;->f$0:Lcom/android/server/wm/ActivityRecord;

    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;->f$1:[F

    iput-object p3, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;->f$2:[F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;->f$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;->f$1:[F

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;->f$2:[F

    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_e
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    if-nez v3, :cond_27

    new-instance v3, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/16 v4, 0x9

    new-array v4, v4, [F

    iput-object v4, v3, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mMatrix:[F

    const/4 v4, 0x3

    new-array v4, v4, [F

    iput-object v4, v3, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mTranslation:[F

    iput-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_57

    :cond_27
    :goto_27
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mMatrix:[F

    array-length v5, v4

    const/4 v6, 0x0

    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v3, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mTranslation:[F

    array-length v3, v1

    invoke-static {p0, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_52

    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    if-eqz p0, :cond_52

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mMatrix:[F

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mTranslation:[F

    invoke-virtual {p0, v1, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setColorTransform(Landroid/view/SurfaceControl;[F[F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_e .. :try_end_53} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_57
    :try_start_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
