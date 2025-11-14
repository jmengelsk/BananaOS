.class public final synthetic Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/tracing/TraceReportParams;


# direct methods
.method public synthetic constructor <init>(Landroid/tracing/TraceReportParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda2;->f$0:Landroid/tracing/TraceReportParams;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda2;->f$0:Landroid/tracing/TraceReportParams;

    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/Throwable;

    if-eqz p2, :cond_0

    iget-wide v2, p0, Landroid/tracing/TraceReportParams;->uuidLsb:J

    iget-wide v4, p0, Landroid/tracing/TraceReportParams;->uuidMsb:J

    const/16 v0, 0x1a8

    const/4 v1, 0x5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    const-string/jumbo p1, "TracingServiceProxy"

    const-string v0, "Failed to report trace"

    invoke-static {p1, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :try_start_0
    iget-object p0, p0, Landroid/tracing/TraceReportParams;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
