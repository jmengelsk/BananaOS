.class public final Lcom/samsung/android/server/pm/install/SkippingApksExceptions;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAdditionalSkippingApkList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/install/SkippingApksExceptions;->mAdditionalSkippingApkList:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/etc/skipping_apk_exceptions.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string/jumbo v2, "SkippingApksExceptions"

    if-nez v0, :cond_34

    const-string/jumbo p0, "No skipping apk exception file exists."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_34
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    :try_start_38
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_38 .. :try_end_3d} :catch_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_3d} :catch_4a
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3d} :catch_48

    const/4 v1, 0x0

    :try_start_3e
    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/install/SkippingApksExceptions;->parseSkippingApkExceptions(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_4e

    :try_start_44
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_44 .. :try_end_47} :catch_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_47} :catch_4a
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    return-void

    :catch_48
    move-exception p0

    goto :goto_58

    :catch_4a
    move-exception p0

    goto :goto_6a

    :catch_4c
    move-exception p0

    goto :goto_7c

    :catchall_4e
    move-exception p0

    :try_start_4f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_57

    :catchall_53
    move-exception v0

    :try_start_54
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_57
    throw p0
    :try_end_58
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54 .. :try_end_58} :catch_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_54 .. :try_end_58} :catch_4a
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_58} :catch_48

    :goto_58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse allowlist. IOException "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    :goto_6a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse allowlist. FileNotFoundException "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    :goto_7c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse allowlist. XmlPullParserException "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8d
    return-void
.end method


# virtual methods
.method public final parseSkippingApkExceptions(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v1, :cond_92

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_14

    goto/16 :goto_92

    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "deviceCarrierName = "

    const-string/jumbo v4, "SkippingApksExceptions"

    invoke-static {v2, v1, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_92

    if-ne v2, v3, :cond_39

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_92

    :cond_39
    if-eq v2, v3, :cond_2a

    const/4 v5, 0x4

    if-ne v2, v5, :cond_3f

    goto :goto_2a

    :cond_3f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "exception"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_59

    const-string v5, "Invalid element name: "

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :cond_59
    const/4 v2, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_68

    goto :goto_2a

    :cond_68
    const-string/jumbo v6, "product"

    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7d

    iget-object v2, p0, Lcom/samsung/android/server/pm/install/SkippingApksExceptions;->mAdditionalSkippingApkList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_7d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v3, :cond_8a

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8a

    goto :goto_2a

    :cond_8a
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/SkippingApksExceptions;->mAdditionalSkippingApkList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_92
    :goto_92
    return-void
.end method
