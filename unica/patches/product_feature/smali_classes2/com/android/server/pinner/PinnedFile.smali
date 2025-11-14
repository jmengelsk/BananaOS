.class public final Lcom/android/server/pinner/PinnedFile;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final bytesPinned:J

.field public final fileName:Ljava/lang/String;

.field public groupName:Ljava/lang/String;

.field public mAddress:J

.field public final mapSize:J

.field public final pinnedDeps:Ljava/util/ArrayList;

.field public used_pinlist:Z


# direct methods
.method public constructor <init>(JJJLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pinner/PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    iput-wide p1, p0, Lcom/android/server/pinner/PinnedFile;->mAddress:J

    iput-wide p3, p0, Lcom/android/server/pinner/PinnedFile;->mapSize:J

    iput-object p7, p0, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/pinner/PinnedFile;->mAddress:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/pinner/PinnedFile;->mapSize:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pinner/PinnerUtils;->safeMunmap(JJ)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/pinner/PinnedFile;->mAddress:J

    :cond_0
    iget-object p0, p0, Lcom/android/server/pinner/PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/pinner/PinnedFile;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/pinner/PinnedFile;->close()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pinner/PinnedFile;->close()V

    return-void
.end method
