.class public final Lcom/android/server/pm/ProcessLoggingHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mLoggingInfo:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, p0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mLoggingInfo:Landroid/util/ArrayMap;

    return-void
.end method

.method public static logSecurityLogEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v0, "startTimestamp"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string/jumbo v2, "processName"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "uid"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v4, "seinfo"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v4, "pid"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v8, p1

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x33455

    invoke-static {p1, p0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static processChecksum(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;[B)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    const-string v3, "%02x"

    aget-byte v4, p1, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v1, v2, v5}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, "Failed to count APK hash"

    :goto_1
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->apkHash:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    iput-object p1, p0, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->apkHash:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->pendingLogEntries:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->pendingLogEntries:Ljava/util/List;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_2
    if-ge v0, p0, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2, p1}, Lcom/android/server/pm/ProcessLoggingHandler;->logSecurityLogEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
