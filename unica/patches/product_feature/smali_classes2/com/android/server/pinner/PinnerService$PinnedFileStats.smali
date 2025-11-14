.class public final Lcom/android/server/pinner/PinnerService$PinnedFileStats;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final filename:Ljava/lang/String;

.field public final sizeKb:I

.field public final uid:I


# direct methods
.method public constructor <init>(ILcom/android/server/pinner/PinnedFile;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pinner/PinnerService$PinnedFileStats;->uid:I

    iget-object p1, p2, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pinner/PinnerService$PinnedFileStats;->filename:Ljava/lang/String;

    iget-wide p1, p2, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    long-to-int p1, p1

    div-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/android/server/pinner/PinnerService$PinnedFileStats;->sizeKb:I

    return-void
.end method
