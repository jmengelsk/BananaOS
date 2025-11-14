.class public Lcom/samsung/android/knoxguard/service/KGEventQueue;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final HANDLER_THREAD_NAME:Ljava/lang/String; = "KG_EVENT_HANDLER_THREAD"

.field public static final TAG:Ljava/lang/String; = "KG.KGEventQueue"

.field public static kgEventQueue:Lcom/samsung/android/knoxguard/service/KGEventQueue;


# instance fields
.field public eventHandler:Lcom/samsung/android/knoxguard/service/KGEventHandler;

.field public eventHandlerThread:Landroid/os/HandlerThread;

.field public idleHandler:Landroid/os/MessageQueue$IdleHandler;

.field public final mEventLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->mEventLock:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knoxguard/service/KGEventQueue;
    .registers 1

    sget-object v0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->kgEventQueue:Lcom/samsung/android/knoxguard/service/KGEventQueue;

    if-nez v0, :cond_b

    new-instance v0, Lcom/samsung/android/knoxguard/service/KGEventQueue;

    invoke-direct {v0}, Lcom/samsung/android/knoxguard/service/KGEventQueue;-><init>()V

    sput-object v0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->kgEventQueue:Lcom/samsung/android/knoxguard/service/KGEventQueue;

    :cond_b
    sget-object v0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->kgEventQueue:Lcom/samsung/android/knoxguard/service/KGEventQueue;

    return-object v0
.end method


# virtual methods
.method public final addIdleHandler()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->idleHandler:Landroid/os/MessageQueue$IdleHandler;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/samsung/android/knoxguard/service/KGEventQueue$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knoxguard/service/KGEventQueue$1;-><init>(Lcom/samsung/android/knoxguard/service/KGEventQueue;)V

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->idleHandler:Landroid/os/MessageQueue$IdleHandler;

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->eventHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->idleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_1a
    return-void
.end method

.method public final enqueueEvent(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->enqueueEvent(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;Landroid/os/Bundle;)V

    return-void
.end method

.method public final enqueueEvent(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/KGEventHandler$SystemEvent;Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->mEventLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_27

    if-nez p2, :cond_8

    goto :goto_27

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->startThread()V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    iput p2, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->eventHandler:Lcom/samsung/android/knoxguard/service/KGEventHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KGEventQueue;->addIdleHandler()V

    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    goto :goto_29

    :cond_27
    :goto_27
    monitor-exit v0

    return-void

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_25

    throw p0
.end method

.method public final startThread()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->eventHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_10

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KG_EVENT_HANDLER_THREAD"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->eventHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->eventHandler:Lcom/samsung/android/knoxguard/service/KGEventHandler;

    if-nez v0, :cond_21

    new-instance v0, Lcom/samsung/android/knoxguard/service/KGEventHandler;

    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->eventHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->eventHandler:Lcom/samsung/android/knoxguard/service/KGEventHandler;

    :cond_21
    return-void
.end method

.method public final stopThread()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->mEventLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->eventHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->eventHandler:Lcom/samsung/android/knoxguard/service/KGEventHandler;

    iput-object v1, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->eventHandlerThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/samsung/android/knoxguard/service/KGEventQueue;->idleHandler:Landroid/os/MessageQueue$IdleHandler;

    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method
