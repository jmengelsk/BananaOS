.class public final synthetic Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryHistoryDirectory;

.field public final synthetic f$1:Landroid/util/AtomicFile;

.field public final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryHistoryDirectory;Landroid/util/AtomicFile;[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/stats/BatteryHistoryDirectory;

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda2;->f$1:Landroid/util/AtomicFile;

    iput-object p3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda2;->f$2:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/stats/BatteryHistoryDirectory;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda2;->f$1:Landroid/util/AtomicFile;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda2;->f$2:[B

    const-string v2, "Error compressing battery history chunk "

    array-length v3, p0

    int-to-long v3, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_11

    goto :goto_6b

    :cond_11
    const-string v3, "BatteryStatsHistory.compressHistoryFile"

    const-wide/32 v4, 0x80000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->lock()V

    const/4 v3, 0x0

    :try_start_1d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    sget-object v6, Lcom/android/server/power/stats/BatteryHistoryDirectory;->FILE_FORMAT_COMPRESSED_PARCEL:[B

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    array-length v6, p0

    shr-int/lit8 v7, v6, 0x18

    invoke-virtual {v3, v7}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v7, v6, 0x10

    invoke-virtual {v3, v7}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v7, v6, 0x8

    invoke-virtual {v3, v7}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write(I)V

    iget-object v6, v0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mCompressor:Lcom/android/server/power/stats/BatteryHistoryDirectory$1;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory$1;->compress(Ljava/io/OutputStream;[B)V

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_47} :catch_50
    .catchall {:try_start_1d .. :try_end_47} :catchall_4e

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_4e
    move-exception p0

    goto :goto_6c

    :catch_50
    move-exception p0

    :try_start_51
    const-string v6, "BatteryHistoryDirectory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_65
    .catchall {:try_start_51 .. :try_end_65} :catchall_4e

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :goto_6b
    return-void

    :goto_6c
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->unlock()V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method
