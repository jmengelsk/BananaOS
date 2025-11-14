.class public final Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mState:I

.field public final mUid:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mUid:I

    iput p2, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mState:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;

    iget v1, p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mUid:I

    iget v3, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mUid:I

    if-ne v3, v1, :cond_1

    iget p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mState:I

    iget p1, p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mState:I

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mUid:I

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mState:I

    add-int/2addr v0, p0

    return v0
.end method
