.class public final Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onServiceConnected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "UcmAgentWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mHandler:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$1;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    invoke-static {p2}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    if-eqz p1, :cond_96

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_96

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_96

    const-string/jumbo p2, "notify binding done : "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.UCM_REFRESH_DONE"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "PackageName"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_59
    :goto_59
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mEventBoxQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_96

    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mEventBoxQueue:Ljava/util/Queue;

    check-cast p1, Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$EventBox;

    if-eqz p1, :cond_59

    :try_start_71
    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    iget v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$EventBox;->eventId:I

    iget-object p1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$EventBox;->eventData:Landroid/os/Bundle;

    iget-object p2, p2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    if-eqz p2, :cond_59

    invoke-interface {p2, v1, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;->notifyChange(ILandroid/os/Bundle;)I
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_7e} :catch_7f

    goto :goto_59

    :catch_7f
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Noti was not sent cause binding, send notifyChange : "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_59

    :cond_96
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onServiceDisconnected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "UcmAgentWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;->this$0:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcmAgentService:Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService;

    iget-boolean p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    if-eqz p1, :cond_31

    const-string/jumbo p1, "scheduleRestart"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mHandler:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$1;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mHandler:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$1;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_31
    return-void
.end method
