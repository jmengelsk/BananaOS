.class public final Lcom/android/server/webkit/SystemImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 14

    const-string/jumbo v0, "true"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/webkit/SystemImpl;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x117000a

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_19} :catch_d2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_19} :catch_d2
    .catchall {:try_start_e .. :try_end_19} :catchall_cf

    :try_start_19
    const-string/jumbo v3, "webviewproviders"

    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_21
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5
    :try_end_28
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_28} :catch_9c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_28} :catch_9c
    .catchall {:try_start_19 .. :try_end_28} :catchall_98

    if-nez v5, :cond_47

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    if-eqz v3, :cond_3e

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/webkit/WebViewProviderInfo;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/webkit/WebViewProviderInfo;

    iput-object p1, p0, Lcom/android/server/webkit/SystemImpl;->mWebViewProviderPackages:[Landroid/webkit/WebViewProviderInfo;

    return-void

    :cond_3e
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo p1, "There must be at least one WebView package that is available by default"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    :try_start_47
    const-string/jumbo v6, "webviewprovider"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c5

    const-string/jumbo v5, "packageName"

    invoke-interface {p1, v2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_bc

    const-string/jumbo v5, "description"

    invoke-interface {p1, v2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b3

    const-string/jumbo v5, "availableByDefault"

    invoke-interface {p1, v2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string/jumbo v5, "isFallback"

    invoke-interface {p1, v2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    new-instance v6, Landroid/webkit/WebViewProviderInfo;

    invoke-static {p1}, Lcom/android/server/webkit/SystemImpl;->readSignatures(Landroid/content/res/XmlResourceParser;)[Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v6 .. v11}, Landroid/webkit/WebViewProviderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)V

    iget-boolean v5, v6, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-eqz v5, :cond_a8

    add-int/lit8 v4, v4, 0x1

    iget-boolean v5, v6, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v5, :cond_a0

    const/4 v5, 0x1

    if-gt v4, v5, :cond_8f

    goto :goto_a8

    :cond_8f
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v0, "There can be at most one WebView fallback package."

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_98
    move-exception v0

    move-object p0, v0

    move-object v2, p1

    goto :goto_eb

    :catch_9c
    move-exception v0

    move-object p0, v0

    move-object v2, p1

    goto :goto_d4

    :cond_a0
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Each WebView fallback package must be available by default."

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a8
    :goto_a8
    iget-boolean v5, v6, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v5, :cond_ae

    add-int/lit8 v3, v3, 0x1

    :cond_ae
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21

    :cond_b3
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v0, "WebView provider in framework resources missing description"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_bc
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v0, "WebView provider in framework resources missing package name"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c5
    const-string/jumbo v5, "SystemImpl"

    const-string v6, "Found an element that is not a WebView provider"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_47 .. :try_end_cd} :catch_9c
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_cd} :catch_9c
    .catchall {:try_start_47 .. :try_end_cd} :catchall_98

    goto/16 :goto_21

    :catchall_cf
    move-exception v0

    move-object p0, v0

    goto :goto_eb

    :catch_d2
    move-exception v0

    move-object p0, v0

    :goto_d4
    :try_start_d4
    new-instance p1, Landroid/util/AndroidRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error when parsing WebView config "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_eb
    .catchall {:try_start_d4 .. :try_end_eb} :catchall_cf

    :goto_eb
    if-eqz v2, :cond_f0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_f0
    throw p0
.end method

.method public static readSignatures(Landroid/content/res/XmlResourceParser;)[Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    :goto_9
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "signature"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_24
    const-string/jumbo v2, "SystemImpl"

    const-string v3, "Found an element in a webview provider that is not a signature"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final killPackageDependents(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    const/4 v0, -0x1

    invoke-interface {p0, p1, v0}, Landroid/app/IActivityManager;->killPackageDependents(Ljava/lang/String;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "failed to call killPackageDependents for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "SystemImpl"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final pinWebviewIfRequired(Landroid/content/pm/ApplicationInfo;)V
    .registers 12

    const-class p0, Lcom/android/server/pinner/PinnerService;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/pinner/PinnerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "pinner.pin_webview_size"

    const/4 v1, -0x1

    invoke-static {p0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_17

    goto :goto_19

    :cond_17
    iget p0, v0, Lcom/android/server/pinner/PinnerService;->mConfiguredWebviewPinBytes:I

    :goto_19
    if-gtz p0, :cond_1c

    goto :goto_85

    :cond_1c
    const-string/jumbo v1, "webview"

    invoke-virtual {v0, v1}, Lcom/android/server/pinner/PinnerService;->getAllPinsForGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pinner/PinnedFile;

    iget-object v2, v2, Lcom/android/server/pinner/PinnedFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/pinner/PinnerService;->unpinFile(Ljava/lang/String;)V

    goto :goto_27

    :cond_39
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "PIN_SHARED_LIBS_FIRST"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_59

    array-length v4, v2

    move v5, v3

    :goto_4f
    if-ge v5, v4, :cond_59

    aget-object v6, v2, v5

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    :cond_59
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_63

    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_63
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_67
    if-ge v3, v8, :cond_85

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v9, v3, 0x1

    check-cast v1, Ljava/lang/String;

    if-gtz p0, :cond_74

    goto :goto_85

    :cond_74
    int-to-long v2, p0

    const-string/jumbo v5, "webview"

    const/4 v6, 0x1

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pinner/PinnerService;->pinFile(Ljava/lang/String;JLandroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Lcom/android/server/pinner/PinnedFile;

    move-result-object p0

    iget-wide p0, p0, Lcom/android/server/pinner/PinnedFile;->bytesPinned:J

    sub-long/2addr v2, p0

    long-to-int p0, v2

    move-object p1, v4

    move v3, v9

    goto :goto_67

    :cond_85
    :goto_85
    return-void
.end method
