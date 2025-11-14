.class public final Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAliases:[I

.field public final mExcludeStreams:I


# direct methods
.method public constructor <init>([I[I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;->mAliases:[I

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_0

    aget v1, p2, p1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;->mExcludeStreams:I

    return-void
.end method
