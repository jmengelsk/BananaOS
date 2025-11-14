.class public final Lcom/android/server/pm/DumpState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mBrief:Z

.field public mCheckIn:Z

.field public mFullPreferred:Z

.field public mOptions:I

.field public mSharedUser:Lcom/android/server/pm/SharedUserSetting;

.field public mTargetPackageName:Ljava/lang/String;

.field public mTitlePrinted:Z

.field public mTypes:I


# virtual methods
.method public final isDumping(I)Z
    .registers 4

    iget p0, p0, Lcom/android/server/pm/DumpState;->mTypes:I

    const/4 v0, 0x1

    if-nez p0, :cond_a

    const/16 v1, 0x2000

    if-eq p1, v1, :cond_a

    return v0

    :cond_a
    and-int/2addr p0, p1

    if-eqz p0, :cond_e

    return v0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final isOptionEnabled(I)Z
    .registers 2

    iget p0, p0, Lcom/android/server/pm/DumpState;->mOptions:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final setDump(I)V
    .registers 3

    iget v0, p0, Lcom/android/server/pm/DumpState;->mTypes:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/pm/DumpState;->mTypes:I

    return-void
.end method
