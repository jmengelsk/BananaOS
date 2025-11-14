.class public final synthetic Lcom/android/server/wm/DexController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/DexController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DexController;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/DexController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/DexController;

    packed-switch v0, :pswitch_data_40

    iget-object p0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->stopLockTaskModeInternal(Landroid/os/IBinder;Z)V

    return-void

    :pswitch_f  #0x0
    iget-object v0, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_17
    iget-object v1, p0, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v2, p0, Lcom/android/server/wm/DexController;->mPrimaryExternalDesktopDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2f

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->type:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2f

    move v1, v2

    goto :goto_30

    :catchall_2d
    move-exception p0

    goto :goto_3b

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    iget-boolean v3, p0, Lcom/android/server/wm/DexController;->mMirrorBuiltInDisplay:Z

    xor-int/2addr v2, v3

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/DexController;->updateDisplayPortStateIfNeeded(ZZ)V

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_17 .. :try_end_37} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_3b
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_f  #00000000
    .end packed-switch
.end method
