.class public final Lcom/android/server/permission/access/AccessCheckingService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field private appOpService:Lcom/android/server/permission/access/appop/AppOpService;

.field private packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

.field private permissionService:Lcom/android/server/permission/access/permission/PermissionService;

.field private final persistence:Lcom/android/server/permission/access/AccessPersistence;

.field private final policy:Lcom/android/server/permission/access/AccessPolicy;

.field private volatile state:Lcom/android/server/permission/access/AccessState;

.field private final stateLock:Ljava/lang/Object;

.field private systemConfig:Lcom/android/server/SystemConfig;

.field private userManagerService:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;

    new-instance p1, Lcom/android/server/permission/access/AccessPolicy;

    invoke-direct {p1}, Lcom/android/server/permission/access/AccessPolicy;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;

    new-instance v0, Lcom/android/server/permission/access/AccessPersistence;

    invoke-direct {v0, p1}, Lcom/android/server/permission/access/AccessPersistence;-><init>(Lcom/android/server/permission/access/AccessPolicy;)V

    iput-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;

    return-void
.end method

.method public static final synthetic access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;
    .registers 1

    iget-object p0, p0, Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;

    return-object p0
.end method

.method public static final synthetic access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;

    return-object p0
.end method

.method public static final synthetic access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;
    .registers 1

    iget-object p0, p0, Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;

    return-object p0
.end method

.method public static final synthetic access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/permission/access/AccessCheckingService;->stateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;

    return-void
.end method

.method private final getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerLocal;",
            ")",
            "Lcom/android/server/permission/jarjar/kotlin/Pair<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageState;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageState;",
            ">;>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object p0

    :try_start_4
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getDisabledSystemPackageStates()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/android/server/permission/jarjar/kotlin/Pair;

    invoke-direct {v1, p1, v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_15

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-object v1

    :catchall_15
    move-exception p1

    :try_start_16
    throw p1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v0

    invoke-static {p0, p1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final getImplicitToSourcePermissions(Lcom/android/server/SystemConfig;)Lcom/android/server/permission/access/immutable/IndexedMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/SystemConfig;",
            ")",
            "Lcom/android/server/permission/access/immutable/IndexedMap;"
        }
    .end annotation

    new-instance p0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {p0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    iget-object p1, p1, Lcom/android/server/SystemConfig;->mSplitPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_c
    if-ge v1, v0, :cond_45

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/permission/PermissionManager$SplitPermissionInfo;

    invoke-virtual {v2}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_37

    goto :goto_3f

    :cond_37
    new-instance v5, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-direct {v5}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>()V

    invoke-virtual {p0, v4, v5}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3f
    check-cast v5, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-virtual {v5, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)V

    goto :goto_22

    :cond_45
    return-object p0
.end method

.method private final getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManagerInternal;",
            ")",
            "Lcom/android/server/permission/access/immutable/IntMap;"
        }
    .end annotation

    new-instance p0, Lcom/android/server/permission/access/immutable/MutableIntMap;

    invoke-direct {p0}, Lcom/android/server/permission/access/immutable/MutableIntMap;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0xb

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x11

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method private final getPrivilegedPermissionAllowlistPackages(Lcom/android/server/SystemConfig;)Lcom/android/server/permission/access/immutable/IndexedListSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/SystemConfig;",
            ")",
            "Lcom/android/server/permission/access/immutable/IndexedListSet;"
        }
    .end annotation

    new-instance p0, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-direct {p0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>()V

    const-string/jumbo v0, "android"

    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    const-string/jumbo v0, "android.hardware.type.automotive"

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    const-string/jumbo p1, "ro.android.car.carservice.package"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_26

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)V

    :cond_26
    return-object p0
.end method

