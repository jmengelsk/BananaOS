.class public final Lcom/android/server/pm/ShortcutPackage;
.super Lcom/android/server/pm/ShortcutPackageItem;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mApiCallCount:I

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mLastKnownForegroundElapsedTime:J

.field public mLastReportedTime:J

.field public mLastResetTime:J

.field public final mPackageUid:I

.field public final mShareTargets:Ljava/util/ArrayList;

.field public final mShortcutRankComparator:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

.field public final mShortcutTypeAndRankComparator:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

.field public final mShortcutTypeRankAndTimeComparator:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

.field public final mShortcuts:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V
    .registers 11

    new-instance v0, Lcom/android/server/pm/ShortcutPackageInfo;

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    const-wide/16 v1, -0x1

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackageInfo;-><init>(JJLjava/util/ArrayList;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ShortcutPackageItem;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeRankAndTimeComparator:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    iget-object p1, p1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static ensureAllShortcutsVisibleToLauncher(Ljava/util/List;)V
    .registers 4

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->isExcludedFromSurfaces(I)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_4

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Shortcut ID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is hidden from launcher and may not be manipulated via APIs"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    return-void
.end method

.method public static ensureNoBitmapIconIfShortcutIsLongLived(Ljava/util/List;)V
    .registers 7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_51

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_31

    :cond_15
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_29

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    if-eq v4, v1, :cond_29

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_29

    goto :goto_31

    :cond_29
    if-nez v3, :cond_34

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v3

    if-nez v3, :cond_34

    :goto_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_34
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid icon type in shortcut "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Bitmaps are not allowed in long-lived shortcuts. Use Resource icons, or Uri-based icons instead."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "ShortcutService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return-void
.end method

.method public static ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V
    .registers 4

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2d

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Manifest shortcut ID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " may not be manipulated via APIs"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    :goto_2d
    return-void
.end method

.method public static incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V
    .registers 4

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static loadFromFile(Lcom/android/server/pm/ShortcutUser;Ljava/io/File;Z)Lcom/android/server/pm/ShortcutPackage;
    .registers 12

    const-string/jumbo v0, "ShortcutService"

    const-string/jumbo v1, "Not found "

    invoke-static {p1}, Lcom/android/server/pm/ShortcutPackageItem;->getResilientFile(Ljava/io/File;)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_b
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_59
    .catchall {:try_start_b .. :try_end_f} :catchall_24

    if-nez v4, :cond_29

    :try_start_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_20} :catch_26
    .catchall {:try_start_11 .. :try_end_20} :catchall_24

    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-object v3

    :catchall_24
    move-exception p0

    goto :goto_7b

    :catch_26
    move-exception v1

    move-object v3, v4

    goto :goto_5a

    :cond_29
    :try_start_29
    invoke-static {v4}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    move-object v5, v3

    :goto_2e
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_55

    const/4 v8, 0x2

    if-eq v6, v8, :cond_39

    goto :goto_2e

    :cond_39
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    if-ne v5, v7, :cond_51

    const-string/jumbo v7, "package"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    invoke-static {p0, v1, p2}, Lcom/android/server/pm/ShortcutPackage;->loadFromXml(Lcom/android/server/pm/ShortcutUser;Lcom/android/modules/utils/TypedXmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v5

    goto :goto_2e

    :cond_51
    invoke-static {v5, v6}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)V

    throw v3
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_55} :catch_26
    .catchall {:try_start_29 .. :try_end_55} :catchall_24

    :cond_55
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-object v5

    :catch_59
    move-exception v1

    :goto_5a
    :try_start_5a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutPackage;->loadFromFile(Lcom/android/server/pm/ShortcutUser;Ljava/io/File;Z)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p0
    :try_end_77
    .catchall {:try_start_5a .. :try_end_77} :catchall_24

    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-object p0

    :goto_7b
    :try_start_7b
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_7f

    goto :goto_83

    :catchall_7f
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_83
    throw p0
.end method

.method public static loadFromXml(Lcom/android/server/pm/ShortcutUser;Lcom/android/modules/utils/TypedXmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;
    .registers 13

    const/4 v0, 0x1

    const-string/jumbo v1, "name"

    sget-object v2, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/ShortcutPackage;

    iget v3, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-direct {v2, p0, v3, v1}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_15
    const-string/jumbo v4, "call-count"

    const-wide/16 v5, 0x0

    invoke-static {p1, v4, v5, v6}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    long-to-int v4, v7

    iput v4, v2, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    const-string/jumbo v4, "last-reset"

    invoke-static {p1, v4, v5, v6}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    :goto_2e
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    if-eq v5, v0, :cond_c3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_41

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v4, :cond_c3

    goto :goto_41

    :catchall_3e
    move-exception p0

    goto/16 :goto_c5

    :cond_41
    :goto_41
    const/4 v6, 0x2

    if-eq v5, v6, :cond_45

    goto :goto_2e

    :cond_45
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    if-ne v5, v8, :cond_be

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x72a5f22b

    if-eq v8, v9, :cond_7b

    const v9, -0x642f3cc1

    if-eq v8, v9, :cond_70

    const v9, -0x146a23ba

    if-eq v8, v9, :cond_65

    goto :goto_86

    :cond_65
    const-string/jumbo v8, "shortcut"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_86

    move v8, v0

    goto :goto_87

    :cond_70
    const-string/jumbo v8, "share-target"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_86

    move v8, v6

    goto :goto_87

    :cond_7b
    const-string/jumbo v8, "package-info"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_86

    const/4 v8, 0x0

    goto :goto_87

    :cond_86
    :goto_86
    const/4 v8, -0x1

    :goto_87
    if-eqz v8, :cond_b7

    if-eq v8, v0, :cond_98

    if-eq v8, v6, :cond_8e

    goto :goto_be

    :cond_8e
    iget-object v5, v2, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/pm/ShareTargetInfo;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/ShareTargetInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_97
    .catchall {:try_start_15 .. :try_end_97} :catchall_3e

    goto :goto_2e

    :cond_98
    :try_start_98
    iget v5, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-static {p1, v1, v5, p2}, Lcom/android/server/pm/ShortcutPackage;->parseShortcut(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a7} :catch_aa
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a7} :catch_a8
    .catchall {:try_start_98 .. :try_end_a7} :catchall_3e

    goto :goto_2e

    :catch_a8
    move-exception v5

    goto :goto_ac

    :catch_aa
    move-exception p0

    goto :goto_b6

    :goto_ac
    :try_start_ac
    const-string/jumbo v6, "ShortcutService"

    const-string v7, "Failed parsing shortcut."

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e

    :goto_b6
    throw p0

    :cond_b7
    iget-object v5, v2, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/pm/ShortcutPackageInfo;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Z)V

    goto/16 :goto_2e

    :cond_be
    :goto_be
    invoke-static {v5, v7}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    goto/16 :goto_2e

    :cond_c3
    monitor-exit v3

    return-object v2

    :goto_c5
    monitor-exit v3
    :try_end_c6
    .catchall {:try_start_ac .. :try_end_c6} :catchall_3e

    throw p0
