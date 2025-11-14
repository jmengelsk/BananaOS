.class public final Lcom/android/server/power/WakeLockLog$TheLog$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TheLog$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I
    .registers 16

    iget v0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    const-wide/16 v1, 0xff

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v0, :cond_84

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TheLog$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/power/WakeLockLog$TagDatabase;

    const/4 v7, -0x2

    const/4 v8, -0x1

    iget p0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    if-eq v0, v6, :cond_54

    if-ne v0, v5, :cond_3f

    if-eqz p2, :cond_3e

    array-length v0, p2

    if-lt v0, v5, :cond_3e

    iget-wide v9, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    cmp-long v0, v9, p3

    if-gez v0, :cond_23

    move v7, v8

    goto :goto_2a

    :cond_23
    sub-long/2addr v9, p3

    cmp-long p3, v9, v1

    if-lez p3, :cond_29

    goto :goto_2a

    :cond_29
    long-to-int v7, v9

    :goto_2a
    if-gez v7, :cond_2d

    return v7

    :cond_2d
    iget-object p1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    if-nez p1, :cond_32

    goto :goto_34

    :cond_32
    iget p0, p1, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    :goto_34
    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    aput-byte p0, p2, v4

    and-int/lit16 p0, v7, 0xff

    int-to-byte p0, p0

    aput-byte p0, p2, v6

    :cond_3e
    return v5

    :cond_3f
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Unknown type "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_54
    if-eqz p2, :cond_83

    array-length v0, p2

    if-lt v0, v3, :cond_83

    iget-wide v9, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    cmp-long v0, v9, p3

    if-gez v0, :cond_61

    move v7, v8

    goto :goto_68

    :cond_61
    sub-long/2addr v9, p3

    cmp-long p3, v9, v1

    if-lez p3, :cond_67

    goto :goto_68

    :cond_67
    long-to-int v7, v9

    :goto_68
    if-gez v7, :cond_6b

    return v7

    :cond_6b
    iget p3, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    and-int/lit8 p3, p3, 0x3f

    or-int/lit8 p3, p3, 0x40

    int-to-byte p3, p3

    aput-byte p3, p2, v4

    iget-object p1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    if-nez p1, :cond_79

    goto :goto_7b

    :cond_79
    iget p0, p1, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    :goto_7b
    int-to-byte p0, p0

    aput-byte p0, p2, v6

    and-int/lit16 p0, v7, 0xff

    int-to-byte p0, p0

    aput-byte p0, p2, v5

    :cond_83
    return v3

    :cond_84
    iget-wide p0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    const/16 p3, 0x9

    if-eqz p2, :cond_d7

    array-length p4, p2

    if-lt p4, p3, :cond_d7

    aput-byte v4, p2, v4

    const/16 p4, 0x38

    shr-long v7, p0, p4

    and-long/2addr v7, v1

    long-to-int p4, v7

    int-to-byte p4, p4

    aput-byte p4, p2, v6

    const/16 p4, 0x30

    shr-long v6, p0, p4

    and-long/2addr v6, v1

    long-to-int p4, v6

    int-to-byte p4, p4

    aput-byte p4, p2, v5

    const/16 p4, 0x28

    shr-long v4, p0, p4

    and-long/2addr v4, v1

    long-to-int p4, v4

    int-to-byte p4, p4

    aput-byte p4, p2, v3

    const/16 p4, 0x20

    shr-long v3, p0, p4

    and-long/2addr v3, v1

    long-to-int p4, v3

    int-to-byte p4, p4

    const/4 v0, 0x4

    aput-byte p4, p2, v0

    const/16 p4, 0x18

    shr-long v3, p0, p4

    and-long/2addr v3, v1

    long-to-int p4, v3

    int-to-byte p4, p4

    const/4 v0, 0x5

    aput-byte p4, p2, v0

    const/16 p4, 0x10

    shr-long v3, p0, p4

    and-long/2addr v3, v1

    long-to-int p4, v3

    int-to-byte p4, p4

    const/4 v0, 0x6

    aput-byte p4, p2, v0

    const/16 p4, 0x8

    shr-long v3, p0, p4

    and-long/2addr v3, v1

    long-to-int v0, v3

    int-to-byte v0, v0

    const/4 v3, 0x7

    aput-byte v0, p2, v3

    and-long/2addr p0, v1

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, p2, p4

    :cond_d7
    return p3
.end method
