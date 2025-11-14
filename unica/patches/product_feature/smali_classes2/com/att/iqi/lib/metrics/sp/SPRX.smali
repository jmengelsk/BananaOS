.class public Lcom/att/iqi/lib/metrics/sp/SPRX;
.super Lcom/att/iqi/lib/Metric;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/metrics/sp/SPRX;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field private m_dwCSeq:I

.field private m_dwTransId:I

.field private m_strMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string/jumbo v1, "SPRX"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/sp/SPRX;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/sp/SPRX$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/sp/SPRX$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/sp/SPRX;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/sp/SPRX;->reset()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1c

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwTransId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwCSeq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_strMessage:Ljava/lang/String;

    :cond_1c
    return-void
.end method


# virtual methods
.method public getCSeq()I
    .registers 1

    iget p0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwCSeq:I

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_strMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getTransId()I
    .registers 1

    iget p0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwTransId:I

    return p0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwTransId:I

    iput v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwCSeq:I

    const-string v0, ""

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_strMessage:Ljava/lang/String;

    return-void
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwTransId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwCSeq:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_strMessage:Ljava/lang/String;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_14
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-lez v0, :cond_24

    iget-object p0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_strMessage:Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    return p0
.end method

.method public setCSeq(I)Lcom/att/iqi/lib/metrics/sp/SPRX;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwCSeq:I

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/sp/SPRX;
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_strMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setTransId(I)Lcom/att/iqi/lib/metrics/sp/SPRX;
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwTransId:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwTransId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_dwCSeq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/att/iqi/lib/metrics/sp/SPRX;->m_strMessage:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
