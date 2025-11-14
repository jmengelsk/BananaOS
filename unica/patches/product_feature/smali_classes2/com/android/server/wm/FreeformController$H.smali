.class public final Lcom/android/server/wm/FreeformController$H;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/FreeformController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FreeformController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_10

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v1, v0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Landroid/os/IRemoteCallback;

    iget-object v3, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v3, v3, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v4, v4, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v4, v0, p1}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onTaskMoveEnded(ILandroid/os/IRemoteCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    :try_start_2
    const-string v4, "FreeformController"

    const-string/jumbo v5, "onTaskMoveEnded, RemoteException occurred"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v1

    goto/16 :goto_10

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v1, v0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    :try_start_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v3, v3, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    :goto_3
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v4, v4, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v4, v0, p1}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onTaskMoveStarted(ILandroid/graphics/Point;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :catch_1
    :try_start_5
    const-string v4, "FreeformController"

    const-string/jumbo v5, "onTaskMoveStarted, RemoteException occurred"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v1

    goto/16 :goto_10

    :goto_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v1, v0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    :try_start_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_6
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v3, v3, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-interface {v3, p1}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onMinimizeAnimationEnd(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_8

    :catch_2
    :try_start_8
    const-string v3, "FreeformController"

    const-string/jumbo v4, "onMinimizeAnimationEnd, RemoteException occurred"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v1

    goto/16 :goto_10

    :goto_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v3, v0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v3

    :try_start_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_9
    if-ge v2, v0, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v1, v1, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onUnminimized(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_b

    :catch_3
    :try_start_b
    const-string v1, "FreeformController"

    const-string/jumbo v4, "onRestored, RemoteException occurred"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v3

    goto/16 :goto_10

    :goto_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw p0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v3, v0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v3

    :try_start_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/content/ComponentName;

    iget v6, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v7, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v8, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v9, p1, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi5:I

    if-ne p1, v1, :cond_4

    move v10, v1

    goto :goto_c

    :cond_4
    move v10, v2

    :goto_c
    iget-object p1, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object p1, p1, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1

    :goto_d
    if-ge v2, p1, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    invoke-interface/range {v4 .. v10}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onMinimized(Landroid/content/ComponentName;IIIIZ)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_e

    :catchall_4
    move-exception v0

    move-object p0, v0

    goto :goto_f

    :catch_4
    :try_start_e
    const-string v0, "FreeformController"

    const-string/jumbo v1, "onMinimized, RemoteException occurred"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v3

    goto :goto_10

    :goto_f
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw p0

    :pswitch_5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mSmartPopupViewServiceBinder:Lcom/android/server/wm/SmartPopupViewServiceBinder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->unbindServiceIfNeeded(Ljava/lang/String;)V

    return-void

    :pswitch_6
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mSmartPopupViewServiceBinder:Lcom/android/server/wm/SmartPopupViewServiceBinder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->bindServiceIfNeeded(Ljava/lang/String;)V

    :cond_6
    :goto_10
    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mMinimizeContainerServiceBinder:Lcom/android/server/wm/MinimizeContainerServiceBinder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->unbindServiceIfNeeded(Ljava/lang/String;)V

    return-void

    :pswitch_8
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mMinimizeContainerServiceBinder:Lcom/android/server/wm/MinimizeContainerServiceBinder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->bindServiceIfNeeded(Ljava/lang/String;)V

    return-void

    :cond_7
    new-instance p1, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v1, 0x103012b

    invoke-direct {p1, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10404c1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
