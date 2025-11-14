.class public Lcom/att/iqi/lib/metrics/ss/SS2S;
.super Lcom/att/iqi/lib/Metric;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/metrics/ss/SS2S;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;

.field private static final SERVICE_RUNNING_MASK:B = 0x1t

.field public static final SERVICE_SHOULD_NOT_RUN:B = 0x1t

.field public static final SERVICE_SHOULD_RUN:B

.field public static final SHOULD_SERVICE_RUN:I


# instance fields
.field private ucSettings:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string/jumbo v1, "SS2S"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/ss/SS2S;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/ss/SS2S$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/ss/SS2S$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/ss/SS2S;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->ucSettings:B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->ucSettings:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_13

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->ucSettings:B

    :cond_13
    return-void
.end method


# virtual methods
.method public getSetting(I)B
    .registers 3

    if-nez p1, :cond_8

    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->ucSettings:B

    and-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    return p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid setting ID "

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public serialize(Ljava/nio/ByteBuffer;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->ucSettings:B

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    return p0
.end method

.method public setSetting(IB)Lcom/att/iqi/lib/metrics/ss/SS2S;
    .registers 5

    if-nez p1, :cond_1f

    if-eqz p2, :cond_16

    const/4 v0, 0x1

    if-ne p2, v0, :cond_8

    goto :goto_16

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal value "

    const-string v1, " for setting ID "

    invoke-static {p2, p1, v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    :goto_16
    iget-byte p1, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->ucSettings:B

    and-int/lit8 p1, p1, -0x2

    int-to-byte p1, p1

    or-int/2addr p1, p2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->ucSettings:B

    :cond_1f
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget-byte p0, p0, Lcom/att/iqi/lib/metrics/ss/SS2S;->ucSettings:B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
