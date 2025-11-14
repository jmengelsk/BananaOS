.class public final Lcom/android/server/utils/TimingsTraceAndSlog;
.super Landroid/util/TimingsTraceLog;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string/jumbo v0, "SystemServerTiming"

    invoke-direct {p0, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p3, p1, p2}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    iput-object p3, p0, Lcom/android/server/utils/TimingsTraceAndSlog;->mTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/TimingsTraceLog;-><init>(Landroid/util/TimingsTraceLog;)V

    iget-object p1, p1, Lcom/android/server/utils/TimingsTraceAndSlog;->mTag:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/utils/TimingsTraceAndSlog;->mTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-wide/32 v0, 0x80000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(JLjava/lang/String;)V

    return-void
.end method

.method public static newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;
    .registers 4

    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string/jumbo v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "TimingsTraceAndSlog["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/utils/TimingsTraceAndSlog;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "]"

    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final traceBegin(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/utils/TimingsTraceAndSlog;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    return-void
.end method
