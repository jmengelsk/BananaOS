.class public final synthetic Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutUser;

.field public final synthetic f$1:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$2:[I

.field public final synthetic f$3:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[I[I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/ShortcutUser;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/pm/ShortcutService;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;->f$2:[I

    iput-object p4, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;->f$3:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/pm/ShortcutService;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;->f$2:[I

    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda4;->f$3:[I

    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/ShortcutService;->injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const v3, 0x8000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2a

    goto :goto_35

    :cond_2a
    iget-object v1, v0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutService;->mSmartSwitchBackupAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_35

    return-void

    :cond_35
    :goto_35
    iget-object v1, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_6a

    new-array v5, v4, [Z

    new-instance v6, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda20;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v5}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda20;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v6}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutStopWhen(Ljava/util/function/Function;)V

    aget-boolean v5, v5, v3

    if-eqz v5, :cond_6a

    const-string/jumbo v5, "ShortcutService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Shortcuts for package "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " are being restored. Existing non-manifeset shortcuts will be overwritten."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    if-eqz v1, :cond_c0

    iget-object v5, v1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_6f
    iget-object v6, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v4

    :goto_76
    if-ltz v6, :cond_bc

    iget-object v7, v1, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    if-eqz v7, :cond_b9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v8

    if-nez v8, :cond_b9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-eqz v8, :cond_b9

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v8

    if-nez v8, :cond_b9

    const-string/jumbo v8, "ShortcutService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Shortcuts for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " - dynamic shortcut are being kept."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v7}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_b9

    :catchall_b7
    move-exception p0

    goto :goto_be

    :cond_b9
    :goto_b9
    add-int/lit8 v6, v6, -0x1

    goto :goto_76

    :cond_bc
    monitor-exit v5

    goto :goto_c0

    :goto_be
    monitor-exit v5
    :try_end_bf
    .catchall {:try_start_6f .. :try_end_bf} :catchall_b7

    throw p0

    :cond_c0
    :goto_c0
    iput-object v0, p1, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v0, v2, v3

    add-int/2addr v0, v4

    aput v0, v2, v3

    aget v0, p0, v3

    iget-object v1, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d3
    iget-object p1, p1, Lcom/android/server/pm/ShortcutPackage;->mShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    monitor-exit v1
    :try_end_da
    .catchall {:try_start_d3 .. :try_end_da} :catchall_de

    add-int/2addr p1, v0

    aput p1, p0, v3

    return-void

    :catchall_de
    move-exception p0

    :try_start_df
    monitor-exit v1
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    throw p0
.end method
