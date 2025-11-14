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
    .registers 3

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
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->mNumberOfQueuedMessagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->mNumberOfQueuedMessages:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->mNumberOfQueuedMessages:I

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b6

    if-nez p1, :cond_15

    sget-object p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "handleMessage(): msg is null!"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->waitVersioningCompleted()V

    :try_start_1a
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_82

    const/4 v1, 0x2

    if-eq v0, v1, :cond_55

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2d

    sget-object p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "handleMessage(): invalid msg.what"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
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

    if-eqz v0, :cond_b5

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->addCleanEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    return-void

    :cond_55
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

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->addEvent(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)J

    :cond_7c
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->stop()V

    return-void

    :cond_82
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
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_9c} :catch_9d

    return-void

    :catch_9d
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

    :cond_b5
    return-void

    :catchall_b6
    move-exception p0

    :try_start_b7
    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw p0
.end method

.method public final sendMessageThrottled(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->mNumberOfQueuedMessagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->mNumberOfQueuedMessages:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->mNumberOfQueuedMessages:I

    if-gez v1, :cond_10

    iput v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->mNumberOfQueuedMessages:I

    goto :goto_10

    :catchall_e
    move-exception p0

    goto :goto_31

    :cond_10
    :goto_10
    iget v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->mNumberOfQueuedMessages:I

    const v2, 0x186a0

    if-lt v1, v2, :cond_1b

    div-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xa

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_e

    if-lez v1, :cond_2d

    int-to-long v0, v1

    :try_start_20
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_2d

    :catch_24
    sget-object p0, Lcom/samsung/android/knox/analytics/service/EventQueue;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendMessageThrottled(): failed to throttle"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    :goto_2d
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_31
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_e

    throw p0
.end method
