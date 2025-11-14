.class public abstract Lcom/android/server/om/ResourceMapParser;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/om/ResourceMapParser;->DEBUG:Z

    return-void
.end method

.method public static parseResourceEntries(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/ArrayMap;Lcom/android/server/om/ResourceMapParser$ResourceType;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    :goto_a
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_175

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1a

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_175

    :cond_1a
    if-eq v4, v6, :cond_171

    const/4 v7, 0x4

    if-ne v4, v7, :cond_20

    goto :goto_a

    :cond_20
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const-string/jumbo v9, "overlay"

    move-object/from16 v10, p2

    invoke-interface {v10, v8, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "match"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v9, " at  "

    const-string/jumbo v11, "ResourceMapParser"

    if-eqz v4, :cond_14b

    if-eqz v8, :cond_14b

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    :goto_47
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    const-string/jumbo v14, "drawable"

    const-string/jumbo v15, "color"

    const/16 v16, 0x0

    if-eq v13, v5, :cond_5e

    if-ne v13, v6, :cond_62

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v12, :cond_5e

    goto :goto_62

    :cond_5e
    move/from16 v18, v3

    goto/16 :goto_105

    :cond_62
    :goto_62
    if-eq v13, v6, :cond_66

    if-ne v13, v7, :cond_68

    :cond_66
    const/4 v5, 0x1

    goto :goto_47

    :cond_68
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v13, "original"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const-string/jumbo v6, "Unknown element under <match>: "

    if-ne v5, v7, :cond_e1

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a7

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_a7

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_9b

    move/from16 v18, v3

    const/4 v3, 0x1

    if-eq v7, v3, :cond_96

    goto :goto_a1

    :cond_96
    invoke-virtual {v1, v5, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    goto :goto_a1

    :cond_9b
    move/from16 v18, v3

    invoke-virtual {v1, v5, v14, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    :goto_a1
    if-eqz v16, :cond_a9

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a9

    :cond_a7
    move/from16 v18, v3

    :cond_a9
    :goto_a9
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_c0

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c0

    :goto_ba
    move v6, v5

    move/from16 v3, v18

    const/4 v5, 0x1

    const/4 v7, 0x4

    goto :goto_47

    :cond_c0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_ba

    :cond_e1
    move/from16 v18, v3

    const/4 v5, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_ba

    :goto_105
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13a

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v5, v16

    :goto_111
    if-ge v5, v3, :cond_147

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_12f

    const/4 v9, 0x1

    if-eq v7, v9, :cond_125

    goto :goto_111

    :cond_125
    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    invoke-virtual {v7, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_111

    :cond_12f
    const/4 v9, 0x1

    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    invoke-virtual {v7, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_111

    :cond_13a
    sget-boolean v3, Lcom/android/server/om/ResourceMapParser;->DEBUG:Z

    if-eqz v3, :cond_147

    const-string v3, "Empty mapping for "

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_147
    :goto_147
    move/from16 v3, v18

    goto/16 :goto_a

    :cond_14b
    move/from16 v18, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unknown element under <resource-map>: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_147

    :cond_171
    move-object/from16 v10, p2

    goto/16 :goto_a

    :cond_175
    return-void
.end method

.method public static parseResourceMap(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 8

    sget-boolean v0, Lcom/android/server/om/ResourceMapParser;->DEBUG:Z

    const-string/jumbo v1, "ResourceMapParser"

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "parseResourceMap = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 v0, 0x0

    :try_start_1e
    new-instance v2, Landroid/content/APKContents;

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplits()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/APKContents;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/APKContents;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3
    :try_end_36
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_36} :catch_6e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_36} :catch_6e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_36} :catch_6e
    .catchall {:try_start_1e .. :try_end_36} :catchall_6b

    :try_start_36
    invoke-virtual {v2}, Landroid/content/APKContents;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v4, "resource_map"

    const-string/jumbo v5, "xml"

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, v2, v0}, Lcom/android/server/om/ResourceMapParser;->parseResourceMapToFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto :goto_64

    :catchall_5a
    move-exception p0

    goto :goto_7f

    :catch_5c
    move-exception p0

    goto :goto_70

    :cond_5e
    const-string/jumbo p0, "resource_map file not found in res/xml/.. folder"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_64} :catch_5c
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_64} :catch_5c
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_64} :catch_5c
    .catchall {:try_start_36 .. :try_end_64} :catchall_5a

    :goto_64
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_6b
    move-exception p0

    move-object v3, v0

    goto :goto_7f

    :catch_6e
    move-exception p0

    move-object v3, v0

    :goto_70
    :try_start_70
    const-string v2, "Failed to parse resource_map"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_70 .. :try_end_78} :catchall_5a

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_7f
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method public static parseResourceMapToFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .registers 14

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_e
    :goto_e
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x1

    const-string/jumbo v6, "color"

    const-string/jumbo v7, "drawable"

    if-eq v4, v5, :cond_7a

    const/4 v8, 0x3

    if-ne v4, v8, :cond_24

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v1, :cond_7a

    :cond_24
    if-eq v4, v8, :cond_e

    const/4 v8, 0x4

    if-ne v4, v8, :cond_2a

    goto :goto_e

    :cond_2a
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_31

    goto :goto_e

    :cond_31
    if-eqz v3, :cond_67

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_47

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    sget-object v4, Lcom/android/server/om/ResourceMapParser$ResourceType;->DRAWABLE:Lcom/android/server/om/ResourceMapParser$ResourceType;

    invoke-static {p0, p2, p3, v0, v4}, Lcom/android/server/om/ResourceMapParser;->parseResourceEntries(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/ArrayMap;Lcom/android/server/om/ResourceMapParser$ResourceType;)V

    goto :goto_e

    :cond_4d
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_61

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    sget-object v4, Lcom/android/server/om/ResourceMapParser$ResourceType;->COLOR:Lcom/android/server/om/ResourceMapParser$ResourceType;

    invoke-static {p0, p2, p3, v0, v4}, Lcom/android/server/om/ResourceMapParser;->parseResourceEntries(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/ArrayMap;Lcom/android/server/om/ResourceMapParser$ResourceType;)V

    goto :goto_e

    :cond_67
    const-string/jumbo v3, "resource-map"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    move v3, v5

    goto :goto_e

    :cond_72
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Invalid resource_map XML"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7a
    const-string/jumbo p2, "create resource map for "

    new-instance p3, Ljava/io/File;

    const-string v1, "/data/overlays/remaps/"

    invoke-direct {p3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v3

    const/16 v4, 0x1e5

    const/4 v5, -0x1

    if-nez v3, :cond_93

    invoke-virtual {p3}, Ljava/io/File;->mkdir()Z

    invoke-static {p3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    :cond_93
    new-instance p3, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    const-string v8, "."

    invoke-virtual {p1, v1, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".map"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p3, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {p1, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    :try_start_bb
    sget-boolean v1, Lcom/android/server/om/ResourceMapParser;->DEBUG:Z

    if-eqz v1, :cond_d5

    const-string/jumbo v1, "ResourceMapParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    :catchall_d2
    move-exception p0

    goto/16 :goto_176

    :cond_d5
    :goto_d5
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;
    :try_end_db
    .catchall {:try_start_bb .. :try_end_db} :catchall_d2

    const-string p2, " "

    if-eqz p0, :cond_123

    :try_start_df
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_123

    const-string v1, "# C\n"

    invoke-virtual {p1, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_123

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_f2

    :cond_123
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_16f

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_16f

    const-string v0, "# D\n"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_13e

    :cond_16f
    invoke-static {p3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I
    :try_end_172
    .catchall {:try_start_df .. :try_end_172} :catchall_d2

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    return-void

    :goto_176
    :try_start_176
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_179
    .catchall {:try_start_176 .. :try_end_179} :catchall_17a

    goto :goto_17e

    :catchall_17a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17e
    throw p0
.end method
