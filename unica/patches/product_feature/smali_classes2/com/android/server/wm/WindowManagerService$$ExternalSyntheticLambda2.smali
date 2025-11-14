.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iput p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_4a

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/wm/InputTarget;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedInputTarget:Lcom/android/server/wm/InputTarget;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/WindowManagerService;->handlePointerDownOutsideFocus(Lcom/android/server/wm/InputTarget;Lcom/android/server/wm/InputTarget;)V

    return-void

    :pswitch_13  #0x1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, [Lcom/android/server/wm/WindowManagerInternal$OnWindowRemovedListener;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/os/IBinder;

    sget v1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v1, :cond_3b

    aget-object v3, v0, v2

    check-cast v3, Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda0;

    iget-object v3, v3, Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    iget-object v4, v3, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2a
    iget-object v3, v3, Lcom/android/server/SensitiveContentProtectionManagerService;->mPackagesShowingSensitiveContent:Landroid/util/ArraySet;

    new-instance v5, Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/server/SensitiveContentProtectionManagerService$$ExternalSyntheticLambda1;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :catchall_38
    move-exception p0

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_38

    throw p0

    :cond_3b
    return-void

    :pswitch_3c  #0x0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/app/IAssistDataReceiver;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    sget v1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    :try_start_46
    invoke-interface {v0, p0}, Landroid/app/IAssistDataReceiver;->onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_49} :catch_49

    :catch_49
    return-void

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_3c  #00000000
        :pswitch_13  #00000001
    .end packed-switch
.end method
