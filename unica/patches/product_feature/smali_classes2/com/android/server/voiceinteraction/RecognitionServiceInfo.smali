.class public final Lcom/android/server/voiceinteraction/RecognitionServiceInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mParseError:Ljava/lang/String;

.field public final mSelectableAsDefault:Z

.field public final mServiceInfo:Landroid/content/pm/ServiceInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ServiceInfo;ZLjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iput-boolean p2, p0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mSelectableAsDefault:Z

    iput-object p3, p0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;->mParseError:Ljava/lang/String;

    return-void
.end method

.method public static parseInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Lcom/android/server/voiceinteraction/RecognitionServiceInfo;
    .registers 7

    const-string/jumbo v0, "No android.speech meta-data for "

    const/4 v1, 0x1

    :try_start_4
    const-string/jumbo v2, "android.speech"

    invoke-virtual {p1, p0, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_b} :catch_26
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_b} :catch_26

    if-nez v2, :cond_2b

    :try_start_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;ZLjava/lang/String;)V
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_29

    if-eqz v2, :cond_28

    :try_start_22
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_25
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_25} :catch_26
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_25} :catch_26

    return-object v0

    :catch_26
    move-exception p0

    goto :goto_74

    :cond_28
    return-object v0

    :catchall_29
    move-exception p0

    goto :goto_69

    :cond_2b
    :try_start_2b
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    const/4 v3, 0x0

    :goto_36
    if-eq v3, v1, :cond_40

    const/4 v4, 0x2

    if-eq v3, v4, :cond_40

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    goto :goto_36

    :cond_40
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "recognition-service"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    sget-object v3, Lcom/android/internal/R$styleable;->RecognitionService:[I

    invoke-virtual {p0, v0, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_5a
    .catchall {:try_start_2b .. :try_end_5a} :catchall_29

    :try_start_5a
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5a .. :try_end_5d} :catch_26
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5a .. :try_end_5d} :catch_26

    const-string p0, ""

    goto :goto_82

    :cond_60
    :try_start_60
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v0, "Meta-data does not start with recognition-service tag"

    invoke-direct {p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_29

    :goto_69
    if-eqz v2, :cond_73

    :try_start_6b
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_73

    :catchall_6f
    move-exception v0

    :try_start_70
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_73
    :goto_73
    throw p0
    :try_end_74
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_70 .. :try_end_74} :catch_26
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_74} :catch_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_70 .. :try_end_74} :catch_26

    :goto_74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error parsing recognition service meta-data: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_82
    new-instance v0, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/server/voiceinteraction/RecognitionServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;ZLjava/lang/String;)V

    return-object v0
.end method
