.class public interface abstract Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public onReadyTimeout()V
    .registers 1

    return-void
.end method

.method public onReadyTraceEnd(ILjava/lang/String;)V
    .registers 5

    const-wide/16 v0, 0x20

    invoke-static {v0, v1, p2, p1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public onReadyTraceStart(ILjava/lang/String;)V
    .registers 5

    const-wide/16 v0, 0x20

    invoke-static {v0, v1, p2, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    return-void
.end method

.method public onTransactionCommitTimeout()V
    .registers 1

    return-void
.end method

.method public onTransactionCommitted()V
    .registers 1

    return-void
.end method

.method public abstract onTransactionReady(Landroid/view/SurfaceControl$Transaction;I)V
.end method
