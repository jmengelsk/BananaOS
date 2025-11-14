.class public final Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBaseDir:Ljava/io/File;

.field public final mBaseFile:Ljava/io/File;

.field public final mFileCountLimit:I

.field public final mInstance:Lcom/android/server/power/ShutdownCheckPoints;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownCheckPoints;Ljava/io/File;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mInstance:Lcom/android/server/power/ShutdownCheckPoints;

    iput-object p2, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseDir:Ljava/io/File;

    iput p3, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mFileCountLimit:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseDir:Ljava/io/File;

    new-instance v4, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread$1;

    invoke-direct {v4, v0}, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_40

    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    goto :goto_43

    :cond_40
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :goto_43
    array-length v3, v0

    iget v4, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mFileCountLimit:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    move v4, v1

    :goto_49
    if-ge v4, v3, :cond_53

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    :cond_53
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s-%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/util/AtomicFile;

    iget-object v4, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_77
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7b} :catch_8e

    :try_start_7b
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iget-object v6, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mInstance:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v6, v5}, Lcom/android/server/power/ShutdownCheckPoints;->dumpInternal(Ljava/io/PrintWriter;)V

    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_8b} :catch_8c

    goto :goto_9d

    :catch_8c
    move-exception v5

    goto :goto_90

    :catch_8e
    move-exception v5

    const/4 v4, 0x0

    :goto_90
    const-string/jumbo v6, "ShutdownCheckPoints"

    const-string v7, "Failed to write shutdown checkpoints"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v4, :cond_9d

    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_9d
    :goto_9d
    iget-object p0, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->mBaseFile:Ljava/io/File;

    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    return-void
.end method
