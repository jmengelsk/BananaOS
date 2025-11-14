.class public final Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;
.super Landroid/telephony/PhoneStateListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCallStateChanged() state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    iget-object v0, v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    iget-object v0, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    const-string/jumbo v3, "monitor_call_state"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    const-string/jumbo v2, "monitor_call_state"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportCallStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
