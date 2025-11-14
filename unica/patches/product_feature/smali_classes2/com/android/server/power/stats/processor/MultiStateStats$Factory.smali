.class public final Lcom/android/server/power/stats/processor/MultiStateStats$Factory;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCompositeToSerialState:[I

.field public final mDimensionCount:I

.field public final mSerialStateCount:I

.field public final mStateBitFieldMasks:[I

.field public final mStateBitFieldShifts:[S

.field public final mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;


# direct methods
.method public varargs constructor <init>(I[Lcom/android/server/power/stats/processor/MultiStateStats$States;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mDimensionCount:I

    iput-object p2, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length p1, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_c
    if-ge v2, p1, :cond_1b

    aget-object v4, p2, v2

    iget-boolean v5, v4, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-eqz v5, :cond_18

    iget-object v4, v4, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    array-length v4, v4

    mul-int/2addr v3, v4

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1b
    iput v3, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mSerialStateCount:I

    iget-object p1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length p2, p1

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    array-length p1, p1

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldShifts:[S

    move p1, v1

    move p2, p1

    :goto_2b
    iget-object v2, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v3, v2

    if-ge p1, v3, :cond_6e

    iget-object v3, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldShifts:[S

    int-to-short v4, p2

    aput-short v4, v3, p1

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_51

    array-length v2, v2

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x20

    iget-object v3, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    shl-int v4, v0, v2

    sub-int/2addr v4, v0

    shl-int/2addr v4, p2

    aput v4, v3, p1

    add-int/2addr p2, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_2b

    :cond_51
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ". Should have at least two values."

    invoke-static {v0, p0, p1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6e
    const/16 p1, 0x1f

    if-ge p2, p1, :cond_c8

    const/4 p1, -0x1

    move v3, p1

    move v2, v1

    :goto_75
    iget-object v4, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v5, v4

    if-ge v2, v5, :cond_89

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-nez v4, :cond_86

    iget-object v4, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    aget v4, v4, v2

    not-int v4, v4

    and-int/2addr v3, v4

    :cond_86
    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    :cond_89
    shl-int p2, v0, p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mCompositeToSerialState:[I

    invoke-static {p2, p1}, Ljava/util/Arrays;->fill([II)V

    move p2, v1

    move v0, p2

    :goto_94
    iget-object v2, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mCompositeToSerialState:[I

    array-length v2, v2

    if-ge p2, v2, :cond_c7

    move v2, v1

    :goto_9a
    iget-object v4, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v5, v4

    if-ge v2, v5, :cond_b4

    iget-object v5, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    aget v5, v5, v2

    and-int/2addr v5, p2

    iget-object v6, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldShifts:[S

    aget-short v6, v6, v2

    ushr-int/2addr v5, v6

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    array-length v4, v4

    if-lt v5, v4, :cond_b1

    goto :goto_c4

    :cond_b1
    add-int/lit8 v2, v2, 0x1

    goto :goto_9a

    :cond_b4
    and-int v2, p2, v3

    iget-object v4, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mCompositeToSerialState:[I

    aget v2, v4, v2

    if-eq v2, p1, :cond_bf

    aput v2, v4, p2

    goto :goto_c4

    :cond_bf
    add-int/lit8 v2, v0, 0x1

    aput v0, v4, p2

    move v0, v2

    :goto_c4
    add-int/lit8 p2, p2, 0x1

    goto :goto_94

    :cond_c7
    return-void

    :cond_c8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Too many states: "

    const-string v0, " bits are required to represent the composite state, but only 31 are available"

    invoke-static {p2, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getSerialState([I)I
    .registers 6

    array-length v0, p1

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    move v0, v2

    :goto_e
    array-length v1, p1

    if-ge v2, v1, :cond_22

    aget v1, p1, v2

    iget-object v3, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    aget v3, v3, v2

    not-int v3, v3

    and-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldShifts:[S

    aget-short v3, v3, v2

    shl-int/2addr v1, v3

    or-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_22
    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mCompositeToSerialState:[I

    aget p0, p0, v0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2a

    return p0

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "State values out of bounds: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSerialStateCount()I
    .registers 1

    iget p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mSerialStateCount:I

    return p0
.end method
