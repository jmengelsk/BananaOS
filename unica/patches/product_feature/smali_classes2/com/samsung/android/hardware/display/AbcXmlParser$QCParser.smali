.class public final Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/hardware/display/AbcXmlParser;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/AbcXmlParser;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;->this$0:Lcom/samsung/android/hardware/display/AbcXmlParser;

    const-string p0, "AbcXmlParser"

    const-string/jumbo p1, "QCParser init"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;->this$0:Lcom/samsung/android/hardware/display/AbcXmlParser;

    const-string p0, "AbcXmlParser"

    const-string p1, "LSIParser init"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final parseDisplayType(Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v1, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/io/File;

    const-string v3, "/vendor/etc/aiqe"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser$1;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser$1;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/16 p1, 0x0

    goto/16 :goto_d

    :cond_1
    array-length v4, v2

    const/4 v5, 0x1

    move v7, v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_9

    aget-object v0, v2, v6

    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v9

    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    :goto_1
    if-eq v10, v5, :cond_7

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    const-string v10, "AIQE"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    if-lez v10, :cond_7

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_7

    const-string/jumbo v12, "project"

    invoke-interface {v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/lang/String;->isBlank()Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "MAIN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v14, 0xd

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;->this$0:Lcom/samsung/android/hardware/display/AbcXmlParser;

    const/16 p1, 0x0

    const-string v3, "AIQE_LSI_ABC_"

    if-nez v13, :cond_4

    :try_start_2
    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v16, v5

    :try_start_3
    const-string/jumbo v5, "MAIN_VHM"

    invoke-virtual {v13, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_5

    :cond_2
    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v13, "SUB"

    invoke-virtual {v5, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v12, "SUB_VHM"

    invoke-virtual {v5, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_3
    move-object v3, v0

    goto/16 :goto_8

    :cond_3
    :goto_4
    iget-object v5, v15, Lcom/samsung/android/hardware/display/AbcXmlParser;->mTypeFileNameMatch:Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x4

    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :catchall_1
    move-exception v0

    move/from16 v16, v5

    goto :goto_3

    :cond_4
    move/from16 v16, v5

    :goto_5
    iget-object v5, v15, Lcom/samsung/android/hardware/display/AbcXmlParser;->mTypeFileNameMatch:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x4

    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :catchall_2
    move-exception v0

    move/from16 v16, v5

    const/16 p1, 0x0

    goto :goto_3

    :cond_5
    move/from16 v16, v5

    const/16 p1, 0x0

    :cond_6
    :goto_6
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v16

    goto/16 :goto_2

    :cond_7
    move/from16 v16, v5

    const/16 p1, 0x0

    goto :goto_7

    :cond_8
    move/from16 v16, v5

    const/16 p1, 0x0

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v5, v16

    goto/16 :goto_1

    :goto_7
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_b

    :goto_8
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    :try_start_6
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v3
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_2
    move-exception v0

    move/from16 v16, v5

    const/16 p1, 0x0

    goto :goto_a

    :catch_3
    move-exception v0

    move/from16 v16, v5

    const/16 p1, 0x0

    goto :goto_b

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "exception "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AbcXmlParser"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v7, p1

    goto :goto_c

    :goto_b
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_c
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v16

    goto/16 :goto_0

    :cond_9
    move v3, v7

    goto :goto_e

    :goto_d
    move/from16 v3, p1

    :goto_e
    return v3

    :pswitch_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/vendor/etc/aiqe"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser$1;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    array-length v0, v2

    if-nez v0, :cond_a

    goto/16 :goto_1a

    :cond_a
    array-length v4, v2

    const/4 v5, 0x1

    move v6, v3

    move v7, v5

    :goto_f
    if-ge v6, v4, :cond_11

    aget-object v0, v2, v6

    :try_start_7
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :try_start_8
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v9

    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    :goto_10
    if-eq v10, v5, :cond_10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_f

    const-string v10, "AIQE"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    if-lez v10, :cond_10

    move v11, v3

    :goto_11
    if-ge v11, v10, :cond_10

    const-string/jumbo v12, "project"

    invoke-interface {v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/lang/String;->isBlank()Z

    move-result v13

    if-nez v13, :cond_e

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_e

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "MAIN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    iget-object v14, v1, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;->this$0:Lcom/samsung/android/hardware/display/AbcXmlParser;

    if-nez v13, :cond_d

    :try_start_9
    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v15, "MAIN_VHM"

    invoke-virtual {v13, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    goto :goto_13

    :cond_b
    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v15, "SUB"

    invoke-virtual {v13, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_c

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "SUB_VHM"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    goto :goto_12

    :catchall_4
    move-exception v0

    move-object v9, v0

    goto :goto_15

    :cond_c
    :goto_12
    iget-object v12, v14, Lcom/samsung/android/hardware/display/AbcXmlParser;->mTypeFileNameMatch:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x4

    invoke-virtual {v14, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_d
    :goto_13
    iget-object v12, v14, Lcom/samsung/android/hardware/display/AbcXmlParser;->mTypeFileNameMatch:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x4

    invoke-virtual {v14, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_14
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_11

    :cond_f
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto/16 :goto_10

    :cond_10
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_19

    :catch_4
    move-exception v0

    goto :goto_17

    :catch_5
    move-exception v0

    goto :goto_18

    :goto_15
    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_16

    :catchall_5
    move-exception v0

    :try_start_c
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16
    throw v9
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    :goto_17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "exception "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "AbcXmlParser"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v3

    goto :goto_19

    :goto_18
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_19
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_f

    :cond_11
    move v3, v7

    :cond_12
    :goto_1a
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
