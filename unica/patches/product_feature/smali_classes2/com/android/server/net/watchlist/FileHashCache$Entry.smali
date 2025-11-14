.class public final Lcom/android/server/net/watchlist/FileHashCache$Entry;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mLastModified:J

.field public final mSha256Hash:[B


# direct methods
.method public constructor <init>(J[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/net/watchlist/FileHashCache$Entry;->mLastModified:J

    iput-object p3, p0, Lcom/android/server/net/watchlist/FileHashCache$Entry;->mSha256Hash:[B

    return-void
.end method
