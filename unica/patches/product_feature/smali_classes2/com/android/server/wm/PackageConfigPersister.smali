.class public final Lcom/android/server/wm/PackageConfigPersister;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mLock:Ljava/lang/Object;

.field public final mModified:Landroid/util/SparseArray;

.field public final mPendingWrite:Landroid/util/SparseArray;

.field public final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    iput-object p2, p0, Lcom/android/server/wm/PackageConfigPersister;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method public static findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .locals 0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    return-object p0
.end method

.method public static findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;
    .locals 1

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final findPackageConfiguration(ILjava/lang/String;)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;
    .locals 3

    const-string v0, "App-specific configuration not found for packageName: "

    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-static {p0, p2, p1}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "PackageConfigPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and userId: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    iget-object p2, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mGrammaticalGender:Ljava/lang/Integer;

    invoke-direct {p1, p2, v0, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;-><init>(Ljava/lang/Integer;Landroid/os/LocaleList;Ljava/lang/Integer;)V

    monitor-exit v1

    return-object p1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removePackage(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    invoke-static {v0, p2, p1}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    iget v3, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v2, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    const-class v0, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/PersisterQueue;->removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-static {v0, p2, p1}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_2

    iget-object v0, v0, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance p0, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    :cond_3
    return-void
.end method

.method public final removeUser(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PackageConfigPersister;)V

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    monitor-exit v0

    return-void

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateConfigIfNeeded(Lcom/android/server/wm/ConfigurationContainer;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-static {v1, p3, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p3, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    iget-object v1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/wm/LocaleOverlayHelper;->combineLocalesIfOverlayExists(Landroid/os/LocaleList;Landroid/os/LocaleList;)Landroid/os/LocaleList;

    move-result-object p0

    iget-object p2, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mGrammaticalGender:Ljava/lang/Integer;

    invoke-virtual {p1, p3, p0, p2}, Lcom/android/server/wm/ConfigurationContainer;->applyAppSpecificConfig(Ljava/lang/Integer;Landroid/os/LocaleList;Ljava/lang/Integer;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p0}, Lcom/android/server/wm/ConfigurationContainer;->applyAppSpecificConfig(Ljava/lang/Integer;Landroid/os/LocaleList;Ljava/lang/Integer;)Z

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateFromImpl(Ljava/lang/String;ILcom/android/server/wm/PackageConfigurationUpdaterImpl;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/PackageConfigPersister;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-static {v1, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigPersister;->mModified:Landroid/util/SparseArray;

    invoke-static {v1, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object v1

    move v4, v2

    :goto_0
    iget-object v5, p3, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mNightMode:Ljava/lang/Integer;

    if-eqz v5, :cond_2

    iget-object v6, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    iput-object v5, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    move v5, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v2

    :goto_2
    iget-object v6, p3, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mLocales:Landroid/os/LocaleList;

    if-eqz v6, :cond_4

    iget-object v7, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v6, v7}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    iput-object v6, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    move v6, v3

    goto :goto_4

    :cond_4
    :goto_3
    move v6, v2

    :goto_4
    iget p3, p3, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mGrammaticalGender:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object v7, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mGrammaticalGender:Ljava/lang/Integer;

    invoke-virtual {p3, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move p3, v2

    goto :goto_5

    :cond_5
    iput-object p3, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mGrammaticalGender:Ljava/lang/Integer;

    move p3, v3

    :goto_5
    iget-object v7, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_8

    :cond_6
    iget-object v7, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_e

    :cond_7
    :goto_6
    iget-object v7, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mGrammaticalGender:Ljava/lang/Integer;

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_8

    goto/16 :goto_d

    :cond_8
    if-nez v5, :cond_9

    if-nez v6, :cond_9

    if-nez p3, :cond_9

    monitor-exit v0

    return v2

    :cond_9
    iget-object p1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    iget-object p2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget p3, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/PackageConfigPersister;->findRecord(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/server/wm/PackageConfigPersister;->mPendingWrite:Landroid/util/SparseArray;

    iget-object p2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    iget p3, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/PackageConfigPersister;->findRecordOrCreate(Landroid/util/SparseArray;Ljava/lang/String;I)Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    move-result-object p1

    :cond_a
    iget-object p2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    if-eqz p2, :cond_c

    iget-object p3, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    invoke-virtual {p2, p3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    goto :goto_7

    :cond_b
    iput-object p2, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mNightMode:Ljava/lang/Integer;

    move p2, v3

    goto :goto_8

    :cond_c
    :goto_7
    move p2, v2

    :goto_8
    if-nez p2, :cond_11

    iget-object p2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    if-eqz p2, :cond_e

    iget-object p3, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p2, p3}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    goto :goto_9

    :cond_d
    iput-object p2, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mLocales:Landroid/os/LocaleList;

    move p2, v3

    goto :goto_a

    :cond_e
    :goto_9
    move p2, v2

    :goto_a
    if-nez p2, :cond_11

    iget-object p2, v1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mGrammaticalGender:Ljava/lang/Integer;

    if-eqz p2, :cond_10

    iget-object p3, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mGrammaticalGender:Ljava/lang/Integer;

    invoke-virtual {p2, p3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    goto :goto_b

    :cond_f
    iput-object p2, p1, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mGrammaticalGender:Ljava/lang/Integer;

    move p2, v3

    goto :goto_c

    :cond_10
    :goto_b
    move p2, v2

    :goto_c
    if-nez p2, :cond_11

    monitor-exit v0

    return v2

    :cond_11
    iget-object p2, p0, Lcom/android/server/wm/PackageConfigPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance p3, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;

    invoke-direct {p3, p0, p1}, Lcom/android/server/wm/PackageConfigPersister$WriteProcessItem;-><init>(Lcom/android/server/wm/PackageConfigPersister;Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;)V

    invoke-virtual {p2, p3, v2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    monitor-exit v0

    return v3

    :cond_12
    :goto_d
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/PackageConfigPersister;->removePackage(ILjava/lang/String;)V

    monitor-exit v0

    return v4

    :goto_e
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
