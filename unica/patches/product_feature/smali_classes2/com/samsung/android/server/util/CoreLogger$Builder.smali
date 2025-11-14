.class public final Lcom/samsung/android/server/util/CoreLogger$Builder;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mBufferOverflowAllowed:Z

.field public mBufferSize:I

.field public mDumpTitle:Ljava/lang/String;

.field public mTag:Ljava/lang/String;

.field public mUseTimeline:Z


# virtual methods
.method public final build()Lcom/samsung/android/server/util/CoreLogger;
    .registers 7

    new-instance v0, Lcom/samsung/android/server/util/CoreLogger;

    iget-object v1, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mTag:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mDumpTitle:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mBufferSize:I

    iget-boolean v4, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mBufferOverflowAllowed:Z

    iget-boolean v5, p0, Lcom/samsung/android/server/util/CoreLogger$Builder;->mUseTimeline:Z

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/util/CoreLogger;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    return-object v0
.end method
