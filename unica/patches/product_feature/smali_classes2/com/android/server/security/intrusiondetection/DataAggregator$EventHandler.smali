.class public final Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/security/intrusiondetection/DataAggregator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unknown message: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "IntrusionDetection DataAggregator"

    invoke-static {p0, p1, v0}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mDataSources:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/security/intrusiondetection/DataSource;

    invoke-interface {v2}, Lcom/android/server/security/intrusiondetection/DataSource;->disable()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->quitSafely()Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandlerThread:Lcom/android/server/ServiceThread;

    return-void

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mIntrusionDetectionService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mHandler:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/security/intrusiondetection/IntrusionDetectionEvent;

    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mStoredEvents:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x400

    if-ge v0, v2, :cond_4

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mStoredEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    iget-object p1, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mStoredEvents:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mIntrusionDetectionService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object v0, v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mHandler:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mStoredEvents:Ljava/util/List;

    return-void
.end method
