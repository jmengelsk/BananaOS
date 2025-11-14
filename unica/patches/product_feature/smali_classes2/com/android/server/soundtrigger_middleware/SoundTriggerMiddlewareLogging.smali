.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;
.implements Lcom/android/server/soundtrigger_middleware/Dumpable;


# instance fields
.field public final mBatteryStatsInternalSupplier:Ljava/util/function/Supplier;

.field public final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

.field public final mDetachedSessionEventLoggers:Ljava/util/Deque;

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mServiceEventLogger:Lcom/android/server/utils/EventLogger;

.field public final mSessionCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mSessionEventLoggers:Ljava/util/Set;


# direct methods
.method public static -$$Nest$mstartKeyphraseEventLatencyTracking(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/media/soundtrigger/PhraseRecognitionEvent;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget v0, v0, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyphraseId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    iget p1, p1, Landroid/media/soundtrigger/PhraseRecognitionExtra;->id:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/LatencyTracker;Ljava/util/function/Supplier;Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/LatencyTracker;",
            "Ljava/util/function/Supplier<",
            "Landroid/os/BatteryStatsInternal;",
            ">;",
            "Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/utils/EventLogger;

    const/16 v1, 0x100

    const-string/jumbo v2, "Service Events"

    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mServiceEventLogger:Lcom/android/server/utils/EventLogger;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet(I)Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mSessionEventLoggers:Ljava/util/Set;

    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDetachedSessionEventLoggers:Ljava/util/Deque;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mSessionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mBatteryStatsInternalSupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;Z)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .locals 10

    const-string/jumbo v1, "SoundTriggerMiddlewareLogging"

    sget-object v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;->ATTACH:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

    iget-object v8, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mServiceEventLogger:Lcom/android/server/utils/EventLogger;

    const-string/jumbo v0, "Session logger for: "

    :try_start_0
    invoke-static {}, Landroid/media/permission/IdentityContext;->getNonNull()Landroid/media/permission/Identity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mSessionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string/jumbo v5, "trusted"

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v3, p0

    goto :goto_1

    :cond_0
    const-string v5, ""

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;

    invoke-direct {v6, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;)V

    new-instance v9, Lcom/android/server/utils/EventLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x80

    invoke-direct {v9, v3, v0}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;

    invoke-direct {v0, p0, p2, v9, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Lcom/android/server/utils/EventLogger;Landroid/media/permission/Identity;)V

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {v2, p1, v0, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;Z)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    iput-object v9, v6, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mEventLogger:Lcom/android/server/utils/EventLogger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {v0, p2, p3}, [Ljava/lang/Object;

    move-result-object v7

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;

    const/4 v3, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;-><init>(Ljava/lang/Exception;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 p3, 0x0

    invoke-virtual {v2, p3, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v8, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mSessionEventLoggers:Ljava/util/Set;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {p0, v9}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :goto_1
    invoke-static {}, Landroid/media/permission/IdentityContext;->get()Landroid/media/permission/Identity;

    move-result-object p0

    iget-object v5, p0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object v7

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;-><init>(Ljava/lang/Exception;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 p0, 0x2

    invoke-virtual {v2, p0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v8, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    throw v3
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "##Service-Wide logs:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mServiceEventLogger:Lcom/android/server/utils/EventLogger;

    const-string v1, "  "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v0, "\n##Active Session dumps:\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mSessionEventLoggers:Ljava/util/Set;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/utils/EventLogger;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "##Detached Session dumps:\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDetachedSessionEventLoggers:Ljava/util/Deque;

    check-cast v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/utils/EventLogger;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    instance-of v0, p0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    invoke-interface {p0, p1}, Lcom/android/server/soundtrigger_middleware/Dumpable;->dump(Ljava/io/PrintWriter;)V

    :cond_2
    return-void
.end method

.method public final listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .locals 10

    const-string/jumbo v1, "SoundTriggerMiddlewareLogging"

    sget-object v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;->LIST_MODULE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;

    iget-object v8, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mServiceEventLogger:Lcom/android/server/utils/EventLogger;

    const/4 v9, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {p0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModulePropertySummary;

    invoke-static {}, Landroid/media/permission/IdentityContext;->get()Landroid/media/permission/Identity;

    move-result-object v0

    iget-object v5, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    new-array v7, v9, [Ljava/lang/Object;

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;

    const/4 v3, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;-><init>(Ljava/lang/Exception;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {v2, v9, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v8, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v3, p0

    invoke-static {}, Landroid/media/permission/IdentityContext;->get()Landroid/media/permission/Identity;

    move-result-object p0

    iget-object v5, p0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    new-array v7, v9, [Ljava/lang/Object;

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;-><init>(Ljava/lang/Exception;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent$Type;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 p0, 0x2

    invoke-virtual {v2, p0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ServiceEvent;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v8, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    throw v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
