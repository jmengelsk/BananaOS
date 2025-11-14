.class public final Lcom/android/server/media/MediaSessionRecord$MessageHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_90

    :pswitch_5  #0x7
    return-void

    :pswitch_6  #0x9
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_b
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-nez v0, :cond_13

    monitor-exit p1

    return-void

    :catchall_11
    move-exception p0

    goto :goto_2c

    :cond_13
    monitor-exit p1
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_11

    const-string/jumbo p1, "pushSessionDestroyed"

    new-instance v0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/MediaSessionRecord;->performOnCallbackHolders(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;)V

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_22
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    throw p0

    :goto_2c
    :try_start_2c
    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_11

    throw p0

    :pswitch_2e  #0x8
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    return-void

    :pswitch_34  #0x6
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_41
    iget-boolean v2, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v2, :cond_49

    monitor-exit v1

    return-void

    :catchall_47
    move-exception p0

    goto :goto_56

    :cond_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_47

    const-string/jumbo v1, "pushEvent"

    new-instance v2, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1, v0}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/media/MediaSessionRecord;->performOnCallbackHolders(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;)V

    return-void

    :goto_56
    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_47

    throw p0

    :pswitch_58  #0x5
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_5d
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v0, :cond_65

    monitor-exit p1

    return-void

    :catchall_63
    move-exception p0

    goto :goto_75

    :cond_65
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    monitor-exit p1
    :try_end_68
    .catchall {:try_start_5d .. :try_end_68} :catchall_63

    const-string/jumbo p1, "pushExtrasUpdate"

    new-instance v1, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/media/MediaSessionRecord;->performOnCallbackHolders(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ControllerCallbackCall;)V

    return-void

    :goto_75
    :try_start_75
    monitor-exit p1
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_63

    throw p0

    :pswitch_77  #0x4
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mpushQueueTitleUpdate(Lcom/android/server/media/MediaSessionRecord;)V

    return-void

    :pswitch_7d  #0x3
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mpushQueueUpdate(Lcom/android/server/media/MediaSessionRecord;)V

    return-void

    :pswitch_83  #0x2
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mpushPlaybackStateUpdate(Lcom/android/server/media/MediaSessionRecord;)V

    return-void

    :pswitch_89  #0x1
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mpushMetadataUpdate(Lcom/android/server/media/MediaSessionRecord;)V

    return-void

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_89  #00000001
        :pswitch_83  #00000002
        :pswitch_7d  #00000003
        :pswitch_77  #00000004
        :pswitch_58  #00000005
        :pswitch_34  #00000006
        :pswitch_5  #00000007
        :pswitch_2e  #00000008
        :pswitch_6  #00000009
    .end packed-switch
.end method

.method public final post(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
