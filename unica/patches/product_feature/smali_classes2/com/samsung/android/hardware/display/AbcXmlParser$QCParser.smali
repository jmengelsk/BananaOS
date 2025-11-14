.class public final Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/hardware/display/AbcXmlParser;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/AbcXmlParser;I)V
    .registers 3

    iput p2, p0, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;->$r8$classId:I

    packed-switch p2, :pswitch_data_20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;->this$0:Lcom/samsung/android/hardware/display/AbcXmlParser;

    const-string p0, "AbcXmlParser"

    const-string/jumbo p1, "QCParser init"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_13  #0x1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;->this$0:Lcom/samsung/android/hardware/display/AbcXmlParser;

    const-string p0, "AbcXmlParser"

    const-string p1, "LSIParser init"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_13  #00000001
    .end packed-switch
.end method


# virtual methods
.method public final parseDisplayType(Ljava/lang/String;)Z
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v1, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;->$r8$classId:I

    packed-switch v2, :pswitch_data_2ae

    new-instance v2, Ljava/io/File;

    const-string v3, "/vendor/etc/aiqe"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser$1;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser$1;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1f

    array-length v0, v2

    if-nez v0, :cond_23

    :cond_1f
    const/16 p1, 0x0

    goto/16 :goto_184

    :cond_23
    array-length v4, v2

    const/4 v5, 0x1

    move v7, v5

    const/4 v6, 0x0

    :goto_27
    if-ge v6, v4, :cond_182

    aget-object v0, v2, v6

    :try_start_2b
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_30} :catch_155
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_30} :catch_14f

    :try_start_30
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v9

    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    :goto_40
    if-eq v10, v5, :cond_12d

    const/4 v11, 0x2

    if-ne v10, v11, :cond_132

    const-string v10, "AIQE"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_132

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    if-lez v10, :cond_12d

    const/4 v11, 0x0

    :goto_58
    if-ge v11, v10, :cond_12d

    const-string/jumbo v12, "project"

    invoke-interface {v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_123

    invoke-interface {v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_123

    invoke-virtual {v12}, Ljava/lang/String;->isBlank()Z

    move-result v13

    if-nez v13, :cond_123

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_123

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "MAIN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13
    :try_end_84
    .catchall {:try_start_30 .. :try_end_84} :catchall_11d

    const/16 v14, 0xd

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;->this$0:Lcom/samsung/android/hardware/display/AbcXmlParser;

    const/16 p1, 0x0

    const-string v3, "AIQE_LSI_ABC_"

    if-nez v13, :cond_ee

    :try_start_8e
    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_ea

    move/from16 v16, v5

    :try_start_94
    const-string/jumbo v5, "MAIN_VHM"

    invoke-virtual {v13, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9e

    goto :goto_f0

    :cond_9e
    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v13, "SUB"

    invoke-virtual {v5, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_bd

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v12, "SUB_VHM"

    invoke-virtual {v5, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_127

    goto :goto_bd

    :catchall_b9
    move-exception v0

    :goto_ba
    move-object v3, v0

    goto/16 :goto_146

    :cond_bd
    :goto_bd
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

    goto :goto_127

    :catchall_ea
    move-exception v0

    move/from16 v16, v5

    goto :goto_ba

    :cond_ee
    move/from16 v16, v5

    :goto_f0
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

    goto :goto_127

    :catchall_11d
    move-exception v0

    move/from16 v16, v5

    const/16 p1, 0x0

    goto :goto_ba

    :cond_123
    move/from16 v16, v5

    const/16 p1, 0x0

    :cond_127
    :goto_127
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v16

    goto/16 :goto_58

    :cond_12d
    move/from16 v16, v5

    const/16 p1, 0x0

    goto :goto_13e

    :cond_132
    move/from16 v16, v5

    const/16 p1, 0x0

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10
    :try_end_13a
    .catchall {:try_start_94 .. :try_end_13a} :catchall_b9

    move/from16 v5, v16

    goto/16 :goto_40

    :goto_13e
    :try_start_13e
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_141
    .catch Ljava/lang/RuntimeException; {:try_start_13e .. :try_end_141} :catch_144
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_141} :catch_142

    goto :goto_17c

    :catch_142
    move-exception v0

    goto :goto_15b

    :catch_144
    move-exception v0

    goto :goto_179

    :goto_146
    :try_start_146
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_149
    .catchall {:try_start_146 .. :try_end_149} :catchall_14a

    goto :goto_14e

    :catchall_14a
    move-exception v0

    :try_start_14b
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14e
    throw v3
    :try_end_14f
    .catch Ljava/lang/RuntimeException; {:try_start_14b .. :try_end_14f} :catch_144
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_14f} :catch_142

    :catch_14f
    move-exception v0

    move/from16 v16, v5

    const/16 p1, 0x0

    goto :goto_15b

    :catch_155
    move-exception v0

    move/from16 v16, v5

    const/16 p1, 0x0

    goto :goto_179

    :goto_15b
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

    goto :goto_17c

    :goto_179
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_17c
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v16

    goto/16 :goto_27

    :cond_182
    move v3, v7

    goto :goto_186

    :goto_184
    move/from16 v3, p1

    :goto_186
    return v3

    :pswitch_187  #0x0
    new-instance v2, Ljava/io/File;

    const-string v3, "/vendor/etc/aiqe"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser$1;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2ac

    array-length v0, v2

    if-nez v0, :cond_1a0

    goto/16 :goto_2ac

    :cond_1a0
    array-length v4, v2

    const/4 v5, 0x1

    move v6, v3

    move v7, v5

    :goto_1a4
    if-ge v6, v4, :cond_2ab

    aget-object v0, v2, v6

    :try_start_1a8
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1ad
    .catch Ljava/lang/RuntimeException; {:try_start_1a8 .. :try_end_1ad} :catch_27c
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_1ad} :catch_27a

    :try_start_1ad
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v9

    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    :goto_1bd
    if-eq v10, v5, :cond_276

    const/4 v11, 0x2

    if-ne v10, v11, :cond_270

    const-string v10, "AIQE"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_270

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    if-lez v10, :cond_276

    move v11, v3

    :goto_1d5
    if-ge v11, v10, :cond_276

    const-string/jumbo v12, "project"

    invoke-interface {v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_26c

    invoke-interface {v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_26c

    invoke-virtual {v12}, Ljava/lang/String;->isBlank()Z

    move-result v13

    if-nez v13, :cond_26c

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_26c

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "MAIN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13
    :try_end_201
    .catchall {:try_start_1ad .. :try_end_201} :catchall_22e

    iget-object v14, v1, Lcom/samsung/android/hardware/display/AbcXmlParser$QCParser;->this$0:Lcom/samsung/android/hardware/display/AbcXmlParser;

    if-nez v13, :cond_24f

    :try_start_205
    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v15, "MAIN_VHM"

    invoke-virtual {v13, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_213

    goto :goto_24f

    :cond_213
    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v15, "SUB"

    invoke-virtual {v13, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_231

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "SUB_VHM"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_26c

    goto :goto_231

    :catchall_22e
    move-exception v0

    move-object v9, v0

    goto :goto_27e

    :cond_231
    :goto_231
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

    goto :goto_26c

    :cond_24f
    :goto_24f
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

    :cond_26c
    :goto_26c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1d5

    :cond_270
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10
    :try_end_274
    .catchall {:try_start_205 .. :try_end_274} :catchall_22e

    goto/16 :goto_1bd

    :cond_276
    :try_start_276
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_279
    .catch Ljava/lang/RuntimeException; {:try_start_276 .. :try_end_279} :catch_27c
    .catch Ljava/lang/Exception; {:try_start_276 .. :try_end_279} :catch_27a

    goto :goto_2a7

    :catch_27a
    move-exception v0

    goto :goto_287

    :catch_27c
    move-exception v0

    goto :goto_2a4

    :goto_27e
    :try_start_27e
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_281
    .catchall {:try_start_27e .. :try_end_281} :catchall_282

    goto :goto_286

    :catchall_282
    move-exception v0

    :try_start_283
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_286
    throw v9
    :try_end_287
    .catch Ljava/lang/RuntimeException; {:try_start_283 .. :try_end_287} :catch_27c
    .catch Ljava/lang/Exception; {:try_start_283 .. :try_end_287} :catch_27a

    :goto_287
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

    goto :goto_2a7

    :goto_2a4
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_2a7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1a4

    :cond_2ab
    move v3, v7

    :cond_2ac
    :goto_2ac
    return v3

    nop

    :pswitch_data_2ae
    .packed-switch 0x0
        :pswitch_187  #00000000
    .end packed-switch
.end method
