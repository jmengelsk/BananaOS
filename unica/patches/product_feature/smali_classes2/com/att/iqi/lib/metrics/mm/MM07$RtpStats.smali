.class Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field private m_dwDuration:I

.field private m_dwPacketsDrop:I

.field private m_dwPacketsLate:I

.field private m_dwPacketsRcvd:I

.field private final m_ucFormat:B

.field private final m_ucMediaType:B


# direct methods
.method public static bridge synthetic -$$Nest$fgetm_dwDuration(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I
    .registers 1

    iget p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwDuration:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetm_dwPacketsDrop(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I
    .registers 1

    iget p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsDrop:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetm_dwPacketsLate(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I
    .registers 1

    iget p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsLate:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetm_dwPacketsRcvd(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)I
    .registers 1

    iget p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsRcvd:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetm_ucFormat(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)B
    .registers 1

    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_ucFormat:B

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetm_ucMediaType(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;)B
    .registers 1

    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_ucMediaType:B

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputm_dwDuration(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)V
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwDuration:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputm_dwPacketsDrop(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)V
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsDrop:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputm_dwPacketsLate(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)V
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsLate:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputm_dwPacketsRcvd(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;I)V
    .registers 2

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsRcvd:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mserialize(Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;Ljava/nio/ByteBuffer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->serialize(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private constructor <init>(BB)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_ucMediaType:B

    iput-byte p2, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_ucFormat:B

    const/4 p1, 0x0

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwDuration:I

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsRcvd:I

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsDrop:I

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsLate:I

    return-void
.end method

.method public synthetic constructor <init>(BBI)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;-><init>(BB)V

    return-void
.end method

.method private serialize(Ljava/nio/ByteBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_ucMediaType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_ucFormat:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwDuration:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsRcvd:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsDrop:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget p0, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsLate:I

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public set(IIII)V
    .registers 5

    iput p1, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwDuration:I

    iput p2, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsRcvd:I

    iput p3, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsDrop:I

    iput p4, p0, Lcom/att/iqi/lib/metrics/mm/MM07$RtpStats;->m_dwPacketsLate:I

    return-void
.end method
