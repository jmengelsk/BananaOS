.class public abstract Lcom/android/server/usb/descriptors/UsbDescriptor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sStatusStrings:[Ljava/lang/String;


# instance fields
.field public mHierarchyLevel:I

.field public final mLength:I

.field public mOverUnderRunCount:I

.field public mRawData:[B

.field public mStatus:I

.field public final mType:B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "PARSED - UNDERRUN"

    const-string/jumbo v1, "PARSED - OVERRUN"

    const-string/jumbo v2, "UNPARSED"

    const-string/jumbo v3, "PARSED - OK"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStatusStrings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(BI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    const/4 v0, 0x2

    if-lt p2, v0, :cond_e

    iput p2, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    iput-byte p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    return-void

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 7

    iget v0, p1, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    sub-int v0, v1, v0

    if-lez v0, :cond_1a

    new-array v2, v0, [B

    iput-object v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mRawData:[B

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_1a

    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mRawData:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1a
    return v1
.end method

.method public final postParse(Lcom/android/server/usb/descriptors/ByteStream;)V
    .registers 10

    iget v0, p1, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    const-string v1, " r: "

    iget-byte v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    const-string/jumbo v3, "UsbDescriptor"

    iget v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    if-ge v0, v4, :cond_35

    sub-int v5, v4, v0

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/ByteStream;->advance(I)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    iput v5, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mOverUnderRunCount:I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "UNDERRUN t:0x"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < l: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v4, v3}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_35
    if-le v0, v4, :cond_78

    sub-int v5, v0, v4

    if-ltz v5, :cond_72

    iget v6, p1, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    if-lt v6, v5, :cond_69

    sub-int v7, v0, v5

    iput v7, p1, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    sub-int/2addr v6, v5

    iput v6, p1, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    iput v5, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mOverUnderRunCount:I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "OVERRRUN t:0x"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > l: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v4, v3}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_69
    const/4 p0, 0x0

    iput p0, p1, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_72
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_78
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    return-void
.end method

.method public report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V
    .registers 7

    sget-object v0, Lcom/android/server/usb/descriptors/report/UsbStrings;->sDescriptorNames:Ljava/util/HashMap;

    iget-byte v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    and-int/lit16 v2, v1, 0xff

    const-string/jumbo v3, "]"

    if-eqz v0, :cond_16

    goto :goto_34

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unknown Descriptor [0x"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_34
    const-string v2, ": "

    invoke-static {v0, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Len: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mHierarchyLevel:I

    if-eqz v1, :cond_57

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeHeader(Ljava/lang/String;)V

    goto :goto_5b

    :cond_57
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    :goto_5b
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8e

    if-eqz v0, :cond_69

    const/4 v2, 0x2

    if-eq v0, v2, :cond_69

    const/4 v2, 0x3

    if-eq v0, v2, :cond_69

    goto :goto_8e

    :cond_69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "status: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStatusStrings:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mOverUnderRunCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    :cond_8e
    :goto_8e
    return-void
.end method
