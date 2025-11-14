.class public final Lcom/android/server/power/WakeLockLog$TagDatabase;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mArray:[Lcom/android/server/power/WakeLockLog$TagData;

.field public mCallback:Lcom/android/server/power/WakeLockLog$TheLog$1;

.field public final mInvalidIndex:I

.field public final mMaxArraySize:I


# direct methods
.method public constructor <init>(Lcom/android/server/power/WakeLockLog$Injector;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x40

    const/16 v0, 0x7f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mMaxArraySize:I

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [Lcom/android/server/power/WakeLockLog$TagData;

    iput-object v0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    iput p1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    return-void
.end method


# virtual methods
.method public final findOrCreateTag(ILjava/lang/String;)Lcom/android/server/power/WakeLockLog$TagData;
    .registers 20

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/server/power/WakeLockLog$TagData;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p2

    iput-object v2, v1, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    move/from16 v2, p1

    iput v2, v1, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v5, v2

    move v6, v3

    move v8, v6

    move-object v7, v4

    :goto_16
    iget-object v9, v0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v10, v9

    if-ge v5, v10, :cond_39

    aget-object v9, v9, v5

    invoke-virtual {v1, v9}, Lcom/android/server/power/WakeLockLog$TagData;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    return-object v9

    :cond_24
    if-eqz v9, :cond_33

    if-eqz v7, :cond_30

    iget-wide v10, v9, Lcom/android/server/power/WakeLockLog$TagData;->lastUsedTime:J

    iget-wide v12, v7, Lcom/android/server/power/WakeLockLog$TagData;->lastUsedTime:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_36

    :cond_30
    move v8, v5

    move-object v7, v9

    goto :goto_36

    :cond_33
    if-ne v6, v3, :cond_36

    move v6, v5

    :cond_36
    :goto_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_39
    if-ne v6, v3, :cond_50

    array-length v5, v9

    iget v7, v0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mMaxArraySize:I

    if-ge v5, v7, :cond_50

    array-length v6, v9

    mul-int/lit8 v5, v6, 0x2

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v5, v5, [Lcom/android/server/power/WakeLockLog$TagData;

    iget-object v7, v0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    invoke-static {v7, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, v0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    :cond_50
    if-ne v6, v3, :cond_b1

    iget-object v5, v0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mCallback:Lcom/android/server/power/WakeLockLog$TheLog$1;

    if-eqz v5, :cond_b1

    iget-object v5, v5, Lcom/android/server/power/WakeLockLog$TheLog$1;->this$0:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/power/WakeLockLog$TheLog;

    iget v7, v5, Lcom/android/server/power/WakeLockLog$TheLog;->mStart:I

    iget v9, v5, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    if-ne v7, v9, :cond_61

    goto :goto_b1

    :cond_61
    iget-wide v9, v5, Lcom/android/server/power/WakeLockLog$TheLog;->mStartTime:J

    new-instance v11, Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    :goto_68
    iget v12, v5, Lcom/android/server/power/WakeLockLog$TheLog;->mEnd:I

    if-eq v7, v12, :cond_b1

    invoke-virtual {v5, v7, v9, v10, v11}, Lcom/android/server/power/WakeLockLog$TheLog;->readEntryAt(IJLcom/android/server/power/WakeLockLog$LogEntry;)Lcom/android/server/power/WakeLockLog$LogEntry;

    move-result-object v12

    if-nez v12, :cond_7b

    const-string v2, "Entry is unreadable - Unexpected @ "

    const-string/jumbo v4, "PowerManagerService.WLLog"

    invoke-static {v7, v2, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    :cond_7b
    iget-object v13, v12, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    iget-object v14, v5, Lcom/android/server/power/WakeLockLog$TheLog;->mBuffer:[B

    iget-object v15, v5, Lcom/android/server/power/WakeLockLog$TheLog;->mTranslator:Lcom/android/server/power/WakeLockLog$TheLog$1;

    if-eqz v13, :cond_a1

    iget v13, v13, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    if-ne v13, v8, :cond_a1

    iput-object v4, v12, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    iget-object v13, v5, Lcom/android/server/power/WakeLockLog$TheLog;->mReadWriteTempBuffer:[B

    invoke-virtual {v15, v12, v13, v9, v10}, Lcom/android/server/power/WakeLockLog$TheLog$1;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v9

    if-lez v9, :cond_a1

    move v10, v2

    :goto_92
    if-ge v10, v9, :cond_a1

    add-int v16, v7, v10

    array-length v2, v14

    rem-int v16, v16, v2

    aget-byte v2, v13, v10

    aput-byte v2, v14, v16

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    goto :goto_92

    :cond_a1
    iget-wide v9, v12, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    move v13, v7

    move v2, v8

    const-wide/16 v7, 0x0

    invoke-virtual {v15, v12, v4, v7, v8}, Lcom/android/server/power/WakeLockLog$TheLog$1;->toBytes(Lcom/android/server/power/WakeLockLog$LogEntry;[BJ)I

    move-result v7

    add-int/2addr v7, v13

    array-length v8, v14

    rem-int/2addr v7, v8

    move v8, v2

    const/4 v2, 0x0

    goto :goto_68

    :cond_b1
    :goto_b1
    move v2, v8

    if-eq v6, v3, :cond_b6

    move v8, v6

    goto :goto_b7

    :cond_b6
    move v8, v2

    :goto_b7
    if-ltz v8, :cond_cb

    iget-object v2, v0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v3, v2

    if-lt v8, v3, :cond_bf

    goto :goto_cb

    :cond_bf
    aget-object v3, v2, v8

    if-eqz v3, :cond_c7

    iget v0, v0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mInvalidIndex:I

    iput v0, v3, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    :cond_c7
    aput-object v1, v2, v8

    iput v8, v1, Lcom/android/server/power/WakeLockLog$TagData;->index:I

    :cond_cb
    :goto_cb
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Tag Database: size("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TagDatabase;->mArray:[Lcom/android/server/power/WakeLockLog$TagData;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_1a
    if-ge v3, v1, :cond_3c

    aget-object v6, p0, v3

    add-int/lit8 v5, v5, 0x8

    if-eqz v6, :cond_39

    add-int/lit8 v4, v4, 0x1

    iget-object v6, v6, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    if-nez v6, :cond_2a

    move v7, v2

    goto :goto_30

    :cond_2a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    :goto_30
    add-int/lit8 v7, v7, 0x18

    add-int/2addr v7, v5

    if-eqz v6, :cond_38

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    :cond_38
    move v5, v7

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_3c
    const-string p0, ", entries: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Bytes used: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
