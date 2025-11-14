.class public final Lcom/samsung/android/camera/Logger;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final mInstance:[Lcom/samsung/android/camera/Logger;


# instance fields
.field public mLogQueue:Ljava/util/Queue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/samsung/android/camera/Logger$ID;->values()[Lcom/samsung/android/camera/Logger$ID;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/samsung/android/camera/Logger;

    sput-object v0, Lcom/samsung/android/camera/Logger;->mInstance:[Lcom/samsung/android/camera/Logger;

    return-void
.end method

.method public static dumpLog(Lcom/samsung/android/camera/Logger$ID;Ljava/io/PrintWriter;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n\tDump of CameraServiceWorker "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/camera/Logger;->getInstance(Lcom/samsung/android/camera/Logger$ID;)Lcom/samsung/android/camera/Logger;

    move-result-object p0

    monitor-enter p0

    :try_start_1a
    iget-object v0, p0, Lcom/samsung/android/camera/Logger;->mLogQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_1a .. :try_end_40} :catchall_41

    goto :goto_20

    :catchall_41
    move-exception p1

    goto :goto_45

    :cond_43
    monitor-exit p0

    return-void

    :goto_45
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_41

    throw p1
.end method

.method public static declared-synchronized getInstance(Lcom/samsung/android/camera/Logger$ID;)Lcom/samsung/android/camera/Logger;
    .registers 7

    const-class v0, Lcom/samsung/android/camera/Logger;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/camera/Logger;->mInstance:[Lcom/samsung/android/camera/Logger;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v2, v1, v2

    if-nez v2, :cond_2d

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/samsung/android/camera/Logger;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/samsung/android/camera/Logger;->mLogQueue:Ljava/util/Queue;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v3, Lcom/samsung/android/camera/Logger;->mLogQueue:Ljava/util/Queue;

    const-string v4, "CameraService_worker/Logger"

    const-string/jumbo v5, "New Logger Instance"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    aput-object v3, v1, v2

    goto :goto_2d

    :catchall_2b
    move-exception p0

    goto :goto_35

    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-object p0, v1, p0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_2b

    monitor-exit v0

    return-object p0

    :goto_35
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_2b

    throw p0
.end method

.method public static log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS Z"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {p0}, Lcom/samsung/android/camera/Logger;->getInstance(Lcom/samsung/android/camera/Logger$ID;)Lcom/samsung/android/camera/Logger;

    move-result-object p0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-enter p0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_4f

    :goto_2e
    :try_start_2e
    iget-object v0, p0, Lcom/samsung/android/camera/Logger;->mLogQueue:Ljava/util/Queue;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_44

    iget-object v0, p0, Lcom/samsung/android/camera/Logger;->mLogQueue:Ljava/util/Queue;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_2e

    :catchall_42
    move-exception p1

    goto :goto_4d

    :cond_44
    iget-object v0, p0, Lcom/samsung/android/camera/Logger;->mLogQueue:Ljava/util/Queue;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catchall {:try_start_2e .. :try_end_4b} :catchall_42

    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4c} :catch_4f

    return-void

    :goto_4d
    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_42

    :try_start_4e
    throw p1
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4f} :catch_4f

    :catch_4f
    return-void
.end method
