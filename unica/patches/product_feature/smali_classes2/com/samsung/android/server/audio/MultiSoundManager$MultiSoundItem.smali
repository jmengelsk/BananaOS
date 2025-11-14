.class public final Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mDevice:I

.field public mRatio:I

.field public mShouldMute:Z

.field public final mUid:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    iput p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    if-ltz p3, :cond_11

    const/16 p1, 0x64

    if-le p3, p1, :cond_e

    goto :goto_11

    :cond_e
    iput p3, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mRatio:I

    goto :goto_18

    :cond_11
    :goto_11
    const-string p1, "AS.MultiSoundManager"

    const-string p2, "Invalid app volume"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    iput p3, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mRatio:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mShouldMute:Z

    return-void
.end method


# virtual methods
.method public final removable()Z
    .registers 3

    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    if-nez v0, :cond_10

    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mRatio:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_10

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mShouldMute:Z

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method
