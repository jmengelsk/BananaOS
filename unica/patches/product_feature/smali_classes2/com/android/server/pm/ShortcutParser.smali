.class public abstract Lcom/android/server/pm/ShortcutParser;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field static final METADATA_KEY:Ljava/lang/String; = "android.app.shortcuts"


# direct methods
.method public static parseShareTargetAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo;
    .registers 4

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/android/internal/R$styleable;->Intent:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x4

    :try_start_d
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    const-string/jumbo p1, "ShortcutService"

    const-string/jumbo v0, "android:targetClass must be provided."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_25

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_25
    move-exception p1

    goto :goto_30

    :cond_27
    :try_start_27
    new-instance v0, Lcom/android/server/pm/ShareTargetInfo;

    invoke-direct {v0, v1, p1, v1}, Lcom/android/server/pm/ShareTargetInfo;-><init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_25

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :goto_30
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static parseShareTargetData(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo$TargetData;
    .registers 12

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_d
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_25

    const-string/jumbo p1, "ShortcutService"

    const-string/jumbo v0, "android:mimeType must be string literal."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_22

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x0

    return-object p0

    :catchall_22
    move-exception v0

    move-object p1, v0

    goto :goto_4f

    :cond_25
    const/4 v0, 0x1

    :try_start_26
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
    :try_end_4b
    .catchall {:try_start_26 .. :try_end_4b} :catchall_22

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :goto_4f
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;
    .registers 38

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

    :try_start_1c
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v7
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_3a

    const/4 v8, 0x3

    const-string/jumbo v9, "ShortcutService"

    const/4 v10, 0x0

    if-eq v7, v8, :cond_3f

    :try_start_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_3a

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v10

    :catchall_3a
    move-exception v0

    move-object/from16 v31, v5

    goto/16 :goto_e6

    :cond_3f
    :try_start_3f
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

    if-eqz v15, :cond_72

    move/from16 p1, v6

    iget-object v6, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v29, v6

    goto :goto_76

    :cond_72
    move/from16 p1, v6

    move-object/from16 v29, v13

    :goto_76
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_3f .. :try_end_8b} :catchall_3a

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v13

    :cond_8f
    if-nez v8, :cond_a4

    :try_start_91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catchall {:try_start_91 .. :try_end_a0} :catchall_3a

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-object v13

    :cond_a4
    if-eqz v7, :cond_a9

    const/16 v1, 0x20

    goto :goto_ab

    :cond_a9
    const/16 v1, 0x40

    :goto_ab
    or-int/lit16 v1, v1, 0x100

    if-eqz v22, :cond_b0

    move v11, v12

    :cond_b0
    or-int v21, v1, v11

    xor-int/lit8 v26, v7, 0x1

    :try_start_b4
    new-instance v0, Landroid/content/pm/ShortcutInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v19
    :try_end_ba
    .catchall {:try_start_b4 .. :try_end_ba} :catchall_3a

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

    :try_start_de
    invoke-direct/range {v0 .. v30}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/app/Person;Landroid/content/LocusId;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_e5

    invoke-virtual/range {v31 .. v31}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_e5
    move-exception v0

    :goto_e6
    invoke-virtual/range {v31 .. v31}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .registers 15

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v1

    const/16 v3, 0xc

    :try_start_8
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {p0, v0, p1, v4, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_91

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    if-eqz v0, :cond_90

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_28

    goto/16 :goto_90

    :cond_28
    move-object v10, p3

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    :try_start_2e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    const/4 v1, 0x0

    move v2, v1

    move-object v9, v4

    :goto_35
    if-ge v2, p3, :cond_7e

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_45

    :cond_41
    move-object v5, p0

    move-object v7, p1

    move v8, p2

    goto :goto_6f

    :cond_45
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_49} :catch_7a

    :try_start_49
    invoke-virtual {p0, v3, p2}, Lcom/android/server/pm/ShortcutService;->injectGetActivityInfoWithMetadataWithUninstalled(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz v3, :cond_5c

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5
    :try_end_55
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_55} :catch_75

    if-eqz v5, :cond_5c

    const/4 v5, 0x1

    goto :goto_5d

    :goto_59
    move-object v5, p0

    move-object v7, p1

    goto :goto_78

    :cond_5c
    move v5, v1

    :goto_5d
    if-eqz v5, :cond_61

    move-object v6, v3

    goto :goto_62

    :cond_61
    move-object v6, v4

    :goto_62
    if-eqz v6, :cond_41

    move-object v5, p0

    move-object v7, p1

    move v8, p2

    :try_start_67
    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/ShortcutParser;->parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v9
    :try_end_6b
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_6b} :catch_6c

    goto :goto_6f

    :catch_6c
    move-exception v0

    :goto_6d
    move-object p0, v0

    goto :goto_7f

    :goto_6f
    add-int/lit8 v2, v2, 0x1

    move-object p0, v5

    move-object p1, v7

    move p2, v8

    goto :goto_35

    :catch_75
    move-exception v0

    move-object p2, v0

    goto :goto_59

    :goto_78
    move-object p0, p2

    goto :goto_7f

    :catch_7a
    move-exception v0

    move-object v5, p0

    move-object v7, p1

    goto :goto_6d

    :cond_7e
    return-object v9

    :goto_7f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception caught while parsing shortcut XML for package="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1, p0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_90
    :goto_90
    return-object v4

    :catchall_91
    move-exception v0

    move-object v5, p0

    move-object p0, v0

    invoke-virtual {v5, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p0
.end method

.method public static parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    :try_start_4
    const-string/jumbo v1, "android.app.shortcuts"

    iget-object v2, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v6, v2, v1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_3f0

    if-nez v8, :cond_19

    if-eqz v8, :cond_18

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_18
    return-object p4

    :cond_19
    :try_start_19
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

    :goto_3a
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7
    :try_end_3e
    .catchall {:try_start_19 .. :try_end_3e} :catchall_3e8

    const/4 v12, 0x1

    if-eq v7, v12, :cond_4b

    const/4 v12, 0x3

    if-ne v7, v12, :cond_55

    :try_start_44
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_51

    if-lez v17, :cond_4b

    goto :goto_55

    :cond_4b
    move-object/from16 v18, v8

    move-object/from16 v19, v13

    goto/16 :goto_e0

    :catchall_51
    move-exception v0

    move-object v7, v8

    goto/16 :goto_3f2

    :cond_55
    :goto_55
    :try_start_55
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_3e8

    const-string/jumbo v0, "shortcut"

    move-object/from16 v18, v8

    const/4 v8, 0x2

    move-object/from16 v19, v13

    const-string/jumbo v13, "ShortcutService"

    move-object/from16 v20, v1

    const/4 v1, 0x3

    if-ne v7, v1, :cond_136

    if-ne v12, v8, :cond_136

    :try_start_6f
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_136

    if-nez v14, :cond_79

    goto/16 :goto_146

    :cond_79
    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b8

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

    goto/16 :goto_12d

    :catchall_a5
    move-exception v0

    :goto_a6
    move-object/from16 v7, v18

    goto/16 :goto_3f2

    :cond_aa
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b8
    if-lt v15, v9, :cond_e5

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
    :try_end_e0
    .catchall {:try_start_6f .. :try_end_e0} :catchall_a5

    :goto_e0
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_3ed

    :cond_e5
    const/4 v0, 0x0

    :try_start_e6
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const v0, 0x1000c000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_f2
    .catchall {:try_start_e6 .. :try_end_f2} :catchall_a5

    :try_start_f2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/Intent;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    invoke-virtual {v14, v0}, Landroid/content/pm/ShortcutInfo;->setIntents([Landroid/content/Intent;)V
    :try_end_101
    .catch Ljava/lang/RuntimeException; {:try_start_f2 .. :try_end_101} :catch_127
    .catchall {:try_start_f2 .. :try_end_101} :catchall_a5

    :try_start_101
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    if-eqz v5, :cond_10a

    invoke-virtual {v14, v5}, Landroid/content/pm/ShortcutInfo;->setCategories(Ljava/util/Set;)V

    const/4 v5, 0x0

    :cond_10a
    if-nez v19, :cond_113

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    goto :goto_115

    :cond_113
    move-object/from16 v13, v19

    :goto_115
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v8, v18

    :goto_122
    move-object/from16 v1, v20

    :goto_124
    const/4 v14, 0x0

    goto/16 :goto_3a

    :catch_127
    const-string/jumbo v0, "Shortcut\'s extras contain un-persistable values. Skipping it."

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12d
    .catchall {:try_start_101 .. :try_end_12d} :catchall_a5

    :goto_12d
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v8, v18

    move-object/from16 v13, v19

    goto :goto_122

    :cond_136
    const-string/jumbo v1, "share-target"

    const/4 v2, 0x3

    if-ne v7, v2, :cond_1a2

    if-ne v12, v8, :cond_1a2

    :try_start_13e
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a2

    if-nez v4, :cond_154

    :goto_146
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v2, p2

    move-object/from16 v8, v18

    move-object/from16 v13, v19

    move-object/from16 v1, v20

    goto/16 :goto_3a

    :cond_154
    if-eqz v5, :cond_193

    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_193

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_163

    goto :goto_193

    :cond_163
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

    :goto_191
    const/4 v1, 0x2

    goto :goto_1a8

    :cond_193
    :goto_193
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v2, p2

    move-object/from16 v8, v18

    move-object/from16 v13, v19

    move-object/from16 v1, v20

    const/4 v4, 0x0

    goto/16 :goto_3a

    :cond_1a2
    move-object/from16 v21, v1

    move-object v8, v4

    move-object/from16 v22, v5

    goto :goto_191

    :goto_1a8
    if-eq v7, v1, :cond_1b3

    :goto_1aa
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v5, v16

    move-object/from16 v1, v20

    goto/16 :goto_3d9

    :cond_1b3
    const/4 v1, 0x1

    if-ne v12, v1, :cond_1c0

    const-string/jumbo v1, "shortcuts"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c0

    goto :goto_1aa

    :cond_1c0
    const/4 v1, 0x2

    if-ne v12, v1, :cond_219

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_219

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v4, p3

    move/from16 v5, v16

    move-object/from16 v1, v20

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/ShortcutParser;->parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;

    move-result-object v6

    if-nez v6, :cond_1dc

    :goto_1d9
    const/4 v7, 0x0

    goto/16 :goto_3d9

    :cond_1dc
    if-eqz v19, :cond_209

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_1e4
    if-ltz v2, :cond_209

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

    if-eqz v4, :cond_204

    const-string v2, "Duplicate shortcut ID detected. Skipping it."

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, v7

    goto :goto_1d9

    :cond_204
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v19, v7

    goto :goto_1e4

    :cond_209
    move-object/from16 v7, v19

    move-object/from16 v2, p2

    move/from16 v16, v5

    move-object v14, v6

    move-object v13, v7

    move-object v4, v8

    move-object/from16 v8, v18

    const/4 v5, 0x0

    move-object/from16 v6, p1

    goto/16 :goto_3a

    :cond_219
    move-object/from16 v0, p0

    move/from16 v5, v16

    move-object/from16 v1, v20

    move-object/from16 v7, v21

    const/4 v2, 0x2

    if-ne v12, v2, :cond_241

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_241

    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutParser;->parseShareTargetAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo;

    move-result-object v4

    if-nez v4, :cond_231

    :goto_230
    goto :goto_1d9

    :cond_231
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_234
    .catchall {:try_start_13e .. :try_end_234} :catchall_a5

    move-object/from16 v6, p1

    move-object/from16 v2, p2

    move/from16 v16, v5

    move-object/from16 v8, v18

    move-object/from16 v13, v19

    const/4 v5, 0x0

    goto/16 :goto_3a

    :cond_241
    const/4 v2, 0x3

    if-ne v12, v2, :cond_2a7

    :try_start_244
    const-string/jumbo v2, "intent"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a7

    if-eqz v14, :cond_255

    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_258

    :cond_255
    move-object/from16 v4, v18

    goto :goto_2a1

    :cond_258
    iget-object v2, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2
    :try_end_25e
    .catchall {:try_start_244 .. :try_end_25e} :catchall_29d

    move-object/from16 v4, v18

    :try_start_260
    invoke-static {v2, v4, v1}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_296

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

    goto/16 :goto_124

    :catchall_292
    move-exception v0

    :goto_293
    move-object v7, v4

    goto/16 :goto_3f2

    :cond_296
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_299
    :goto_299
    move-object/from16 v18, v4

    goto/16 :goto_1d9

    :catchall_29d
    move-exception v0

    move-object/from16 v4, v18

    goto :goto_293

    :goto_2a1
    const-string v2, "Ignoring excessive intent tag."

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a6
    .catchall {:try_start_260 .. :try_end_2a6} :catchall_292

    goto :goto_299

    :cond_2a7
    move-object/from16 v4, v18

    const-string v2, "Empty category found. activity="

    const/4 v7, 0x3

    if-ne v12, v7, :cond_32f

    :try_start_2ae
    const-string/jumbo v7, "categories"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32b

    if-eqz v14, :cond_299

    invoke-virtual {v14}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_2c0

    goto :goto_299

    :cond_2c0
    iget-object v6, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/android/internal/R$styleable;->ShortcutCategories:[I

    invoke-virtual {v6, v1, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6
    :try_end_2cc
    .catchall {:try_start_2ae .. :try_end_2cc} :catchall_326

    const/4 v7, 0x0

    :try_start_2cd
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v12
    :try_end_2d1
    .catchall {:try_start_2cd .. :try_end_2d1} :catchall_31f

    move-object/from16 v18, v4

    const/4 v4, 0x3

    if-ne v12, v4, :cond_2e0

    :try_start_2d6
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_2da
    .catchall {:try_start_2d6 .. :try_end_2da} :catchall_2de

    :try_start_2da
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2dd
    .catchall {:try_start_2da .. :try_end_2dd} :catchall_a5

    goto :goto_2ea

    :catchall_2de
    move-exception v0

    goto :goto_322

    :cond_2e0
    :try_start_2e0
    const-string/jumbo v4, "android:name for shortcut category must be string literal."

    invoke-static {v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e6
    .catchall {:try_start_2e0 .. :try_end_2e6} :catchall_2de

    :try_start_2e6
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, 0x0

    :goto_2ea
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_304

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d9

    :cond_304
    if-nez v22, :cond_30c

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    goto :goto_30e

    :cond_30c
    move-object/from16 v2, v22

    :goto_30e
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_311
    move-object/from16 v6, p1

    move/from16 v16, v5

    move-object v4, v8

    move-object/from16 v8, v18

    move-object/from16 v13, v19

    move-object v5, v2

    move-object/from16 v2, p2

    goto/16 :goto_3a

    :catchall_31f
    move-exception v0

    move-object/from16 v18, v4

    :goto_322
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :catchall_326
    move-exception v0

    move-object/from16 v18, v4

    goto/16 :goto_a6

    :cond_32b
    move-object/from16 v18, v4

    const/4 v4, 0x3

    goto :goto_332

    :cond_32f
    move-object/from16 v18, v4

    move v4, v7

    :goto_332
    if-ne v12, v4, :cond_399

    const-string/jumbo v4, "category"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_396

    if-nez v8, :cond_341

    goto/16 :goto_230

    :cond_341
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v6, Lcom/android/internal/R$styleable;->IntentCategory:[I

    invoke-virtual {v4, v1, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4
    :try_end_34d
    .catchall {:try_start_2e6 .. :try_end_34d} :catchall_a5

    const/4 v7, 0x0

    :try_start_34e
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_363

    const-string/jumbo v6, "android:name must be string literal."

    invoke-static {v13, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35b
    .catchall {:try_start_34e .. :try_end_35b} :catchall_361

    :try_start_35b
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_35e
    .catchall {:try_start_35b .. :try_end_35e} :catchall_a5

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_36b

    :catchall_361
    move-exception v0

    goto :goto_392

    :cond_363
    const/4 v7, 0x0

    :try_start_364
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_368
    .catchall {:try_start_364 .. :try_end_368} :catchall_361

    :try_start_368
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :goto_36b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_384

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d9

    :cond_384
    if-nez v22, :cond_38c

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    goto :goto_38e

    :cond_38c
    move-object/from16 v2, v22

    :goto_38e
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_311

    :goto_392
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_396
    const/4 v2, 0x3

    :goto_397
    const/4 v7, 0x0

    goto :goto_39b

    :cond_399
    move v2, v4

    goto :goto_397

    :goto_39b
    if-ne v12, v2, :cond_3c8

    const-string/jumbo v2, "data"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c8

    if-nez v8, :cond_3a9

    goto :goto_3d9

    :cond_3a9
    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutParser;->parseShareTargetData(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo$TargetData;

    move-result-object v2

    if-nez v2, :cond_3c4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid data tag found. activity="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d9

    :cond_3c4
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d9

    :cond_3c8
    const-string v2, "Invalid tag \'%s\' found at depth %d"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v6, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d9
    .catchall {:try_start_368 .. :try_end_3d9} :catchall_a5

    :goto_3d9
    move-object/from16 v6, p1

    move-object/from16 v2, p2

    move/from16 v16, v5

    move-object v4, v8

    move-object/from16 v8, v18

    move-object/from16 v13, v19

    move-object/from16 v5, v22

    goto/16 :goto_3a

    :catchall_3e8
    move-exception v0

    move-object/from16 v18, v8

    goto/16 :goto_a6

    :goto_3ed
    return-object v19

    :goto_3ee
    const/4 v7, 0x0

    goto :goto_3f2

    :catchall_3f0
    move-exception v0

    goto :goto_3ee

    :goto_3f2
    if-eqz v7, :cond_3f7

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3f7
    throw v0
.end method
