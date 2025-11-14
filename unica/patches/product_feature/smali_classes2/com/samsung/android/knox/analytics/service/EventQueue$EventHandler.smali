.class public Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final MAX_QUEUED_EVENTS_WITHOUT_THROTTLE:I = 0x186a0


# instance fields
.field public mNumberOfQueuedMessages:I

.field public final mNumberOfQueuedMessagesLock:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/EventQueue;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->mNumberOfQueuedMessagesLock:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->mNumberOfQueuedMessages:I

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->mNumberOfQueuedMessagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->mNumberOfQueuedMessages:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->mNumberOfQueuedMessages:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    sget-object p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "handleMessage(): msg is null!"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->waitVersioningCompleted()V

    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    sget-object p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "handleMessage(): invalid msg.what"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string v1, "EventQueue.handleMessage() - EVENT_QUEUE_MSG_CLEANED_LOG_API"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KnoxAnalyticsData"

    const-class v1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->saveCachedLogs()V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->addCleanEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string v1, "EventQueue.handleMessage() - EVENT_QUEUE_MSG_KA_DEACTIVATION"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KnoxAnalyticsData"

    const-class v1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->deletePendingEvents()V

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->checkEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->addEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)J

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->stop()V

    return-void

    :cond_4
    sget-object v0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string v1, "EventQueue.handleMessage() - EVENT_QUEUE_MSG_LOG_API"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KnoxAnalyticsData"

    const-class v1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->enqueueEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception handling message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final sendMessageThrottled(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->mNumberOfQueuedMessagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->mNumberOfQueuedMessages:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->mNumberOfQueuedMessages:I

    if-gez v1, :cond_0

    iput v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->mNumberOfQueuedMessages:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    iget v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->mNumberOfQueuedMessages:I

    const v2, 0x186a0

    if-lt v1, v2, :cond_1

    div-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xa

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_2

    int-to-long v0, v1

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendMessageThrottled(): failed to throttle"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
