.class public final Lcom/android/server/usb/descriptors/UsbDescriptorParser;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mACInterfacesSpec:I

.field public mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

.field public mCurEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

.field public mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

.field public final mDescriptors:Ljava/util/ArrayList;

.field public final mDeviceAddr:Ljava/lang/String;

.field public mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x80

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    const-string/jumbo p1, "UsbDescriptorParser"

    new-instance v0, Lcom/android/server/usb/descriptors/ByteStream;

    invoke-direct {v0, p2}, Lcom/android/server/usb/descriptors/ByteStream;-><init>([B)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result p2

    if-lez p2, :cond_3

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->allocDescriptor(Lcom/android/server/usb/descriptors/ByteStream;)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v1, "Exception allocating USB descriptor."

    invoke-static {p1, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {p2, v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    invoke-virtual {p2, v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->postParse(Lcom/android/server/usb/descriptors/ByteStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception v1

    :try_start_2
    invoke-virtual {p2, v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->postParse(Lcom/android/server/usb/descriptors/ByteStream;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception parsing USB descriptors. type:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p2, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v3, " @ "

    const-string v4, "  class:"

    if-lez v2, :cond_1

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v5

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    array-length v2, v1

    const/4 v5, 0x1

    if-le v2, v5, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x4

    iput v1, p2, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :goto_3
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    throw p1

    :cond_3
    return-void
.end method

.method public static doesInterfaceContainEndpoint(Ljava/util/ArrayList;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move v5, v0

    :goto_1
    iget-byte v6, v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mNumEndpoints:B

    if-ge v5, v6, :cond_1

    invoke-virtual {v4, v5}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-gtz v2, :cond_4

    if-lez v3, :cond_3

    goto :goto_3

    :cond_3
    return v0

    :cond_4
    :goto_3
    const/4 p0, 0x1

    return p0
.end method

.method private native getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private native getRawDescriptors_native(Ljava/lang/String;)[B
.end method


# virtual methods
.method public final allocDescriptor(Lcom/android/server/usb/descriptors/ByteStream;)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .locals 11

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v3

    const/4 v1, 0x1

    if-eq v3, v1, :cond_26

    const-string/jumbo v4, "UsbDescriptorParser"

    const/4 v5, 0x2

    if-eq v3, v5, :cond_24

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eq v3, v6, :cond_22

    const/4 v8, 0x5

    if-eq v3, v8, :cond_20

    const/16 v6, 0xb

    if-eq v3, v6, :cond_1f

    const/16 v6, 0x21

    if-eq v3, v6, :cond_1e

    const/16 v6, 0x24

    const/16 v8, 0x10

    const/16 v9, 0xe

    const/4 v10, 0x0

    if-eq v3, v6, :cond_9

    const/16 v6, 0x25

    if-eq v3, v6, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v6, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v6, :cond_27

    iget v6, v6, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbClass:I

    if-eq v6, v1, :cond_2

    if-eq v6, v9, :cond_1

    if-eq v6, v8, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "  Unparsed Class-specific Endpoint:0x"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, p1, v4}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_8

    if-eq p1, v5, :cond_8

    if-eq p1, v7, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unknown Video Class Endpoint id:0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "UsbVCEndpoint"

    invoke-static {p1, v0, v1}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result p1

    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    iget v4, v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    if-eq v4, v1, :cond_7

    if-eq v4, v5, :cond_6

    const-string/jumbo v6, "UsbACEndpoint"

    if-eq v4, v7, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unknown Audio Class Endpoint id:0x"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, p1, v6}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eq p1, v1, :cond_5

    if-eq p1, v5, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unknown Midi Endpoint id:0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v6}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v10, Lcom/android/server/usb/descriptors/UsbACMidi20Endpoint;

    invoke-direct {v10, v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    new-array p1, v0, [B

    iput-object p1, v10, Lcom/android/server/usb/descriptors/UsbACMidi20Endpoint;->mBlockIds:[B

    goto :goto_0

    :cond_5
    new-instance v10, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;

    invoke-direct {v10, v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    new-array p1, v0, [B

    iput-object p1, v10, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;->mJackIds:[B

    goto :goto_0

    :cond_6
    new-instance v10, Lcom/android/server/usb/descriptors/UsbACAudioStreamEndpoint;

    invoke-direct {v10, v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    goto :goto_0

    :cond_7
    new-instance v10, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;

    invoke-direct {v10, v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    :cond_8
    :goto_0
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    if-eqz p0, :cond_27

    if-eqz v10, :cond_27

    iput-object v10, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mClassSpecificEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbACEndpoint;

    goto/16 :goto_3

    :cond_9
    iget-object v6, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v6, :cond_27

    iget v6, v6, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbClass:I

    if-eq v6, v1, :cond_b

    if-eq v6, v9, :cond_a

    if-eq v6, v8, :cond_27

    const-string p0, "  Unparsed Class-specific"

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_a
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unknown Video Class Interface subtype: 0x"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "UsbVCInterface"

    invoke-static {p0, p1, v0}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_0
    new-instance v10, Lcom/android/server/usb/descriptors/UsbVCProcessingUnit;

    invoke-direct {v10, v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    goto/16 :goto_3

    :pswitch_1
    new-instance v10, Lcom/android/server/usb/descriptors/UsbVCSelectorUnit;

    invoke-direct {v10, v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    goto/16 :goto_3

    :pswitch_2
    new-instance v10, Lcom/android/server/usb/descriptors/UsbVCOutputTerminal;

    invoke-direct {v10, v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    goto/16 :goto_3

    :pswitch_3
    new-instance v10, Lcom/android/server/usb/descriptors/UsbVCInputTerminal;

    invoke-direct {v10, v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result p0

    new-instance v10, Lcom/android/server/usb/descriptors/UsbVCHeader;

    invoke-direct {v10, v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    iput p0, v10, Lcom/android/server/usb/descriptors/UsbVCHeader;->mVDCRelease:I

    goto/16 :goto_3

    :cond_b
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v4

    iget-object v6, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    iget v6, v6, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    const/16 v8, 0x200

    const-string/jumbo v9, "UsbACInterface"

    if-eq v6, v1, :cond_19

    if-eq v6, v5, :cond_10

    if-eq v6, v7, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unknown Audio Class Interface Subclass: 0x"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, p1, v9}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    if-eq v4, v1, :cond_f

    if-eq v4, v5, :cond_e

    if-eq v4, v7, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unknown MIDI Streaming Interface subtype:0x"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, p1, v9}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    new-instance v10, Lcom/android/server/usb/descriptors/UsbMSMidiOutputJack;

    invoke-direct {v10, v2, v3, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    goto/16 :goto_2

    :cond_e
    new-instance v10, Lcom/android/server/usb/descriptors/UsbMSMidiInputJack;

    invoke-direct {v10, v2, v3, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    goto/16 :goto_2

    :cond_f
    new-instance v10, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    invoke-direct {v10, v2, v3, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    goto/16 :goto_2

    :cond_10
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    if-eq v4, v1, :cond_17

    if-eq v4, v5, :cond_11

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unknown Audio Streaming Interface subtype:0x"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, p1, v9}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    move v0, v5

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v5

    iget p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    if-eq v5, v1, :cond_15

    if-eq v5, v0, :cond_13

    if-eq v5, v7, :cond_12

    new-instance v1, Lcom/android/server/usb/descriptors/UsbASFormat;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/descriptors/UsbASFormat;-><init>(IBBBI)V

    :goto_1
    move-object v10, v1

    goto/16 :goto_2

    :cond_12
    new-instance v1, Lcom/android/server/usb/descriptors/Usb20ASFormatIII;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/descriptors/UsbASFormat;-><init>(IBBBI)V

    goto :goto_1

    :cond_13
    if-ne p1, v8, :cond_14

    new-instance v1, Lcom/android/server/usb/descriptors/Usb20ASFormatII;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/descriptors/UsbASFormat;-><init>(IBBBI)V

    goto :goto_1

    :cond_14
    new-instance v1, Lcom/android/server/usb/descriptors/Usb10ASFormatII;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/descriptors/UsbASFormat;-><init>(IBBBI)V

    goto :goto_1

    :cond_15
    if-ne p1, v8, :cond_16

    new-instance v1, Lcom/android/server/usb/descriptors/Usb20ASFormatI;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/descriptors/UsbASFormat;-><init>(IBBBI)V

    goto :goto_1

    :cond_16
    new-instance v1, Lcom/android/server/usb/descriptors/Usb10ASFormatI;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/descriptors/UsbASFormat;-><init>(IBBBI)V

    goto :goto_1

    :cond_17
    if-ne v0, v8, :cond_18

    new-instance v10, Lcom/android/server/usb/descriptors/Usb20ASGeneral;

    invoke-direct {v10, v2, v3, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    goto/16 :goto_2

    :cond_18
    new-instance v10, Lcom/android/server/usb/descriptors/Usb10ASGeneral;

    invoke-direct {v10, v2, v3, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    goto/16 :goto_2

    :cond_19
    packed-switch v4, :pswitch_data_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unknown Audio Class Interface subtype:0x"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/usb/descriptors/UsbACInterfaceUnparsed;

    invoke-direct {v10, v2, v3, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    goto :goto_2

    :pswitch_5
    new-instance v10, Lcom/android/server/usb/descriptors/UsbACFeatureUnit;

    invoke-direct {v10, v2, v3, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    goto :goto_2

    :pswitch_6
    new-instance v10, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;

    invoke-direct {v10, v2, v3, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    goto :goto_2

    :pswitch_7
    iget p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    if-ne p1, v8, :cond_1a

    new-instance v10, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;

    invoke-direct {v10, v2, v3, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    goto :goto_2

    :cond_1a
    new-instance v10, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;

    invoke-direct {v10, v2, v3, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    goto :goto_2

    :pswitch_8
    iget p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    if-ne p1, v8, :cond_1b

    new-instance v10, Lcom/android/server/usb/descriptors/Usb20ACOutputTerminal;

    invoke-direct {v10, v2, v3, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    goto :goto_2

    :cond_1b
    new-instance v10, Lcom/android/server/usb/descriptors/Usb10ACOutputTerminal;

    invoke-direct {v10, v2, v3, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    goto :goto_2

    :pswitch_9
    iget p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    if-ne p1, v8, :cond_1c

    new-instance v10, Lcom/android/server/usb/descriptors/Usb20ACInputTerminal;

    invoke-direct {v10, v2, v3, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    goto :goto_2

    :cond_1c
    new-instance v10, Lcom/android/server/usb/descriptors/Usb10ACInputTerminal;

    invoke-direct {v10, v2, v3, v4, v6}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    goto :goto_2

    :pswitch_a
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result p1

    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    if-ne p1, v8, :cond_1d

    new-instance v1, Lcom/android/server/usb/descriptors/Usb20ACHeader;

    move v5, v6

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/descriptors/UsbACHeaderInterface;-><init>(IBBII)V

    goto/16 :goto_1

    :cond_1d
    new-instance v1, Lcom/android/server/usb/descriptors/Usb10ACHeader;

    move v5, v6

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/descriptors/UsbACHeaderInterface;-><init>(IBBII)V

    iput-byte v0, v1, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mNumInterfaces:B

    iput-object v10, v1, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mInterfaceNums:[B

    goto/16 :goto_1

    :goto_2
    instance-of p1, v10, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    if-eqz p1, :cond_27

    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move-object p1, v10

    check-cast p1, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mMidiHeaderInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    goto/16 :goto_3

    :cond_1e
    new-instance v10, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;

    invoke-direct {v10, v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    iput v7, v10, Lcom/android/server/usb/descriptors/UsbDescriptor;->mHierarchyLevel:I

    goto/16 :goto_3

    :cond_1f
    new-instance v10, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;

    invoke-direct {v10, v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    goto/16 :goto_3

    :cond_20
    new-instance v10, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    invoke-direct {v10, v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    iput v6, v10, Lcom/android/server/usb/descriptors/UsbDescriptor;->mHierarchyLevel:I

    iput-object v10, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    iget-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz p1, :cond_21

    iget-object p0, p1, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_21
    const-string p1, "Endpoint Descriptor found with no associated Interface Descriptor!"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    throw v0

    :cond_22
    new-instance v10, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-direct {v10, v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v10, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mEndpointDescriptors:Ljava/util/ArrayList;

    iput v7, v10, Lcom/android/server/usb/descriptors/UsbDescriptor;->mHierarchyLevel:I

    iput-object v10, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    iget-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    if-eqz p1, :cond_23

    iget-object p0, p1, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mInterfaceDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_23
    const-string p1, "Interface Descriptor found with no associated Config Descriptor!"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    throw v0

    :cond_24
    move v0, v5

    new-instance v10, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    invoke-direct {v10, v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v10, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mInterfaceDescriptors:Ljava/util/ArrayList;

    iput v0, v10, Lcom/android/server/usb/descriptors/UsbDescriptor;->mHierarchyLevel:I

    iput-object v10, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    iget-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-eqz p1, :cond_25

    iget-object p0, p1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_25
    const-string p1, "Config Descriptor found with no associated Device Descriptor!"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v10, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    invoke-direct {v10, v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v10, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    iput v1, v10, Lcom/android/server/usb/descriptors/UsbDescriptor;->mHierarchyLevel:I

    iput-object v10, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    :cond_27
    :goto_3
    :pswitch_b
    if-nez v10, :cond_28

    new-instance p0, Lcom/android/server/usb/descriptors/UsbUnknown;

    invoke-direct {p0, v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(BI)V

    return-object p0

    :cond_28
    return-object v10

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final calculateNumLegacyMidiPorts(Z)I
    .locals 9

    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const-string/jumbo v3, "UsbDescriptorParser"

    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lcom/android/server/usb/descriptors/UsbDescriptor;

    iget-byte v5, v4, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    instance-of v5, v4, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unrecognized Config l: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v4, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " t:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v4, v4, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    invoke-static {v4, v5, v3}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_3

    const-string p0, "Config not found"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v4, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mInterfaceDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :cond_4
    :goto_2
    const/4 v4, 0x1

    if-ge v3, v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    iget v6, v5, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbClass:I

    if-ne v6, v4, :cond_4

    iget v4, v5, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    iget-object v4, v5, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mMidiHeaderInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    if-eqz v4, :cond_4

    iget v4, v4, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;->mMidiStreamingClass:I

    const/16 v6, 0x100

    if-ne v4, v6, :cond_4

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    move v3, v2

    :cond_6
    if-ge v3, v0, :cond_9

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move v6, v1

    :goto_3
    iget-byte v7, v5, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mNumEndpoints:B

    if-ge v6, v7, :cond_6

    invoke-virtual {v5, v6}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    move-result v8

    if-nez v8, :cond_7

    move v8, v4

    goto :goto_4

    :cond_7
    move v8, v1

    :goto_4
    if-ne v8, p1, :cond_8

    iget-object v7, v7, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mClassSpecificEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbACEndpoint;

    if-eqz v7, :cond_8

    instance-of v8, v7, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;

    if-eqz v8, :cond_8

    check-cast v7, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;

    iget-byte v7, v7, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;->mNumJacks:B

    add-int/2addr v2, v7

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    return v2
.end method

.method public final findMidiInterfaceDescriptors(I)Ljava/util/ArrayList;
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    iget v4, v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    iget-object v4, v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mMidiHeaderInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    if-eqz v4, :cond_0

    iget v4, v4, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;->mMidiStreamingClass:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Undefined Audio Class Interface l: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " t:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, v3, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    const-string/jumbo v5, "UsbDescriptorParser"

    invoke-static {v3, v4, v5}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getACInterfaceDescriptors(B)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    iget-byte v4, v3, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    const/16 v5, 0x24

    if-ne v4, v5, :cond_0

    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbACInterface;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/android/server/usb/descriptors/UsbACInterface;

    iget-byte v5, v4, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubtype:B

    if-ne v5, p1, :cond_0

    iget v4, v4, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubclass:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unrecognized Audio Interface len: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " type:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, v3, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    const-string/jumbo v5, "UsbDescriptorParser"

    invoke-static {v3, v4, v5}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getDescriptorString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    iget-byte v4, v3, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    iget v4, v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbClass:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unrecognized Interface l: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " t:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, v3, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    const-string/jumbo v5, "UsbDescriptorParser"

    invoke-static {v3, v4, v5}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getRawDescriptors()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getRawDescriptors_native(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public final hasAudioTerminal(I)Z
    .locals 6

    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    iget v4, v3, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubclass:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-byte v4, v3, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubtype:B

    if-ne v4, p1, :cond_0

    iget v3, v3, Lcom/android/server/usb/descriptors/UsbACTerminal;->mTerminalType:I

    const/16 v4, 0x101

    if-ne v3, v4, :cond_0

    return v5

    :cond_1
    return v1
.end method

.method public final hasAudioTerminalExcludeType(I)Z
    .locals 6

    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    iget v4, v3, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubclass:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-byte v4, v3, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubtype:B

    if-ne v4, p1, :cond_0

    iget v3, v3, Lcom/android/server/usb/descriptors/UsbACTerminal;->mTerminalType:I

    const/16 v4, 0x101

    if-eq v3, v4, :cond_0

    return v5

    :cond_1
    return v1
.end method

.method public final hasHIDInterface()Z
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final hasMIDIInterface()Z
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/usb/descriptors/UsbDescriptor;

    instance-of v5, v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    iget v4, v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    return v0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Undefined Audio Class Interface l: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v4, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " t:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v4, v4, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    const-string/jumbo v6, "UsbDescriptorParser"

    invoke-static {v4, v5, v6}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final isDock()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(B)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usb/descriptors/UsbACTerminal;

    iget p0, p0, Lcom/android/server/usb/descriptors/UsbACTerminal;->mTerminalType:I

    const/16 v0, 0x602

    if-ne p0, v0, :cond_3

    return v2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Undefined Audio Output terminal l: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    iget v2, v2, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " t:0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usb/descriptors/UsbDescriptor;

    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    const-string/jumbo v2, "UsbDescriptorParser"

    invoke-static {p0, v0, v2}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v1
.end method

.method public final isInputHeadset()Z
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    :cond_0
    const/high16 v16, 0x3f400000    # 0.75f

    goto/16 :goto_4

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v4

    :cond_2
    :goto_0
    const/16 v8, 0x402

    const-string/jumbo v9, "UsbDescriptorParser"

    const-string v10, " t:0x"

    if-ge v7, v6, :cond_5

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v7, v7, 0x1

    check-cast v11, Lcom/android/server/usb/descriptors/UsbDescriptor;

    instance-of v12, v11, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v12, :cond_4

    check-cast v11, Lcom/android/server/usb/descriptors/UsbACTerminal;

    iget v11, v11, Lcom/android/server/usb/descriptors/UsbACTerminal;->mTerminalType:I

    const/16 v12, 0x301

    if-eq v11, v12, :cond_3

    const/16 v12, 0x302

    if-eq v11, v12, :cond_3

    if-ne v11, v8, :cond_2

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Undefined Audio Output terminal l: "

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v11, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v10, v11, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    invoke-static {v10, v8, v9}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v1, v4

    :goto_1
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(B)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v4

    :cond_6
    :goto_2
    if-ge v12, v11, :cond_0

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lcom/android/server/usb/descriptors/UsbDescriptor;

    instance-of v14, v13, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v14, :cond_f

    check-cast v13, Lcom/android/server/usb/descriptors/UsbACTerminal;

    iget v13, v13, Lcom/android/server/usb/descriptors/UsbACTerminal;->mTerminalType:I

    const/16 v14, 0x603

    const/16 v15, 0x400

    const/high16 v16, 0x3f400000    # 0.75f

    const/16 v3, 0x201

    if-eq v13, v3, :cond_7

    if-eq v13, v8, :cond_7

    if-eq v13, v15, :cond_7

    if-ne v13, v14, :cond_6

    :cond_7
    if-eqz v1, :cond_8

    move/from16 v5, v16

    :cond_8
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v1

    const/high16 v7, 0x3e800000    # 0.25f

    if-eqz v1, :cond_9

    add-float/2addr v5, v7

    :cond_9
    invoke-virtual {v0, v6}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v9, v4

    move v10, v9

    :cond_a
    :goto_3
    if-ge v10, v6, :cond_e

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/server/usb/descriptors/UsbDescriptor;

    instance-of v12, v11, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-nez v12, :cond_b

    goto :goto_3

    :cond_b
    move-object v12, v11

    check-cast v12, Lcom/android/server/usb/descriptors/UsbACTerminal;

    iget v12, v12, Lcom/android/server/usb/descriptors/UsbACTerminal;->mTerminalType:I

    if-eq v12, v3, :cond_c

    if-eq v12, v8, :cond_c

    if-eq v12, v15, :cond_c

    if-ne v12, v14, :cond_a

    :cond_c
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    instance-of v12, v11, Lcom/android/server/usb/descriptors/UsbAudioChannelCluster;

    if-nez v12, :cond_d

    goto :goto_3

    :cond_d
    check-cast v11, Lcom/android/server/usb/descriptors/UsbAudioChannelCluster;

    invoke-interface {v11}, Lcom/android/server/usb/descriptors/UsbAudioChannelCluster;->getChannelCount()B

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_3

    :cond_e
    if-le v9, v2, :cond_10

    sub-float/2addr v5, v7

    goto :goto_4

    :cond_f
    const/high16 v16, 0x3f400000    # 0.75f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Undefined Audio Input terminal l: "

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v13, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v13, v13, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    invoke-static {v13, v3, v9}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    :goto_4
    cmpl-float v1, v5, v16

    if-ltz v1, :cond_11

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    move-result v0

    if-eqz v0, :cond_11

    return v2

    :cond_11
    return v4
.end method

.method public final isOutputHeadset()Z
    .locals 13

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(B)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    move v7, v6

    move v8, v7

    move v9, v8

    :cond_1
    :goto_0
    if-ge v9, v5, :cond_6

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/android/server/usb/descriptors/UsbDescriptor;

    instance-of v11, v10, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v11, :cond_5

    check-cast v10, Lcom/android/server/usb/descriptors/UsbACTerminal;

    iget v11, v10, Lcom/android/server/usb/descriptors/UsbACTerminal;->mTerminalType:I

    const/16 v12, 0x301

    if-ne v11, v12, :cond_3

    iget-byte v7, v10, Lcom/android/server/usb/descriptors/UsbACTerminal;->mAssocTerminal:B

    if-eqz v7, :cond_2

    move v7, v1

    move v8, v7

    goto :goto_0

    :cond_2
    move v7, v1

    goto :goto_0

    :cond_3
    const/16 v10, 0x302

    if-eq v11, v10, :cond_4

    const/16 v10, 0x402

    if-ne v11, v10, :cond_1

    :cond_4
    move v6, v1

    goto :goto_0

    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Undefined Audio Output terminal l: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v10, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " t:0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v10, v10, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    const-string/jumbo v12, "UsbDescriptorParser"

    invoke-static {v10, v11, v12}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/high16 v0, 0x3e800000    # 0.25f

    if-eqz v6, :cond_7

    move v4, v2

    goto :goto_3

    :cond_7
    if-eqz v7, :cond_b

    if-eqz v8, :cond_8

    move v4, v2

    goto :goto_1

    :cond_8
    const/high16 v4, 0x3f000000    # 0.5f

    :goto_1
    iget-object v5, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v3

    move v10, v9

    :cond_9
    :goto_2
    if-ge v10, v8, :cond_a

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/server/usb/descriptors/UsbDescriptor;

    instance-of v12, v11, Lcom/android/server/usb/descriptors/UsbAudioChannelCluster;

    if-eqz v12, :cond_9

    check-cast v11, Lcom/android/server/usb/descriptors/UsbAudioChannelCluster;

    invoke-interface {v11}, Lcom/android/server/usb/descriptors/UsbAudioChannelCluster;->getChannelCount()B

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_2

    :cond_a
    const/4 v5, 0x2

    if-le v9, v5, :cond_b

    sub-float/2addr v4, v0

    :cond_b
    :goto_3
    if-nez v6, :cond_c

    if-eqz v7, :cond_d

    :cond_c
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result p0

    if-eqz p0, :cond_d

    add-float/2addr v4, v0

    :cond_d
    :goto_4
    cmpl-float p0, v4, v2

    if-ltz p0, :cond_e

    return v1

    :cond_e
    return v3
.end method

.method public final toAndroidUsbDeviceBuilder()Landroid/hardware/usb/UsbDevice$Builder;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-nez v1, :cond_0

    const-string/jumbo v0, "UsbDescriptorParser"

    const-string/jumbo v1, "toAndroidUsbDevice() ERROR - No Device Descriptor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-byte v2, v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mMfgIndex:B

    iget-object v3, v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    iget-byte v2, v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductIndex:B

    invoke-direct {v0, v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDeviceReleaseString()Ljava/lang/String;

    move-result-object v13

    iget-byte v2, v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSerialIndex:B

    invoke-direct {v0, v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    iget-object v2, v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v14, v2, [Landroid/hardware/usb/UsbConfiguration;

    const-string v4, "  "

    const-string v5, " configs"

    const-string/jumbo v6, "UsbDeviceDescriptor"

    invoke-static {v2, v4, v5, v6}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    iget-object v5, v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mConfigDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    iget-byte v6, v5, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mConfigIndex:B

    invoke-direct {v0, v3, v6}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/hardware/usb/UsbConfiguration;

    iget v8, v5, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mConfigValue:I

    iget v9, v5, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mAttribs:I

    iget v10, v5, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mMaxPower:I

    invoke-direct {v7, v8, v6, v9, v10}, Landroid/hardware/usb/UsbConfiguration;-><init>(ILjava/lang/String;II)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v5, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->mInterfaceDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-virtual {v10, v0}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-array v5, v2, [Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v7, v5}, Landroid/hardware/usb/UsbConfiguration;->setInterfaces([Landroid/os/Parcelable;)V

    aput-object v7, v14, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v4, Landroid/hardware/usb/UsbDevice$Builder;

    iget v6, v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mVendorID:I

    iget v7, v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductID:I

    iget v8, v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevClass:I

    iget v9, v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevSubClass:I

    iget v10, v1, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProtocol:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioTerminalExcludeType(I)Z

    move-result v3

    const/4 v2, 0x2

    if-eqz v3, :cond_3

    invoke-virtual {v0, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioTerminal(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v16, 0x1

    :goto_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioTerminalExcludeType(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioTerminal(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v17, 0x1

    goto :goto_4

    :cond_4
    move/from16 v17, v3

    :goto_4
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v18

    iget-object v1, v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_5
    if-ge v3, v2, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v20

    check-cast v5, Lcom/android/server/usb/descriptors/UsbDescriptor;

    instance-of v5, v5, Lcom/android/server/usb/descriptors/UsbVCOutputTerminal;

    if-eqz v5, :cond_5

    const/16 v19, 0x1

    :goto_5
    const/4 v3, 0x0

    goto :goto_6

    :cond_6
    const/16 v19, 0x0

    goto :goto_5

    :goto_6
    iget-object v1, v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v3

    :goto_7
    if-ge v5, v2, :cond_8

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v20

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    instance-of v3, v3, Lcom/android/server/usb/descriptors/UsbVCInputTerminal;

    if-eqz v3, :cond_7

    const/16 v20, 0x1

    goto :goto_8

    :cond_7
    const/4 v3, 0x0

    goto :goto_7

    :cond_8
    const/16 v20, 0x0

    :goto_8
    iget-object v5, v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    invoke-direct/range {v4 .. v20}, Landroid/hardware/usb/UsbDevice$Builder;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/hardware/usb/UsbConfiguration;Ljava/lang/String;ZZZZZ)V

    return-object v4
.end method
