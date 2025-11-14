.class public final synthetic Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Landroid/tracing/TraceReportParams;


# direct methods
.method public synthetic constructor <init>(Landroid/tracing/TraceReportParams;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda1;->f$0:Landroid/tracing/TraceReportParams;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 10

    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda1;->f$0:Landroid/tracing/TraceReportParams;

    check-cast p1, Landroid/os/IMessenger;

    iget-boolean v0, p0, Landroid/tracing/TraceReportParams;->usePipeForTesting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_56

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v3, p0, Landroid/tracing/TraceReportParams;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    :try_start_14
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_33

    const/16 v4, 0x400

    :try_start_1d
    invoke-virtual {v2, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->readNBytes(I)[B

    move-result-object v5

    array-length v6, v5

    if-eq v6, v4, :cond_39

    invoke-virtual {v3, v5}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([B)V
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_36

    :try_start_27
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_33

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iput-object v0, p0, Landroid/tracing/TraceReportParams;->fd:Landroid/os/ParcelFileDescriptor;

    goto :goto_56

    :catchall_33
    move-exception v0

    move-object p0, v0

    goto :goto_4c

    :catchall_36
    move-exception v0

    move-object p0, v0

    goto :goto_42

    :cond_39
    :try_start_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Trace file too large when |usePipeForTesting| is set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_36

    :goto_42
    :try_start_42
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4b

    :catchall_46
    move-exception v0

    move-object p1, v0

    :try_start_48
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4b
    throw p0
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_33

    :goto_4c
    :try_start_4c
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_55

    :catchall_50
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_55
    throw p0

    :cond_56
    :goto_56
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/os/IMessenger;->send(Landroid/os/Message;)V

    iget-wide v4, p0, Landroid/tracing/TraceReportParams;->uuidLsb:J

    iget-wide v6, p0, Landroid/tracing/TraceReportParams;->uuidMsb:J

    const/16 v2, 0x1a8

    const/4 v3, 0x2

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    return-void
.end method
