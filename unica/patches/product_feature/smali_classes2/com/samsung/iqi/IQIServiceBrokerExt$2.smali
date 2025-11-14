.class public final Lcom/samsung/iqi/IQIServiceBrokerExt$2;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;


# direct methods
.method public constructor <init>(Lcom/samsung/iqi/IQIServiceBrokerExt;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-object p2, p1, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo p3, "att_iqi_report_diagnostic"

    const/4 v0, -0x1

    invoke-static {p2, p3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    iget-object p1, p1, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1, p3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move p2, v1

    :cond_0
    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-boolean p1, p1, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "IQIServiceBrokerExt"

    const-string/jumbo p3, "onChange: opt="

    const-string v0, " service="

    invoke-static {p2, p3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-boolean v0, v0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "running"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "stopped"

    :goto_0
    invoke-static {p3, v0, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-boolean p3, p1, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z

    if-eqz p3, :cond_3

    iget-object p1, p1, Lcom/samsung/iqi/IQIServiceBrokerExt;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iput-boolean v1, p2, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p2, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    iget-object p2, p2, Lcom/samsung/iqi/IQIServiceBrokerExt;->mUploadStateReceiver:Lcom/samsung/iqi/IQIServiceBrokerExt$3;

    new-instance p3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.att.iqi.action.UPLOAD_COMPLETE"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$smsubmitSS2S(Z)V

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->rbIqiState:Lcom/samsung/iqi/IQIServiceBrokerExt$1;

    const-wide/16 p2, 0x7530

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    if-ne p2, v1, :cond_5

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iget-boolean p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->rbIqiState:Lcom/samsung/iqi/IQIServiceBrokerExt$1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$smsubmitSS2S(Z)V

    return-void

    :cond_4
    invoke-static {p0, v1}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$mchangeIqiState(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V

    :cond_5
    return-void
.end method
