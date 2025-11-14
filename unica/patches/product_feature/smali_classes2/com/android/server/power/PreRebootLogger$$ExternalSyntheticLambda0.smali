.class public final synthetic Lcom/android/server/power/PreRebootLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/PreRebootLogger$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/android/server/power/PreRebootLogger$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/power/PreRebootLogger$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/power/PreRebootLogger$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v1, Lcom/android/server/power/PreRebootLogger;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v2, Lcom/android/server/power/PreRebootLogger;->BUFFERS_TO_DUMP:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcom/android/server/power/PreRebootLogger;->dumpLogsLocked(Ljava/io/File;Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/power/PreRebootLogger;->SERVICES_TO_DUMP:[Ljava/lang/String;

    :goto_11
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1e

    aget-object v4, v2, v3

    invoke-static {v0, v4}, Lcom/android/server/power/PreRebootLogger;->dumpServiceLocked(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :catchall_1c
    move-exception p0

    goto :goto_24

    :cond_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1c

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_24
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_1c

    throw p0
.end method
