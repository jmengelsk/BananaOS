.class public final Lcom/samsung/iqi/IQIServiceBrokerExt$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;


# direct methods
.method public constructor <init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p1, "BookKeeping time : ACTION_UPLOAD_COMPLETE; OptOutTriggered="

    iget-object p2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-object p2, p2, Lcom/samsung/iqi/IQIServiceBrokerExt;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_7
    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-boolean v0, v0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    if-eqz v0, :cond_25

    const-string v0, "IQIServiceBrokerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-boolean p1, p1, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_45

    :cond_25
    :goto_25
    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-boolean v0, p1, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    if-eqz v0, :cond_43

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    invoke-static {p1, v0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$mchangeIqiState(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V

    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-object v0, p1, Lcom/samsung/iqi/IQIServiceBrokerExt;->mHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/samsung/iqi/IQIServiceBrokerExt;->rbIqiState:Lcom/samsung/iqi/IQIServiceBrokerExt$1;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mUploadStateReceiver:Lcom/samsung/iqi/IQIServiceBrokerExt$3;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_43
    monitor-exit p2

    return-void

    :goto_45
    monitor-exit p2
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_23

    throw p0
.end method
