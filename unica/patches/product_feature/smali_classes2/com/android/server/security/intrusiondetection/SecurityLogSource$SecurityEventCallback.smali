.class public final Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/intrusiondetection/SecurityLogSource;


# direct methods
.method public constructor <init>(Lcom/android/server/security/intrusiondetection/SecurityLogSource;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;->this$0:Lcom/android/server/security/intrusiondetection/SecurityLogSource;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3a

    :cond_b
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource$SecurityEventCallback;->this$0:Lcom/android/server/security/intrusiondetection/SecurityLogSource;

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/SecurityLogSource;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandler:Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_3a
    :goto_3a
    const-string p0, "IntrusionDetection SecurityLogSource"

    const-string/jumbo p1, "No events received; caller may not be authorized"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
