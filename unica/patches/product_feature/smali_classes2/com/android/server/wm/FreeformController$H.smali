.class public final Lcom/android/server/wm/FreeformController$H;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/FreeformController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FreeformController;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 13

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_191

    packed-switch v0, :pswitch_data_1b8

    packed-switch v0, :pswitch_data_1c4

    goto/16 :goto_178

    :pswitch_e  #0xcd
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v1, v0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    :try_start_13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Landroid/os/IRemoteCallback;

    iget-object v3, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v3, v3, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    :goto_25
    if-ge v2, v3, :cond_43

    iget-object v4, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v4, v4, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_35

    :try_start_31
    invoke-interface {v4, v0, p1}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onTaskMoveEnded(ILandroid/os/IRemoteCallback;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_38
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_40

    :catchall_35
    move-exception v0

    move-object p0, v0

    goto :goto_4d

    :catch_38
    :try_start_38
    const-string v4, "FreeformController"

    const-string/jumbo v5, "onTaskMoveEnded, RemoteException occurred"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_43
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v1

    goto/16 :goto_178

    :goto_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_38 .. :try_end_4e} :catchall_35

    throw p0

    :pswitch_4f  #0xcc
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v1, v0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    :try_start_54
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v3, v3, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    :goto_66
    if-ge v2, v3, :cond_84

    iget-object v4, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v4, v4, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_72
    .catchall {:try_start_54 .. :try_end_72} :catchall_76

    :try_start_72
    invoke-interface {v4, v0, p1}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onTaskMoveStarted(ILandroid/graphics/Point;)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_75} :catch_79
    .catchall {:try_start_72 .. :try_end_75} :catchall_76

    goto :goto_81

    :catchall_76
    move-exception v0

    move-object p0, v0

    goto :goto_8e

    :catch_79
    :try_start_79
    const-string v4, "FreeformController"

    const-string/jumbo v5, "onTaskMoveStarted, RemoteException occurred"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    :cond_84
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v1

    goto/16 :goto_178

    :goto_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_79 .. :try_end_8f} :catchall_76

    throw p0

    :pswitch_90  #0xcb
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v1, v0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    :try_start_95
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_a3
    if-ge v2, v0, :cond_c1

    iget-object v3, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v3, v3, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_af
    .catchall {:try_start_95 .. :try_end_af} :catchall_b3

    :try_start_af
    invoke-interface {v3, p1}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onMinimizeAnimationEnd(I)V
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_b2} :catch_b6
    .catchall {:try_start_af .. :try_end_b2} :catchall_b3

    goto :goto_be

    :catchall_b3
    move-exception v0

    move-object p0, v0

    goto :goto_cb

    :catch_b6
    :try_start_b6
    const-string v3, "FreeformController"

    const-string/jumbo v4, "onMinimizeAnimationEnd, RemoteException occurred"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_be
    add-int/lit8 v2, v2, 0x1

    goto :goto_a3

    :cond_c1
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v1

    goto/16 :goto_178

    :goto_cb
    monitor-exit v1
    :try_end_cc
    .catchall {:try_start_b6 .. :try_end_cc} :catchall_b3

    throw p0

    :pswitch_cd  #0xca
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v3, v0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v3

    :try_start_d2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_e0
    if-ge v2, v0, :cond_fe

    iget-object v1, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v1, v1, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_ec
    .catchall {:try_start_d2 .. :try_end_ec} :catchall_f0

    :try_start_ec
    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onUnminimized(I)V
    :try_end_ef
    .catch Landroid/os/RemoteException; {:try_start_ec .. :try_end_ef} :catch_f3
    .catchall {:try_start_ec .. :try_end_ef} :catchall_f0

    goto :goto_fb

    :catchall_f0
    move-exception v0

    move-object p0, v0

    goto :goto_108

    :catch_f3
    :try_start_f3
    const-string v1, "FreeformController"

    const-string/jumbo v4, "onRestored, RemoteException occurred"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_fb
    add-int/lit8 v2, v2, 0x1

    goto :goto_e0

    :cond_fe
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v3

    goto/16 :goto_178

    :goto_108
    monitor-exit v3
    :try_end_109
    .catchall {:try_start_f3 .. :try_end_109} :catchall_f0

    throw p0

    :pswitch_10a  #0xc9
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v3, v0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v3

    :try_start_10f
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

    if-ne p1, v1, :cond_126

    move v10, v1

    goto :goto_127

    :cond_126
    move v10, v2

    :goto_127
    iget-object p1, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object p1, p1, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1

    :goto_12f
    if-ge v2, p1, :cond_14e

    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object v0, v0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_13c
    .catchall {:try_start_10f .. :try_end_13c} :catchall_140

    :try_start_13c
    invoke-interface/range {v4 .. v10}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onMinimized(Landroid/content/ComponentName;IIIIZ)V
    :try_end_13f
    .catch Landroid/os/RemoteException; {:try_start_13c .. :try_end_13f} :catch_143
    .catchall {:try_start_13c .. :try_end_13f} :catchall_140

    goto :goto_14b

    :catchall_140
    move-exception v0

    move-object p0, v0

    goto :goto_157

    :catch_143
    :try_start_143
    const-string v0, "FreeformController"

    const-string/jumbo v1, "onMinimized, RemoteException occurred"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14b
    add-int/lit8 v2, v2, 0x1

    goto :goto_12f

    :cond_14e
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v3

    goto :goto_178

    :goto_157
    monitor-exit v3
    :try_end_158
    .catchall {:try_start_143 .. :try_end_158} :catchall_140

    throw p0

    :pswitch_159  #0x68
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    if-eqz v0, :cond_178

    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mSmartPopupViewServiceBinder:Lcom/android/server/wm/SmartPopupViewServiceBinder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->unbindServiceIfNeeded(Ljava/lang/String;)V

    return-void

    :pswitch_169  #0x67
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    if-eqz v0, :cond_178

    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mSmartPopupViewServiceBinder:Lcom/android/server/wm/SmartPopupViewServiceBinder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->bindServiceIfNeeded(Ljava/lang/String;)V

    :cond_178
    :goto_178
    return-void

    :pswitch_179  #0x66
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mMinimizeContainerServiceBinder:Lcom/android/server/wm/MinimizeContainerServiceBinder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->unbindServiceIfNeeded(Ljava/lang/String;)V

    return-void

    :pswitch_185  #0x65
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    iget-object p0, p0, Lcom/android/server/wm/FreeformController;->mMinimizeContainerServiceBinder:Lcom/android/server/wm/MinimizeContainerServiceBinder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->bindServiceIfNeeded(Ljava/lang/String;)V

    return-void

    :cond_191
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

    :pswitch_data_1b8
    .packed-switch 0x65
        :pswitch_185  #00000065
        :pswitch_179  #00000066
        :pswitch_169  #00000067
        :pswitch_159  #00000068
    .end packed-switch

    :pswitch_data_1c4
    .packed-switch 0xc9
        :pswitch_10a  #000000c9
        :pswitch_cd  #000000ca
        :pswitch_90  #000000cb
        :pswitch_4f  #000000cc
        :pswitch_e  #000000cd
    .end packed-switch
.end method
