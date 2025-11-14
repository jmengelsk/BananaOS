.class public final Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCompatibility:I

.field public mRefreshRate:F

.field public mSelectionStrategy:I


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    instance-of v0, p1, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_28

    :cond_6
    check-cast p1, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    iget v0, p1, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mRefreshRate:F

    iget v2, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mRefreshRate:F

    const v3, 0x3c23d70a  # 0.01f

    add-float v4, v0, v3

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_28

    sub-float/2addr v0, v3

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_28

    iget v0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mCompatibility:I

    iget v2, p1, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mCompatibility:I

    if-ne v0, v2, :cond_28

    iget p0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mSelectionStrategy:I

    iget p1, p1, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mSelectionStrategy:I

    if-ne p0, p1, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    :goto_28
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mRefreshRate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mCompatibility:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mSelectionStrategy:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mRefreshRate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mCompatibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mCompatibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSelectionStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mSelectionStrategy:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final update(IFI)Z
    .registers 7

    iget v0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mRefreshRate:F

    const v1, 0x3c23d70a  # 0.01f

    add-float v2, p2, v1

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1c

    sub-float v1, p2, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1c

    iget v0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mCompatibility:I

    if-ne v0, p1, :cond_1c

    iget v0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mSelectionStrategy:I

    if-eq v0, p3, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    :cond_1c
    :goto_1c
    iput p2, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mRefreshRate:F

    iput p1, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mCompatibility:I

    iput p3, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mSelectionStrategy:I

    const/4 p0, 0x1

    return p0
.end method