.method private final isLeanback(Lcom/android/server/SystemConfig;)Z
    .registers 2

    iget-object p0, p1, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    const-string/jumbo p1, "android.software.leanback"

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;
    .registers 5

    iget-object p0, p0, Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;

    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    if-eqz p0, :cond_17

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/SchemePolicy;

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    if-eqz p0, :cond_1b

    return-object p0

    :cond_1b
    const-string/jumbo p0, "Scheme policy for "

    const-string v0, " and "

    const-string v1, " does not exist"

    invoke-static {p0, p1, v0, p2, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_10

    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-direct {v0, p0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    check-cast p1, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt___CollectionsKt$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt___CollectionsKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    throw v1
.end method

.method public final initialize()V
    .registers 29

    move-object/from16 v1, p0

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, v1, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-class v0, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerLocal;

    iput-object v0, v1, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/permission/access/AccessCheckingService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/permission/access/AccessCheckingService;->systemConfig:Lcom/android/server/SystemConfig;

    iget-object v0, v1, Lcom/android/server/permission/access/AccessCheckingService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    if-eqz v0, :cond_572

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object v0

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    array-length v4, v0

    const/4 v6, 0x0

    :goto_31
    const/4 v7, 0x1

    if-ge v6, v4, :cond_3c

    aget v8, v0, v6

    invoke-virtual {v3, v8, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    :cond_3c
    iget-object v0, v1, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-eqz v0, :cond_569

    invoke-direct {v1, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v6, v1, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v6, :cond_560

    invoke-direct {v1, v6}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    move-result-object v6

    iget-object v8, v1, Lcom/android/server/permission/access/AccessCheckingService;->systemConfig:Lcom/android/server/SystemConfig;

    if-eqz v8, :cond_557

    invoke-direct {v1, v8}, Lcom/android/server/permission/access/AccessCheckingService;->isLeanback(Lcom/android/server/SystemConfig;)Z

    move-result v8

    iget-object v9, v1, Lcom/android/server/permission/access/AccessCheckingService;->systemConfig:Lcom/android/server/SystemConfig;

    if-eqz v9, :cond_54e

    iget-object v10, v9, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    invoke-direct {v1, v9}, Lcom/android/server/permission/access/AccessCheckingService;->getPrivilegedPermissionAllowlistPackages(Lcom/android/server/SystemConfig;)Lcom/android/server/permission/access/immutable/IndexedListSet;

    move-result-object v9

    iget-object v11, v1, Lcom/android/server/permission/access/AccessCheckingService;->systemConfig:Lcom/android/server/SystemConfig;

    if-eqz v11, :cond_545

    iget-object v12, v11, Lcom/android/server/SystemConfig;->mPermissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    invoke-direct {v1, v11}, Lcom/android/server/permission/access/AccessCheckingService;->getImplicitToSourcePermissions(Lcom/android/server/SystemConfig;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v11

    new-instance v13, Lcom/android/server/permission/access/MutableAccessState;

    new-instance v14, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v15, Lcom/android/server/permission/access/MutableExternalState;

    new-instance v5, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v2, Lcom/android/server/permission/access/immutable/MutableIntSet;

    invoke-direct {v2}, Lcom/android/server/permission/access/immutable/MutableIntSet;-><init>()V

    invoke-direct {v5, v2, v2}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v17

    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v18

    new-instance v2, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v7, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-direct {v7}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;-><init>()V

    invoke-direct {v2, v7, v7}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    new-instance v20, Lcom/android/server/permission/access/immutable/MutableIntMap;

    invoke-direct/range {v20 .. v20}, Lcom/android/server/permission/access/immutable/MutableIntMap;-><init>()V

    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v22

    new-instance v23, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-direct/range {v23 .. v23}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>()V

    new-instance v24, Lcom/android/server/pm/permission/PermissionAllowlist;

    invoke-direct/range {v24 .. v24}, Lcom/android/server/pm/permission/PermissionAllowlist;-><init>()V

    new-instance v25, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct/range {v25 .. v25}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    const/16 v26, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v2

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v26}, Lcom/android/server/permission/access/MutableExternalState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;Z)V

    invoke-direct {v14, v15, v15}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    new-instance v2, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v5, Lcom/android/server/permission/access/MutableSystemState;

    new-instance v7, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v15, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v15}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    invoke-direct {v7, v15, v15}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    new-instance v15, Lcom/android/server/permission/access/immutable/MutableReference;

    move-object/from16 v16, v11

    new-instance v11, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v11}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    invoke-direct {v15, v11, v11}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    new-instance v11, Lcom/android/server/permission/access/immutable/MutableReference;

    move-object/from16 v17, v12

    new-instance v12, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v12}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    invoke-direct {v11, v12, v12}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    invoke-direct {v5, v7, v15, v11}, Lcom/android/server/permission/access/MutableSystemState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;)V

    invoke-direct {v2, v5, v5}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    new-instance v5, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v7, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-direct {v7}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;-><init>()V

    invoke-direct {v5, v7, v7}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    invoke-direct {v13, v14, v2, v5}, Lcom/android/server/permission/access/AccessState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;)V

    iget-object v2, v1, Lcom/android/server/permission/access/AccessCheckingService;->policy:Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v2

    iget-object v5, v2, Lcom/android/server/permission/access/MutableExternalState;->userIdsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v5}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/immutable/MutableIntSet;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    const/4 v11, 0x0

    :goto_10b
    if-ge v11, v7, :cond_11a

    invoke-virtual {v3, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v12

    iget-object v14, v5, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    const/4 v15, 0x1

    invoke-virtual {v14, v12, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_10b

    :cond_11a
    iput-object v4, v2, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    iput-object v0, v2, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_126
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_164

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v5

    if-eqz v5, :cond_13f

    goto :goto_126

    :cond_13f
    iget-object v5, v2, Lcom/android/server/permission/access/MutableExternalState;->appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v5}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v11

    if-eqz v11, :cond_152

    goto :goto_15a

    :cond_152
    new-instance v11, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-direct {v11}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>()V

    invoke-virtual {v5, v7, v11}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->put(ILcom/android/server/permission/access/immutable/Immutable;)V

    :goto_15a
    check-cast v11, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)V

    goto :goto_126

    :cond_164
    iput-object v6, v2, Lcom/android/server/permission/access/MutableExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    iput-boolean v8, v2, Lcom/android/server/permission/access/MutableExternalState;->isLeanback:Z

    iput-object v10, v2, Lcom/android/server/permission/access/MutableExternalState;->configPermissions:Ljava/util/Map;

    iput-object v9, v2, Lcom/android/server/permission/access/MutableExternalState;->privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/immutable/IndexedListSet;

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/android/server/permission/access/MutableExternalState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/android/server/permission/access/MutableExternalState;->implicitToSourcePermissions:Lcom/android/server/permission/access/immutable/IndexedMap;

    iget-object v0, v13, Lcom/android/server/permission/access/AccessState;->userStatesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_181
    if-ge v4, v2, :cond_192

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    new-instance v6, Lcom/android/server/permission/access/MutableUserState;

    invoke-direct {v6}, Lcom/android/server/permission/access/MutableUserState;-><init>()V

    invoke-static {v0, v5, v6}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_181

    :cond_192
    iget-object v0, v1, Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/android/server/permission/access/AccessPersistence$WriteHandler;-><init>(Lcom/android/server/permission/access/AccessPersistence;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    iget-object v2, v1, Lcom/android/server/permission/access/AccessCheckingService;->persistence:Lcom/android/server/permission/access/AccessPersistence;

    const-string v3, " not found"

    const-string v4, ".reservecopy"

    const-string v5, "Failed to read "

    iget-object v6, v2, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    const-string v7, "AccessPersistence"

    new-instance v8, Ljava/io/File;

    const-string/jumbo v0, "com.android.permission"

    invoke-static {v0}, Landroid/content/ApexEnvironment;->getApexEnvironment(Ljava/lang/String;)Landroid/content/ApexEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ApexEnvironment;->getDeviceProtectedDataDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v9, "access.abx"

    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_1c5
    new-instance v9, Landroid/util/AtomicFile;

    invoke-direct {v9, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_1ca
    .catch Ljava/io/FileNotFoundException; {:try_start_1c5 .. :try_end_1ca} :catch_260
    .catch Ljava/lang/Exception; {:try_start_1c5 .. :try_end_1ca} :catch_253

    :try_start_1ca
    invoke-virtual {v9}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v10
    :try_end_1ce
    .catch Ljava/io/FileNotFoundException; {:try_start_1ca .. :try_end_1ce} :catch_1e2
    .catch Ljava/lang/Exception; {:try_start_1ca .. :try_end_1ce} :catch_1df

    :try_start_1ce
    new-instance v0, Lcom/android/modules/utils/BinaryXmlPullParser;

    invoke-direct {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Lcom/android/modules/utils/BinaryXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v6, v0, v13}, Lcom/android/server/permission/access/AccessPolicy;->parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V
    :try_end_1da
    .catchall {:try_start_1ce .. :try_end_1da} :catchall_1e4

    :try_start_1da
    invoke-static {v10, v11}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_1dd
    .catch Ljava/io/FileNotFoundException; {:try_start_1da .. :try_end_1dd} :catch_1e2
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_1dd} :catch_1df

    goto/16 :goto_2b7

    :catch_1df
    move-exception v0

    move-object v10, v0

    goto :goto_1ec

    :catch_1e2
    move-exception v0

    goto :goto_255

    :catchall_1e4
    move-exception v0

    move-object v11, v0

    :try_start_1e6
    throw v11
    :try_end_1e7
    .catchall {:try_start_1e6 .. :try_end_1e7} :catchall_1e7

    :catchall_1e7
    move-exception v0

    :try_start_1e8
    invoke-static {v10, v11}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1ec
    .catch Ljava/io/FileNotFoundException; {:try_start_1e8 .. :try_end_1ec} :catch_1e2
    .catch Ljava/lang/Exception; {:try_start_1e8 .. :try_end_1ec} :catch_1df

    :goto_1ec
    :try_start_1ec
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v11, Ljava/io/File;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v9}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_21f
    .catch Ljava/io/FileNotFoundException; {:try_start_1ec .. :try_end_21f} :catch_260
    .catch Ljava/lang/Exception; {:try_start_1ec .. :try_end_21f} :catch_253

    :try_start_21f
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v11}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v9
    :try_end_228
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_228} :catch_239

    :try_start_228
    new-instance v0, Lcom/android/modules/utils/BinaryXmlPullParser;

    invoke-direct {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;-><init>()V

    const/4 v12, 0x0

    invoke-virtual {v0, v9, v12}, Lcom/android/modules/utils/BinaryXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v6, v0, v13}, Lcom/android/server/permission/access/AccessPolicy;->parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V
    :try_end_234
    .catchall {:try_start_228 .. :try_end_234} :catchall_23b

    :try_start_234
    invoke-static {v9, v12}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_237
    .catch Ljava/lang/Exception; {:try_start_234 .. :try_end_237} :catch_239

    goto/16 :goto_2b7

    :catch_239
    move-exception v0

    goto :goto_243

    :catchall_23b
    move-exception v0

    move-object v12, v0

    :try_start_23d
    throw v12
    :try_end_23e
    .catchall {:try_start_23d .. :try_end_23e} :catchall_23e

    :catchall_23e
    move-exception v0

    :try_start_23f
    invoke-static {v9, v12}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_243
    .catch Ljava/lang/Exception; {:try_start_23f .. :try_end_243} :catch_239

    :goto_243
    :try_start_243
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v10

    :catch_253
    move-exception v0

    goto :goto_256

    :goto_255
    throw v0
    :try_end_256
    .catch Ljava/io/FileNotFoundException; {:try_start_243 .. :try_end_256} :catch_260
    .catch Ljava/lang/Exception; {:try_start_243 .. :try_end_256} :catch_253

    :goto_256
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v8, v5}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v6, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object v8, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_27b
    if-ge v9, v8, :cond_2af

    iget-object v10, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v10, Ljava/lang/String;

    iget-object v10, v11, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_294
    if-ge v12, v10, :cond_2ac

    iget-object v14, v11, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    iget-object v15, v11, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v15, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v13}, Lcom/android/server/permission/access/SchemePolicy;->migrateSystemState(Lcom/android/server/permission/access/MutableAccessState;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_294

    :cond_2ac
    add-int/lit8 v9, v9, 0x1

    goto :goto_27b

    :cond_2af
    invoke-virtual {v13}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    const/4 v8, -0x1

    invoke-virtual {v2, v0, v13, v8}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/WritableState;Lcom/android/server/permission/access/MutableAccessState;I)V

    :goto_2b7
    invoke-virtual {v13}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    move-result-object v8

    iget-object v0, v8, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_2c6
    if-ge v10, v9, :cond_408

    iget-object v0, v8, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    new-instance v12, Ljava/io/File;

    const-string/jumbo v0, "com.android.permission"

    invoke-static {v0}, Landroid/content/ApexEnvironment;->getApexEnvironment(Ljava/lang/String;)Landroid/content/ApexEnvironment;

    move-result-object v0

    invoke-static {v11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroid/content/ApexEnvironment;->getDeviceProtectedDataDirForUser(Landroid/os/UserHandle;)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v14, "access.abx"

    invoke-direct {v12, v0, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_2e5
    new-instance v14, Landroid/util/AtomicFile;

    invoke-direct {v14, v12}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_2ea
    .catch Ljava/io/FileNotFoundException; {:try_start_2e5 .. :try_end_2ea} :catch_388
    .catch Ljava/lang/Exception; {:try_start_2e5 .. :try_end_2ea} :catch_382

    :try_start_2ea
    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v15
    :try_end_2ee
    .catch Ljava/io/FileNotFoundException; {:try_start_2ea .. :try_end_2ee} :catch_384
    .catch Ljava/lang/Exception; {:try_start_2ea .. :try_end_2ee} :catch_313

    :try_start_2ee
    new-instance v0, Lcom/android/modules/utils/BinaryXmlPullParser;

    invoke-direct {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;-><init>()V
    :try_end_2f3
    .catchall {:try_start_2ee .. :try_end_2f3} :catchall_309

    move-object/from16 v16, v8

    const/4 v8, 0x0

    :try_start_2f6
    invoke-virtual {v0, v15, v8}, Lcom/android/modules/utils/BinaryXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v6, v0, v13, v11}, Lcom/android/server/permission/access/AccessPolicy;->parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    :try_end_2fc
    .catchall {:try_start_2f6 .. :try_end_2fc} :catchall_306

    :try_start_2fc
    invoke-static {v15, v8}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2ff
    .catch Ljava/io/FileNotFoundException; {:try_start_2fc .. :try_end_2ff} :catch_303
    .catch Ljava/lang/Exception; {:try_start_2fc .. :try_end_2ff} :catch_300

    goto :goto_364

    :catch_300
    move-exception v0

    :goto_301
    move-object v8, v0

    goto :goto_317

    :catch_303
    move-exception v0

    goto/16 :goto_387

    :catchall_306
    move-exception v0

    :goto_307
    move-object v8, v0

    goto :goto_30d

    :catchall_309
    move-exception v0

    move-object/from16 v16, v8

    goto :goto_307

    :goto_30d
    :try_start_30d
    throw v8
    :try_end_30e
    .catchall {:try_start_30d .. :try_end_30e} :catchall_30e

    :catchall_30e
    move-exception v0

    :try_start_30f
    invoke-static {v15, v8}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_313
    .catch Ljava/io/FileNotFoundException; {:try_start_30f .. :try_end_313} :catch_303
    .catch Ljava/lang/Exception; {:try_start_30f .. :try_end_313} :catch_300

    :catch_313
    move-exception v0

    move-object/from16 v16, v8

    goto :goto_301

    :goto_317
    :try_start_317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v15, Ljava/io/File;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v14}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v17, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v15, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_34c
    .catch Ljava/io/FileNotFoundException; {:try_start_317 .. :try_end_34c} :catch_395
    .catch Ljava/lang/Exception; {:try_start_317 .. :try_end_34c} :catch_382

    :try_start_34c
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v15}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v8
    :try_end_355
    .catch Ljava/lang/Exception; {:try_start_34c .. :try_end_355} :catch_368

    :try_start_355
    new-instance v0, Lcom/android/modules/utils/BinaryXmlPullParser;

    invoke-direct {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;-><init>()V

    const/4 v14, 0x0

    invoke-virtual {v0, v8, v14}, Lcom/android/modules/utils/BinaryXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v6, v0, v13, v11}, Lcom/android/server/permission/access/AccessPolicy;->parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    :try_end_361
    .catchall {:try_start_355 .. :try_end_361} :catchall_36a

    :try_start_361
    invoke-static {v8, v14}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_364
    .catch Ljava/lang/Exception; {:try_start_361 .. :try_end_364} :catch_368

    :goto_364
    move-object/from16 v18, v3

    goto/16 :goto_400

    :catch_368
    move-exception v0

    goto :goto_372

    :catchall_36a
    move-exception v0

    move-object v14, v0

    :try_start_36c
    throw v14
    :try_end_36d
    .catchall {:try_start_36c .. :try_end_36d} :catchall_36d

    :catchall_36d
    move-exception v0

    :try_start_36e
    invoke-static {v8, v14}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_372
    .catch Ljava/lang/Exception; {:try_start_36e .. :try_end_372} :catch_368

    :goto_372
    :try_start_372
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v17

    :catch_382
    move-exception v0

    goto :goto_38b

    :catch_384
    move-exception v0

    move-object/from16 v16, v8

    :goto_387
    throw v0
    :try_end_388
    .catch Ljava/io/FileNotFoundException; {:try_start_372 .. :try_end_388} :catch_395
    .catch Ljava/lang/Exception; {:try_start_372 .. :try_end_388} :catch_382

    :catch_388
    move-object/from16 v16, v8

    goto :goto_395

    :goto_38b
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v12, v5}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_395
    :goto_395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v6, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object v8, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v12, 0x0

    :goto_3b0
    if-ge v12, v8, :cond_3ee

    iget-object v14, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    iget-object v15, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v15, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v14, Ljava/lang/String;

    iget-object v14, v15, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    move-object/from16 v17, v0

    const/4 v0, 0x0

    :goto_3cb
    move-object/from16 v18, v3

    if-ge v0, v14, :cond_3e9

    iget-object v3, v15, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    iget-object v3, v15, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v19, Ljava/lang/String;

    invoke-virtual {v3, v13, v11}, Lcom/android/server/permission/access/SchemePolicy;->migrateUserState(Lcom/android/server/permission/access/MutableAccessState;I)V

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v18

    goto :goto_3cb

    :cond_3e9
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v17

    goto :goto_3b0

    :cond_3ee
    move-object/from16 v18, v3

    invoke-virtual {v13}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/server/permission/access/WritableState;

    invoke-virtual {v2, v0, v13, v11}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/WritableState;Lcom/android/server/permission/access/MutableAccessState;I)V

    :goto_400
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, v16

    move-object/from16 v3, v18

    goto/16 :goto_2c6

    :cond_408
    iput-object v13, v1, Lcom/android/server/permission/access/AccessCheckingService;->state:Lcom/android/server/permission/access/AccessState;

    iget-object v0, v1, Lcom/android/server/permission/access/AccessCheckingService;->appOpService:Lcom/android/server/permission/access/appop/AppOpService;

    if-eqz v0, :cond_53c

    new-instance v2, Landroid/os/Handler;

    iget-object v3, v0, Lcom/android/server/permission/access/appop/AppOpService;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v2, v0, Lcom/android/server/permission/access/appop/AppOpService;->appIdPolicy:Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    new-instance v3, Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;

    invoke-direct {v3, v0}, Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;-><init>(Lcom/android/server/permission/access/appop/AppOpService;)V

    iget-object v4, v2, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->onAppOpModeChangedListenersLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_423
    iget-object v5, v2, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    new-instance v7, Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v6, v7}, Lcom/android/server/permission/access/immutable/IndexedListSet;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v6, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)V

    iput-object v6, v2, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;
    :try_end_439
    .catchall {:try_start_423 .. :try_end_439} :catchall_539

    monitor-exit v4

    iget-object v2, v0, Lcom/android/server/permission/access/appop/AppOpService;->packagePolicy:Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    new-instance v3, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;

    invoke-direct {v3, v0}, Lcom/android/server/permission/access/appop/AppOpService$OnPackageAppOpModeChangedListener;-><init>(Lcom/android/server/permission/access/appop/AppOpService;)V

    iget-object v4, v2, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->onAppOpModeChangedListenersLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_444
    iget-object v0, v2, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v5, v6}, Lcom/android/server/permission/access/immutable/IndexedListSet;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v5, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)V

    iput-object v5, v2, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;->onAppOpModeChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;
    :try_end_45a
    .catchall {:try_start_444 .. :try_end_45a} :catchall_536

    monitor-exit v4

    iget-object v0, v1, Lcom/android/server/permission/access/AccessCheckingService;->permissionService:Lcom/android/server/permission/access/permission/PermissionService;

    if-eqz v0, :cond_52d

    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-class v1, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {v1}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerLocal;

    iput-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const-string/jumbo v1, "platform_compat"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->platformCompat:Lcom/android/internal/compat/IPlatformCompat;

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->systemConfig:Lcom/android/server/SystemConfig;

    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    iput-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    invoke-static {}, Landroid/permission/PermissionManager;->disablePackageNamePermissionCache()V

    new-instance v1, Lcom/android/server/ServiceThread;

    const/16 v2, 0xa

    const-string/jumbo v3, "PermissionService"

    const/4 v15, 0x1

    invoke-direct {v1, v3, v2, v15}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    iput-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->handlerThread:Landroid/os/HandlerThread;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_524

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    new-instance v1, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    invoke-direct {v1, v0}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;-><init>(Lcom/android/server/permission/access/permission/PermissionService;)V

    iput-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionFlagsChangedListener:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    iget-object v3, v2, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListenersLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4dd
    iget-object v4, v2, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    new-instance v6, Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v5, v6}, Lcom/android/server/permission/access/immutable/IndexedListSet;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v5, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)V

    iput-object v5, v2, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;
    :try_end_4f3
    .catchall {:try_start_4dd .. :try_end_4f3} :catchall_521

    monitor-exit v3

    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    iget-object v0, v0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionFlagsChangedListener:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    if-eqz v0, :cond_518

    iget-object v2, v1, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listenersLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4fd
    iget-object v3, v1, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v4, v5}, Lcom/android/server/permission/access/immutable/IndexedListSet;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)V

    iput-object v4, v1, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;
    :try_end_513
    .catchall {:try_start_4fd .. :try_end_513} :catchall_515

    monitor-exit v2

    return-void

    :catchall_515
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_518
    const-string/jumbo v0, "onPermissionFlagsChangedListener"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/16 v27, 0x0

    throw v27

    :catchall_521
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_524
    const-string/jumbo v0, "handlerThread"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/16 v27, 0x0

    throw v27

    :cond_52d
    const/16 v27, 0x0

    const-string/jumbo v0, "permissionService"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v27

    :catchall_536
    move-exception v0

    monitor-exit v4

    throw v0

    :catchall_539
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_53c
    const-string/jumbo v0, "appOpService"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/16 v27, 0x0

    throw v27

    :cond_545
    const/16 v27, 0x0

    const-string/jumbo v0, "systemConfig"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v27

    :cond_54e
    const/16 v27, 0x0

    const-string/jumbo v0, "systemConfig"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v27

    :cond_557
    const/16 v27, 0x0

    const-string/jumbo v0, "systemConfig"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v27

    :cond_560
    const/16 v27, 0x0

    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v27

    :cond_569
    const/16 v27, 0x0

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v27

    :cond_572
    const/16 v27, 0x0

    const-string/jumbo v0, "userManagerService"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v27
