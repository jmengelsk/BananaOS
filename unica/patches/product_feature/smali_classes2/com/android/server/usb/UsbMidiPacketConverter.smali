.class public final Lcom/android/server/usb/UsbMidiPacketConverter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final CODE_INDEX_NUMBER_FROM_SYSTEM_TYPE:[I

.field public static final PAYLOAD_SIZE:[I


# instance fields
.field public final mEncoderOutputStream:Ljava/io/ByteArrayOutputStream;

.field public mUsbMidiDecoder:Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;

.field public mUsbMidiEncoders:[Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/usb/UsbMidiPacketConverter;->PAYLOAD_SIZE:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/usb/UsbMidiPacketConverter;->CODE_INDEX_NUMBER_FROM_SYSTEM_TYPE:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        0x2
        0x3
        0x3
        0x1
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
        0x3
        0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x2
        0x3
        0x2
        -0x1
        -0x1
        0x5
        -0x1
        0x5
        -0x1
        0x5
        0x5
        0x5
        -0x1
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mEncoderOutputStream:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public final createEncoders(I)V
    .locals 6

    new-array v0, p1, [Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiEncoders:[Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiEncoders:[Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    new-instance v3, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x3

    new-array v5, v4, [B

    iput-object v5, v3, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mStoredSystemExclusiveBytes:[B

    iput v0, v3, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    iput-boolean v0, v3, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mEmptyBytes:[B

    shl-int/lit8 v4, v1, 0x4

    int-to-byte v4, v4

    iput-byte v4, v3, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mShiftedCableNumber:B

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final decodeMidiPackets(I[B)V
    .locals 7

    iget-object p0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiDecoder:Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    rem-int/lit8 v0, p1, 0x4

    const-string/jumbo v1, "UsbMidiPacketConverter"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "size "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not multiple of 4"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    add-int/lit8 v3, v2, 0x3

    if-ge v3, p1, :cond_3

    aget-byte v3, p2, v2

    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    and-int/lit8 v3, v3, 0xf

    sget-object v5, Lcom/android/server/usb/UsbMidiPacketConverter;->PAYLOAD_SIZE:[I

    aget v3, v5, v3

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    iget v5, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;->mNumJacks:I

    if-lt v4, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "cableNumber "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " invalid"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    :cond_2
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;->mDecodedByteArrays:[Ljava/io/ByteArrayOutputStream;

    aget-object v4, v5, v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, p2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_1
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final encodeMidiPackets(II[B)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiEncoders:[Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    array-length v0, v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "encoderId "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " invalid"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "UsbMidiPacketConverter"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiEncoders:[Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    aget-object p2, v0, p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v2, v1

    :cond_1
    :goto_0
    if-ge v2, p1, :cond_d

    aget-byte v3, p3, v2

    iget-byte v4, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mShiftedCableNumber:B

    iget-object v5, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mStoredSystemExclusiveBytes:[B

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ltz v3, :cond_4

    iget-boolean v8, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    if-eqz v8, :cond_2

    iget v8, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    aput-byte v3, v5, v8

    add-int/2addr v8, v7

    iput v8, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    if-ne v8, v6, :cond_3

    or-int/lit8 v3, v4, 0x4

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v5, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iput v1, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v0, v3}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/16 v8, -0x9

    if-eq v3, v8, :cond_6

    iget-boolean v3, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    if-eqz v3, :cond_6

    move v3, v1

    :goto_2
    iget v9, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    if-ge v3, v9, :cond_5

    aget-byte v9, v5, v3

    invoke-virtual {p2, v0, v9}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iput v1, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    iput-boolean v1, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    :cond_6
    aget-byte v3, p3, v2

    sget-object v9, Lcom/android/server/usb/UsbMidiPacketConverter;->PAYLOAD_SIZE:[I

    iget-object v10, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mEmptyBytes:[B

    const/16 v11, -0x10

    if-ge v3, v11, :cond_8

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aget v5, v9, v3

    add-int v6, v2, v5

    if-gt v6, p1, :cond_7

    or-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, p3, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    rsub-int/lit8 v2, v5, 0x3

    invoke-virtual {v0, v10, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_3
    move v2, v6

    goto :goto_0

    :cond_7
    :goto_4
    if-ge v2, p1, :cond_1

    aget-byte v3, p3, v2

    invoke-virtual {p2, v0, v3}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    if-ne v3, v11, :cond_9

    iput-boolean v7, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    aput-byte v3, v5, v1

    iput v7, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    goto :goto_1

    :cond_9
    if-ne v3, v8, :cond_a

    iget v3, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    add-int/lit8 v3, v3, 0x5

    or-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v3, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    aget-byte v4, p3, v2

    aput-byte v4, v5, v3

    add-int/2addr v3, v7

    iput v3, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    invoke-virtual {v0, v5, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget v3, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    sub-int/2addr v6, v3

    invoke-virtual {v0, v10, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iput-boolean v1, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    iput v1, p2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    goto :goto_1

    :cond_a
    and-int/lit8 v5, v3, 0xf

    sget-object v6, Lcom/android/server/usb/UsbMidiPacketConverter;->CODE_INDEX_NUMBER_FROM_SYSTEM_TYPE:[I

    aget v5, v6, v5

    if-gez v5, :cond_b

    invoke-virtual {p2, v0, v3}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    goto :goto_1

    :cond_b
    aget v3, v9, v5

    add-int v6, v2, v3

    if-gt v6, p1, :cond_c

    or-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, p3, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    rsub-int/lit8 v2, v3, 0x3

    invoke-virtual {v0, v10, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    :cond_c
    :goto_5
    if-ge v2, p1, :cond_1

    aget-byte v3, p3, v2

    invoke-virtual {p2, v0, v3}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mEncoderOutputStream:Ljava/io/ByteArrayOutputStream;

    array-length p2, p1

    invoke-virtual {p0, p1, v1, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public final pullDecodedMidiPackets(I)[B
    .locals 2

    iget-object p0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiDecoder:Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;

    iget v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;->mNumJacks:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "cableNumber "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " invalid"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "UsbMidiPacketConverter"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;->mDecodedByteArrays:[Ljava/io/ByteArrayOutputStream;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;->mDecodedByteArrays:[Ljava/io/ByteArrayOutputStream;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-object v0
.end method
