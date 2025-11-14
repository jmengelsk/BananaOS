.class public final synthetic Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowTracingLegacy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowTracingLegacy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowTracingLegacy;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/WindowTracing$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowTracingLegacy;

    const-string/jumbo v5, "onFrame"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v4, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v4}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide p0, 0x20b00000002L

    invoke-virtual {v4, p0, p1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p0

    iget v1, v0, Lcom/android/server/wm/WindowTracingLegacy;->mLogLevel:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowTracingLegacy;->dumpToProto(IJLandroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V

    invoke-virtual {v4, p0, p1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-object p0, v0, Lcom/android/server/wm/WindowTracingLegacy;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {p0, v4}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "WindowTracing"

    const-string p2, "Exception while tracing state"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
