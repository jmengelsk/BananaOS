.class public final synthetic Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ParallelPackageParser;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ParallelPackageParser;Ljava/io/File;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/ParallelPackageParser;

    iput-object p2, p0, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iput p3, p0, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/ParallelPackageParser;

    iget-object v1, p0, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iget p0, p0, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parallel parsePackage ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/32 v4, 0x40000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_29
    iput-object v1, v2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/ParallelPackageParser;->parsePackage(Ljava/io/File;I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p0

    iput-object p0, v2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_35

    :goto_31
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_39

    :catchall_35
    move-exception p0

    :try_start_36
    iput-object p0, v2, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_53

    goto :goto_31

    :goto_39
    :try_start_39
    iget-object p0, v0, Lcom/android/server/pm/ParallelPackageParser;->mQueue:Ljava/util/concurrent/BlockingQueue;

    check-cast p0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_40} :catch_41

    goto :goto_52

    :catch_41
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/pm/ParallelPackageParser;->mInterruptedInThread:Ljava/lang/String;

    :goto_52
    return-void

    :catchall_53
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method
