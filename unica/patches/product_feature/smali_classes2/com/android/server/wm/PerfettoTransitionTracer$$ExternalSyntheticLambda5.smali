.class public final synthetic Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/tracing/perfetto/TraceFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PerfettoTransitionTracer;

.field public final synthetic f$1:Lcom/android/server/wm/Transition;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PerfettoTransitionTracer;Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/PerfettoTransitionTracer;

    iput-object p2, p0, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/Transition;

    iput-object p3, p0, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda5;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final trace(Landroid/tracing/perfetto/TracingContext;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/PerfettoTransitionTracer;

    iget-object v1, p0, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/wm/Transition;

    iget-object p0, p0, Lcom/android/server/wm/PerfettoTransitionTracer$$ExternalSyntheticLambda5;->f$2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object p1

    const-wide v2, 0x10b00000060L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget v0, v1, Lcom/android/server/wm/Transition;->mSyncId:I

    const-wide v4, 0x10500000001L

    invoke-virtual {p1, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v0, v1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-wide v6, v0, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    const-wide v8, 0x10300000002L

    invoke-virtual {p1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10300000003L

    iget-wide v8, v0, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1}, Lcom/android/server/wm/Transition;->getStartTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->getId()J

    move-result-wide v6

    const-wide v8, 0x1040000000aL

    invoke-virtual {p1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1}, Lcom/android/server/wm/Transition;->getFinishTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->getId()J

    move-result-wide v6

    const-wide v8, 0x1040000000bL

    invoke-virtual {p1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x1050000000dL

    iget v0, v1, Lcom/android/server/wm/Transition;->mType:I

    invoke-virtual {p1, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v0, v1, Lcom/android/server/wm/Transition;->mFlags:I

    const-wide v6, 0x10500000010L

    invoke-virtual {p1, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v6, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v6, v6, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v6

    iget-object v7, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v6, :cond_0

    iget-object v6, v7, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v6

    goto :goto_1

    :cond_0
    const/4 v6, -0x1

    :goto_1
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    const-wide v8, 0x20b0000000eL

    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    iget v10, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mReadyMode:I

    invoke-virtual {p1, v4, v5, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v10, 0x10500000004L

    iget v1, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mReadyFlags:I

    invoke-virtual {p1, v10, v11, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v10, 0x10500000002L

    invoke-virtual {p1, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v10, 0x10500000003L

    invoke-virtual {p1, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
