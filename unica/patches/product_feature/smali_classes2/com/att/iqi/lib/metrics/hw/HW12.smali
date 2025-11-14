.class public Lcom/att/iqi/lib/metrics/hw/HW12;
.super Lcom/att/iqi/lib/Metric;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/metrics/hw/HW12;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field private ucCause:B

.field private ucProcessor:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string v1, "HW12"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/hw/HW12;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/hw/HW12$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/hw/HW12$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/hw/HW12;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_16

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/hw/HW12;->ucCause:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/hw/HW12;->ucProcessor:B

    :cond_16
    return-void
.end method


# virtual methods
.method public getCause()S
    .registers 1

    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/hw/HW12;->ucCause:B

    int-to-short p0, p0

    return p0
.end method

.method public getProcessor()B
    .registers 1

    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/hw/HW12;->ucProcessor:B

    return p0
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/hw/HW12;->ucCause:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/hw/HW12;->ucProcessor:B

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    return p0
.end method

.method public setCause(B)Lcom/att/iqi/lib/metrics/hw/HW12;
    .registers 2

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/hw/HW12;->ucCause:B

    return-object p0
.end method

.method public setProcessor(B)Lcom/att/iqi/lib/metrics/hw/HW12;
    .registers 2

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/hw/HW12;->ucProcessor:B

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget-byte p2, p0, Lcom/att/iqi/lib/metrics/hw/HW12;->ucCause:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/hw/HW12;->ucProcessor:B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
