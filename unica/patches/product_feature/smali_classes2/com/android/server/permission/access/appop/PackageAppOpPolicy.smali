.class public final Lcom/android/server/permission/access/appop/PackageAppOpPolicy;
.super Lcom/android/server/permission/access/appop/BaseAppOpPolicy;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final migration:Lcom/android/server/permission/access/appop/PackageAppOpMigration;

.field public volatile onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

.field public final onAppOpModeChangedListenersLock:Ljava/lang/Object;

.field public final upgrade:Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/android/server/permission/access/appop/PackageAppOpPersistence;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/permission/access/appop/BaseAppOpPolicy;-><init>(Lcom/android/server/permission/access/appop/BaseAppOpPersistence;)V

    new-instance v0, Lcom/android/server/permission/access/appop/PackageAppOpMigration;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->migration:Lcom/android/server/permission/access/appop/PackageAppOpMigration;

    new-instance v0, Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;-><init>(Lcom/android/server/permission/access/appop/PackageAppOpPolicy;)V

    iput-object v0, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->upgrade:Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->onAppOpModeChangedListenersLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getSubjectScheme()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "package"

    return-object p0
.end method

.method public final migrateUserState(Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 7

    const-class p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpMigrationHelperImpl;->getLegacyAppOpVersion()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mPackageAppOpModes:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpMigrationHelperImpl;->readLegacyAppOpState()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mPackageAppOpModes:Landroid/util/SparseArray;

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-static {p2}, Lcom/android/server/permission/access/util/PackageVersionMigration;->getVersion$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p2, Lcom/android/server/permission/access/MutableUserState;->packageAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v2, "PackageAppOpMigration"

    const-string v4, "Dropping unknown package "

    const-string v5, " when migrating app op state"

    invoke-static {v4, v3, v5, v2}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v4}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    invoke-virtual {v1, v3, v4}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->put(Ljava/lang/Object;Lcom/android/server/permission/access/immutable/MutableIndexedMap;)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v4, v6, v5}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    return-void
.end method

.method public final onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .locals 3

    iget-object p0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p1

    iget-object p3, p1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->keyAt(I)I

    invoke-virtual {p1, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/MutableUserState;

    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableUserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;I)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/permission/access/MutableUserState;->packageAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    iget-object v2, v2, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/MutableReference;

    iget-object v1, v1, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onStateMutated()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    iget-object v1, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;

    iget-object v5, v4, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    iget-object v5, v5, Lcom/android/server/permission/access/appop/AppOpService;->listeners:Landroid/util/ArraySet;

    iget-object v6, v4, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    check-cast v9, Lcom/android/server/permission/jarjar/kotlin/Triple;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_0

    invoke-virtual {v5, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/appop/AppOpsService$3;

    invoke-virtual {v9}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v17, v14

    check-cast v17, Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    invoke-virtual {v9}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/AppOpsManager;->invalidateAppOpModeCache()V

    iget-object v13, v13, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v13, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    move/from16 v16, v15

    new-instance v15, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;

    move-object/from16 v21, v0

    const/4 v0, 0x1

    invoke-direct {v15, v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;-><init>(I)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v16, v13

    invoke-static/range {v15 .. v20}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v21

    goto :goto_2

    :cond_0
    move-object/from16 v21, v0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v21, v0

    iget-object v0, v4, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v21

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public final setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 5

    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "Unable to set app op mode for missing user "

    const-string/jumbo p1, "PackageAppOpPolicy"

    invoke-static {p3, p0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p4}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/android/server/permission/access/MutableUserState;

    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableUserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, p4, v2}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ne v1, p5, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object p1, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    const/4 v1, 0x1

    invoke-virtual {p1, p3, v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/android/server/permission/access/MutableUserState;->packageAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p1

    check-cast p1, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    iget-object v1, p1, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/MutableReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    invoke-virtual {p1, p2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->put(Ljava/lang/Object;Lcom/android/server/permission/access/immutable/MutableIndexedMap;)V

    :goto_1
    check-cast v1, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, p4, v2, v0}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->putWithDefault(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->remove$1(Ljava/lang/Object;)V

    :cond_4
    iget-object p0, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_5

    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/android/server/permission/jarjar/kotlin/Triple;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, p2, v4, v2}, Lcom/android/server/permission/jarjar/kotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public final upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .locals 6

    iget-object p0, p0, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->upgrade:Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;

    const/4 v0, 0x2

    if-gt p4, v0, :cond_1

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/android/server/permission/access/appop/PackageAppOpUpgrade;->policy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/MutableUserState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableUserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p4}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string/jumbo p4, "android:run_in_background"

    invoke-static {p4}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p4, v1}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "android:run_any_in_background"

    move-object v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;ILjava/lang/String;I)V

    :cond_1
    return-void
.end method
