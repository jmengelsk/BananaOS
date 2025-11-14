.class public final Lcom/android/server/usb/descriptors/report/TextReportCanvas;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mListIndent:I

.field public final mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

.field public final mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    iput-object p2, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static getBCDString(I)Ljava/lang/String;
    .locals 4

    shr-int/lit8 v0, p0, 0x8

    and-int/lit8 v0, v0, 0xf

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    and-int/lit8 p0, p0, 0xf

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHexString(B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHexString(I)Ljava/lang/String;
    .locals 2

    const v0, 0xffff

    and-int/2addr p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final closeList()V
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mListIndent:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mListIndent:I

    return-void
.end method

.method public final closeListItem()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final openList()V
    .locals 1

    iget v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mListIndent:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mListIndent:I

    return-void
.end method

.method public final openListItem()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListIndent()V

    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v0, "- "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final write(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final writeHeader(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListIndent()V

    iget-object v0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    const-string/jumbo p0, "]\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final writeListIndent()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mListIndent:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeListItem(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openListItem()V

    invoke-virtual {p0, p1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeListItem()V

    return-void
.end method

.method public final writeParagraph(Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeListIndent()V

    iget-object p0, p0, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->mStringBuilder:Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
