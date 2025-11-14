.class public final Lcom/android/server/policy/GlobalKeyManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mBeganFromNonInteractive:Z

.field public final mKeyMapping:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mBeganFromNonInteractive:Z

    const-string v1, "GlobalKeyManager"

    :try_start_f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x117000f

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_1a} :catch_a1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_1a} :catch_9f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1a} :catch_9d

    :try_start_1a
    const-string/jumbo v2, "global_keys"

    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v2, "version"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_99

    :cond_2b
    :goto_2b
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_35

    goto :goto_99

    :cond_35
    const-string/jumbo v2, "key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "keyCode"

    invoke-interface {p1, v3, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "component"

    invoke-interface {p1, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "dispatchWhenNonInteractive"

    invoke-interface {p1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_80

    if-nez v2, :cond_58

    goto :goto_80

    :cond_58
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_6b

    iget-object v0, p0, Lcom/android/server/policy/GlobalKeyManager;->mKeyMapping:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;

    invoke-direct {v6, v2, v4}, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2b

    :catchall_69
    move-exception p0

    goto :goto_a3

    :cond_6b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Global keys entry does not map to a valid key code: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    :cond_80
    :goto_80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse global keys entry: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_1a .. :try_end_98} :catchall_69

    goto :goto_2b

    :cond_99
    :goto_99
    :try_start_99
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_9c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_99 .. :try_end_9c} :catch_a1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_99 .. :try_end_9c} :catch_9f
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    return-void

    :catch_9d
    move-exception p0

    goto :goto_ae

    :catch_9f
    move-exception p0

    goto :goto_b4

    :catch_a1
    move-exception p0

    goto :goto_bb

    :goto_a3
    if-eqz p1, :cond_ad

    :try_start_a5
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_a9

    goto :goto_ad

    :catchall_a9
    move-exception p1

    :try_start_aa
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_ad
    :goto_ad
    throw p0
    :try_end_ae
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_aa .. :try_end_ae} :catch_a1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_aa .. :try_end_ae} :catch_9f
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ae} :catch_9d

    :goto_ae
    const-string p1, "I/O exception reading global keys file"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c1

    :goto_b4
    const-string/jumbo p1, "XML parser exception reading global keys file"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c1

    :goto_bb
    const-string/jumbo p1, "global keys file not found"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c1
    return-void
.end method
