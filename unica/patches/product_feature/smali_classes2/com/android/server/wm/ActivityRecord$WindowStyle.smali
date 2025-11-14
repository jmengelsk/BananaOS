.class public final Lcom/android/server/wm/ActivityRecord$WindowStyle;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mFlags:I

.field public final mSplashScreenBehavior:I


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    const/16 v2, 0xc

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    const/16 v2, 0x3f

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iput v0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    const/16 v0, 0x3d

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mSplashScreenBehavior:I

    return-void
.end method
