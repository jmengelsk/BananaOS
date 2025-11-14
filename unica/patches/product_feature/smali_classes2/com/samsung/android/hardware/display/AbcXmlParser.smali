.class public final Lcom/samsung/android/hardware/display/AbcXmlParser;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public delegate:Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;

.field public mTypeFileNameMatch:Ljava/util/Map;


# virtual methods
.method public final parse()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "ro.product.vendor.device"

    const-string/jumbo v2, "q"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x71

    if-ne v3, v4, :cond_0

    new-instance v1, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;-><init>(Lcom/samsung/android/hardware/display/AbcXmlParser;I)V

    iput-object v1, p0, Lcom/samsung/android/hardware/display/AbcXmlParser;->delegate:Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x73

    if-ne v1, v3, :cond_1

    new-instance v1, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;-><init>(Lcom/samsung/android/hardware/display/AbcXmlParser;I)V

    iput-object v1, p0, Lcom/samsung/android/hardware/display/AbcXmlParser;->delegate:Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AbcXmlParser;->delegate:Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;

    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;->parseDisplayType(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "AbcXmlParser"

    const-string/jumbo v1, "cannot get property"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
