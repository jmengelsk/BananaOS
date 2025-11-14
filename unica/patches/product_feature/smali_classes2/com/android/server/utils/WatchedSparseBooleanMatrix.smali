.class public final Lcom/android/server/utils/WatchedSparseBooleanMatrix;
.super Lcom/android/server/utils/WatchableImpl;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# static fields
.field static final STEP:I = 0x40


# instance fields
.field public mInUse:[Z

.field public mKeys:[I

.field public mMap:[I

.field public mOrder:I

.field public mSize:I

.field public mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    rem-int v1, v0, v0

    if-eqz v1, :cond_0

    const/16 v1, 0x80

    iput v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    :cond_0
    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-lt v1, v0, :cond_1

    rem-int/lit8 v0, v1, 0x40

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedBooleanArray(I)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int/2addr v0, v0

    div-int/lit8 v0, v0, 0x20

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mOrder is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    const-string v2, " initCap is 64"

    invoke-static {p0, v1, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static binarySearch(II[I)I
    .locals 3

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p0, :cond_2

    add-int v1, v0, p0

    ushr-int/lit8 v1, v1, 0x1

    aget v2, p2, v1

    if-ge v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    if-le v2, p1, :cond_1

    add-int/lit8 v1, v1, -0x1

    move p0, v1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    not-int p0, v0

    return p0
.end method


# virtual methods
.method public final compact()V
    .locals 10

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-eqz v0, :cond_7

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ne v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->nextFree(Z)I

    move-result v1

    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_5

    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_4

    move v4, v0

    :goto_1
    iget v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v5, v5, v4

    if-ne v5, v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    const/4 v4, -0x1

    :goto_2
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v5, v2, v4

    iget-object v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    aput-boolean v0, v6, v5

    aput v1, v2, v4

    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int v6, v5, v4

    div-int/lit8 v6, v6, 0x20

    mul-int v7, v1, v4

    div-int/lit8 v7, v7, 0x20

    div-int/lit8 v4, v4, 0x20

    invoke-static {v2, v6, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    div-int/lit8 v2, v5, 0x20

    rem-int/lit8 v5, v5, 0x20

    shl-int v4, v3, v5

    div-int/lit8 v5, v1, 0x20

    rem-int/lit8 v1, v1, 0x20

    shl-int v1, v3, v1

    move v3, v0

    :goto_3
    iget v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ge v3, v6, :cond_1

    iget-object v7, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    aget v8, v7, v2

    and-int/2addr v8, v4

    if-nez v8, :cond_6

    aget v8, v7, v5

    not-int v9, v1

    and-int/2addr v8, v9

    aput v8, v7, v5

    goto :goto_4

    :cond_6
    aget v8, v7, v5

    or-int/2addr v8, v1

    aput v8, v7, v5

    :goto_4
    div-int/lit8 v6, v6, 0x20

    add-int/2addr v2, v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    :goto_5
    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x40

    if-lez v1, :cond_8

    mul-int/lit8 v1, v1, 0x40

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->resizeMatrix(I)V

    :cond_8
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    iget v3, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget-object v3, p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    move v1, v2

    :goto_0
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v3, v3, v1

    move v4, v2

    :goto_1
    iget v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v4, v5, :cond_5

    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v5, v5, v4

    invoke-virtual {p0, v3, v5}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v6

    invoke-virtual {p1, v3, v5}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v5

    if-eq v6, v5, :cond_4

    return v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 6

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v3, v3, v2

    move v4, v1

    :goto_1
    iget v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v4, v5, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v5, v5, v4

    invoke-virtual {p0, v3, v5}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final indexOfKey(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->binarySearch(II[I)I

    move-result p0

    return p0
.end method

.method public final indexOfKey(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v1, p1, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->binarySearch(II[I)I

    move-result v0

    if-gez v0, :cond_1

    not-int v0, v0

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-lt v1, v2, :cond_0

    add-int/lit8 v2, v2, 0x40

    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->resizeMatrix(I)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->nextFree(Z)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {v3, v4, v0, p1}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-static {p1, v3, v0, v2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([IIII)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    iget p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    iget p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    div-int/lit8 p1, p1, 0x20

    div-int/lit8 v0, v2, 0x20

    rem-int/lit8 v3, v2, 0x20

    shl-int v3, v1, v3

    not-int v3, v3

    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    mul-int v5, v2, p1

    add-int/2addr v2, v1

    mul-int/2addr v2, p1

    const/4 v1, 0x0

    invoke-static {v4, v5, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    :goto_0
    iget v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    mul-int v4, v1, p1

    add-int/2addr v4, v0

    aget v5, v2, v4

    and-int/2addr v5, v3

    aput v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public matrixToStringCooked()[Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v2, v3, :cond_2

    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v4, v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v1

    :goto_1
    iget v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v3, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v6, v6, v3

    invoke-virtual {p0, v4, v6}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    goto :goto_2

    :cond_0
    const-string v6, "0"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public matrixToStringMeta()[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    const-string v4, " "

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v1

    :goto_1
    iget v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v5, v5, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v1

    :goto_2
    iget v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ge v4, v5, :cond_5

    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_4

    const-string v5, "1"

    goto :goto_3

    :cond_4
    const-string v5, "0"

    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, v2, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public matrixToStringRaw()[Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ge v2, v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v1

    :goto_1
    iget v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    if-ge v3, v5, :cond_1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAtInternal(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "1"

    goto :goto_2

    :cond_0
    const-string v5, "0"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final nextFree(Z)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-boolean v2, v1, v0

    if-nez v2, :cond_0

    aput-boolean p1, v1, v0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final put(IIZ)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v1

    if-ltz v0, :cond_0

    if-gez v1, :cond_3

    :cond_0
    if-gez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)V

    :cond_1
    if-gez v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v1

    :cond_3
    if-ltz v0, :cond_5

    if-ltz v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    iget-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget p2, p1, v0

    aget p1, p1, v1

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    div-int/lit8 p1, p2, 0x20

    rem-int/lit8 p2, p2, 0x20

    const/4 v0, 0x1

    shl-int p2, v0, p2

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    aget v0, p3, p1

    or-int/2addr p2, v0

    aput p2, p3, p1

    goto :goto_0

    :cond_4
    iget-object p3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    aget v0, p3, p1

    not-int p2, p2

    and-int/2addr p2, v0

    aput p2, p3, p1

    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "matrix overflow"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeAt(I)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v1, v1, p1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    add-int/lit8 v4, v3, -0x1

    aput v2, v0, v4

    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    add-int/lit8 v0, v0, -0x1

    aput v2, p1, v0

    iput v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public final removeRange(II)V
    .locals 5

    if-lt p2, p1, :cond_3

    sub-int v0, p2, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->validateIndex(I)V

    move v1, p1

    :goto_0
    const/4 v2, 0x0

    if-ge v1, p2, :cond_1

    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aget v4, v4, v1

    aput-boolean v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int/2addr v3, p2

    invoke-static {v1, p2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    iget v3, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int/2addr v3, p2

    invoke-static {v1, p2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    sub-int/2addr p1, v0

    :goto_1
    iget p2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge p1, p2, :cond_2

    iget-object p2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    aput v2, p2, p1

    iget-object p2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    aput v2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    sub-int/2addr p2, v0

    iput p2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo p1, "toIndex < fromIndex"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final resizeMatrix(I)V
    .locals 10

    rem-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedBooleanArray(I)[Z

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    invoke-static {v4, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    invoke-static {v5, v3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v5, p1, p1

    div-int/lit8 v5, v5, 0x20

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v5

    :goto_0
    if-ge v3, v0, :cond_0

    iget v6, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int/2addr v6, v3

    div-int/lit8 v6, v6, 0x20

    mul-int v7, p1, v3

    div-int/lit8 v7, v7, 0x20

    iget-object v8, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    div-int/lit8 v9, v0, 0x20

    invoke-static {v8, v6, v5, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    iput-object v2, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    iput-object v4, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iput-object v5, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    iput p1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "matrix order "

    const-string v1, " is not a multiple of 64"

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final snapshot()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    iput v1, v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    iput v1, v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mKeys:[I

    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mMap:[I

    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    iput-object v1, v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mInUse:[Z

    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    iput-object p0, v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    const-string/jumbo v1, "}"

    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final validateIndex(I)V
    .locals 0

    iget p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    if-ge p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public final valueAtInternal(II)Z
    .locals 1

    iget v0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mOrder:I

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    div-int/lit8 p2, p1, 0x20

    rem-int/lit8 p1, p1, 0x20

    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mValues:[I

    aget p0, p0, p2

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
