.class public final Lcom/android/server/om/OverlayManagerServiceImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDefaultOverlays:[Ljava/lang/String;

.field public final mIdmapManager:Lcom/android/server/om/IdmapManager;

.field public final mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

.field public mOverlayManagerExt:Lcom/android/server/om/OverlayManagerServiceExt;

.field public final mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

.field public final mSettings:Lcom/android/server/om/OverlayManagerSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/content/om/OverlayConfig;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iput-object p3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iput-object p4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    iput-object p5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final createIdmapForThemeOverlay()V
    .locals 9

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayManagerExt:Lcom/android/server/om/OverlayManagerServiceExt;

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v3

    sget-object v5, Landroid/content/om/SamsungThemeConstants;->CREATE_IDMAP_SPECIAL_TARGET:[Ljava/lang/String;

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v7, v5, v4

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v2, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerServiceExt;->getSafeStream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerServiceExt;->getSafeStream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/om/OverlayManagerService$1$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/android/server/om/OverlayManagerServiceExt;->createIdmapForThemeOverlayInternal(Ljava/util/List;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "createIdmapForThemeOverlay() took "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OverlayManagerExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v3}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerServiceExt;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v1, v0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p2, Lcom/android/server/om/DumpState;->mUserId:I

    iget-object v3, p2, Lcom/android/server/om/DumpState;->mPackageName:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/om/DumpState;->mOverlayName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/om/DumpState;->mField:Ljava/lang/String;

    new-instance v6, Landroid/util/IndentingPrintWriter;

    const-string v7, "  "

    invoke-direct {v6, p1, v7}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    iget-object v9, v0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, -0x1

    if-ge v8, v9, :cond_4

    iget-object v9, v0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    if-eq v2, v10, :cond_0

    iget v10, v9, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    if-eq v2, v10, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    iget-object v10, v9, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v10}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_f

    :cond_1
    if-eqz v4, :cond_2

    iget-object v10, v9, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v10}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    invoke-static {v6, v9, v5}, Lcom/android/server/om/OverlayManagerSettings;->dumpSettingsItemField(Landroid/util/IndentingPrintWriter;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {v6, v9}, Lcom/android/server/om/OverlayManagerSettings;->dumpSettingsItem(Landroid/util/IndentingPrintWriter;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v2, v0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, p2, Lcom/android/server/om/DumpState;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v1, :cond_5

    monitor-exit v2

    :goto_2
    move-object v0, v3

    goto :goto_5

    :catchall_1
    move-exception p0

    goto/16 :goto_e

    :cond_5
    new-instance v1, Landroid/content/om/OverlayIdentifier;

    iget-object v4, p2, Lcom/android/server/om/DumpState;->mPackageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/om/DumpState;->mOverlayName:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p2, Lcom/android/server/om/DumpState;->mUserId:I

    move v5, v7

    :goto_3
    iget-object v6, v0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    iget-object v6, v0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    if-eq v4, v10, :cond_6

    iget v8, v6, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    if-eq v4, v8, :cond_6

    goto :goto_4

    :cond_6
    iget-object v8, v6, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mOverlay:Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v1, v8}, Landroid/content/om/OverlayIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    new-instance v0, Landroid/util/Pair;

    iget-object v4, v6, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2

    goto :goto_5

    :cond_8
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :goto_5
    iget-object v1, p2, Lcom/android/server/om/DumpState;->mField:Ljava/lang/String;

    if-nez v1, :cond_d

    if-eqz v0, :cond_9

    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    goto :goto_6

    :cond_9
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerSettings;->getAllIdentifiersAndBaseCodePaths()Ljava/util/Set;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IDMAP OF "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v4, v4, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v6, "idmap2d service is not ready for dumpIdmap()"

    const-string/jumbo v8, "OverlayManager"

    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v9, v4, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    if-nez v9, :cond_a

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_8
    :try_start_4
    invoke-virtual {v4}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_c

    :catch_0
    move-exception v4

    goto :goto_b

    :catchall_2
    move-exception v5

    goto :goto_9

    :cond_a
    :try_start_5
    invoke-interface {v9, v5}, Landroid/os/IIdmap2;->dumpIdmap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_8

    :goto_9
    :try_start_6
    invoke-virtual {v4}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_a

    :catchall_3
    move-exception v4

    :try_start_7
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :goto_b
    const-string/jumbo v5, "failed to dump idmap"

    invoke-static {v8, v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v3

    :goto_c
    if-eqz v6, :cond_b

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/om/OverlayIdentifier;

    invoke-virtual {v4, v2, v7}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget-object v5, v2, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    iget v2, v2, Landroid/content/om/OverlayInfo;->userId:I

    iget-object v4, v4, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    invoke-virtual {v4, v2, v5}, Lcom/android/server/om/IdmapDaemon;->idmapExists(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "<missing idmap>"

    goto :goto_d

    :cond_c
    const-string v2, "<internal error>"

    :goto_d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_d
    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Default overlays: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_e
    iget-object p2, p2, Lcom/android/server/om/DumpState;->mPackageName:Ljava/lang/String;

    if-nez p2, :cond_f

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-virtual {p0, p1}, Lcom/android/internal/content/om/OverlayConfig;->dump(Ljava/io/PrintWriter;)V

    :cond_f
    return-void

    :goto_e
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0

    :goto_f
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0
.end method

.method public final getEnabledOverlayPaths(ILjava/lang/String;Z)Landroid/content/pm/overlay/OverlayPaths;
    .locals 8

    new-instance v0, Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-direct {v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_7

    iget-object v5, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    iget v6, v5, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    if-eq v6, p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v6, v5, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v5}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetOverlayInfo(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    iget-boolean v6, v5, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Landroid/content/om/OverlayInfo;->isFabricated()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v5, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    const-string/jumbo v7, "ThemePark_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v5, v5, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addNonApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_1

    :cond_5
    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/content/om/OverlayInfoExt;->isOverlayInfoExtOfCategory(Landroid/content/om/OverlayInfo;I)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v5, v5, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_2
    if-ge v3, p0, :cond_9

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    check-cast p1, Landroid/content/om/OverlayInfo;

    iget-boolean p2, p1, Landroid/content/om/OverlayInfo;->isFabricated:Z

    if-eqz p2, :cond_8

    iget-object p1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addNonApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_2

    :cond_8
    iget-object p1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object p0

    return-object p0
.end method

.method public final mustReinitializeOverlay(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/OverlayInfo;)Z
    .locals 2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p2, Landroid/content/om/OverlayInfo;->isFabricated:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/content/om/OverlayConfig;->isMutable(Ljava/lang/String;)Z

    move-result v0

    iget-boolean v1, p2, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/content/om/OverlayConfig;->isEnabled(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result p1

    if-eq p0, p1, :cond_5

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public final onPackageRemoved(ILjava/lang/String;)Ljava/util/Set;
    .locals 3

    const-string/jumbo v0, "onPackageRemoved pkgName="

    const-string v1, " userId="

    const-string/jumbo v2, "OverlayManager"

    invoke-static {p1, v0, p2, v1, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForTarget(IILjava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeOverlaysForUser(ILjava/util/function/Predicate;)Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final reconcileSettingsForPackage(IILjava/lang/String;)Ljava/util/Set;
    .locals 3

    const-string/jumbo v0, "reconcileSettingsForPackage pkgName="

    const-string v1, " userId="

    const-string/jumbo v2, "OverlayManager"

    invoke-static {p1, v0, p3, v1, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForTarget(IILjava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageStateForUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageRemoved(ILjava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updatePackageOverlays(Lcom/android/server/pm/pkg/AndroidPackage;II)Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final registerFabricatedOverlay(Landroid/os/FabricatedOverlayInfo;I)Ljava/util/Set;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p2

    new-instance v3, Landroid/content/om/OverlayIdentifier;

    iget-object v2, v1, Landroid/os/FabricatedOverlayInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    invoke-direct {v3, v2, v5}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-boolean v6, v5, Landroid/content/om/OverlayInfo;->isFabricated:Z

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "non-fabricated overlay with name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v5, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' already present in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    const-string v3, "\'"

    invoke-static {v1, v2, v3}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v14, 0x0

    const/4 v15, 0x1

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v6, v1, Landroid/os/FabricatedOverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, v1, Landroid/os/FabricatedOverlayInfo;->targetOverlayable:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :goto_1
    if-eqz v5, :cond_4

    iget-object v5, v5, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v5, v1, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    if-eqz v5, :cond_6

    const-string/jumbo v6, "SemWT_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v2, v3, v14}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v15

    goto :goto_2

    :cond_5
    move v5, v14

    :goto_2
    move v9, v5

    goto :goto_3

    :cond_6
    move v9, v14

    :goto_3
    iget-object v5, v1, Landroid/os/FabricatedOverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/os/FabricatedOverlayInfo;->targetOverlayable:Ljava/lang/String;

    iget-object v7, v1, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    const/4 v8, 0x1

    const v10, 0x7fffffff

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/om/OverlayManagerSettings;->init(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)Landroid/content/om/OverlayInfo;

    move-result-object v5

    goto :goto_4

    :cond_7
    iget-object v6, v1, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, v4, v3, v6}, Lcom/android/server/om/OverlayManagerSettings;->setBaseCodePath(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)Z

    :goto_4
    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceModeFromProperty()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v1, v1, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    if-eqz v1, :cond_8

    sget-object v6, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->disableOverlayList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v15

    goto :goto_5

    :cond_8
    sget-object v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->disableOverlayList:Ljava/util/List;

    :cond_9
    move v1, v14

    :goto_5
    if-eqz v1, :cond_b

    new-instance v1, Landroid/content/om/OverlayIdentifier;

    const-string/jumbo v6, "android"

    const-string/jumbo v7, "SemWT_G_MonetPalette"

    invoke-direct {v1, v6, v7}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v14}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v15

    goto :goto_6

    :cond_a
    move v1, v14

    :goto_6
    if-eqz v1, :cond_b

    invoke-virtual {v5}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, v3, v15, v4, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Landroid/content/om/OverlayIdentifier;ZILjava/util/List;)Ljava/util/Set;

    :cond_b
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, v5, v4, v14, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;IILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v5, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    return-object v13

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string/jumbo v2, "failed to update settings"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final registerFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Ljava/util/Set;
    .locals 6

    iget-object v0, p1, Landroid/os/FabricatedOverlayInternal;->overlayName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget-object v0, v0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "OverlayManager"

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, v0, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    if-nez v4, :cond_0

    const-string/jumbo v4, "idmap2d service is not ready for createFabricatedOverlay()"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-interface {v4, p1}, Landroid/os/IIdmap2;->createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v3, v4

    goto :goto_3

    :goto_0
    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "failed to fabricate overlay "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    if-eqz v3, :cond_2

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v0

    array-length v2, v0

    :goto_4
    if-ge v1, v2, :cond_1

    aget v4, v0, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->registerFabricatedOverlay(Landroid/os/FabricatedOverlayInfo;I)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1
    return-object p1

    :cond_2
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string/jumbo p1, "failed to create fabricated overlay"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string/jumbo p1, "overlay name can only consist of alphanumeric characters, \'_\', and \'.\'"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeIdmapForOverlay(Landroid/content/om/OverlayIdentifier;I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string/jumbo p2, "failed to update settings"

    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget-object v1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    iget v2, p1, Landroid/content/om/OverlayInfo;->userId:I

    iget-object v3, v0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/om/IdmapDaemon;->idmapExists(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v4
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    :goto_1
    return-void

    :catch_0
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget p0, p1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v0, p1, p0}, Lcom/android/server/om/IdmapManager;->removeIdmap(Landroid/content/om/OverlayInfo;I)Z

    return-void
.end method

.method public final removeOverlaysForUser(ILjava/util/function/Predicate;)Ljava/util/Set;
    .locals 5

    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(ILjava/util/function/Predicate;)V

    iget-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p2, v0}, Lcom/android/server/om/OverlayManagerSettings;->removeIf(Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p2

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayInfo;

    iget-object v4, v3, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final setEnabled(Landroid/content/om/OverlayIdentifier;ZILjava/util/List;)Ljava/util/Set;
    .locals 4

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p4}, Landroid/content/om/OverlayConstraint;->constraintsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "setEnabled overlay=%s enable=%s userId=%d constraints=%s"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "OverlayManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_5

    if-nez p2, :cond_2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p1, "Constraints can only be set when enabling an overlay"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v2

    iget-boolean v3, v2, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(ILandroid/content/om/OverlayIdentifier;Z)Z

    move-result p1

    invoke-virtual {p0, v2, p3, v1, p4}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;IILjava/util/List;)Z

    move-result p0

    or-int/2addr p0, p1

    if-eqz p0, :cond_3

    iget-object p0, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {p3, p0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    :cond_4
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string/jumbo p1, "cannot enable immutable overlay packages in runtime"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string/jumbo p2, "failed to update settings"

    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string/jumbo p1, "RRO constraints are not supported"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setEnabledExclusive(ILandroid/content/om/OverlayIdentifier;Z)Ljava/util/Optional;
    .locals 10

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p2, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "setEnabledExclusive overlay=%s withinCategory=%s userId=%d"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "OverlayManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v0, p2, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v1

    iget-boolean v2, v1, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v2, :cond_4

    iget-object v2, v1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/om/OverlayInfo;

    invoke-virtual {v6}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v7

    iget-boolean v8, v6, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    iget-object v8, v6, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    iget-object v9, v1, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1, v7, v3}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(ILandroid/content/om/OverlayIdentifier;Z)Z

    move-result v7

    or-int/2addr v5, v7

    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, v6, p1, v3, v7}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;IILjava/util/List;)Z

    move-result v6

    or-int/2addr v5, v6

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(ILandroid/content/om/OverlayIdentifier;Z)Z

    move-result p2

    or-int/2addr p2, v5

    sget-object p3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, v1, p1, v3, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;IILjava/util/List;)Z

    move-result p0

    or-int/2addr p0, p2

    if-eqz p0, :cond_3

    iget-object p0, v1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string/jumbo p1, "cannot enable immutable overlay packages in runtime"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string/jumbo p2, "failed to update settings"

    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;
    .locals 3

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const-string/jumbo v0, "setHighestPriority overlay="

    :try_start_0
    const-string/jumbo v1, "OverlayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " userId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {p2, p0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    :cond_1
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string/jumbo p1, "cannot change priority of an immutable overlay package at runtime"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string/jumbo p2, "failed to update settings"

    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setLowestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;
    .locals 3

    const-string/jumbo v0, "setLowestPriority packageName="

    :try_start_0
    const-string/jumbo v1, "OverlayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " userId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    move-result p1

    if-gtz p1, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object p0, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {p2, p0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0
    :try_end_4
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :cond_1
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string/jumbo p1, "cannot change priority of an immutable overlay package at runtime"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string/jumbo p2, "failed to update settings"

    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final setPriority(Landroid/content/om/OverlayIdentifier;Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;
    .locals 3

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const-string/jumbo v0, "setPriority overlay="

    :try_start_0
    const-string/jumbo v1, "OverlayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " newParentOverlay="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " userId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Landroid/content/om/OverlayIdentifier;Landroid/content/om/OverlayIdentifier;I)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {p3, p0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string/jumbo p1, "cannot change priority of an immutable overlay package at runtime"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string/jumbo p2, "failed to update settings"

    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Ljava/util/Set;
    .locals 7

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    invoke-virtual {p0, p1, v4}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, p1, v4}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    invoke-virtual {v5}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v5, v5, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    goto :goto_1

    :cond_0
    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :goto_1
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final updateOverlaysForTarget(IILjava/lang/String;)Ljava/util/Set;
    .locals 9

    const-string/jumbo v0, "updateOverlaysForTarget() called with: targetPackage = ["

    const-string/jumbo v1, "], userId = ["

    const-string/jumbo v2, "], flags = ["

    invoke-static {p1, v0, p3, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    const-string/jumbo v2, "OverlayManager"

    invoke-static {p2, v1, v2, v0}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/om/OverlayInfo;

    :try_start_0
    iget-object v7, v6, Landroid/content/om/OverlayInfo;->constraints:Ljava/util/List;

    invoke-virtual {p0, v6, p1, p2, v7}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;IILjava/util/List;)Z

    move-result v6
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    or-int/2addr v5, v6

    goto :goto_2

    :catch_0
    move-exception v7

    const-string/jumbo v8, "failed to update settings"

    invoke-static {v2, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v6}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v6

    invoke-virtual {v0, v6, p1}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    move-result v6

    goto :goto_1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-nez v5, :cond_1

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    :cond_1
    invoke-static {p1, p3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final updateOverlaysForUser(I)Landroid/util/ArraySet;
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    iget-object v4, v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mInitializedUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    new-instance v5, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;I)V

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManagerInternal;->forEachPackageState(Ljava/util/function/Consumer;)V

    :cond_0
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iget-object v5, v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    monitor-enter v5

    :try_start_0
    iget-object v6, v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v7, v0

    :goto_0
    if-ge v7, v6, :cond_2

    iget-object v8, v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;

    iget-object v9, v8, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mInstalledUsers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    check-cast v9, Landroid/util/ArraySet;

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v8, v8, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mPackageState:Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-virtual {v4, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_16

    :cond_1
    :goto_1
    add-int/2addr v7, v1

    goto :goto_0

    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v4}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeOverlaysForUser(ILjava/util/function/Predicate;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    if-nez v6, :cond_4

    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v0

    :goto_4
    if-ge v6, v5, :cond_8

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    if-nez v8, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v7

    :try_start_1
    invoke-virtual {p0, v8, p1, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updatePackageOverlays(Lcom/android/server/pm/pkg/AndroidPackage;II)Ljava/util/Set;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {p1, v7}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v8

    const-string/jumbo v9, "OverlayManager"

    const-string/jumbo v10, "failed to initialize overlays of \'"

    const-string v11, "\' for user "

    const-string v12, ""

    invoke-static {p1, v10, v7, v11, v12}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_5
    add-int/2addr v6, v1

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3}, Lcom/android/server/om/OverlayManagerSettings;->getAllBaseCodePaths()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v5}, Lcom/android/server/om/IdmapManager;->getFabricatedOverlayInfos()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v3}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v0

    :cond_9
    :goto_6
    if-ge v5, v3, :cond_f

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/2addr v5, v1

    check-cast v6, Landroid/os/FabricatedOverlayInfo;

    :try_start_2
    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceModeFromProperty()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, v6, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    sget-object v8, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->disableOverlayList:Ljava/util/List;

    if-eqz v7, :cond_a

    const-string/jumbo v8, "SemWT_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    move v7, v1

    goto :goto_7

    :cond_a
    move v7, v0

    :goto_7
    if-nez v7, :cond_b

    iget-object v7, v6, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    if-eqz v7, :cond_e

    sget-object v8, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->dynamicColorOverlayList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_8

    :catch_1
    move-exception v7

    goto :goto_b

    :cond_b
    :goto_8
    iget-object v7, v6, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    if-eqz v7, :cond_c

    sget-object v8, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->disableOverlayList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    move v7, v1

    goto :goto_9

    :cond_c
    move v7, v0

    :goto_9
    if-eqz v7, :cond_9

    new-instance v7, Landroid/content/om/OverlayIdentifier;

    const-string/jumbo v8, "android"

    const-string/jumbo v9, "SemWT_G_MonetPalette"

    invoke-direct {v7, v8, v9}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v8, v7, v0}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_d

    move v7, v1

    goto :goto_a

    :cond_d
    move v7, v0

    :goto_a
    if-eqz v7, :cond_9

    new-instance v7, Landroid/content/om/OverlayIdentifier;

    iget-object v8, v6, Landroid/os/FabricatedOverlayInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, v7, v0, v0, v8}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Landroid/content/om/OverlayIdentifier;ZILjava/util/List;)Ljava/util/Set;
    :try_end_3
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception v7

    :try_start_4
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    :cond_e
    invoke-virtual {p0, v6, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->registerFabricatedOverlay(Landroid/os/FabricatedOverlayInfo;I)Ljava/util/Set;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;
    :try_end_4
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :goto_b
    const-string/jumbo v8, "OverlayManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "failed to initialize fabricated overlay of \'"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v6, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    const-string v10, "\' for user "

    const-string v11, ""

    invoke-static {p1, v6, v10, v11, v9}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    :cond_f
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v0

    :goto_c
    if-ge v6, v5, :cond_13

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_10

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_d

    :cond_10
    move v8, v0

    :goto_d
    move v9, v0

    :goto_e
    if-ge v9, v8, :cond_12

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/om/OverlayInfo;

    invoke-virtual {v10}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v10, v10, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/2addr v9, v1

    goto :goto_e

    :cond_12
    add-int/2addr v6, v1

    goto :goto_c

    :cond_13
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    array-length v5, v4

    move v6, v0

    :goto_f
    if-ge v6, v5, :cond_15

    aget-object v7, v4, v6

    :try_start_5
    new-instance v8, Landroid/content/om/OverlayIdentifier;

    invoke-direct {v8, v7}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v9, v8, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v9

    iget-object v10, v9, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14

    const-string/jumbo v10, "OverlayManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Enabling default overlay \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\' for target \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\' in category \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\' for user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v10, p1, v8, v1}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(ILandroid/content/om/OverlayIdentifier;Z)Z

    iget-object v8, v9, Landroid/content/om/OverlayInfo;->constraints:Ljava/util/List;

    invoke-virtual {p0, v9, p1, v0, v8}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;IILjava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget v8, v9, Landroid/content/om/OverlayInfo;->userId:I

    iget-object v9, v9, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    :try_end_5
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_10

    :catch_3
    move-exception v8

    const-string/jumbo v9, "OverlayManager"

    const-string v10, "Failed to set default overlay \'"

    const-string v11, "\' for user "

    invoke-static {p1, v10, v7, v11}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_10
    add-int/2addr v6, v1

    goto :goto_f

    :cond_15
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {p1}, Lcom/android/server/om/OverlayManagerSettings;->getAllBaseCodePaths()Ljava/util/Set;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {p0}, Lcom/android/server/om/IdmapManager;->getFabricatedOverlayInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/FabricatedOverlayInfo;

    iget-object v3, v1, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    move-object v4, p1

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v1, v1, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "OverlayManager"

    const-string/jumbo v5, "idmap2d service is not ready for deleteFabricatedOverlay(\""

    :try_start_6
    invoke-virtual {v3}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    iget-object v6, v3, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    if-nez v6, :cond_17

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\")"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_12
    :try_start_8
    invoke-virtual {v3}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_11

    :catch_4
    move-exception v3

    goto :goto_15

    :catchall_1
    move-exception v5

    goto :goto_13

    :cond_17
    :try_start_9
    invoke-interface {v6, v1}, Landroid/os/IIdmap2;->deleteFabricatedOverlay(Ljava/lang/String;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_12

    :goto_13
    :try_start_a
    invoke-virtual {v3}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_14

    :catchall_2
    move-exception v3

    :try_start_b
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14
    throw v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :goto_15
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "failed to delete fabricated overlay \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    :cond_18
    return-object v2

    :goto_16
    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw p0
.end method

.method public final updatePackageOverlays(Lcom/android/server/pm/pkg/AndroidPackage;II)Ljava/util/Set;
    .locals 12

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    move-object v2, v1

    new-instance v1, Landroid/content/om/OverlayIdentifier;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/content/om/OverlayConfig;->getPriority(Ljava/lang/String;)I

    move-result v3

    :try_start_0
    invoke-virtual {v0, v1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->mustReinitializeOverlay(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/OverlayInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_1

    iget-object v3, v4, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {p2, v3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    :cond_1
    move-object v11, v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplits()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/internal/content/om/OverlayConfig;->isMutable(Ljava/lang/String;)Z

    move-result v6

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/internal/content/om/OverlayConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v7

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/internal/content/om/OverlayConfig;->getPriority(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move v2, p2

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/om/OverlayManagerSettings;->init(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)Landroid/content/om/OverlayInfo;

    move-result-object v4

    move p1, v2

    move-object v1, v11

    goto :goto_0

    :cond_2
    move p1, p2

    iget p2, v4, Landroid/content/om/OverlayInfo;->priority:I

    if-eq v3, p2, :cond_3

    invoke-virtual {v0, v1, p1, v3}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Landroid/content/om/OverlayIdentifier;II)V

    iget-object p2, v4, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    iget-object p2, v4, Landroid/content/om/OverlayInfo;->constraints:Ljava/util/List;

    invoke-virtual {p0, v4, p1, p3, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;IILjava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v4, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_4
    return-object v1

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string/jumbo p2, "failed to update settings"

    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final updateState(Landroid/content/om/CriticalOverlayInfo;IILjava/util/List;)Z
    .locals 22

    move-object/from16 v1, p0

    move/from16 v8, p2

    move/from16 v10, p3

    move-object/from16 v0, p4

    const/4 v11, 0x2

    const/4 v12, 0x1

    move-object/from16 v2, p1

    check-cast v2, Landroid/content/om/OverlayInfo;

    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v13

    iget-object v3, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-interface {v2}, Landroid/content/om/CriticalOverlayInfo;->getTargetPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageStateForUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v14, v4

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    move-object v14, v3

    :goto_0
    iget-object v3, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    invoke-interface {v2}, Landroid/content/om/CriticalOverlayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v8, v5}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageStateForUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v5, v4

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v5

    :goto_1
    const/4 v15, 0x0

    if-nez v5, :cond_4

    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayManagerExt:Lcom/android/server/om/OverlayManagerServiceExt;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v14, v2, v8, v10}, Lcom/android/server/om/OverlayManagerServiceExt;->handleStateUpdate(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/CriticalOverlayInfo;II)I

    move-result v0

    if-eqz v0, :cond_3

    and-int/2addr v0, v11

    if-eqz v0, :cond_2

    return v12

    :cond_2
    return v15

    :cond_3
    const-string/jumbo v0, "OverlayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Removing package - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v13, v8}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v13, v8}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    move-result v0

    return v0

    :cond_4
    iget-object v6, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v6, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v9

    move/from16 v16, v11

    :try_start_0
    invoke-virtual {v6, v13, v8}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    move-result v11

    if-ltz v11, :cond_20

    iget-object v6, v6, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    iget-object v11, v6, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    invoke-static {v11, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    if-nez v7, :cond_5

    move-object v7, v4

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    :goto_2
    iput-object v7, v6, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    iput-object v4, v6, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    move v6, v12

    goto :goto_3

    :cond_6
    move v6, v15

    :goto_3
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v7, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v11, v7, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_1
    invoke-virtual {v7, v13, v8}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    move-result v9

    if-ltz v9, :cond_1f

    iget-object v7, v7, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v9, v7, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsMutable:Z

    if-nez v9, :cond_7

    goto :goto_4

    :cond_7
    iget-object v9, v7, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mConstraints:Ljava/util/List;

    invoke-static {v9, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    iput-object v0, v7, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mConstraints:Ljava/util/List;

    iput-object v4, v7, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    move v0, v12

    goto :goto_5

    :cond_8
    :goto_4
    move v0, v15

    :goto_5
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    or-int/2addr v0, v6

    invoke-interface {v2}, Landroid/content/om/CriticalOverlayInfo;->isFabricated()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplits()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v8, v13, v6}, Lcom/android/server/om/OverlayManagerSettings;->setBaseCodePath(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v0, v4

    :cond_9
    move v11, v0

    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v13, v8}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    const/16 v17, 0x3

    if-eqz v14, :cond_a

    const-string/jumbo v0, "android"

    invoke-interface {v2}, Landroid/content/om/CriticalOverlayInfo;->getTargetPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/content/om/OverlayConfig;->isMutable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    :goto_6
    move-object v10, v4

    move/from16 v18, v12

    goto/16 :goto_12

    :cond_b
    :goto_7
    if-eqz v8, :cond_d

    invoke-virtual {v13}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->disableOverlayList:Ljava/util/List;

    if-eqz v0, :cond_c

    const-string/jumbo v2, "SemWT_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_8

    :cond_c
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget-object v2, v4, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    iget v6, v4, Landroid/content/om/OverlayInfo;->userId:I

    iget-object v0, v0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    invoke-virtual {v0, v6, v2}, Lcom/android/server/om/IdmapDaemon;->idmapExists(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_8
    const-string/jumbo v0, "OverlayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "skip idmap creation for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " of user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_d
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget-object v2, v4, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v13}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Landroid/content/om/OverlayInfo;->constraints:Ljava/util/List;

    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v18, v12

    const-string/jumbo v12, "create idmap for "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " and "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v15, "OverlayManager"

    invoke-static {v15, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplits()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v19

    if-eqz v19, :cond_10

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    move-result-object v10

    move-object/from16 v19, v2

    const-string/jumbo v2, "resource-map"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 p4, v4

    const-string v4, "/data/overlays/remaps/"

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    move-object/from16 v20, v6

    const-string v6, "."

    invoke-virtual {v9, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".map"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_a

    :cond_e
    invoke-static {v14}, Lcom/android/server/om/ResourceMapParser;->parseResourceMap(Lcom/android/server/pm/pkg/AndroidPackage;)V

    goto :goto_a

    :cond_f
    :goto_9
    move-object/from16 p4, v4

    move-object/from16 v20, v6

    goto :goto_a

    :cond_10
    move-object/from16 v19, v2

    goto :goto_9

    :goto_a
    :try_start_2
    invoke-virtual {v0, v14, v3, v5, v8}, Lcom/android/server/om/IdmapManager;->calculateFulfilledPolicies(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;I)I

    move-result v6

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v2

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_11

    :goto_b
    move/from16 v2, v18

    goto :goto_c

    :cond_11
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result v2

    if-eqz v2, :cond_12

    sget-boolean v2, Lcom/android/server/om/IdmapManager;->VENDOR_IS_Q_OR_LATER:Z

    goto :goto_c

    :cond_12
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->isSignedWithPlatformKey()Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_b

    :cond_13
    const/4 v2, 0x0

    :goto_c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/OverlayConstraint;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/om/OverlayConstraint;

    new-instance v10, Landroid/os/OverlayConstraint;

    invoke-direct {v10}, Landroid/os/OverlayConstraint;-><init>()V

    move/from16 v21, v2

    invoke-virtual {v7}, Landroid/content/om/OverlayConstraint;->getType()I

    move-result v2

    iput v2, v10, Landroid/os/OverlayConstraint;->type:I

    invoke-virtual {v7}, Landroid/content/om/OverlayConstraint;->getValue()I

    move-result v2

    iput v2, v10, Landroid/os/OverlayConstraint;->value:I

    add-int/lit8 v2, v5, 0x1

    aput-object v10, v3, v5

    move v5, v2

    move/from16 v2, v21

    goto :goto_d

    :cond_14
    move/from16 v21, v2

    iget-object v2, v0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v9

    move-object v9, v3

    move-object v3, v4

    move-object/from16 v10, p4

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v7, v21

    :try_start_3
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/om/IdmapDaemon;->verifyIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI[Landroid/os/OverlayConstraint;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v2, :cond_15

    move/from16 v8, p2

    move/from16 v0, v18

    goto :goto_10

    :cond_15
    :try_start_4
    iget-object v2, v0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move/from16 v8, p2

    :try_start_5
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/om/IdmapDaemon;->createIdmap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI[Landroid/os/OverlayConstraint;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v0, :cond_16

    move/from16 v0, v17

    goto :goto_10

    :cond_16
    :goto_e
    const/4 v0, 0x0

    goto :goto_10

    :catch_0
    move-exception v0

    goto :goto_f

    :catch_1
    move-exception v0

    move/from16 v8, p2

    goto :goto_f

    :catch_2
    move-exception v0

    move-object/from16 v10, p4

    move-object v3, v9

    move-object/from16 v4, v19

    :goto_f
    const-string/jumbo v2, "failed to generate idmap for "

    invoke-static {v2, v3, v12, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    :goto_10
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_17

    move/from16 v2, v18

    goto :goto_11

    :cond_17
    const/4 v2, 0x0

    :goto_11
    or-int/2addr v11, v2

    goto :goto_13

    :goto_12
    const/4 v0, 0x0

    :goto_13
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, v13, v8}, Lcom/android/server/om/OverlayManagerSettings;->getState(Landroid/content/om/OverlayIdentifier;I)I

    move-result v2

    and-int/lit8 v3, p3, 0x1

    const/4 v4, 0x4

    if-eqz v3, :cond_18

    move v0, v4

    goto :goto_14

    :cond_18
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_19

    const/4 v0, 0x5

    goto :goto_14

    :cond_19
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_1a

    const/4 v0, 0x7

    goto :goto_14

    :cond_1a
    if-nez v14, :cond_1b

    const/4 v0, 0x0

    goto :goto_14

    :cond_1b
    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1c

    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget-object v3, v10, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    iget v4, v10, Landroid/content/om/OverlayInfo;->userId:I

    iget-object v0, v0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    invoke-virtual {v0, v4, v3}, Lcom/android/server/om/IdmapDaemon;->idmapExists(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    move/from16 v0, v18

    goto :goto_14

    :cond_1c
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v10}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v3

    invoke-virtual {v0, v3, v8}, Lcom/android/server/om/OverlayManagerSettings;->getEnabled(Landroid/content/om/OverlayIdentifier;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    move/from16 v0, v17

    goto :goto_14

    :cond_1d
    move/from16 v0, v16

    :goto_14
    if-eq v2, v0, :cond_1e

    const-string/jumbo v3, "OverlayManager"

    const-string v4, "%s:%d: %s -> %s"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v13, v5, v2, v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, v13, v8, v0}, Lcom/android/server/om/OverlayManagerSettings;->setState(Landroid/content/om/OverlayIdentifier;II)Z

    move-result v0

    or-int/2addr v11, v0

    :cond_1e
    return v11

    :catchall_0
    move-exception v0

    goto :goto_15

    :cond_1f
    :try_start_6
    new-instance v0, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v0, v13, v8}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Landroid/content/om/OverlayIdentifier;I)V

    throw v0

    :goto_15
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_16

    :cond_20
    :try_start_7
    new-instance v0, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v0, v13, v8}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Landroid/content/om/OverlayIdentifier;I)V

    throw v0

    :goto_16
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method
