.class public final Lcom/android/server/pm/SnapshotStatistics$BinMap;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCount:I

.field public final mMaxBin:I

.field public final mUserKey:[I


# direct methods
.method public constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mCount:I

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget p1, p1, v0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mMaxBin:I

    return-void
.end method


# virtual methods
.method public final getBin(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    iget p0, p0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mMaxBin:I

    const/4 v1, 0x0

    if-ltz p1, :cond_2

    if-ge p1, p0, :cond_2

    move p0, v1

    :goto_0
    array-length v2, v0

    if-ge p0, v2, :cond_1

    aget v2, v0, p0

    if-gt p1, v2, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    if-lt p1, p0, :cond_3

    array-length p0, v0

    return p0

    :cond_3
    return v1
.end method
