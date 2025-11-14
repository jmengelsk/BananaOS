.class public final Lcom/android/server/usage/BroadcastEvent;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mIdForResponseEvent:J

.field public final mSourceUid:I

.field public final mTargetPackage:Ljava/lang/String;

.field public final mTargetUserId:I

.field public final mTimestampsMs:Landroid/util/LongArrayQueue;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/usage/BroadcastEvent;->mSourceUid:I

    iput-object p5, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetPackage:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetUserId:I

    iput-wide p3, p0, Lcom/android/server/usage/BroadcastEvent;->mIdForResponseEvent:J

    new-instance p1, Landroid/util/LongArrayQueue;

    invoke-direct {p1}, Landroid/util/LongArrayQueue;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/BroadcastEvent;->mTimestampsMs:Landroid/util/LongArrayQueue;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    instance-of v2, p1, Lcom/android/server/usage/BroadcastEvent;

    if-nez v2, :cond_c

    goto :goto_2d

    :cond_c
    check-cast p1, Lcom/android/server/usage/BroadcastEvent;

    iget v2, p0, Lcom/android/server/usage/BroadcastEvent;->mSourceUid:I

    iget v3, p1, Lcom/android/server/usage/BroadcastEvent;->mSourceUid:I

    if-ne v2, v3, :cond_2d

    iget-wide v2, p0, Lcom/android/server/usage/BroadcastEvent;->mIdForResponseEvent:J

    iget-wide v4, p1, Lcom/android/server/usage/BroadcastEvent;->mIdForResponseEvent:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2d

    iget v2, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetUserId:I

    iget v3, p1, Lcom/android/server/usage/BroadcastEvent;->mTargetUserId:I

    if-ne v2, v3, :cond_2d

    iget-object p0, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetPackage:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/usage/BroadcastEvent;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    return v0

    :cond_2d
    :goto_2d
    return v1
.end method

.method public final hashCode()I
    .registers 5

    iget v0, p0, Lcom/android/server/usage/BroadcastEvent;->mSourceUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/usage/BroadcastEvent;->mIdForResponseEvent:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetPackage:Ljava/lang/String;

    filled-new-array {v0, p0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BroadcastEvent {srcUid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/usage/BroadcastEvent;->mSourceUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",tgtPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",tgtUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/usage/BroadcastEvent;->mIdForResponseEvent:J

    const-string/jumbo p0, "}"

    invoke-static {v0, v1, v2, p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
