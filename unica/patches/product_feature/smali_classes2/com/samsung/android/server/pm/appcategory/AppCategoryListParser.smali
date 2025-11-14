.class public abstract Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final SYSTEM_FILE_PATH:Ljava/lang/String;


# instance fields
.field public final mPackageMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/etc/pm_appcategory.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->SYSTEM_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->mPackageMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final parseAppCategoryList(Ljava/lang/String;)V
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->SYSTEM_FILE_PATH:Ljava/lang/String;

    if-eqz v0, :cond_9

    move-object p1, v1

    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "AppCategoryParser"

    if-nez v2, :cond_1c

    const-string/jumbo v2, "No xml file exists."

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    :try_start_20
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_25} :catch_30

    const/4 v0, 0x0

    :try_start_26
    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->parseAppCategoryListElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_32

    :try_start_2c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception v0

    goto :goto_3c

    :catchall_32
    move-exception v0

    :try_start_33
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v2

    :try_start_38
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3b
    throw v0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3c} :catch_30

    :goto_3c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse the AppCategory file. "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->restoreToSystemFile()V

    :cond_56
    return-void
.end method

.method public final parseAppCategoryListElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 19

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    :goto_d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    if-eq v11, v9, :cond_106

    if-ne v11, v8, :cond_1b

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-le v12, v10, :cond_106

    :cond_1b
    if-eq v11, v8, :cond_100

    if-ne v11, v7, :cond_20

    goto :goto_d

    :cond_20
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v12, "category"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_46

    const-string/jumbo v12, "version"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_100

    const-string v12, "Invalid element name: "

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "AppCategoryParser"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_100

    :cond_46
    const/4 v11, 0x0

    const-string/jumbo v12, "name"

    move-object/from16 v13, p1

    invoke-interface {v13, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d7

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_108

    :goto_59
    move v11, v5

    goto/16 :goto_c0

    :sswitch_5c
    const-string v12, "CATEGORY_ACCESSIBILITY"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_65

    goto :goto_59

    :cond_65
    const/16 v11, 0x8

    goto/16 :goto_c0

    :sswitch_69
    const-string v12, "CATEGORY_VIDEO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_72

    goto :goto_59

    :cond_72
    const/4 v11, 0x7

    goto :goto_c0

    :sswitch_74
    const-string v12, "CATEGORY_PRODUCTIVITY"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7d

    goto :goto_59

    :cond_7d
    const/4 v11, 0x6

    goto :goto_c0

    :sswitch_7f
    const-string v12, "CATEGORY_IMAGE"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_88

    goto :goto_59

    :cond_88
    const/4 v11, 0x5

    goto :goto_c0

    :sswitch_8a
    const-string v12, "CATEGORY_AUDIO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_93

    goto :goto_59

    :cond_93
    move v11, v7

    goto :goto_c0

    :sswitch_95
    const-string v12, "CATEGORY_NEWS"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9e

    goto :goto_59

    :cond_9e
    move v11, v8

    goto :goto_c0

    :sswitch_a0
    const-string v12, "CATEGORY_MAPS"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a9

    goto :goto_59

    :cond_a9
    move v11, v4

    goto :goto_c0

    :sswitch_ab
    const-string v12, "CATEGORY_GAME"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b4

    goto :goto_59

    :cond_b4
    move v11, v9

    goto :goto_c0

    :sswitch_b6
    const-string v12, "CATEGORY_SOCIAL"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_bf

    goto :goto_59

    :cond_bf
    move v11, v6

    :goto_c0
    packed-switch v11, :pswitch_data_12e

    goto :goto_d7

    :pswitch_c4  #0x8
    const/16 v11, 0x8

    goto :goto_d8

    :pswitch_c7  #0x7
    move v11, v4

    goto :goto_d8

    :pswitch_c9  #0x6
    const/4 v11, 0x7

    goto :goto_d8

    :pswitch_cb  #0x5
    move v11, v8

    goto :goto_d8

    :pswitch_cd  #0x4
    move v11, v9

    goto :goto_d8

    :pswitch_cf  #0x3
    const/4 v11, 0x5

    goto :goto_d8

    :pswitch_d1  #0x2
    const/4 v11, 0x6

    goto :goto_d8

    :pswitch_d3  #0x1
    move v11, v6

    goto :goto_d8

    :pswitch_d5  #0x0
    move v11, v7

    goto :goto_d8

    :cond_d7
    :goto_d7
    move v11, v5

    :goto_d8
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v15, v6

    :goto_e3
    if-ge v15, v14, :cond_fc

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/2addr v15, v9

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->mPackageMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e3

    :cond_fc
    move-object/from16 v1, p0

    goto/16 :goto_d

    :cond_100
    :goto_100
    move-object/from16 v1, p0

    move-object/from16 v13, p1

    goto/16 :goto_d

    :cond_106
    return-void

    nop

    :sswitch_data_108
    .sparse-switch
        -0x4f8c9e32 -> :sswitch_b6
        -0x3052416d -> :sswitch_ab
        -0x304f86c8 -> :sswitch_a0
        -0x304f028c -> :sswitch_95
        0x25be7d35 -> :sswitch_8a
        0x262b8aba -> :sswitch_7f
        0x26a20273 -> :sswitch_74
        0x26e0f5da -> :sswitch_69
        0x3d16c3ad -> :sswitch_5c
    .end sparse-switch

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_d5  #00000000
        :pswitch_d3  #00000001
        :pswitch_d1  #00000002
        :pswitch_cf  #00000003
        :pswitch_cd  #00000004
        :pswitch_cb  #00000005
        :pswitch_c9  #00000006
        :pswitch_c7  #00000007
        :pswitch_c4  #00000008
    .end packed-switch
.end method

.method public parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .registers 6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_44

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, p0, :cond_44

    :cond_19
    if-eq v1, v2, :cond_9

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1f

    goto :goto_9

    :cond_1f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_44
    return-object v0
.end method

.method public abstract restoreToSystemFile()V
.end method
