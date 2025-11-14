.class public final Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAttributes:I

.field public mClassSpecificEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbACEndpoint;

.field public mEndpointAddress:I

.field public mInterval:I

.field public mPacketSize:I


# virtual methods
.method public final getDirection()I
    .locals 0

    iget p0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:I

    and-int/lit8 p0, p0, -0x80

    return p0
.end method

.method public final parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mAttributes:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mPacketSize:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mInterval:I

    const/16 v0, 0x9

    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    :cond_0
    return p0
.end method

.method public final report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openList()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Address: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:I

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " [out]"

    goto :goto_0

    :cond_0
    const-string v1, " [in]"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mAttributes:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openListItem()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attributes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "Interrupt"

    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v3, "Bulk"

    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v3, "Iso"

    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v3, "Control"

    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeListItem()V

    if-ne v1, v2, :cond_c

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openListItem()V

    const-string v1, "Aync: "

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    and-int/lit8 v1, v0, 0xc

    if-eqz v1, :cond_7

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    const/16 v2, 0x8

    if-eq v1, v2, :cond_5

    goto :goto_2

    :cond_5
    const-string v1, "ADAPTIVE ASYNC"

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v1, "ASYNC"

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string/jumbo v1, "NONE"

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeListItem()V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openListItem()V

    const-string/jumbo v1, "Useage: "

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    const/16 v1, 0x30

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/16 v2, 0x10

    if-eq v0, v2, :cond_a

    const/16 v2, 0x20

    if-eq v0, v2, :cond_9

    if-eq v0, v1, :cond_8

    goto :goto_3

    :cond_8
    const-string/jumbo v0, "RESERVED"

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string v0, "EXPLICIT FEEDBACK"

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const-string v0, "FEEDBACK"

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    const-string v0, "DATA"

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeListItem()V

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Package Size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mPacketSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Interval: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mInterval:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeList()V

    return-void
.end method
