.class public final Lcom/android/server/pinner/PinRangeSourceStream;
.super Lcom/android/server/pinner/PinRangeSource;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mDone:Z

.field public final mStream:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pinner/PinRangeSourceStream;->mDone:Z

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/server/pinner/PinRangeSourceStream;->mStream:Ljava/io/DataInputStream;

    return-void
.end method


# virtual methods
.method public final read(Lcom/android/server/pinner/PinnerService$PinRange;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/pinner/PinRangeSourceStream;->mDone:Z

    const/4 v1, 0x1

    if-nez v0, :cond_18

    :try_start_5
    iget-object v0, p0, Lcom/android/server/pinner/PinRangeSourceStream;->mStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p1, Lcom/android/server/pinner/PinnerService$PinRange;->start:I

    iget-object v0, p0, Lcom/android/server/pinner/PinRangeSourceStream;->mStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p1, Lcom/android/server/pinner/PinnerService$PinRange;->length:I
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_15} :catch_16

    goto :goto_18

    :catch_16
    iput-boolean v1, p0, Lcom/android/server/pinner/PinRangeSourceStream;->mDone:Z

    :cond_18
    :goto_18
    iget-boolean p0, p0, Lcom/android/server/pinner/PinRangeSourceStream;->mDone:Z

    xor-int/2addr p0, v1

    return p0
.end method
