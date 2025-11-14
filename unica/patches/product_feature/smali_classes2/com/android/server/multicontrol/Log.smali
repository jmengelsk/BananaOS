.class public abstract Lcom/android/server/multicontrol/Log;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sFormatter:Ljava/time/format/DateTimeFormatter;

.field public static final sSavedLogs:Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

.field public static final sSavedStates:Lcom/android/server/multicontrol/Log$EvictingArrayQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "MM-dd HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/multicontrol/Log;->sFormatter:Ljava/time/format/DateTimeFormatter;

    new-instance v0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;-><init>(I)V

    sput-object v0, Lcom/android/server/multicontrol/Log;->sSavedLogs:Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

    new-instance v0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;-><init>(I)V

    sput-object v0, Lcom/android/server/multicontrol/Log;->sSavedStates:Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

    return-void
.end method

.method public static buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v1, Lcom/android/server/multicontrol/Log;->sFormatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    move-object v7, p1

    move-object v8, p2

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "%s %5d %5d %5d %c %s: %s"

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    const/16 v0, 0x44

    invoke-static {v0, p0}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;)V

    const-string/jumbo v0, "MultiControl@MultiControlManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2

    const/16 v0, 0x49

    invoke-static {v0, p0}, Lcom/android/server/multicontrol/Log;->save(CLjava/lang/String;)V

    const-string/jumbo v0, "MultiControl@MultiControlManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static save(CLjava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "MultiControl@MultiControlManagerService"

    sget-object v1, Lcom/android/server/multicontrol/Log;->sSavedLogs:Lcom/android/server/multicontrol/Log$EvictingArrayQueue;

    invoke-static {p0, v0, p1}, Lcom/android/server/multicontrol/Log;->buildLogString(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v1, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_c
    iget v0, v1, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mPointer:I

    add-int/lit8 v0, v0, 0x1

    iget v2, v1, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mCapacity:I

    rem-int/2addr v0, v2

    iput v0, v1, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mPointer:I

    iget-object v0, v1, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, v1, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mCapacity:I

    if-ne v0, v2, :cond_29

    iget-object v0, v1, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    iget v1, v1, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mPointer:I

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :catchall_27
    move-exception p0

    goto :goto_30

    :cond_29
    iget-object v0, v1, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2e
    monitor-exit p1

    return-void

    :goto_30
    monitor-exit p1
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_27

    throw p0
.end method
