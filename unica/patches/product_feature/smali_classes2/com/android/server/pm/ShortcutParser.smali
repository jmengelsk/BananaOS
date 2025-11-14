.class public abstract Lcom/android/server/pm/ShortcutParser;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field static final METADATA_KEY:Ljava/lang/String; = "android.app.shortcuts"


# direct methods
.method public static parseShareTargetAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo;
    .locals 2

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/android/internal/R$styleable;->Intent:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x4

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "ShortcutService"

    const-string/jumbo v0, "android:targetClass must be provided."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/pm/ShareTargetInfo;

    invoke-direct {v0, v1, p1, v1}, Lcom/android/server/pm/ShareTargetInfo;-><init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static parseShareTargetData(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo$TargetData;
    .locals 10

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string/jumbo p1, "ShortcutService"

    const-string/jumbo v0, "android:mimeType must be string literal."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v2, Lcom/android/server/pm/ShareTargetInfo$TargetData;

    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/ShareTargetInfo$TargetData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v4, p3

    const-string/jumbo v1, "android:shortcutShortLabel must be provided. activity="

    const-string/jumbo v2, "android:shortcutId must be provided. activity="

    const-string/jumbo v3, "android:shortcutId must be string literal. activity="

    iget-object v5, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lcom/android/internal/R$styleable;->Shortcut:[I

    move-object/from16 v7, p1

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v6, 0x2

    :try_start_0
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x3

    const-string/jumbo v9, "ShortcutService"

    const/4 v10, 0x0

    if-eq v7, v8, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v10

    :catchall_0
    move-exception v0

    move-object/from16 v31, v5

    goto/16 :goto_2

    :cond_0
    :try_start_2
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    invoke-virtual {v5, v8, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    const/4 v12, 0x4

    move-object v13, v10

    invoke-virtual {v5, v12, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    const/4 v14, 0x5

    invoke-virtual {v5, v14, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    const/4 v15, 0x6

    invoke-virtual {v5, v15, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    if-eqz v15, :cond_1

    move/from16 p1, v6

    iget-object v6, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v29, v6

    goto :goto_0

    :cond_1
    move/from16 p1, v6

    move-object/from16 v29, v13

    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v13

    :cond_2
    if-nez v8, :cond_3

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v13

    :cond_3
    if-eqz v7, :cond_4

    const/16 v1, 0x20

    goto :goto_1

    :cond_4
    const/16 v1, 0x40

    :goto_1
    or-int/lit16 v1, v1, 0x100

    if-eqz v22, :cond_5

    move v11, v12

    :cond_5
    or-int v21, v1, v11

    xor-int/lit8 v26, v7, 0x1

    :try_start_4
    new-instance v0, Landroid/content/pm/ShortcutInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    move-object v1, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v17, p5

    move-object/from16 v31, v1

    move-object v2, v3

    move-object/from16 v3, p2

    move/from16 v1, p4

    :try_start_5
    invoke-direct/range {v0 .. v30}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/app/Person;Landroid/content/LocusId;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual/range {v31 .. v31}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_1
    move-exception v0

    :goto_2
    invoke-virtual/range {v31 .. v31}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .locals 11

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v1

    const/16 v3, 0xc

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {p0, v0, p1, v4, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    move-object v10, p3

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    const/4 v1, 0x0

    move v2, v1

    move-object v9, v4

    :goto_0
    if-ge v2, p3, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_2

    :cond_1
    move-object v5, p0

    move-object v7, p1

    move v8, p2

    goto :goto_5

    :cond_2
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {p0, v3, p2}, Lcom/android/server/pm/ShortcutService;->injectGetActivityInfoWithMetadataWithUninstalled(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :goto_1
    move-object v5, p0

    move-object v7, p1

    goto :goto_6

    :cond_3
    move v5, v1

    :goto_2
    if-eqz v5, :cond_4

    move-object v6, v3

    goto :goto_3

    :cond_4
    move-object v6, v4

    :goto_3
    if-eqz v6, :cond_1

    move-object v5, p0

    move-object v7, p1

    move v8, p2

    :try_start_3
    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/ShortcutParser;->parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    :goto_4
    move-object p0, v0

    goto :goto_7

    :goto_5
    add-int/lit8 v2, v2, 0x1

    move-object p0, v5

    move-object p1, v7

    move p2, v8

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p2, v0

    goto :goto_1

    :goto_6
    move-object p0, p2

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v5, p0

    move-object v7, p1

    goto :goto_4

    :cond_5
    return-object v9

    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception caught while parsing shortcut XML for package="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1, p0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_8
    return-object v4

    :catchall_0
    move-exception v0

    move-object v5, p0

    move-object p0, v0

    invoke-virtual {v5, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p0
.end method

.method public static parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    :try_start_0
    const-string/jumbo v1, "android.app.shortcuts"

    iget-object v2, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v6, v2, v1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    if-nez v8, :cond_1

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object p4

    :cond_1
    :try_start_1
    new-instance v3, Landroid/content/ComponentName;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v2, p2

    invoke-direct {v3, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    iget v9, v0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v13, p4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    const/4 v12, 0x1

    if-eq v7, v12, :cond_2

    const/4 v12, 0x3

    if-ne v7, v12, :cond_3

    :try_start_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v17, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v18, v8

    move-object/from16 v19, v13

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v7, v8

    goto/16 :goto_20

    :cond_3
    :goto_1
    :try_start_3
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    const-string/jumbo v0, "shortcut"

    move-object/from16 v18, v8

    const/4 v8, 0x2

    move-object/from16 v19, v13

    const-string/jumbo v13, "ShortcutService"

    move-object/from16 v20, v1

    const/4 v1, 0x3

    if-ne v7, v1, :cond_a

    if-ne v12, v8, :cond_a

    :try_start_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez v14, :cond_4

    goto/16 :goto_8

    :cond_4
    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Shortcut "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has no intent. Skipping it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    :goto_2
    move-object/from16 v7, v18

    goto/16 :goto_20

    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-lt v15, v9, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "More than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " shortcuts found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Skipping the rest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_1e

    :cond_7
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const v0, 0x1000c000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/Intent;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    invoke-virtual {v14, v0}, Landroid/content/pm/ShortcutInfo;->setIntents([Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    if-eqz v5, :cond_8

    invoke-virtual {v14, v5}, Landroid/content/pm/ShortcutInfo;->setCategories(Ljava/util/Set;)V

    const/4 v5, 0x0

    :cond_8
    if-nez v19, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    goto :goto_4

    :cond_9
    move-object/from16 v13, v19

    :goto_4
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v8, v18

    :goto_5
    move-object/from16 v1, v20

    :goto_6
    const/4 v14, 0x0

    goto/16 :goto_0

    :catch_0
    const-string/jumbo v0, "Shortcut\'s extras contain un-persistable values. Skipping it."

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v8, v18

    move-object/from16 v13, v19

    goto :goto_5

    :cond_a
    const-string/jumbo v1, "share-target"

    const/4 v2, 0x3

    if-ne v7, v2, :cond_e

    if-ne v12, v8, :cond_e

    :try_start_8
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-nez v4, :cond_b

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v2, p2

    move-object/from16 v8, v18

    move-object/from16 v13, v19

    move-object/from16 v1, v20

    goto/16 :goto_0

    :cond_b
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_a

    :cond_c
    new-instance v2, Lcom/android/server/pm/ShareTargetInfo;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Lcom/android/server/pm/ShareTargetInfo$TargetData;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/pm/ShareTargetInfo$TargetData;

    iget-object v4, v4, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    move-object/from16 v21, v1

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v2, v8, v4, v1}, Lcom/android/server/pm/ShareTargetInfo;-><init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v1, p5

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const/4 v8, 0x0

    const/16 v22, 0x0

    :goto_9
    const/4 v1, 0x2

    goto :goto_b

    :cond_d
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v2, p2

    move-object/from16 v8, v18

    move-object/from16 v13, v19

    move-object/from16 v1, v20

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_e
    move-object/from16 v21, v1

    move-object v8, v4

    move-object/from16 v22, v5

    goto :goto_9

    :goto_b
    if-eq v7, v1, :cond_f

    :goto_c
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v5, v16

    move-object/from16 v1, v20

    goto/16 :goto_1d

    :cond_f
    const/4 v1, 0x1

    if-ne v12, v1, :cond_10

    const-string/jumbo v1, "shortcuts"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_c

    :cond_10
    const/4 v1, 0x2

    if-ne v12, v1, :cond_14

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v4, p3

    move/from16 v5, v16

    move-object/from16 v1, v20

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/ShortcutParser;->parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;

    move-result-object v6

    if-nez v6, :cond_11

    :goto_d
    const/4 v7, 0x0

    goto/16 :goto_1d

    :cond_11
    if-eqz v19, :cond_13

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_e
    if-ltz v2, :cond_13

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v7, v19

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v12}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v2, "Duplicate shortcut ID detected. Skipping it."

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, v7

    goto :goto_d

    :cond_12
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v19, v7

    goto :goto_e

    :cond_13
    move-object/from16 v7, v19

    move-object/from16 v2, p2

    move/from16 v16, v5

    move-object v14, v6

    move-object v13, v7

    move-object v4, v8

    move-object/from16 v8, v18

    const/4 v5, 0x0

    move-object/from16 v6, p1

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    move/from16 v5, v16

    move-object/from16 v1, v20

    move-object/from16 v7, v21

    const/4 v2, 0x2

    if-ne v12, v2, :cond_16

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutParser;->parseShareTargetAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo;

    move-result-object v4

    if-nez v4, :cond_15

    :goto_f
    goto :goto_d

    :cond_15
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v6, p1

    move-object/from16 v2, p2

    move/from16 v16, v5

    move-object/from16 v8, v18

    move-object/from16 v13, v19

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_16
    const/4 v2, 0x3

    if-ne v12, v2, :cond_1b

    :try_start_9
    const-string/jumbo v2, "intent"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    if-eqz v14, :cond_17

    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_18

    :cond_17
    move-object/from16 v4, v18

    goto :goto_12

    :cond_18
    iget-object v2, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v4, v18

    :try_start_a
    invoke-static {v2, v4, v1}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Shortcut intent action must be provided. activity="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v8

    move-object v8, v4

    move-object v4, v2

    move-object/from16 v6, p1

    move-object/from16 v2, p2

    move/from16 v16, v5

    move-object/from16 v13, v19

    move-object/from16 v5, v22

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    :goto_10
    move-object v7, v4

    goto/16 :goto_20

    :cond_19
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    :goto_11
    move-object/from16 v18, v4

    goto/16 :goto_d

    :catchall_3
    move-exception v0

    move-object/from16 v4, v18

    goto :goto_10

    :goto_12
    const-string v2, "Ignoring excessive intent tag."

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_11

    :cond_1b
    move-object/from16 v4, v18

    const-string v2, "Empty category found. activity="

    const/4 v7, 0x3

    if-ne v12, v7, :cond_21

    :try_start_b
    const-string/jumbo v7, "categories"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    if-eqz v14, :cond_1a

    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_1c

    goto :goto_11

    :cond_1c
    iget-object v6, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/android/internal/R$styleable;->ShortcutCategories:[I

    invoke-virtual {v6, v1, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    const/4 v7, 0x0

    :try_start_c
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-object/from16 v18, v4

    const/4 v4, 0x3

    if-ne v12, v4, :cond_1d

    :try_start_d
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_13

    :catchall_4
    move-exception v0

    goto :goto_16

    :cond_1d
    :try_start_f
    const-string/jumbo v4, "android:name for shortcut category must be string literal."

    invoke-static {v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, 0x0

    :goto_13
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_1e
    if-nez v22, :cond_1f

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    goto :goto_14

    :cond_1f
    move-object/from16 v2, v22

    :goto_14
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_15
    move-object/from16 v6, p1

    move/from16 v16, v5

    move-object v4, v8

    move-object/from16 v8, v18

    move-object/from16 v13, v19

    move-object v5, v2

    move-object/from16 v2, p2

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    move-object/from16 v18, v4

    :goto_16
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :catchall_6
    move-exception v0

    move-object/from16 v18, v4

    goto/16 :goto_2

    :cond_20
    move-object/from16 v18, v4

    const/4 v4, 0x3

    goto :goto_17

    :cond_21
    move-object/from16 v18, v4

    move v4, v7

    :goto_17
    if-ne v12, v4, :cond_27

    const-string/jumbo v4, "category"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    if-nez v8, :cond_22

    goto/16 :goto_f

    :cond_22
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v6, Lcom/android/internal/R$styleable;->IntentCategory:[I

    invoke-virtual {v4, v1, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    const/4 v7, 0x0

    :try_start_11
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_23

    const-string/jumbo v6, "android:name must be string literal."

    invoke-static {v13, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :try_start_12
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_18

    :catchall_7
    move-exception v0

    goto :goto_1a

    :cond_23
    const/4 v7, 0x0

    :try_start_13
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :try_start_14
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :goto_18
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_24
    if-nez v22, :cond_25

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    goto :goto_19

    :cond_25
    move-object/from16 v2, v22

    :goto_19
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :goto_1a
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_26
    const/4 v2, 0x3

    :goto_1b
    const/4 v7, 0x0

    goto :goto_1c

    :cond_27
    move v2, v4

    goto :goto_1b

    :goto_1c
    if-ne v12, v2, :cond_2a

    const-string/jumbo v2, "data"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    if-nez v8, :cond_28

    goto :goto_1d

    :cond_28
    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutParser;->parseShareTargetData(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo$TargetData;

    move-result-object v2

    if-nez v2, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid data tag found. activity="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_29
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_2a
    const-string v2, "Invalid tag \'%s\' found at depth %d"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v6, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :goto_1d
    move-object/from16 v6, p1

    move-object/from16 v2, p2

    move/from16 v16, v5

    move-object v4, v8

    move-object/from16 v8, v18

    move-object/from16 v13, v19

    move-object/from16 v5, v22

    goto/16 :goto_0

    :catchall_8
    move-exception v0

    move-object/from16 v18, v8

    goto/16 :goto_2

    :goto_1e
    return-object v19

    :goto_1f
    const/4 v7, 0x0

    goto :goto_20

    :catchall_9
    move-exception v0

    goto :goto_1f

    :goto_20
    if-eqz v7, :cond_2b

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2b
    throw v0
.end method