.end method

.method public final mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_15

    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :catchall_13
    move-exception p0

    goto :goto_24

    :cond_15
    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    new-instance v3, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v3, p0, v2}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    check-cast p1, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt___CollectionsKt$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v3}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt___CollectionsKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    throw v1
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_13

    :goto_24
    monitor-exit v0

    throw p0
.end method

.method public final onPackageAdded$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-eqz v0, :cond_9c

    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v0, :cond_95

    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    move-result-object v7

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_24
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-eqz v0, :cond_8c

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v0, v1}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v3

    move-object v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/permission/access/AccessPolicy;->onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {p0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_53
    if-ge v1, p1, :cond_87

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v5, v0

    :goto_6c
    if-ge v5, v3, :cond_84

    iget-object v6, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_81
    .catchall {:try_start_24 .. :try_end_81} :catchall_89

    add-int/lit8 v5, v5, 0x1

    goto :goto_6c

    :cond_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    :cond_87
    monitor-exit v2

    return-void

    :catchall_89
    move-exception v0

    move-object p0, v0

    goto :goto_93

    :cond_8c
    :try_start_8c
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
    :try_end_93
    .catchall {:try_start_8c .. :try_end_93} :catchall_89

    :goto_93
    monitor-exit v2

    throw p0

    :cond_95
    const-string/jumbo p0, "packageManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9c
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final onPackageInstalled$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;I)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-eqz v0, :cond_9d

    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v0, :cond_96

    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    move-result-object v7

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_24
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v0, v1}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v3

    move-object v8, p1

    move v9, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/permission/access/AccessPolicy;->onPackageInstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {p0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_54
    if-ge v0, p1, :cond_88

    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v4, p2

    :goto_6d
    if-ge v4, v1, :cond_85

    iget-object v5, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_82
    .catchall {:try_start_24 .. :try_end_82} :catchall_8a

    add-int/lit8 v4, v4, 0x1

    goto :goto_6d

    :cond_85
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    :cond_88
    monitor-exit v2

    return-void

    :catchall_8a
    move-exception v0

    move-object p0, v0

    goto :goto_94

    :cond_8d
    :try_start_8d
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
    :try_end_94
    .catchall {:try_start_8d .. :try_end_94} :catchall_8a

    :goto_94
    monitor-exit v2

    throw p0

    :cond_96
    const-string/jumbo p0, "packageManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9d
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final onPackageRemoved$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;I)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-eqz v0, :cond_9d

    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v0, :cond_96

    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    move-result-object v7

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_24
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v0, v1}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v3

    move-object v8, p1

    move v9, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/permission/access/AccessPolicy;->onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {p0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_54
    if-ge v0, p1, :cond_88

    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v4, p2

    :goto_6d
    if-ge v4, v1, :cond_85

    iget-object v5, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_82
    .catchall {:try_start_24 .. :try_end_82} :catchall_8a

    add-int/lit8 v4, v4, 0x1

    goto :goto_6d

    :cond_85
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    :cond_88
    monitor-exit v2

    return-void

    :catchall_8a
    move-exception v0

    move-object p0, v0

    goto :goto_94

    :cond_8d
    :try_start_8d
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
    :try_end_94
    .catchall {:try_start_8d .. :try_end_94} :catchall_8a

    :goto_94
    monitor-exit v2

    throw p0

    :cond_96
    const-string/jumbo p0, "packageManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9d
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final onPackageUninstalled$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;II)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-eqz v0, :cond_9e

    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v0, :cond_97

    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    move-result-object v7

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_24
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-eqz v0, :cond_8e

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v0, v1}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v3

    move-object v8, p1

    move v9, p2

    move v10, p3

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/permission/access/AccessPolicy;->onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;II)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {p0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_55
    if-ge p3, p1, :cond_89

    iget-object v0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v3, p2

    :goto_6e
    if-ge v3, v0, :cond_86

    iget-object v4, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_83
    .catchall {:try_start_24 .. :try_end_83} :catchall_8b

    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    :cond_86
    add-int/lit8 p3, p3, 0x1

    goto :goto_55

    :cond_89
    monitor-exit v2

    return-void

    :catchall_8b
    move-exception v0

    move-object p0, v0

    goto :goto_95

    :cond_8e
    :try_start_8e
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
    :try_end_95
    .catchall {:try_start_8e .. :try_end_95} :catchall_8b

    :goto_95
    monitor-exit v2

    throw p0

    :cond_97
    const-string/jumbo p0, "packageManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9e
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onStart()V
    .registers 4

    new-instance v0, Lcom/android/server/permission/access/appop/AppOpService;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/appop/AppOpService;-><init>(Lcom/android/server/permission/access/AccessCheckingService;)V

    iput-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->appOpService:Lcom/android/server/permission/access/appop/AppOpService;

    new-instance v0, Lcom/android/server/permission/access/permission/PermissionService;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/permission/PermissionService;-><init>(Lcom/android/server/permission/access/AccessCheckingService;)V

    iput-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->permissionService:Lcom/android/server/permission/access/permission/PermissionService;

    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->appOpService:Lcom/android/server/permission/access/appop/AppOpService;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    const-class v2, Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-static {v2, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    iget-object v2, p0, Lcom/android/server/permission/access/AccessCheckingService;->permissionService:Lcom/android/server/permission/access/permission/PermissionService;

    if-eqz v2, :cond_2c

    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/permission/access/permission/PermissionManagerLocalImpl;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/permission/PermissionManagerLocalImpl;-><init>(Lcom/android/server/permission/access/AccessCheckingService;)V

    const-class p0, Lcom/android/server/permission/PermissionManagerLocal;

    invoke-static {p0, v0}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :cond_2c
    const-string/jumbo p0, "permissionService"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_33
    const-string/jumbo p0, "appOpService"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final onStorageVolumeMounted$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v1, 0x0

    if-eqz v0, :cond_9e

    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getAllPackageStates(Lcom/android/server/pm/PackageManagerLocal;)Lcom/android/server/permission/jarjar/kotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/permission/jarjar/kotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/permission/access/AccessCheckingService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v0, :cond_97

    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessCheckingService;->getKnownPackages(Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/permission/access/immutable/IntMap;

    move-result-object v7

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_24
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    if-eqz v0, :cond_8e

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    new-instance v4, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v4, v0, v1}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v3

    move-object v8, p1

    move-object v9, p2

    move v10, p3

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/permission/access/AccessPolicy;->onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {p0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_55
    if-ge p3, p1, :cond_89

    iget-object v0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v3, p2

    :goto_6e
    if-ge v3, v0, :cond_86

    iget-object v4, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_83
    .catchall {:try_start_24 .. :try_end_83} :catchall_8b

    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    :cond_86
    add-int/lit8 p3, p3, 0x1

    goto :goto_55

    :cond_89
    monitor-exit v2

    return-void

    :catchall_8b
    move-exception v0

    move-object p0, v0

    goto :goto_95

    :cond_8e
    :try_start_8e
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
    :try_end_95
    .catchall {:try_start_8e .. :try_end_95} :catchall_8b

    :goto_95
    monitor-exit v2

    throw p0

    :cond_97
    const-string/jumbo p0, "packageManagerInternal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9e
    const-string/jumbo p0, "packageManagerLocal"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final onSystemReady$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()V
    .registers 12

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-eqz v1, :cond_aa

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v1

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/permission/access/MutableExternalState;->isSystemReady:Z

    iget-object v2, v2, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object v3, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_27
    if-ge v5, v3, :cond_5b

    iget-object v6, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v6, Ljava/lang/String;

    iget-object v6, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v8, v4

    :goto_40
    if-ge v8, v6, :cond_58

    iget-object v9, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/android/server/permission/access/SchemePolicy;->onSystemReady()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_40

    :cond_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_5b
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {p0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v2, v4

    :goto_72
    if-ge v2, v1, :cond_a6

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v6, v4

    :goto_8b
    if-ge v6, v3, :cond_a3

    iget-object v7, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_a0
    .catchall {:try_start_5 .. :try_end_a0} :catchall_a8

    add-int/lit8 v6, v6, 0x1

    goto :goto_8b

    :cond_a3
    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    :cond_a6
    monitor-exit v0

    return-void

    :catchall_a8
    move-exception p0

    goto :goto_b2

    :cond_aa
    :try_start_aa
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
    :try_end_b2
    .catchall {:try_start_aa .. :try_end_b2} :catchall_a8

    :goto_b2
    monitor-exit v0

    throw p0
.end method

.method public final onUserAdded$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)V
    .registers 10

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-eqz v1, :cond_6b

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    new-instance v3, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v3, v1, v2}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v1

    invoke-virtual {v1, v3, p1}, Lcom/android/server/permission/access/AccessPolicy;->onUserAdded(Lcom/android/server/permission/access/MutateStateScope;I)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {p0, v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_33
    if-ge v2, p1, :cond_67

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v5, v1

    :goto_4c
    if-ge v5, v3, :cond_64

    iget-object v6, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_61
    .catchall {:try_start_5 .. :try_end_61} :catchall_69

    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_67
    monitor-exit v0

    return-void

    :catchall_69
    move-exception p0

    goto :goto_73

    :cond_6b
    :try_start_6b
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_69

    :goto_73
    monitor-exit v0

    throw p0
.end method

.method public final onUserRemoved$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)V
    .registers 10

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-eqz v1, :cond_6b

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    new-instance v3, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v3, v1, v2}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v1

    invoke-virtual {v1, v3, p1}, Lcom/android/server/permission/access/AccessPolicy;->onUserRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/MutableAccessState;)V

    invoke-static {p0, v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    invoke-static {p0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_33
    if-ge v2, p1, :cond_67

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v5, v1

    :goto_4c
    if-ge v5, v3, :cond_64

    iget-object v6, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated()V
    :try_end_61
    .catchall {:try_start_5 .. :try_end_61} :catchall_69

    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_67
    monitor-exit v0

    return-void

    :catchall_69
    move-exception p0

    goto :goto_73

    :cond_6b
    :try_start_6b
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_69

    :goto_73
    monitor-exit v0

    throw p0
.end method
