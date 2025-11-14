.class public final synthetic Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/InstallPackageHelper;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/Object;I)V
    .registers 4

    iput p3, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 23

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget v2, v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v2, :pswitch_data_184

    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget-object v2, v1, Lcom/android/server/pm/InstallPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcastAndNotify(Ljava/util/function/Supplier;ZZLjava/util/ArrayList;Lcom/android/server/pm/AsecInstallHelper$3;)V

    return-void

    :pswitch_22  #0x1
    iget-object v1, v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;

    iget-object v1, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_30  #0x0
    iget-object v2, v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    iget-object v0, v2, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "PackageManager"

    invoke-static {v3}, Lcom/android/server/pm/UpdateOwnershipHelper;->hasValidOwnershipDenyList(Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_49

    :goto_46
    move-object v6, v5

    goto/16 :goto_10c

    :cond_49
    iget-object v0, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-nez v0, :cond_4e

    goto :goto_46

    :cond_4e
    new-instance v6, Landroid/util/ArraySet;

    const/16 v7, 0x1f4

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(I)V

    :try_start_55
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object v8

    const-string/jumbo v9, "android.app.PROPERTY_LEGACY_UPDATE_OWNERSHIP_DENYLIST"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageManager$Property;

    invoke-virtual {v8}, Landroid/content/pm/PackageManager$Property;->getResourceId()I

    move-result v8

    move-object v9, v0

    check-cast v9, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {v9}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v10

    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v13, v9, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget-object v14, v9, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v15, v9, Landroid/content/pm/ApplicationInfo;->overlayPaths:[Ljava/lang/String;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    sget-object v18, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v9

    invoke-virtual/range {v10 .. v21}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_90} :catch_ea

    :cond_90
    :try_start_90
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v9

    if-eq v9, v1, :cond_e6

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_90

    const-string/jumbo v9, "deny-ownership"

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_90

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_90

    invoke-virtual {v9}, Ljava/lang/String;->isBlank()Z

    move-result v10

    if-nez v10, :cond_90

    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-le v9, v7, :cond_90

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deny list defined by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was trucated to maximum size of "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catchall {:try_start_90 .. :try_end_e2} :catchall_e3

    goto :goto_e6

    :catchall_e3
    move-exception v0

    move-object v6, v0

    goto :goto_ec

    :cond_e6
    :goto_e6
    :try_start_e6
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_e9} :catch_ea

    goto :goto_10c

    :catch_ea
    move-exception v0

    goto :goto_f7

    :goto_ec
    if-eqz v8, :cond_f6

    :try_start_ee
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_f2

    goto :goto_f6

    :catchall_f2
    move-exception v0

    :try_start_f3
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f6
    :goto_f6
    throw v6
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f7} :catch_ea

    :goto_f7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to parse update owner list for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_46

    :goto_10c
    if-eqz v6, :cond_183

    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_183

    iget-object v0, v2, Lcom/android/server/pm/InstallPackageHelper;->mUpdateOwnershipHelper:Lcom/android/server/pm/UpdateOwnershipHelper;

    iget-object v3, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/pm/UpdateOwnershipHelper;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v7, 0x0

    :goto_11c
    :try_start_11c
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_143

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/pm/UpdateOwnershipHelper;->mUpdateOwnerOptOutsToOwners:Landroid/util/ArrayMap;

    new-instance v10, Landroid/util/ArraySet;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v9, v8, v10}, Landroid/util/ArrayMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    if-eqz v8, :cond_141

    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_141

    :catchall_13f
    move-exception v0

    goto :goto_181

    :cond_141
    :goto_141
    add-int/2addr v7, v1

    goto :goto_11c

    :cond_143
    monitor-exit v4
    :try_end_144
    .catchall {:try_start_11c .. :try_end_144} :catchall_13f

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iget-object v1, v2, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_14f
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_153
    :goto_153
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_179

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    if-eqz v6, :cond_153

    iget-object v7, v0, Lcom/android/server/SystemConfig;->mUpdateOwnersForSystemApps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_153

    invoke-virtual {v6, v5}, Lcom/android/server/pm/PackageSetting;->setUpdateOwnerPackage(Ljava/lang/String;)V

    goto :goto_153

    :catchall_177
    move-exception v0

    goto :goto_17d

    :cond_179
    monitor-exit v1
    :try_end_17a
    .catchall {:try_start_14f .. :try_end_17a} :catchall_177

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    goto :goto_183

    :goto_17d
    :try_start_17d
    monitor-exit v1
    :try_end_17e
    .catchall {:try_start_17d .. :try_end_17e} :catchall_177

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :goto_181
    :try_start_181
    monitor-exit v4
    :try_end_182
    .catchall {:try_start_181 .. :try_end_182} :catchall_13f

    throw v0

    :cond_183
    :goto_183
    return-void

    :pswitch_data_184
    .packed-switch 0x0
        :pswitch_30  #00000000
        :pswitch_22  #00000001
    .end packed-switch
.end method
