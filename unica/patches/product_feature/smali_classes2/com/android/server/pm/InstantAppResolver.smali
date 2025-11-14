.class public abstract Lcom/android/server/pm/InstantAppResolver;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG_INSTANT:Z

.field public static sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    return-void
.end method

.method public static buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p11

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v5

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const/high16 v7, 0x40800000    # 4.0f

    or-int/2addr v5, v7

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v3, :cond_0

    const-string/jumbo v5, "android.intent.extra.INSTANT_APP_TOKEN"

    invoke-virtual {v6, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "android.intent.extra.INSTANT_APP_HOSTNAME"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string/jumbo v5, "android.intent.extra.INSTANT_APP_ACTION"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.INTENT"

    move-object/from16 v7, p1

    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p10, :cond_2

    const-string/jumbo v0, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v6

    :cond_2
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v7

    const-string/jumbo v9, "android.intent.extra.SPLIT_NAME"

    const/4 v10, 0x0

    if-nez p2, :cond_3

    if-eqz v2, :cond_6

    :cond_3
    if-eqz v2, :cond_5

    :try_start_0
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v11, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v8, :cond_4

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    iget-object v2, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->splitName:Ljava/lang/String;

    invoke-virtual {v11, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    invoke-virtual {v11, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    move-object/from16 v11, p2

    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v12

    new-array v2, v8, [Landroid/content/Intent;

    aput-object v11, v2, v10

    filled-new-array/range {p6 .. p6}, [Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v22

    const/16 v18, 0x1

    const/high16 v21, 0x54000000

    const/4 v13, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move/from16 v23, p7

    move-object/from16 v19, v2

    invoke-interface/range {v12 .. v23}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v2

    new-instance v5, Landroid/content/IntentSender;

    invoke-direct {v5, v2}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string/jumbo v2, "android.intent.extra.INSTANT_APP_FAILURE"

    invoke-virtual {v6, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setLaunchToken(Ljava/lang/String;)V

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v11

    new-array v0, v8, [Landroid/content/Intent;

    aput-object v2, v0, v10

    filled-new-array/range {p6 .. p6}, [Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v21

    const/16 v17, 0x0

    const/high16 v20, 0x54000000

    const/4 v12, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v22, p7

    move-object/from16 v18, v0

    invoke-interface/range {v11 .. v22}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    new-instance v2, Landroid/content/IntentSender;

    invoke-direct {v2, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string/jumbo v0, "android.intent.extra.INSTANT_APP_SUCCESS"

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    if-eqz v1, :cond_7

    const-string/jumbo v0, "android.intent.extra.VERIFICATION_BUNDLE"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_7
    const-string/jumbo v0, "android.intent.extra.CALLING_PACKAGE"

    move-object/from16 v13, p3

    invoke-virtual {v6, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v4, :cond_b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    move v2, v10

    :goto_1
    if-ge v2, v1, :cond_a

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    iget-object v7, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v8

    goto :goto_2

    :cond_8
    move v7, v10

    :goto_2
    const-string/jumbo v11, "android.intent.extra.UNKNOWN_INSTANT_APP"

    invoke-virtual {v3, v11, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v7, "android.intent.extra.PACKAGE_NAME"

    iget-object v11, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->splitName:Ljava/lang/String;

    invoke-virtual {v3, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "android.intent.extra.LONG_VERSION_CODE"

    iget-wide v11, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->versionCode:J

    invoke-virtual {v3, v7, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v7, "android.intent.extra.INSTANT_APP_EXTRAS"

    iget-object v11, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v7, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    aput-object v3, v0, v2

    if-nez v2, :cond_9

    invoke-virtual {v6, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-wide v11, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->versionCode:J

    long-to-int v3, v11

    const-string/jumbo v5, "android.intent.extra.VERSION_CODE"

    invoke-virtual {v6, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_a
    const-string/jumbo v1, "android.intent.extra.INSTANT_APP_BUNDLES"

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_b
    const-string/jumbo v0, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v6
.end method

.method public static createFailureIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v1, -0x80000000

    or-int/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, -0x801

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setLaunchToken(Ljava/lang/String;)V

    return-object v0
.end method

.method public static filterInstantAppIntent(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[I)Landroid/content/pm/AuxiliaryResolveInfo;
    .locals 27

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/InstantAppResolver;->parseDigest(Landroid/content/Intent;)Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefix()[I

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestBytes()[[B

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->isWebIntent()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    array-length v4, v3

    if-lez v4, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x800

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v5

    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, v8

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/InstantAppResolveInfo;

    const-string/jumbo v11, "PackageManager"

    if-eqz v4, :cond_3

    invoke-virtual {v10}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v10, "InstantAppResolveInfo with mShouldLetInstallerDecide=true when digest required; ignoring"

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    invoke-virtual {v10}, Landroid/content/pm/InstantAppResolveInfo;->getDigestBytes()[B

    move-result-object v12

    array-length v13, v3

    if-lez v13, :cond_6

    if-nez v4, :cond_4

    array-length v13, v12

    if-lez v13, :cond_6

    :cond_4
    array-length v13, v3

    sub-int/2addr v13, v5

    :goto_3
    if-ltz v13, :cond_2

    aget-object v14, v2, v13

    invoke-static {v14, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    :cond_6
    :goto_4
    invoke-virtual {v10}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    move-result v12

    if-eqz v12, :cond_7

    new-instance v11, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    invoke-virtual {v10}, Landroid/content/pm/InstantAppResolveInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    invoke-direct {v11, v10, v8, v12}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;-><init>(Landroid/content/pm/InstantAppResolveInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    move-object/from16 v14, p1

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move/from16 v26, v4

    move/from16 v23, v5

    move-object/from16 p2, v8

    goto/16 :goto_d

    :cond_7
    if-eqz v0, :cond_9

    invoke-virtual {v10}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    move-object/from16 v14, p1

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move/from16 v26, v4

    move/from16 v23, v5

    move-object/from16 p2, v8

    :cond_8
    :goto_5
    move-object/from16 v10, p2

    goto/16 :goto_d

    :cond_9
    invoke-virtual {v10}, Landroid/content/pm/InstantAppResolveInfo;->getIntentFilters()Ljava/util/List;

    move-result-object v12

    sget-boolean v13, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v12, :cond_a

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_b

    :cond_a
    move-object/from16 v14, p1

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move/from16 v26, v4

    move/from16 v23, v5

    move-object/from16 p2, v8

    goto/16 :goto_c

    :cond_b
    new-instance v15, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;

    move-object/from16 v14, p1

    invoke-direct {v15, v14}, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;)V

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v23, v5

    move/from16 v5, v16

    :goto_6
    if-ltz v5, :cond_12

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/InstantAppIntentFilter;

    move-object/from16 p2, v8

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/InstantAppIntentFilter;->getFilters()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_d

    :cond_c
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move/from16 v26, v4

    goto/16 :goto_b

    :cond_d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    :goto_7
    if-ltz v0, :cond_c

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v0

    move-object/from16 v0, v17

    check-cast v0, Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v17

    if-eqz v17, :cond_e

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_f

    :cond_e
    move-object/from16 v24, v2

    goto :goto_8

    :cond_f
    move-object/from16 v24, v2

    goto :goto_9

    :goto_8
    const-string/jumbo v2, "http"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "https"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string/jumbo v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v25, v3

    move/from16 v26, v4

    goto :goto_a

    :cond_11
    :goto_9
    new-instance v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    move-object/from16 v25, v3

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/InstantAppIntentFilter;->getSplitName()Ljava/lang/String;

    move-result-object v3

    move/from16 v26, v4

    invoke-virtual {v10}, Landroid/content/pm/InstantAppResolveInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v2, v0, v10, v3, v4}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;-><init>(Landroid/content/IntentFilter;Landroid/content/pm/InstantAppResolveInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v15, v2}, Lcom/android/server/IntentResolver;->addFilter(Ljava/lang/Object;)V

    :goto_a
    add-int/lit8 v0, v18, -0x1

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move/from16 v4, v26

    goto :goto_7

    :goto_b
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v8, p2

    move-object/from16 v0, p6

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move/from16 v4, v26

    goto/16 :goto_6

    :cond_12
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move/from16 v26, v4

    move-object/from16 p2, v8

    const-wide/16 v21, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move/from16 v20, p5

    invoke-virtual/range {v15 .. v22}, Lcom/android/server/IntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const-string/jumbo v3, "["

    if-nez v2, :cond_14

    if-eqz v13, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "] Found match(es); "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-object v10, v0

    goto :goto_d

    :cond_14
    if-eqz v13, :cond_8

    const-string/jumbo v0, "] No matches found package: "

    invoke-static {v3, v1, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", versionCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/content/pm/InstantAppResolveInfo;->getVersionCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :goto_c
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_5

    :cond_15
    if-eqz v13, :cond_16

    const-string/jumbo v0, "No app filters; go to phase 2"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_d
    if-eqz v10, :cond_19

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    move/from16 v6, v23

    :cond_17
    if-nez v9, :cond_18

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v0

    goto :goto_e

    :cond_18
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_19
    :goto_e
    move-object/from16 v8, p2

    move-object/from16 v0, p6

    move/from16 v5, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move/from16 v4, v26

    goto/16 :goto_2

    :cond_1a
    move-object/from16 p2, v8

    if-eqz v9, :cond_1b

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Landroid/content/pm/AuxiliaryResolveInfo;

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lcom/android/server/pm/InstantAppResolver;->createFailureIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 p5, p8

    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move-object/from16 p3, v2

    move/from16 p2, v6

    move-object/from16 p4, v9

    invoke-direct/range {p0 .. p5}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Ljava/lang/String;ZLandroid/content/Intent;Ljava/util/List;[I)V

    return-object v0

    :cond_1b
    return-object p2
.end method

.method public static logMetrics(IIJLjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p0}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    new-instance v0, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    const/16 p2, 0x385

    invoke-virtual {p0, p2, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    const/16 p2, 0x387

    invoke-virtual {p0, p2, p4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 p1, 0x386

    invoke-virtual {p0, p1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    sget-object p1, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    sput-object p1, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    :cond_0
    sget-object p1, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public static parseDigest(Landroid/content/Intent;)Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    sget-object p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->UNDEFINED:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    return-object p0
.end method

.method public static sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_1
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
