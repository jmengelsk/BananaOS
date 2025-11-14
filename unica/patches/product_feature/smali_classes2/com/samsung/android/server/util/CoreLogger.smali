.class public final Lcom/samsung/android/server/util/CoreLogger;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBuffer:Ljava/util/List;

.field public final mBufferOverflowAllowed:Z

.field public final mBufferSize:I

.field public final mDumpTitle:Ljava/lang/String;

.field public final mTag:Ljava/lang/String;

.field public final mUseTimeline:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/util/CoreLogger;->mTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/server/util/CoreLogger;->mDumpTitle:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/server/util/CoreLogger;->mBufferSize:I

    iput-boolean p4, p0, Lcom/samsung/android/server/util/CoreLogger;->mBufferOverflowAllowed:Z

    if-lez p2, :cond_13

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    iput-object p1, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    iput-boolean p5, p0, Lcom/samsung/android/server/util/CoreLogger;->mUseTimeline:Z

    return-void
.end method

.method public static getBuilder()Lcom/samsung/android/server/util/CoreLogger$Builder;
    .registers 2

    new-instance v0, Lcom/samsung/android/server/util/CoreLogger$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "CoreLogger"

    iput-object v1, v0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mTag:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mDumpTitle:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mBufferOverflowAllowed:Z

    iput-boolean v1, v0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mUseTimeline:Z

    return-object v0
.end method


# virtual methods
.method public final log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 15

    iget-object v0, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    if-eqz v0, :cond_5

    goto :goto_a

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/util/CoreLogger;->mTag:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    :goto_a
    if-eqz p3, :cond_f

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    iget-object p1, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    if-nez p1, :cond_15

    goto/16 :goto_b2

    :cond_15
    iget-boolean p3, p0, Lcom/samsung/android/server/util/CoreLogger;->mBufferOverflowAllowed:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_34

    monitor-enter p1

    :try_start_1c
    iget-object p3, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    iget v2, p0, Lcom/samsung/android/server/util/CoreLogger;->mBufferSize:I

    if-le p3, v2, :cond_28

    move p3, v1

    goto :goto_29

    :cond_28
    move p3, v0

    :goto_29
    if-eqz p3, :cond_30

    monitor-exit p1

    return-void

    :catchall_2d
    move-exception v0

    move-object p0, v0

    goto :goto_32

    :cond_30
    monitor-exit p1

    goto :goto_34

    :goto_32
    monitor-exit p1
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_2d

    throw p0

    :cond_34
    :goto_34
    iget-boolean p1, p0, Lcom/samsung/android/server/util/CoreLogger;->mUseTimeline:Z

    if-eqz p1, :cond_85

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%02d-%02d %02d:%02d:%02d.%03d %s"

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v3, 0xb

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v3, 0xe

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v10, p2

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_86

    :cond_85
    move-object v10, p2

    :goto_86
    :try_start_86
    iget-object p1, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    monitor-enter p1
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_a9

    :try_start_89
    iget-object p3, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    iget v2, p0, Lcom/samsung/android/server/util/CoreLogger;->mBufferSize:I

    if-le p3, v2, :cond_94

    goto :goto_95

    :cond_94
    move v1, v0

    :goto_95
    if-eqz v1, :cond_a0

    iget-object p3, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_a0

    :catchall_9d
    move-exception v0

    move-object p2, v0

    goto :goto_a7

    :cond_a0
    :goto_a0
    iget-object p3, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :goto_a7
    monitor-exit p1
    :try_end_a8
    .catchall {:try_start_89 .. :try_end_a8} :catchall_9d

    :try_start_a8
    throw p2
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_a9} :catch_a9

    :catch_a9
    move-exception v0

    move-object p1, v0

    iget-object p0, p0, Lcom/samsung/android/server/util/CoreLogger;->mTag:Ljava/lang/String;

    const-string p2, "Fail to add logs"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b2
    return-void
.end method
