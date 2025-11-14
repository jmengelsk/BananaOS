.class public Lcom/att/iqi/lib/metrics/mm/MM06;
.super Lcom/att/iqi/lib/Metric;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/metrics/mm/MM06;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;

.field public static final IQ_SIP_ORIGINATED:B = 0x0t

.field public static final IQ_SIP_TERMINATED:B = 0x1t

.field private static final RESPONSE_CODE_MASK:S = 0x7fffs

.field private static final TERMINATION_DIRECTION_SHIFT:I = 0xf


# instance fields
.field private m_shResult:S

.field private m_szCallId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string/jumbo v1, "MM06"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/mm/MM06;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/mm/MM06$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/mm/MM06$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/mm/MM06;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    invoke-virtual {p0}, Lcom/att/iqi/lib/metrics/mm/MM06;->reset()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_17

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_shResult:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_szCallId:Ljava/lang/String;

    :cond_17
    return-void
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_szCallId:Ljava/lang/String;

    return-object p0
.end method

.method public getResponseCode()S
    .registers 1

    iget-short p0, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_shResult:S

    and-int/lit16 p0, p0, 0x7fff

    int-to-short p0, p0

    return p0
.end method

.method public getTerminationDirection()B
    .registers 1

    iget-short p0, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_shResult:S

    shr-int/lit8 p0, p0, 0xf

    int-to-byte p0, p0

    return p0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_shResult:S

    const-string v0, ""

    iput-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_szCallId:Ljava/lang/String;

    return-void
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_shResult:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_szCallId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/Metric;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    return p0
.end method

.method public setCallId(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/mm/MM06;
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_szCallId:Ljava/lang/String;

    return-object p0
.end method

.method public setResponseCode(S)Lcom/att/iqi/lib/metrics/mm/MM06;
    .registers 3

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_shResult:S

    and-int/lit16 v0, v0, -0x8000

    and-int/lit16 p1, p1, 0x7fff

    or-int/2addr p1, v0

    int-to-short p1, p1

    iput-short p1, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_shResult:S

    return-object p0
.end method

.method public setTerminationDirection(B)Lcom/att/iqi/lib/metrics/mm/MM06;
    .registers 3

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_shResult:S

    and-int/lit16 v0, v0, 0x7fff

    int-to-short p1, p1

    shl-int/lit8 p1, p1, 0xf

    or-int/2addr p1, v0

    int-to-short p1, p1

    iput-short p1, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_shResult:S

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget-short p2, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_shResult:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/att/iqi/lib/metrics/mm/MM06;->m_szCallId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
