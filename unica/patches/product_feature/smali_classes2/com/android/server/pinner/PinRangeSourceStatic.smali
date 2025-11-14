.class public final Lcom/android/server/pinner/PinRangeSourceStatic;
.super Lcom/android/server/pinner/PinRangeSource;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mDone:Z


# virtual methods
.method public final read(Lcom/android/server/pinner/PinnerService$PinRange;)Z
    .locals 1

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/pinner/PinnerService$PinRange;->start:I

    const v0, 0x7fffffff

    iput v0, p1, Lcom/android/server/pinner/PinnerService$PinRange;->length:I

    iget-boolean p1, p0, Lcom/android/server/pinner/PinRangeSourceStatic;->mDone:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pinner/PinRangeSourceStatic;->mDone:Z

    xor-int/lit8 p0, p1, 0x1

    return p0
.end method
