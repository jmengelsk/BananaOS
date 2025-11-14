.class public final Lcom/android/server/permission/access/AccessPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    new-instance v1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-direct {v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->_init_$lambda$1$addPolicy(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Lcom/android/server/permission/access/SchemePolicy;)V

    new-instance v1, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    invoke-direct {v1}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->_init_$lambda$1$addPolicy(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Lcom/android/server/permission/access/SchemePolicy;)V

    new-instance v1, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    invoke-direct {v1}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->_init_$lambda$1$addPolicy(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Lcom/android/server/permission/access/SchemePolicy;)V

    new-instance v1, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    invoke-direct {v1}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->_init_$lambda$1$addPolicy(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Lcom/android/server/permission/access/SchemePolicy;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    return-void
.end method

.method public static final _init_$lambda$1$addPolicy(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Lcom/android/server/permission/access/SchemePolicy;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/permission/access/SchemePolicy;->getSubjectScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    check-cast v1, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-virtual {p1}, Lcom/android/server/permission/access/SchemePolicy;->getObjectScheme()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;)V
    .locals 7

    invoke-interface {p2, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v3

    iput-object p2, v3, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    iput-object p3, v3, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    iget-object p2, v3, Lcom/android/server/permission/access/MutableExternalState;->appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p2

    check-cast p2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-virtual {p2, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p3

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    move p2, v4

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-direct {p3}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>()V

    invoke-virtual {p2, v1, p3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->put(ILcom/android/server/permission/access/immutable/Immutable;)V

    const/4 p2, 0x1

    :goto_0
    check-cast p3, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-virtual {p3, p5}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)V

    iput-object p4, v3, Lcom/android/server/permission/access/MutableExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    iget-object p3, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    if-eqz p2, :cond_2

    iget-object p2, p3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    move p4, v4

    :goto_1
    if-ge p4, p2, :cond_2

    iget-object p5, p3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p5, p4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p5

    iget-object v1, p3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast p5, Ljava/lang/String;

    iget-object p5, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result p5

    move v3, v4

    :goto_2
    if-ge v3, p5, :cond_1

    iget-object v5, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_2
    iget-object p2, p3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    move p4, v4

    :goto_3
    if-ge p4, p2, :cond_4

    iget-object p5, p3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p5, p4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p5

    iget-object v1, p3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast p5, Ljava/lang/String;

    iget-object p5, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result p5

    move v3, v4

    :goto_4
    if-ge v3, p5, :cond_3

    iget-object v5, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, p1, v0}, Lcom/android/server/permission/access/SchemePolicy;->onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p2

    iget-object p3, p2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    :goto_5
    if-ge v4, p3, :cond_5

    iget-object p4, p2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {p4, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p4

    invoke-virtual {p2, v4}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p5

    check-cast p5, Lcom/android/server/permission/access/MutableUserState;

    invoke-virtual {p0, p1, v0, p4}, Lcom/android/server/permission/access/AccessPolicy;->upgradePackageVersion(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    return-void

    :cond_6
    const-string p0, "Added package "

    const-string p1, " isn\'t found in packageStates in onPackageAdded()"

    invoke-static {p0, p5, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPackageInstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    iput-object p3, v0, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    iput-object p4, v0, Lcom/android/server/permission/access/MutableExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    invoke-interface {p2, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/PackageState;

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object p3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    const/4 p4, 0x0

    move p5, p4

    :goto_0
    if-ge p5, p3, :cond_1

    iget-object v0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, p5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1, p5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v2, p4

    :goto_1
    if-ge v2, v0, :cond_0

    iget-object v3, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, p1, p2, p6}, Lcom/android/server/permission/access/SchemePolicy;->onPackageInstalled(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const-string p0, "Installed package "

    const-string p1, " isn\'t found in packageStates in onPackageInstalled()"

    invoke-static {p0, p5, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;I)V
    .locals 7

    invoke-interface {p2, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v1

    iput-object p2, v1, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    iput-object p3, v1, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    iget-object p2, v1, Lcom/android/server/permission/access/MutableExternalState;->appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p3

    check-cast p3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-virtual {p3, p6}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p3

    check-cast p3, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    iget-object v3, p3, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p3, p3, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p2

    check-cast p2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-static {p2, p6}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    iput-object p4, v1, Lcom/android/server/permission/access/MutableExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object p3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    move p4, v2

    :goto_1
    if-ge p4, p3, :cond_2

    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, p4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v4, v2

    :goto_2
    if-ge v4, v1, :cond_1

    iget-object v5, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, p1, p5, p6}, Lcom/android/server/permission/access/SchemePolicy;->onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    move p3, v2

    :goto_3
    if-ge p3, p2, :cond_4

    iget-object p4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p4, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p4

    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast p4, Ljava/lang/String;

    iget-object p4, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result p4

    move v3, v2

    :goto_4
    if-ge v3, p4, :cond_3

    iget-object v4, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, p1, p6}, Lcom/android/server/permission/access/SchemePolicy;->onAppIdRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p0

    iget-object p1, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_5
    if-ge v2, p1, :cond_6

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->keyAt(I)I

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p2

    check-cast p2, Lcom/android/server/permission/access/MutableUserState;

    iget-object p2, p2, Lcom/android/server/permission/access/MutableUserState;->packageVersionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iget-object p2, p2, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    check-cast p2, Lcom/android/server/permission/access/immutable/IndexedMap;

    iget-object p2, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p2, p5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {v0, v2}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;I)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p2, p5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-void

    :cond_7
    const-string/jumbo p0, "Removed package "

    const-string p1, " is still in packageStates in onPackageRemoved()"

    invoke-static {p0, p5, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;II)V
    .locals 4

    iget-object p6, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {p6}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object p6

    iput-object p2, p6, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    iput-object p3, p6, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    iput-object p4, p6, Lcom/android/server/permission/access/MutableExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object p2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_1

    iget-object p6, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p6, p4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p6

    iget-object v0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast p6, Ljava/lang/String;

    iget-object p6, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p6}, Landroid/util/ArrayMap;->size()I

    move-result p6

    move v1, p3

    :goto_1
    if-ge v1, p6, :cond_0

    iget-object v2, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1, p5, p7}, Lcom/android/server/permission/access/SchemePolicy;->onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/IntMap;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v5, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v5}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v6

    move-object/from16 v7, p2

    iput-object v7, v6, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    move-object/from16 v8, p3

    iput-object v8, v6, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "Package "

    const-string v1, " on storage volume "

    const-string v3, " didn\'t receive onPackageAdded() before onStorageVolumeMounted()"

    invoke-static {v0, v10, v1, v2, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v9

    iget-object v11, v6, Lcom/android/server/permission/access/MutableExternalState;->appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v11}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v11

    check-cast v11, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-virtual {v11, v9}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v12

    if-eqz v12, :cond_4

    goto :goto_2

    :cond_4
    const/4 v12, 0x1

    invoke-virtual {v4, v9, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    new-instance v12, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-direct {v12}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>()V

    invoke-virtual {v11, v9, v12}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->put(ILcom/android/server/permission/access/immutable/Immutable;)V

    :goto_2
    check-cast v12, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-virtual {v12, v10}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    move-object/from16 v9, p4

    iput-object v9, v6, Lcom/android/server/permission/access/MutableExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    const/4 v9, 0x0

    :goto_3
    iget-object v10, v0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    if-ge v9, v6, :cond_8

    invoke-virtual {v4, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    iget-object v11, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v11, :cond_7

    iget-object v13, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    iget-object v14, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v13, Ljava/lang/String;

    iget-object v13, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v13, :cond_6

    iget-object v8, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v4

    iget-object v4, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v16

    goto :goto_5

    :cond_6
    move-object/from16 v16, v4

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_7
    move-object/from16 v16, v4

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_8
    iget-object v4, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v4, :cond_a

    iget-object v8, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v8, Ljava/lang/String;

    iget-object v8, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v8, :cond_9

    iget-object v12, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v12, Ljava/lang/String;

    move/from16 v12, p7

    invoke-virtual {v13, v1, v3, v12}, Lcom/android/server/permission/access/SchemePolicy;->onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/List;Z)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_9
    move/from16 v12, p7

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_a
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_8

    :cond_c
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v6

    iget-object v7, v6, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v7, :cond_b

    iget-object v9, v6, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v6, v8}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/MutableUserState;

    invoke-virtual {v0, v1, v4, v9}, Lcom/android/server/permission/access/AccessPolicy;->upgradePackageVersion(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_d
    return-void
.end method

.method public final onUserAdded(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 10

    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/permission/access/MutableExternalState;->userIdsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/MutableIntSet;

    iget-object v1, v1, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, v0, Lcom/android/server/permission/access/AccessState;->userStatesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    new-instance v2, Lcom/android/server/permission/access/MutableUserState;

    invoke-direct {v2}, Lcom/android/server/permission/access/MutableUserState;-><init>()V

    invoke-static {v1, p2, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V

    iget-object v1, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object v2, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v5, Ljava/lang/String;

    iget-object v5, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v7, v3

    :goto_1
    if-ge v7, v5, :cond_0

    iget-object v8, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, p1, p2}, Lcom/android/server/permission/access/SchemePolicy;->onUserAdded(Lcom/android/server/permission/access/MutateStateScope;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/permission/access/AccessPolicy;->upgradePackageVersion(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final onUserRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 6

    iget-object p1, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {p1}, Lcom/android/server/permission/access/MutableAccessState;->mutateExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/MutableExternalState;->userIdsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/immutable/MutableIntSet;

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object p1, p1, Lcom/android/server/permission/access/AccessState;->userStatesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p1

    check-cast p1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-static {p1, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v3, p2

    :goto_1
    if-ge v3, v1, :cond_0

    iget-object v4, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V
    .locals 16

    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v0

    const-string/jumbo v1, "Unexpected event type "

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    if-eq v0, v4, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v3, :cond_1b

    if-eq v0, v2, :cond_4

    if-ne v0, v4, :cond_3

    goto/16 :goto_e

    :cond_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "access"

    invoke-static {v5, v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v6, ", expected "

    const-string/jumbo v7, "Unexpected post-block depth "

    if-eqz v5, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v5

    if-eqz v5, :cond_6

    if-ne v5, v2, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v5, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v5

    if-eq v5, v3, :cond_7

    if-eq v5, v2, :cond_7

    if-eq v5, v4, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v3, :cond_8

    if-eq v5, v2, :cond_a

    if-ne v5, v4, :cond_9

    :cond_8
    move-object/from16 v8, p0

    move-object/from16 v11, p1

    move-object/from16 v4, p2

    goto/16 :goto_9

    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v5, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v5

    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object v10, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v10, :cond_c

    iget-object v13, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    iget-object v14, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v13, Ljava/lang/String;

    iget-object v13, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v13, :cond_b

    iget-object v11, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v11, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    iget-object v3, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v11, Ljava/lang/String;

    move-object/from16 v11, p1

    move-object/from16 v4, p2

    invoke-virtual {v3, v11, v4}, Lcom/android/server/permission/access/SchemePolicy;->parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x3

    goto :goto_5

    :cond_b
    move-object/from16 v11, p1

    move-object/from16 v4, p2

    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x3

    goto :goto_4

    :cond_c
    move-object/from16 v11, p1

    move-object/from16 v4, p2

    invoke-virtual {v11}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v3

    if-ne v3, v5, :cond_12

    :cond_d
    invoke-virtual {v11}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v2, :cond_11

    const/4 v9, 0x3

    if-ne v3, v9, :cond_10

    invoke-virtual {v11}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v5, :cond_e

    :goto_6
    invoke-virtual {v11}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v3

    const/4 v10, 0x1

    if-eq v3, v10, :cond_d

    if-eq v3, v2, :cond_d

    if-eq v3, v9, :cond_d

    goto :goto_6

    :cond_e
    :goto_7
    const/4 v10, 0x1

    invoke-virtual {v11}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v3

    if-eq v3, v10, :cond_f

    if-eq v3, v2, :cond_f

    if-eq v3, v9, :cond_f

    goto :goto_7

    :cond_f
    const/4 v3, 0x1

    const/4 v4, 0x3

    goto/16 :goto_3

    :cond_10
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v3, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_8
    invoke-virtual {v11}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v3

    const/4 v10, 0x1

    if-eq v3, v10, :cond_d

    if-eq v3, v2, :cond_d

    const/4 v9, 0x3

    if-eq v3, v9, :cond_d

    goto :goto_8

    :cond_12
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v3, v5, v7, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move-object/from16 v8, p0

    move-object/from16 v11, p1

    move-object/from16 v4, p2

    invoke-virtual {v11}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Ignoring unknown tag "

    const-string v9, " when parsing system state"

    const-string v10, "AccessPolicy"

    invoke-static {v5, v3, v9, v10}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    invoke-virtual {v11}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v3

    if-ne v3, v0, :cond_1a

    :cond_14
    :goto_a
    invoke-virtual {v11}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v2, :cond_18

    const/4 v9, 0x3

    if-ne v3, v9, :cond_17

    invoke-virtual {v11}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_15

    :goto_b
    invoke-virtual {v11}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v3

    const/4 v10, 0x1

    if-eq v3, v10, :cond_14

    if-eq v3, v2, :cond_14

    if-eq v3, v9, :cond_14

    goto :goto_b

    :cond_15
    :goto_c
    const/4 v10, 0x1

    invoke-virtual {v11}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v0

    if-eq v0, v10, :cond_16

    if-eq v0, v2, :cond_16

    if-eq v0, v9, :cond_16

    goto :goto_c

    :cond_16
    const/4 v3, 0x1

    const/4 v4, 0x3

    goto/16 :goto_1

    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v3, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_d
    invoke-virtual {v11}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v3

    const/4 v10, 0x1

    if-eq v3, v10, :cond_19

    if-eq v3, v2, :cond_19

    const/4 v9, 0x3

    if-eq v3, v9, :cond_14

    goto :goto_d

    :cond_19
    const/4 v9, 0x3

    goto :goto_a

    :cond_1a
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v3, v0, v7, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    :goto_e
    return-void
.end method

.method public final parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v3

    const-string/jumbo v4, "Unexpected event type "

    const/4 v5, 0x2

    if-eqz v3, :cond_1

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v3, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_2

    if-eq v3, v7, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_2c

    if-eq v3, v5, :cond_4

    if-ne v3, v7, :cond_3

    goto/16 :goto_17

    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v3, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "access"

    invoke-static {v8, v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "Ignoring unknown tag "

    const-string v10, "AccessPolicy"

    const-string v11, ", expected "

    const-string/jumbo v12, "Unexpected post-block depth "

    if-eqz v8, :cond_25

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v8

    if-eqz v8, :cond_6

    if-ne v8, v5, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v8, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v8

    if-eq v8, v6, :cond_7

    if-eq v8, v5, :cond_7

    if-eq v8, v7, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v8

    if-eq v8, v6, :cond_8

    if-eq v8, v5, :cond_a

    if-ne v8, v7, :cond_9

    :cond_8
    move/from16 v17, v3

    goto/16 :goto_13

    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v8, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v8

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "package-versions"

    invoke-static {v13, v14}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    const-string/jumbo v15, "intern(...)"

    const/4 v7, 0x0

    if-eqz v14, :cond_1b

    invoke-virtual {v1, v2, v7}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v13

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v14

    if-eqz v14, :cond_c

    if-ne v14, v5, :cond_b

    goto :goto_4

    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v14, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_4
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v14

    if-eq v14, v6, :cond_d

    if-eq v14, v5, :cond_d

    const/4 v5, 0x3

    if-eq v14, v5, :cond_e

    const/4 v5, 0x2

    goto :goto_4

    :cond_d
    const/4 v5, 0x3

    :cond_e
    :goto_5
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v14

    const-string v5, " when parsing package versions"

    if-eq v14, v6, :cond_f

    const/4 v6, 0x2

    if-eq v14, v6, :cond_11

    const/4 v6, 0x3

    if-ne v14, v6, :cond_10

    :cond_f
    move/from16 v17, v3

    goto/16 :goto_b

    :cond_10
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v14, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    move/from16 v17, v3

    const-string/jumbo v3, "package"

    invoke-static {v14, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string/jumbo v3, "name"

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v14, "version"

    invoke-virtual {v0, v5, v14}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v3, v5}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_12
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3, v5, v10}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v3

    if-ne v3, v6, :cond_19

    :cond_13
    :goto_7
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_18

    const/4 v14, 0x3

    if-ne v3, v14, :cond_17

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v6, :cond_15

    :goto_8
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v3

    const/4 v14, 0x1

    if-eq v3, v14, :cond_14

    if-eq v3, v5, :cond_14

    const/4 v5, 0x3

    if-eq v3, v5, :cond_13

    move v14, v5

    const/4 v5, 0x2

    goto :goto_8

    :cond_14
    const/4 v5, 0x3

    goto :goto_7

    :cond_15
    move v5, v14

    :goto_9
    const/4 v14, 0x1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v3

    if-eq v3, v14, :cond_16

    const/4 v6, 0x2

    if-eq v3, v6, :cond_16

    if-eq v3, v5, :cond_16

    goto :goto_9

    :cond_16
    move/from16 v3, v17

    const/4 v5, 0x3

    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v3, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_a
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v3

    const/4 v14, 0x1

    if-eq v3, v14, :cond_13

    const/4 v5, 0x2

    if-eq v3, v5, :cond_13

    const/4 v5, 0x3

    if-eq v3, v5, :cond_13

    goto :goto_a

    :cond_19
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v3, v6, v12, v11}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_b
    iget-object v3, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v16, 0x1

    add-int/lit8 v3, v3, -0x1

    :goto_c
    const/4 v6, -0x1

    if-ge v6, v3, :cond_1e

    iget-object v6, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v14, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v14, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v14, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    const-string v14, "Dropping unknown "

    invoke-static {v14, v6, v5, v10}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Lcom/android/server/permission/access/MutableUserState;->requestWriteMode(I)V

    :cond_1a
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    :cond_1b
    move/from16 v17, v3

    const-string/jumbo v3, "default-permission-grant"

    invoke-static {v13, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v1, v2, v7}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v5, "fingerprint"

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v5, v3, Lcom/android/server/permission/access/MutableUserState;->defaultPermissionGrantFingerprint:Ljava/lang/String;

    goto :goto_f

    :cond_1c
    move-object/from16 v3, p0

    iget-object v5, v3, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object v6, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v13, v7

    :goto_d
    if-ge v13, v6, :cond_1e

    iget-object v14, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    iget-object v15, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v15, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v14, Ljava/lang/String;

    iget-object v14, v15, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    :goto_e
    if-ge v7, v14, :cond_1d

    iget-object v3, v15, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    iget-object v3, v15, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v18, Ljava/lang/String;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/permission/access/SchemePolicy;->parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, p0

    goto :goto_e

    :cond_1d
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x0

    move-object/from16 v3, p0

    goto :goto_d

    :cond_1e
    :goto_f
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v3

    if-ne v3, v8, :cond_24

    :cond_1f
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_23

    const/4 v14, 0x3

    if-ne v3, v14, :cond_22

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v8, :cond_20

    :goto_10
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_1f

    if-eq v3, v5, :cond_1f

    if-eq v3, v14, :cond_1f

    goto :goto_10

    :cond_20
    :goto_11
    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v3

    if-eq v3, v6, :cond_21

    if-eq v3, v5, :cond_21

    if-eq v3, v14, :cond_21

    const/4 v5, 0x2

    goto :goto_11

    :cond_21
    move/from16 v3, v17

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x3

    goto/16 :goto_3

    :cond_22
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v3, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    :goto_12
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v3

    const/4 v14, 0x1

    if-eq v3, v14, :cond_1f

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1f

    const/4 v5, 0x3

    if-eq v3, v5, :cond_1f

    goto :goto_12

    :cond_24
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v3, v8, v12, v11}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    move/from16 v17, v3

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " when parsing user state for user "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v3

    move/from16 v5, v17

    if-ne v3, v5, :cond_2b

    :cond_26
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2a

    const/4 v14, 0x3

    if-ne v3, v14, :cond_29

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v5, :cond_27

    :goto_14
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v3

    const/4 v7, 0x1

    if-eq v3, v7, :cond_26

    if-eq v3, v6, :cond_26

    if-eq v3, v14, :cond_26

    goto :goto_14

    :cond_27
    :goto_15
    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v3

    if-eq v3, v7, :cond_28

    if-eq v3, v6, :cond_28

    if-eq v3, v14, :cond_28

    const/4 v6, 0x2

    goto :goto_15

    :cond_28
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x3

    goto/16 :goto_1

    :cond_29
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v3, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    :goto_16
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v3

    const/4 v14, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-eq v3, v14, :cond_26

    if-eq v3, v6, :cond_26

    if-eq v3, v7, :cond_26

    goto :goto_16

    :cond_2b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v3, v5, v12, v11}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    :goto_17
    return-void
.end method

.method public final serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V
    .locals 10

    const/4 v0, 0x0

    const-string/jumbo v1, "access"

    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v5, Ljava/lang/String;

    iget-object v5, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v7, v3

    :goto_1
    if-ge v7, v5, :cond_0

    iget-object v8, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, p1, p2}, Lcom/android/server/permission/access/SchemePolicy;->serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
    .locals 11

    const/4 v0, 0x0

    const-string/jumbo v1, "access"

    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/android/server/permission/access/MutableUserState;

    iget-object v2, v2, Lcom/android/server/permission/access/MutableUserState;->packageVersionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iget-object v2, v2, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedMap;

    const-string/jumbo v3, "package-versions"

    invoke-virtual {p1, v0, v3}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    iget-object v7, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v9, "package"

    invoke-virtual {p1, v0, v9}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "name"

    invoke-virtual {p1, v0, v10, v7}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "version"

    invoke-virtual {p1, v0, v7, v8}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1, v0, v9}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v3}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/android/server/permission/access/MutableUserState;

    iget-object v2, v2, Lcom/android/server/permission/access/MutableUserState;->defaultPermissionGrantFingerprint:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string/jumbo v3, "default-permission-grant"

    invoke-virtual {p1, v0, v3}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "fingerprint"

    invoke-virtual {p1, v0, v4, v2}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1, v0, v3}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move v3, v5

    :goto_1
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move v7, v5

    :goto_2
    if-ge v7, v4, :cond_2

    iget-object v8, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, p1, p2, p3}, Lcom/android/server/permission/access/SchemePolicy;->serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final upgradePackageVersion(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lcom/android/server/permission/access/MutableUserState;

    iget-object v4, v4, Lcom/android/server/permission/access/MutableUserState;->packageVersionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iget-object v4, v4, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    iget-object v4, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const/4 v5, 0x1

    const/16 v6, 0x11

    if-nez v4, :cond_1

    invoke-virtual {v3, v1, v5}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v7, v6, :cond_4

    move-object/from16 v7, p0

    iget-object v7, v7, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object v8, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_3

    iget-object v11, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    iget-object v12, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v11, Ljava/lang/String;

    iget-object v11, v12, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_2

    iget-object v14, v12, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    iget-object v15, v12, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v15, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/permission/access/SchemePolicy;

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v9, p2

    invoke-virtual {v15, v0, v9, v1, v14}, Lcom/android/server/permission/access/SchemePolicy;->upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v9, p2

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v1, v5}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v6, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unexpected version "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",latest version is 17"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method
