.class public final Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;->$r8$classId:I

    packed-switch p2, :pswitch_data_22

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;->this$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void

    :pswitch_13  #0x1
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;->this$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_13  #00000001
    .end packed-switch
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;->$r8$classId:I

    packed-switch v0, :pswitch_data_3a

    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;->this$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePendingStates()V

    return-void

    :pswitch_b  #0x0
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;->this$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget-wide v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastWriteDoneTimeMillis:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v5, v1, v3

    if-gez v5, :cond_2b

    sub-long/2addr v3, v1

    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_39

    :cond_2b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mInvokeWriteUserStateAsyncCallback:Lcom/android/server/pm/Settings$3;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings$3;->accept(Ljava/lang/Object;)V

    if-eqz p1, :cond_39

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_39
    :goto_39
    return-void

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_b  #00000000
    .end packed-switch
.end method
