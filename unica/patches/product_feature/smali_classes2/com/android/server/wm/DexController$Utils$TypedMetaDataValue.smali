.class public final Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public data:I

.field public unit:I


# direct methods
.method public static getDimensionPixelSize(Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;III)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->data:I

    if-lez v0, :cond_0

    move p3, v0

    :cond_0
    iget p0, p0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->unit:I

    if-eqz p0, :cond_2

    const/4 p2, 0x1

    if-eq p0, p2, :cond_1

    const/4 p2, 0x2

    if-eq p0, p2, :cond_1

    goto :goto_0

    :cond_1
    mul-int/2addr p3, p1

    int-to-float p0, p3

    const p1, 0x3bcccccd    # 0.00625f

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_2
    const/16 p0, 0x64

    if-gt p3, p0, :cond_3

    mul-int/2addr p2, p3

    int-to-double p0, p2

    const-wide p2, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr p0, p2

    double-to-int p0, p0

    return p0

    :cond_3
    :goto_0
    return p3
.end method

.method public static parseSizeMetaData(Ljava/lang/String;)Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;
    .locals 4

    new-instance v0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "\\D"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "0"

    aput-object v3, v1, v2

    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v3, "%"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput v2, v0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->unit:I

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "PX"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v2, v0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->unit:I

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "SP"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    iput p0, v0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->unit:I

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    iput p0, v0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->unit:I

    :goto_0
    aget-object p0, v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->data:I

    return-object v0
.end method