.end method

.method public static parseShortcut(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;
    .registers 58

    move-object/from16 v1, p0

    const-string/jumbo v2, "categories"

    const-string/jumbo v3, "string-array"

    const-string/jumbo v4, "extras"

    const-string/jumbo v8, "intent"

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string/jumbo v0, "id"

    const/4 v12, 0x0

    invoke-interface {v1, v12, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v0, "activity"

    invoke-interface {v1, v12, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_32

    move-object/from16 v17, v12

    goto :goto_38

    :cond_32
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    move-object/from16 v17, v0

    :goto_38
    const-string/jumbo v0, "title"

    invoke-interface {v1, v12, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v0, "titleid"

    const-wide/16 v13, 0x0

    invoke-static {v1, v0, v13, v14}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    long-to-int v5, v5

    const-string/jumbo v0, "titlename"

    invoke-interface {v1, v12, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v0, "splash-screen-theme-name"

    invoke-interface {v1, v12, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const-string/jumbo v0, "text"

    invoke-interface {v1, v12, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v0, "textid"

    move-object/from16 v20, v10

    invoke-static {v1, v0, v13, v14}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    long-to-int v9, v9

    const-string/jumbo v0, "textname"

    invoke-interface {v1, v12, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v0, "dmessage"

    invoke-interface {v1, v12, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v0, "dmessageid"

    invoke-static {v1, v0, v13, v14}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    long-to-int v7, v6

    const-string/jumbo v0, "dmessagename"

    invoke-interface {v1, v12, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v0, "disabled-reason"

    move-object/from16 v26, v11

    invoke-static {v1, v0, v13, v14}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    long-to-int v11, v10

    invoke-interface {v1, v12, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v6, "Error parsing intent"

    const-string/jumbo v12, "ShortcutService"

    if-nez v10, :cond_a9

    const/4 v10, 0x0

    :try_start_9f
    invoke-static {v0, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_a3
    .catch Ljava/net/URISyntaxException; {:try_start_9f .. :try_end_a3} :catch_a5

    move-object v10, v0

    goto :goto_aa

    :catch_a5
    move-exception v0

    invoke-static {v12, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a9
    const/4 v10, 0x0

    :goto_aa
    const-string/jumbo v0, "rank"

    move/from16 v30, v9

    move-object/from16 v31, v10

    invoke-static {v1, v0, v13, v14}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    long-to-int v9, v9

    const-string/jumbo v0, "timestamp"

    invoke-static {v1, v0, v13, v14}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v32

    const-string/jumbo v0, "flags"

    move/from16 v34, v9

    invoke-static {v1, v0, v13, v14}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    long-to-int v9, v9

    const-string/jumbo v0, "icon-res"

    move/from16 v35, v11

    invoke-static {v1, v0, v13, v14}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    long-to-int v10, v10

    const-string/jumbo v0, "icon-resname"

    const/4 v11, 0x0

    invoke-interface {v1, v11, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v0, "bitmap-path"

    invoke-interface {v1, v11, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string/jumbo v0, "icon-uri"

    invoke-interface {v1, v11, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string/jumbo v0, "locus-id"

    invoke-interface {v1, v11, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v11

    move-object/from16 v41, v31

    const/4 v14, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    :goto_fd
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    move/from16 v45, v5

    const/4 v5, 0x1

    if-eq v0, v5, :cond_111

    const/4 v5, 0x3

    if-ne v0, v5, :cond_10f

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v11, :cond_111

    :cond_10f
    const/4 v5, 0x2

    goto :goto_11f

    :cond_111
    move/from16 v46, v7

    move/from16 v49, v9

    move/from16 v48, v10

    move-object/from16 v7, v20

    move-object/from16 v5, v26

    const/16 v29, 0x0

    goto/16 :goto_32c

    :goto_11f
    if-eq v0, v5, :cond_136

    move/from16 v46, v7

    move-object/from16 v47, v8

    move/from16 v49, v9

    move/from16 v48, v10

    :goto_129
    move/from16 v39, v11

    move-object/from16 v7, v20

    move-object/from16 v5, v26

    :goto_12f
    move/from16 v10, v44

    const/4 v9, 0x3

    const/16 v29, 0x0

    goto/16 :goto_30b

    :cond_136
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v46, v7

    const-string/jumbo v7, "name"

    const/16 v47, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v48

    sparse-switch v48, :sswitch_data_38e

    :goto_14f
    move/from16 v48, v10

    goto/16 :goto_1ad

    :sswitch_153
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_15a

    goto :goto_14f

    :cond_15a
    const/16 v47, 0x6

    goto :goto_14f

    :sswitch_15d
    move/from16 v48, v10

    const-string/jumbo v10, "map"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_169

    goto :goto_1ad

    :cond_169
    const/4 v10, 0x5

    goto :goto_178

    :sswitch_16b
    move/from16 v48, v10

    const-string/jumbo v10, "person"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_177

    goto :goto_1ad

    :cond_177
    const/4 v10, 0x4

    :goto_178
    move/from16 v47, v10

    goto :goto_1ad

    :sswitch_17b
    move/from16 v48, v10

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_184

    goto :goto_1ad

    :cond_184
    const/16 v47, 0x3

    goto :goto_1ad

    :sswitch_187
    move/from16 v48, v10

    const-string/jumbo v10, "intent-extras"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_193

    goto :goto_1ad

    :cond_193
    const/16 v47, 0x2

    goto :goto_1ad

    :sswitch_196
    move/from16 v48, v10

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_19f

    goto :goto_1ad

    :cond_19f
    const/16 v47, 0x1

    goto :goto_1ad

    :sswitch_1a2
    move/from16 v48, v10

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1ab

    goto :goto_1ad

    :cond_1ab
    move/from16 v47, v44

    :goto_1ad
    packed-switch v47, :pswitch_data_3ac

    invoke-static {v0, v5}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)V

    const/4 v5, 0x0

    throw v5

    :cond_1b5
    :pswitch_1b5  #0x6
    move-object/from16 v47, v8

    move/from16 v49, v9

    goto/16 :goto_129

    :pswitch_1bb  #0x5
    const/4 v5, 0x0

    invoke-interface {v1, v5, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "capability"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/internal/util/XmlUtils;->readValueXml(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v43, v0

    check-cast v43, Ljava/util/Map;

    :goto_1d4
    move/from16 v5, v45

    move/from16 v7, v46

    move/from16 v10, v48

    goto/16 :goto_fd

    :pswitch_1dc  #0x4
    sget-object v0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x0

    invoke-interface {v1, v10, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "uri"

    invoke-interface {v1, v10, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v5, "key"

    invoke-interface {v1, v10, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "is-bot"

    move-object/from16 v47, v8

    move/from16 v49, v9

    const-wide/16 v8, 0x0

    invoke-static {v1, v10, v8, v9}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v39

    const-wide/16 v50, 0x1

    cmp-long v10, v39, v50

    if-nez v10, :cond_208

    const/4 v10, 0x1

    :goto_205
    move/from16 v39, v11

    goto :goto_20b

    :cond_208
    move/from16 v10, v44

    goto :goto_205

    :goto_20b
    const-string/jumbo v11, "is-important"

    invoke-static {v1, v11, v8, v9}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v52

    cmp-long v11, v52, v50

    if-nez v11, :cond_218

    const/4 v11, 0x1

    goto :goto_21a

    :cond_218
    move/from16 v11, v44

    :goto_21a
    new-instance v8, Landroid/app/Person$Builder;

    invoke-direct {v8}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v8, v0}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Person$Builder;->setBot(Z)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Person$Builder;->setImportant(Z)Landroid/app/Person$Builder;

    invoke-virtual {v8}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    move-object/from16 v5, v26

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v20

    goto/16 :goto_12f

    :pswitch_23f  #0x3
    move-object/from16 v47, v8

    move/from16 v49, v9

    move/from16 v39, v11

    move-object/from16 v5, v26

    const/4 v10, 0x0

    invoke-interface {v1, v10, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_281

    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    invoke-static {v0, v3, v10}, Lcom/android/internal/util/XmlUtils;->readThisStringArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v7, Landroid/util/ArraySet;

    array-length v8, v0

    invoke-direct {v7, v8}, Landroid/util/ArraySet;-><init>(I)V

    move/from16 v8, v44

    :goto_262
    array-length v9, v0

    if-ge v8, v9, :cond_26f

    aget-object v9, v0, v8

    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v23, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_262

    :cond_26f
    move-object/from16 v26, v5

    move-object/from16 v28, v7

    :goto_273
    move/from16 v11, v39

    move/from16 v5, v45

    move/from16 v7, v46

    move-object/from16 v8, v47

    :goto_27b
    move/from16 v10, v48

    move/from16 v9, v49

    goto/16 :goto_fd

    :cond_281
    move-object/from16 v29, v10

    move-object/from16 v7, v20

    move/from16 v10, v44

    const/4 v9, 0x3

    goto/16 :goto_30b

    :pswitch_28a  #0x2
    move-object/from16 v47, v8

    move/from16 v49, v9

    move/from16 v39, v11

    move-object/from16 v5, v26

    invoke-static {v1}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v14

    goto/16 :goto_1d4

    :pswitch_298  #0x1
    move-object/from16 v47, v8

    move/from16 v49, v9

    move/from16 v39, v11

    move-object/from16 v5, v26

    const-string/jumbo v0, "intent-base"

    const/4 v10, 0x0

    invoke-interface {v1, v10, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2ba

    move/from16 v10, v44

    :try_start_2b0
    invoke-static {v0, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11
    :try_end_2b4
    .catch Ljava/net/URISyntaxException; {:try_start_2b0 .. :try_end_2b4} :catch_2b5

    goto :goto_2bd

    :catch_2b5
    move-exception v0

    invoke-static {v12, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2bc

    :cond_2ba
    move/from16 v10, v44

    :goto_2bc
    const/4 v11, 0x0

    :goto_2bd
    if-nez v11, :cond_2c7

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_2c7
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    :goto_2cb
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x3

    if-eq v7, v8, :cond_304

    if-ne v7, v9, :cond_2db

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v0, :cond_2dd

    :cond_2db
    const/4 v8, 0x2

    goto :goto_2e2

    :cond_2dd
    move-object/from16 v7, v20

    const/16 v29, 0x0

    goto :goto_308

    :goto_2e2
    if-eq v7, v8, :cond_2e5

    goto :goto_2cb

    :cond_2e5
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v7

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2fe

    invoke-static {v1}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    goto :goto_2cb

    :cond_2fe
    invoke-static {v7, v8}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)V

    const/16 v29, 0x0

    throw v29

    :cond_304
    const/16 v29, 0x0

    move-object/from16 v7, v20

    :goto_308
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_30b
    move-object/from16 v26, v5

    move-object/from16 v20, v7

    move/from16 v44, v10

    goto/16 :goto_273

    :pswitch_313  #0x0
    move-object/from16 v47, v8

    move/from16 v49, v9

    move/from16 v39, v11

    move-object/from16 v7, v20

    move-object/from16 v5, v26

    move/from16 v10, v44

    const/4 v9, 0x3

    const/16 v29, 0x0

    invoke-static {v1}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v31

    move/from16 v5, v45

    move/from16 v7, v46

    goto/16 :goto_27b

    :goto_32c
    if-eqz v41, :cond_339

    move-object/from16 v1, v41

    invoke-static {v1, v14}, Landroid/content/pm/ShortcutInfo;->setIntentExtras(Landroid/content/Intent;Landroid/os/PersistableBundle;)Landroid/content/Intent;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_339
    if-nez v35, :cond_342

    and-int/lit8 v0, v49, 0x40

    if-eqz v0, :cond_342

    const/16 v39, 0x1

    goto :goto_344

    :cond_342
    move/from16 v39, v35

    :goto_344
    if-eqz p3, :cond_34b

    move/from16 v1, v49

    or-int/lit16 v9, v1, 0x1000

    goto :goto_34e

    :cond_34b
    move/from16 v1, v49

    move v9, v1

    :goto_34e
    if-nez v13, :cond_353

    move-object/from16 v41, v29

    goto :goto_35a

    :cond_353
    new-instance v12, Landroid/content/LocusId;

    invoke-direct {v12, v13}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    move-object/from16 v41, v12

    :goto_35a
    new-instance v13, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/Intent;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, [Landroid/content/Intent;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/app/Person;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v40, v0

    check-cast v40, [Landroid/app/Person;

    const/16 v18, 0x0

    move-object/from16 v16, p1

    move/from16 v14, p2

    move/from16 v23, v30

    move/from16 v30, v34

    move/from16 v20, v45

    move/from16 v26, v46

    move/from16 v35, v48

    move/from16 v34, v9

    invoke-direct/range {v13 .. v43}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/app/Person;Landroid/content/LocusId;Ljava/lang/String;Ljava/util/Map;)V

    return-object v13

    :sswitch_data_38e
    .sparse-switch
        -0x4cd5119d -> :sswitch_1a2
        -0x468ec964 -> :sswitch_196
        -0x3e3f454c -> :sswitch_187
        -0x3d122a63 -> :sswitch_17b
        -0x3b1c64ab -> :sswitch_16b
        0x1a55c -> :sswitch_15d
        0x4d47461c -> :sswitch_153
    .end sparse-switch

    :pswitch_data_3ac
    .packed-switch 0x0
        :pswitch_313  #00000000
        :pswitch_298  #00000001
        :pswitch_28a  #00000002
        :pswitch_23f  #00000003
        :pswitch_1dc  #00000004
        :pswitch_1bb  #00000005
        :pswitch_1b5  #00000006
    .end packed-switch
.end method


# virtual methods
.method public final addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string/jumbo v1, "add/setDynamicShortcuts() cannot publish disabled shortcuts"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_27

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/ShortcutInfo;->ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;Z)V

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v1

    const v2, 0x60004002

    and-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    :cond_27
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->isExcludedFromSurfaces(I)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    :cond_30
    return-void
.end method

.method public final adjustRanks()V
    .registers 14

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda16;

    invoke-direct {v3, v1, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda16;-><init>(J)V

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1a
    if-ltz v4, :cond_75

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutRankComparator:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    :goto_2d
    if-ge v7, v6, :cond_72

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v10

    if-eqz v10, :cond_3c

    goto :goto_6f

    :cond_3c
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v10

    if-nez v10, :cond_5a

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Non-dynamic shortcut found. "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->toInsecureString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6f

    :cond_5a
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v11

    if-eq v11, v8, :cond_6e

    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda17;

    invoke-direct {v12, v1, v2, v8}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda17;-><init>(JI)V

    invoke-virtual {p0, v11, v9, v12}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    :cond_6e
    move v8, v10

    :goto_6f
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    :cond_72
    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    :cond_75
    return-void
.end method

.method public final deleteAllDynamicShortcuts()Ljava/util/List;
    .registers 10

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    move v6, v5

    :goto_15
    if-ltz v3, :cond_3b

    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-eqz v8, :cond_38

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v8

    if-eqz v8, :cond_38

    invoke-virtual {v7, v0, v1}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    invoke-virtual {v7, v4}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    invoke-virtual {v7, v5}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    move v6, v4

    goto :goto_38

    :catchall_36
    move-exception p0

    goto :goto_45

    :cond_38
    :goto_38
    add-int/lit8 v3, v3, -0x1

    goto :goto_15

    :cond_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_36

    if-eqz v6, :cond_43

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_43
    const/4 p0, 0x0

    return-object p0

    :goto_45
    :try_start_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_36

    throw p0
.end method

.method public final deleteOrDisableWithId(ILjava/lang/String;ZZZ)Landroid/content/pm/ShortcutInfo;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    if-ne p3, v2, :cond_a

    move v0, v1

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "disable and disabledReason disagree: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3a

    if-eqz p5, :cond_3a

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result p5

    if-nez p5, :cond_3a

    goto :goto_5c

    :cond_3a
    if-nez p4, :cond_3f

    invoke-static {v0}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V

    :cond_3f
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result p4

    if-nez p4, :cond_50

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result p4

    if-eqz p4, :cond_4c

    goto :goto_50

    :cond_4c
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)V

    return-object v0

    :cond_50
    :goto_50
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda3;

    invoke-direct {p4, p0, p3, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/ShortcutPackage;ZI)V

    invoke-virtual {p0, p2, v0, p4}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    :cond_5c
    :goto_5c
    return-object v1
.end method

.method public final enforceShortcutCountsBeforeOperation(ILjava/util/List;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda5;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v1, p1, v3}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/lang/Object;II)V

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_18
    if-ltz v2, :cond_60

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x2

    if-nez v5, :cond_30

    if-eq p1, v6, :cond_5d

    const/4 v4, 0x0

    const-string v5, "Activity must not be null at this point"

    invoke-virtual {v0, v5, v4}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5d

    :cond_30
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    if-nez v4, :cond_41

    if-ne p1, v6, :cond_3d

    goto :goto_5d

    :cond_3d
    invoke-static {v1, v5, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    goto :goto_5d

    :cond_41
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v7

    if-eqz v7, :cond_4a

    if-ne p1, v6, :cond_4a

    goto :goto_5d

    :cond_4a
    if-eqz p1, :cond_5a

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v4

    if-nez v4, :cond_5a

    const/4 v4, -0x1

    invoke-static {v1, v6, v4}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    :cond_5a
    invoke-static {v1, v5, v3}, Lcom/android/server/pm/ShortcutPackage;->incrementCountForActivity(Landroid/util/ArrayMap;Landroid/content/ComponentName;I)V

    :cond_5d
    :goto_5d
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    :cond_60
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result p0

    sub-int/2addr p0, v3

    :goto_65
    if-ltz p0, :cond_81

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, v0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    if-gt p1, p2, :cond_78

    add-int/lit8 p0, p0, -0x1

    goto :goto_65

    :cond_78
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Max number of dynamic shortcuts exceeded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_81
    return-void
.end method

.method public final ensureImmutableShortcutsNotIncluded(Ljava/util/List;)V
    .registers 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1c

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public final ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;)V
    .registers 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_18

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_18
    return-void
.end method

.method public final findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_14

    const-string/jumbo p0, "findAll() returned empty results because "

    const-string p1, " isn\'t installed yet"

    const-string/jumbo p2, "ShortcutService"

    invoke-static {p0, v1, p1, p2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    if-nez p4, :cond_1d

    const/4 p5, 0x0

    :goto_1b
    move-object v6, p5

    goto :goto_28

    :cond_1d
    iget v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v0, v2, p5, p4}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(IILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object p5

    invoke-virtual {p5, v2, v1}, Lcom/android/server/pm/ShortcutLauncher;->getPinnedShortcutIds(ILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object p5

    goto :goto_1b

    :goto_28
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;Landroid/util/ArraySet;Z)V

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutInfo;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final forEachShortcut(Ljava/util/function/Consumer;)V
    .registers 4

    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda20;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda20;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutStopWhen(Ljava/util/function/Function;)V

    return-void
.end method

.method public final forEachShortcutMutate(Ljava/util/function/Consumer;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public final forEachShortcutStopWhen(Ljava/util/function/Function;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_28

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_25

    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    goto :goto_2a

    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_23

    throw p0
.end method

.method public final forceDeleteShortcutInner(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    if-eqz p1, :cond_19

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackageItem;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    const p0, 0x60004023

    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    goto :goto_19

    :catchall_17
    move-exception p0

    goto :goto_1b

    :cond_19
    :goto_19
    monitor-exit v0

    return-void

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_17

    throw p0
.end method

.method public final forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcutLocked(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v0, v0, Lcom/android/server/pm/ShortcutService;->mMaxShortcutsPerApp:I

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1a
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v0, :cond_8a

    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeRankAndTimeComparator:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_44
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v0, :cond_8a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v5

    if-nez v5, :cond_65

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)V

    goto :goto_44

    :catchall_63
    move-exception p0

    goto :goto_94

    :cond_65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has published "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " manifest shortcuts across different activities."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_1a .. :try_end_8b} :catchall_63

    new-array v0, v4, [Landroid/content/pm/ShortcutInfo;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut([Landroid/content/pm/ShortcutInfo;)V

    return-void

    :goto_94
    :try_start_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_63

    throw p0
.end method

.method public getAllShareTargetsForTest()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ShareTargetInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getAllShortcutsForTest()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda13;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda13;-><init>(ILjava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final getApiCallCount(Z)I
    .registers 10

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutPackage;->mPackageUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1b

    iget-wide v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    iget-object v2, v0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    cmp-long v1, v4, v1

    if-ltz v1, :cond_1b

    if-eqz p1, :cond_2a

    :cond_1b
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastKnownForegroundElapsedTime:J

    iget p1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    if-lez p1, :cond_2a

    iput v3, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    :cond_2a
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    iget-object p1, v0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x54a48e00

    cmp-long p1, v4, v6

    if-ltz p1, :cond_40

    const/4 p1, 0x1

    goto :goto_41

    :cond_40
    move p1, v3

    :goto_41
    if-eqz p1, :cond_56

    iget-wide v6, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    cmp-long p1, v6, v4

    if-lez p1, :cond_56

    const-string/jumbo p1, "ShortcutService"

    const-string v0, "Clock rewound"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    iput v3, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    return v3

    :cond_56
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    cmp-long p1, v4, v1

    if-gez p1, :cond_60

    iput v3, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    iput-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    :cond_60
    iget p0, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    return p0
.end method

.method public final getMatchingShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Ljava/util/List;
    .registers 14

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_38

    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ShareTargetInfo;

    iget-object v5, v4, Lcom/android/server/pm/ShareTargetInfo;->mTargetData:[Lcom/android/server/pm/ShareTargetInfo$TargetData;

    array-length v6, v5

    move v7, v2

    :goto_1e
    if-ge v7, v6, :cond_35

    aget-object v8, v5, v7

    iget-object v8, v8, Lcom/android/server/pm/ShareTargetInfo$TargetData;->mMimeType:Ljava/lang/String;

    invoke-virtual {p2, v8}, Landroid/content/IntentFilter;->hasDataType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :catchall_2e
    move-exception v0

    move-object p0, v0

    goto/16 :goto_b5

    :cond_32
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_35
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_38
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_45

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v1

    return-object p0

    :cond_45
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;

    const/4 p2, 0x0

    invoke-direct {v5, p2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;-><init>(I)V

    const/16 v6, 0x9

    const/4 v9, 0x0

    move-object v3, p0

    move-object v7, p1

    move v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    move p1, v2

    :goto_5f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_b3

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_b0

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_78

    goto :goto_b0

    :cond_78
    move p3, v2

    :goto_79
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p3, v5, :cond_b0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/ShareTargetInfo;

    move v6, v2

    :goto_86
    iget-object v7, v5, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    array-length v8, v7

    if-ge v6, v8, :cond_99

    aget-object v7, v7, v6

    invoke-interface {p2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_96

    add-int/lit8 p3, p3, 0x1

    goto :goto_79

    :cond_96
    add-int/lit8 v6, v6, 0x1

    goto :goto_86

    :cond_99
    new-instance p2, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ShortcutInfo;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v3, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    iget-object v5, v5, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, p3, v6}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/ComponentName;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b0
    :goto_b0
    add-int/lit8 p1, p1, 0x1

    goto :goto_5f

    :cond_b3
    monitor-exit v1

    return-object p0

    :goto_b5
    monitor-exit v1
    :try_end_b6
    .catchall {:try_start_3 .. :try_end_b6} :catchall_2e

    throw p0
.end method

.method public final getOwnerUserId()I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    return p0
.end method

.method public final getShortcutPackageItemFile()Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v2, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, v1, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v2, v1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "packages"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    const-string v2, ".xml"

    invoke-static {v1, p0, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public final isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V
    .registers 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_e

    :try_start_8
    invoke-interface {p3, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_e

    :catchall_c
    move-exception p0

    goto :goto_24

    :cond_e
    :goto_e
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    if-nez p1, :cond_16

    monitor-exit v0

    return-void

    :cond_16
    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/content/pm/ShortcutInfo;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut([Landroid/content/pm/ShortcutInfo;)V

    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_c

    throw p0
.end method

.method public final onRestored(I)V
    .registers 3

    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda11;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    return-void
.end method

.method public final pushDynamicShortcut(Landroid/content/pm/ShortcutInfo;Ljava/util/List;)Z
    .registers 11

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v0

    const-string/jumbo v1, "pushDynamicShortcuts() cannot publish disabled shortcuts"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_28

    :cond_25
    move-object v2, p0

    goto/16 :goto_a5

    :cond_28
    :goto_28
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v2, v2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v3, v2, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_5f

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v3, :cond_5f

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error pushing shortcut. There are already "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " shortcuts."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5f
    if-eqz v4, :cond_25

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sub-int/2addr v3, v7

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v3

    if-eqz v3, :cond_92

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Failed to remove manifest shortcut while pushing dynamic shortcut "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "ShortcutService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_92
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(ILjava/lang/String;ZZZ)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_a5

    move p0, v7

    goto :goto_a6

    :cond_a5
    :goto_a5
    move p0, v1

    :goto_a6
    if-eqz v0, :cond_b6

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ShortcutInfo;->ensureUpdatableWith(Landroid/content/pm/ShortcutInfo;Z)V

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result p2

    const v0, 0x60004002

    and-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    :cond_b6
    invoke-virtual {p1, v7}, Landroid/content/pm/ShortcutInfo;->isExcludedFromSurfaces(I)Z

    move-result p2

    if-nez p2, :cond_bf

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    :cond_bf
    return p0
.end method

.method public final refreshPinnedFlags()V
    .registers 7

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_13
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda20;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v3}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda20;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_13 .. :try_end_3b} :catchall_5e

    if-eqz v2, :cond_46

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;-><init>(I)V

    invoke-interface {v2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_46
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda10;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()Ljava/util/List;

    return-void

    :catchall_5e
    move-exception p0

    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p0
.end method

.method public final removeOrphans()Ljava/util/List;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda13;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda13;-><init>(ILjava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1a
    if-ltz v2, :cond_2c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forceDeleteShortcutInner(Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    :cond_2c
    return-object v0
.end method

.method public final reportShortcutUsed(Landroid/app/usage/UsageStatsManagerInternal;Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v3, v3, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-wide v4, p0, Lcom/android/server/pm/ShortcutPackage;->mLastReportedTime:J

    sub-long v4, v1, v4

    iget v3, v3, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-lez v3, :cond_5d

    iput-wide v1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastReportedTime:J

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_56

    :try_start_1c
    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    check-cast p1, Lcom/android/server/usage/UsageStatsService$LocalService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_49

    if-nez p2, :cond_2a

    goto :goto_49

    :cond_2a
    new-instance v4, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/16 v7, 0x8

    invoke-direct {v4, v7, v5, v6}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v4, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    sget-boolean p2, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    iget-object p1, p1, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p1, p0, v4}, Lcom/android/server/usage/UsageStatsService;->reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V

    goto :goto_51

    :cond_49
    :goto_49
    const-string/jumbo p0, "UsageStatsService"

    const-string p1, "Event reported without a package name or a shortcut ID"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_1c .. :try_end_51} :catchall_58

    :goto_51
    :try_start_51
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return-void

    :catchall_56
    move-exception p0

    goto :goto_5f

    :catchall_58
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_5d
    monitor-exit v0

    return-void

    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_51 .. :try_end_60} :catchall_56

    throw p0
.end method

.method public final rescanPackageIfNeeded(ZZ)Z
    .registers 18

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v3, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v0, v3, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v4

    const/16 v6, 0xe

    :try_start_e
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v0, v7, v8, v2}, Lcom/android/server/pm/ShortcutService;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v7
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_57

    if-nez v7, :cond_20

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return v2

    :cond_20
    const/4 v13, 0x1

    if-nez p1, :cond_5b

    if-nez p2, :cond_5b

    :try_start_25
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    iget-wide v8, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    invoke-virtual {v7}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    iget-wide v8, v0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    iget-wide v10, v7, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v8, v10

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x4

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    new-array v9, v13, [Z

    new-instance v10, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda24;

    invoke-direct {v10, p0, v8, v0, v9}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutService;[Z)V

    invoke-virtual {p0, v10}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutStopWhen(Ljava/util/function/Function;)V

    aget-boolean v0, v9, v2
    :try_end_51
    .catchall {:try_start_25 .. :try_end_51} :catchall_57

    if-nez v0, :cond_5b

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    return v2

    :catchall_57
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1f2

    :cond_5b
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v8

    const/4 v4, 0x0

    :try_start_62
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    iget-object v9, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-static {v0, v5, v6, v9}, Lcom/android/server/pm/ShortcutParser;->parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_75} :catch_7a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_62 .. :try_end_75} :catch_7a
    .catchall {:try_start_62 .. :try_end_75} :catchall_76

    goto :goto_84

    :catchall_76
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1f0

    :catch_7a
    move-exception v0

    :try_start_7b
    const-string/jumbo v5, "ShortcutService"

    const-string v6, "Failed to load shortcuts from AndroidManifest.xml."

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    :goto_84
    monitor-exit v8
    :try_end_85
    .catchall {:try_start_7b .. :try_end_85} :catchall_76

    if-nez v0, :cond_89

    move v5, v2

    goto :goto_8d

    :cond_89
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    :goto_8d
    if-eqz p1, :cond_92

    if-nez v5, :cond_92

    return v2

    :cond_92
    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    iget-wide v8, v7, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iput-wide v8, v5, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    sget-object v6, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v6, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const v8, 0x8000

    and-int/2addr v6, v8

    if-eqz v6, :cond_af

    move v6, v1

    goto :goto_b0

    :cond_af
    move v6, v2

    :goto_b0
    iput-boolean v6, v5, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    iput-boolean v1, v5, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowedInitialized:Z

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    iget-wide v5, v5, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    new-instance v8, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v5, v6}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/ShortcutPackage;J)V

    invoke-virtual {p0, v8}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    if-nez p1, :cond_d6

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v5, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v5, v8, v6}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(ILjava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v3, v5, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    :cond_d6
    iget-object v5, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Lcom/samsung/android/core/pm/containerservice/AsecUtils;->isExternalAsec(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_fb

    if-nez v0, :cond_fb

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-static {v5, v6}, Lcom/samsung/android/core/pm/containerservice/AsecUtils;->getPackageInfoAsUser(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-nez v5, :cond_fb

    const-string/jumbo v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    const-string v6, " is installed on SD Card but not scanned yet. We don\'t want to republish."

    invoke-static {v2, v5, v6, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_199

    :cond_fb
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v13}, Landroid/util/ArraySet;-><init>(I)V

    new-instance v6, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda21;

    invoke-direct {v6, v2, v5}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda21;-><init>(ILandroid/util/ArraySet;)V

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    if-eqz v0, :cond_16c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v7, v2

    :goto_10f
    if-ge v7, v6, :cond_16c

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v9

    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v11

    if-eqz v11, :cond_156

    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->isOriginallyFromManifest()Z

    move-result v12

    if-nez v12, :cond_14a

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Shortcut with ID="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " exists but is not from AndroidManifest.xml, not updating."

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "ShortcutService"

    invoke-static {v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16a

    :cond_14a
    invoke-virtual {v11}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v11

    if-eqz v11, :cond_156

    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    move v11, v13

    goto :goto_157

    :cond_156
    move v11, v2

    :goto_157
    if-nez v9, :cond_15c

    if-nez v11, :cond_15c

    goto :goto_16a

    :cond_15c
    invoke-virtual {p0, v8}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    if-eqz v9, :cond_16a

    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_16a

    invoke-virtual {v5, v10}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_16a
    :goto_16a
    add-int/2addr v7, v1

    goto :goto_10f

    :cond_16c
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_196

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v13

    :goto_177
    if-ltz v1, :cond_193

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v8, 0x2

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(ILjava/lang/String;ZZZ)Landroid/content/pm/ShortcutInfo;

    new-instance v6, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, v4, v2, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/lang/Object;II)V

    invoke-virtual {p0, v9, v4, v6}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_177

    :cond_193
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->removeOrphans()Ljava/util/List;

    :cond_196
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    :goto_199
    if-eqz v0, :cond_1e9

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, v0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v13

    :goto_1aa
    if-ltz v5, :cond_1e9

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v8, v1, :cond_1b9

    goto :goto_1e6

    :cond_1b9
    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcutTypeAndRankComparator:Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v13

    move v14, v8

    :goto_1c4
    if-lt v14, v1, :cond_1e6

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v9

    if-eqz v9, :cond_1d8

    const-string v8, "Found manifest shortcuts in excess list."

    invoke-virtual {v0, v8, v4}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e3

    :cond_1d8
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(ILjava/lang/String;ZZZ)Landroid/content/pm/ShortcutInfo;

    :goto_1e3
    add-int/lit8 v14, v14, -0x1

    goto :goto_1c4

    :cond_1e6
    :goto_1e6
    add-int/lit8 v5, v5, -0x1

    goto :goto_1aa

    :cond_1e9
    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    invoke-virtual {v3, p0, v4, v4}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    return v13

    :goto_1f0
    :try_start_1f0
    monitor-exit v8
    :try_end_1f1
    .catchall {:try_start_1f0 .. :try_end_1f1} :catchall_76

    throw p0

    :goto_1f2
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    throw p0
.end method

.method public final saveShortcut(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/content/pm/ShortcutInfo;ZZ)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    if-eqz p3, :cond_13

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    return-void

    :cond_13
    const/4 v1, 0x0

    if-eqz p3, :cond_27

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v2, v2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v2, v2, Lcom/android/server/pm/ShortcutService;->mSmartSwitchBackupAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_27

    if-eqz p4, :cond_25

    goto :goto_27

    :cond_25
    move p4, v1

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p4, 0x1

    :goto_28
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isIconPendingSave()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutPackageItem;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    :cond_31
    const/4 v2, 0x0

    const-string/jumbo v3, "shortcut"

    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "id"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_49

    goto :goto_53

    :cond_49
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "activity"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_53
    const-string/jumbo v4, "title"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTitleResId()I

    move-result v4

    int-to-long v4, v4

    const-string/jumbo v6, "titleid"

    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v4, "titlename"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTitleResName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v4, "splash-screen-theme-name"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getStartingThemeResName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v4, "text"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTextResId()I

    move-result v4

    int-to-long v4, v4

    const-string/jumbo v6, "textid"

    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v4, "textname"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getTextResName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_bc

    const-string/jumbo v4, "dmessage"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResourceId()I

    move-result v4

    int-to-long v4, v4

    const-string/jumbo v6, "dmessageid"

    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v4, "dmessagename"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessageResName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_bc
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v4

    int-to-long v4, v4

    const-string/jumbo v6, "disabled-reason"

    invoke-static {p1, v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v4, "timestamp"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v5

    invoke-static {p1, v4, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v4

    if-eqz v4, :cond_e5

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "locus-id"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_e5
    const-string/jumbo v4, "flags"

    if-eqz p3, :cond_113

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v5, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v5, v5, Lcom/android/server/pm/ShortcutService;->mSmartSwitchBackupAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_113

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v5

    const v6, -0x8a0e

    and-int/2addr v5, v6

    int-to-long v5, v5

    invoke-static {p1, v4, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    iget-wide v4, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:J

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-nez p0, :cond_14f

    const-string/jumbo p0, "Package version code should be available at this point."

    invoke-virtual {v0, p0, v2}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14f

    :cond_113
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p0

    int-to-long v5, p0

    const-string/jumbo p0, "rank"

    invoke-static {p1, p0, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result p0

    int-to-long v5, p0

    invoke-static {p1, v4, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result p0

    int-to-long v4, p0

    const-string/jumbo p0, "icon-res"

    invoke-static {p1, p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo p0, "icon-resname"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIconResName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo p0, "bitmap-path"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo p0, "icon-uri"

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIconUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_14f
    :goto_14f
    if-eqz p4, :cond_227

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_179

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p4

    if-lez p4, :cond_179

    const-string/jumbo p4, "categories"

    invoke-interface {p1, v2, p4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    invoke-static {p0, p4, v0}, Lcom/android/internal/util/XmlUtils;->writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p1, v2, p4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_179
    if-nez p3, :cond_1c9

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1c9

    move p3, v1

    :goto_186
    array-length p4, p0

    if-ge p3, p4, :cond_1c9

    aget-object p4, p0, p3

    const-string/jumbo v0, "person"

    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p4}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-static {p1, v5, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v4, "uri"

    invoke-virtual {p4}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v4, "key"

    invoke-virtual {p4}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v4, "is-bot"

    invoke-virtual {p4}, Landroid/app/Person;->isBot()Z

    move-result v5

    invoke-static {p1, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v4, "is-important"

    invoke-virtual {p4}, Landroid/app/Person;->isImportant()Z

    move-result p4

    invoke-static {p1, v4, p4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 p3, p3, 0x1

    goto :goto_186

    :cond_1c9
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIntentsNoExtras()[Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIntentPersistableExtrases()[Landroid/os/PersistableBundle;

    move-result-object p3

    const-string/jumbo p4, "extras"

    if-eqz p0, :cond_205

    if-eqz p3, :cond_205

    array-length v0, p0

    move v4, v1

    :goto_1da
    if-ge v4, v0, :cond_205

    const-string/jumbo v5, "intent"

    invoke-interface {p1, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    aget-object v6, p0, v4

    if-nez v6, :cond_1e7

    goto :goto_1f1

    :cond_1e7
    invoke-virtual {v6, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "intent-base"

    invoke-static {p1, v7, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_1f1
    aget-object v6, p3, v4

    if-nez v6, :cond_1f6

    goto :goto_1ff

    :cond_1f6
    invoke-interface {p1, v2, p4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v6, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p1, v2, p4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_1ff
    invoke-interface {p1, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1da

    :cond_205
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_20c

    goto :goto_215

    :cond_20c
    invoke-interface {p1, v2, p4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p1, v2, p4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_215
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getCapabilityBindingsInternal()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_227

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_227

    const-string/jumbo p2, "capability"

    invoke-static {p0, p2, p1}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    :cond_227
    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final varargs saveShortcut([Landroid/content/pm/ShortcutInfo;)V
    .registers 6

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :catchall_24
    move-exception p0

    goto :goto_28

    :cond_26
    monitor-exit v0

    return-void

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_24

    throw p0
.end method

.method public final saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Z)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_23

    :try_start_12
    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    monitor-exit v3
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_7e

    if-nez v4, :cond_25

    if-nez v2, :cond_25

    :try_start_1d
    iget v3, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    if-nez v3, :cond_25

    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    goto :goto_81

    :cond_25
    const-string/jumbo v3, "package"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "name"

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v3, "call-count"

    iget v5, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    int-to-long v5, v5

    invoke-static {p1, v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v3, "last-reset"

    iget-wide v5, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    invoke-static {p1, v3, v5, v6}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v5, v5, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3, v5, p1, p2}, Lcom/android/server/pm/ShortcutPackageInfo;->saveToXml(Lcom/android/server/pm/ShortcutService;Lcom/android/modules/utils/TypedXmlSerializer;Z)V

    const/4 v3, 0x0

    move v5, v3

    :goto_50
    if-ge v5, v1, :cond_64

    iget-object v6, p0, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ShortcutInfo;

    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    iget-boolean v7, v7, Lcom/android/server/pm/ShortcutPackageInfo;->mBackupAllowed:Z

    invoke-virtual {p0, p1, v6, p2, v7}, Lcom/android/server/pm/ShortcutPackage;->saveShortcut(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/content/pm/ShortcutInfo;ZZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    :cond_64
    if-nez p2, :cond_76

    :goto_66
    if-ge v3, v2, :cond_76

    iget-object p2, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/ShareTargetInfo;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/ShareTargetInfo;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    :cond_76
    const-string/jumbo p0, "package"

    invoke-interface {p1, v4, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_1d .. :try_end_7d} :catchall_23

    return-void

    :catchall_7e
    move-exception p0

    :try_start_7f
    monitor-exit v3
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    :try_start_80
    throw p0

    :goto_81
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_80 .. :try_end_82} :catchall_23

    throw p0
.end method

.method public final sortShortcutsToActivities()Landroid/util/ArrayMap;
    .registers 4

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final tryApiCall(Z)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Z)I

    move-result p1

    iget v0, v0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    if-lt p1, v0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    iget p1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    return v0
.end method

.method public final verifyRanksSequential(Ljava/util/List;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_50

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v2

    if-eq v2, v0, :cond_4d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Package "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": shortcut "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rank="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " but expected to be "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ShortcutService.verify"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_50
    return-void
.end method

.method public final verifyStates()V
    .registers 10

    const/4 v0, 0x1

    new-array v1, v0, [Z

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v2, v2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->sortShortcutsToActivities()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v0

    :goto_10
    const/4 v5, 0x0

    if-ltz v4, :cond_8f

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v8, v8, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v8, v8, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    if-le v7, v8, :cond_61

    aput-boolean v0, v1, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Package "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": activity "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " has "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " shortcuts."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "ShortcutService.verify"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    new-instance v5, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-static {v6, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v7, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v6, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;

    const/4 v8, 0x4

    invoke-direct {v6, v8}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-virtual {p0, v5}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)V

    invoke-virtual {p0, v7}, Lcom/android/server/pm/ShortcutPackage;->verifyRanksSequential(Ljava/util/List;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_10

    :cond_8f
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/ShortcutPackage;[ZLcom/android/server/pm/ShortcutService;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    aget-boolean p0, v1, v5

    if-nez p0, :cond_9c

    return-void

    :cond_9c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "See logcat for errors"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
