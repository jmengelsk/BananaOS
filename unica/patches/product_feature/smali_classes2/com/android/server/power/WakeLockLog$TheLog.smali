.class public final Lcom/android/server/power/WakeLockLog$TheLog;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBuffer:[B

.field public mChangeCount:J

.field public mEnd:I

.field public mLatestTime:J

.field public final mReadWriteTempBuffer:[B

.field public final mSavedAcquisitions:Ljava/util/List;

.field public mStart:I

.field public mStartTime:J

.field public final mTempBuffer:[B

.field public final mTranslator:Lcom/android/server/power/WakeLockLog$TheLog$1;


# direct methods
.method public constructor <init>(Lcom/android/server/power/WakeLockLog$Injector;Lcom/android/server/power/WakeLockLog$TheLog$1;Lcom/android/server/power/WakeLockLog$TagDatabase;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x9

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    iput p1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    const/16 p1, 0xc00

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    iput-object p2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$TheLog$1;

    new-instance p1, Lcom/android/server/power/WakeLockLog$TheLog$1;

    invoke-direct {p1, p0}, Lcom/android/server/power/WakeLockLog$TheLog$1;-><init>(Ljava/lang/Object;)V

    iput-object p1, p3, Lcom/android/server/power/WakeLockLog$TagDatabase;->mCallback:Lcom/android/server/power/WakeLockLog$TheLog$1;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mSavedAcquisitions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addEntry(Lcom/android/server/power/WakeLockLog$LogEntry;)V
    .locals 13

    iget v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    iget v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    :cond_0
    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTempBuffer:[B

    iget-object v3, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$TheLog$1;

    invoke-virtual {v3, p1, v2, v0, v1}, Lcom/android/server/power/WakeLockLog$TheLog$1;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    new-instance v4, Lcom/android/server/power/WakeLockLog$LogEntry;

    iget-wide v5, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>(JILcom/android/server/power/WakeLockLog$TagData;I)V

    invoke-virtual {p0, v4}, Lcom/android/server/power/WakeLockLog$TheLog;->addEntry(Lcom/android/server/power/WakeLockLog$LogEntry;)V

    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    invoke-virtual {v3, p1, v2, v0, v1}, Lcom/android/server/power/WakeLockLog$TheLog$1;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v0

    :cond_2
    const/16 v1, 0x9

    if-gt v0, v1, :cond_e

    if-gtz v0, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v4, v1

    add-int/lit8 v5, v0, 0x1

    if-ge v4, v5, :cond_4

    :goto_0
    return-void

    :cond_4
    :goto_1
    iget v4, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    iget v6, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    if-le v4, v6, :cond_5

    array-length v7, v1

    sub-int v8, v4, v6

    sub-int/2addr v7, v8

    goto :goto_2

    :cond_5
    if-ge v4, v6, :cond_6

    sub-int v7, v6, v4

    goto :goto_2

    :cond_6
    array-length v7, v1

    :goto_2
    const/4 v8, 0x0

    const-wide/16 v9, 0x1

    if-ge v7, v5, :cond_b

    if-ne v6, v4, :cond_7

    goto :goto_1

    :cond_7
    iget-wide v11, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    const/4 v4, 0x0

    invoke-virtual {p0, v6, v11, v12, v4}, Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v6

    iget v7, v6, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    const/4 v11, 0x1

    if-ne v7, v11, :cond_8

    iget-object v7, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mSavedAcquisitions:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    const/4 v11, 0x2

    if-ne v7, v11, :cond_a

    :goto_3
    iget-object v7, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mSavedAcquisitions:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v8, v7, :cond_a

    iget-object v7, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mSavedAcquisitions:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/WakeLockLog$LogEntry;

    iget-object v7, v7, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    iget-object v11, v6, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    invoke-static {v7, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mSavedAcquisitions:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    iget-wide v7, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    invoke-virtual {v3, v6, v4, v7, v8}, Lcom/android/server/power/WakeLockLog$TheLog$1;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v4

    iget v7, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    add-int/2addr v7, v4

    array-length v4, v1

    rem-int/2addr v7, v4

    iput v7, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    iget-wide v6, v6, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput-wide v6, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    iget-wide v6, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    add-long/2addr v6, v9

    iput-wide v6, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    goto :goto_1

    :cond_b
    :goto_5
    if-ge v8, v0, :cond_c

    add-int v3, v4, v8

    array-length v5, v1

    rem-int/2addr v3, v5

    aget-byte v5, v2, v8

    aput-byte v5, v1, v3

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_c
    iget v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    add-int/2addr v2, v0

    array-length v0, v1

    rem-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    iget-wide v0, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mLatestTime:J

    iget-object p1, p1, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    if-eqz p1, :cond_d

    iput-wide v0, p1, Lcom/android/server/power/WakeLockLog$TagData;->lastUsedTime:J

    :cond_d
    iget-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    add-long/2addr v0, v9

    iput-wide v0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mChangeCount:J

    return-void

    :cond_e
    :goto_6
    const-string/jumbo p0, "Log entry size is out of expected range: "

    const-string/jumbo p1, "PowerManagerService.WLLog"

    invoke-static {v0, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    const/16 v3, 0x9

    if-ge v1, v3, :cond_1

    add-int v4, p1, v1

    iget-object v5, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    array-length v6, v5

    rem-int/2addr v4, v6

    iget v6, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    if-ne v4, v6, :cond_0

    goto :goto_1

    :cond_0
    aget-byte v3, v5, v4

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$TheLog$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length p1, v2

    const/4 v1, 0x0

    if-nez p1, :cond_2

    goto/16 :goto_5

    :cond_2
    if-eqz p4, :cond_3

    goto :goto_2

    :cond_3
    new-instance p4, Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    :goto_2
    aget-byte p1, v2, v0

    shr-int/lit8 v4, p1, 0x6

    and-int/lit8 v5, v4, 0x3

    const/4 v6, 0x2

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_4

    move v5, v6

    :cond_4
    const/4 v4, 0x3

    const/4 v7, 0x1

    if-eqz v5, :cond_d

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TheLog$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/power/WakeLockLog$TagDatabase;

    iget v3, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    if-eq v5, v7, :cond_9

    if-eq v5, v6, :cond_5

    const-string/jumbo p0, "Type not recognized ["

    const-string/jumbo p1, "]"

    invoke-static {v5, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo p2, "PowerManagerService.WLLog"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_5
    array-length v4, v2

    if-ge v4, v6, :cond_6

    goto :goto_5

    :cond_6
    and-int/lit8 p1, p1, 0x7f

    if-ltz p1, :cond_8

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v4, p0

    if-ge p1, v4, :cond_8

    if-ne p1, v3, :cond_7

    goto :goto_3

    :cond_7
    aget-object v1, p0, p1

    :cond_8
    :goto_3
    aget-byte p0, v2, v7

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    add-long/2addr p0, p2

    iput-wide p0, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput v6, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    iput-object v1, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    iput v0, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    return-object p4

    :cond_9
    array-length v0, v2

    if-ge v0, v4, :cond_a

    goto :goto_5

    :cond_a
    and-int/lit8 p1, p1, 0x3f

    aget-byte v0, v2, v7

    and-int/lit8 v0, v0, 0x7f

    if-ltz v0, :cond_c

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v4, p0

    if-ge v0, v4, :cond_c

    if-ne v0, v3, :cond_b

    goto :goto_4

    :cond_b
    aget-object v1, p0, v0

    :cond_c
    :goto_4
    aget-byte p0, v2, v6

    and-int/lit16 p0, p0, 0xff

    int-to-long v2, p0

    add-long/2addr v2, p2

    iput-wide v2, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput v7, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    iput-object v1, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    iput p1, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    return-object p4

    :cond_d
    array-length p0, v2

    if-ge p0, v3, :cond_e

    :goto_5
    return-object v1

    :cond_e
    aget-byte p0, v2, v7

    int-to-long p0, p0

    const-wide/16 p2, 0xff

    and-long/2addr p0, p2

    const/16 v3, 0x38

    shl-long/2addr p0, v3

    aget-byte v3, v2, v6

    int-to-long v5, v3

    and-long/2addr v5, p2

    const/16 v3, 0x30

    shl-long/2addr v5, v3

    or-long/2addr p0, v5

    aget-byte v3, v2, v4

    int-to-long v3, v3

    and-long/2addr v3, p2

    const/16 v5, 0x28

    shl-long/2addr v3, v5

    or-long/2addr p0, v3

    const/4 v3, 0x4

    aget-byte v3, v2, v3

    int-to-long v3, v3

    and-long/2addr v3, p2

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr p0, v3

    const/4 v3, 0x5

    aget-byte v3, v2, v3

    int-to-long v3, v3

    and-long/2addr v3, p2

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    or-long/2addr p0, v3

    const/4 v3, 0x6

    aget-byte v3, v2, v3

    int-to-long v3, v3

    and-long/2addr v3, p2

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr p0, v3

    const/4 v3, 0x7

    aget-byte v3, v2, v3

    int-to-long v3, v3

    and-long/2addr v3, p2

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    or-long/2addr p0, v3

    aget-byte v2, v2, v5

    int-to-long v2, v2

    and-long/2addr p2, v2

    or-long/2addr p0, p2

    iput-wide p0, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    iput v0, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    iput-object v1, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    iput v0, p4, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    return-object p4
.end method
