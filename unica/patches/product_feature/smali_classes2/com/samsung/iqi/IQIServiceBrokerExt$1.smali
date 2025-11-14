.class public final Lcom/samsung/iqi/IQIServiceBrokerExt$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;


# direct methods
.method public constructor <init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const-string v0, "BookKeeping time : 30_SECONDS_EXPIRED; OptOutTriggered="

    iget-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-object v1, v1, Lcom/samsung/iqi/IQIServiceBrokerExt;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-boolean v2, v2, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    if-eqz v2, :cond_25

    const-string v2, "IQIServiceBrokerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-boolean v0, v0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_3c

    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-boolean v2, v0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    if-eqz v2, :cond_3a

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    invoke-static {v0, v2}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$mchangeIqiState(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mUploadStateReceiver:Lcom/samsung/iqi/IQIServiceBrokerExt$3;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3a
    monitor-exit v1

    return-void

    :goto_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_23

    throw p0
.end method
