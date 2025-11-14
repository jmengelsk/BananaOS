.class public final Lcom/android/server/power/ShutdownCheckPoints;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final EMPTY_FILE_ARRAY:[Ljava/io/File;

.field public static final INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;


# instance fields
.field public final mCheckPoints:Ljava/util/ArrayList;

.field public final mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints;

    new-instance v1, Lcom/android/server/power/ShutdownCheckPoints$1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownCheckPoints;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;)V

    sput-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/ShutdownCheckPoints;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    sput-object v0, Lcom/android/server/power/ShutdownCheckPoints;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    return-void
.end method

.method public static recordCheckPoint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v1, p0, p1, v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dumpInternal(Ljava/io/PrintWriter;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;

    iget-object v4, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "Shutdown request from "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->getOrigin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->mReason:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v6, " for reason "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    const-string v5, " at "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/power/ShutdownCheckPoints;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    iget-wide v7, v3, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->mTimestamp:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " (epoch="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3, v4, p1}, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->dumpDetails(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public newDumpThreadInternal(Ljava/io/File;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x14

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;-><init>(Lcom/android/server/power/ShutdownCheckPoints;Ljava/io/File;I)V

    return-object v0
.end method

.method public recordCheckPointInternal(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownCheckPoints$Injector;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne p1, v2, :cond_0

    new-instance v2, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;

    invoke-direct {v2, v0, v1, p2}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;-><init>(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;-><init>(ILjava/lang/String;J)V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Binder shutdown checkpoint recorded with pid="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "ShutdownCheckPoints"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public recordCheckPointInternal(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-interface {v1}, Lcom/android/server/power/ShutdownCheckPoints$Injector;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;-><init>(JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V

    const-string/jumbo p0, "ShutdownCheckPoints"

    const-string/jumbo p1, "System server shutdown checkpoint recorded"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recordCheckPointInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownCheckPoints$Injector;->currentTimeMillis()J

    move-result-wide v3

    const-string/jumbo v0, "android"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;

    invoke-direct {v0, v3, v4, p3}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;-><init>(JLjava/lang/String;)V

    move-object v2, p1

    move-object v5, p2

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Shutdown intent checkpoint recorded intent="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from package="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "ShutdownCheckPoints"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
