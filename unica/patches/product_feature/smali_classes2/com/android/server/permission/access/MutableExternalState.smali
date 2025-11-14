.class public final Lcom/android/server/permission/access/MutableExternalState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public configPermissions:Ljava/util/Map;

.field public disabledSystemPackageStates:Ljava/util/Map;

.field public implicitToSourcePermissions:Lcom/android/server/permission/access/immutable/IndexedMap;

.field public isLeanback:Z

.field public isSystemReady:Z

.field public knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

.field public packageStates:Ljava/util/Map;

.field public permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

.field public privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/immutable/IndexedListSet;

.field public final userIdsReference:Lcom/android/server/permission/access/immutable/MutableReference;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/immutable/MutableReference;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;Z)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/MutableExternalState;->userIdsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iput-object p4, p0, Lcom/android/server/permission/access/MutableExternalState;->appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iput-object p2, p0, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    iput-object p5, p0, Lcom/android/server/permission/access/MutableExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    iput-boolean p6, p0, Lcom/android/server/permission/access/MutableExternalState;->isLeanback:Z

    iput-object p7, p0, Lcom/android/server/permission/access/MutableExternalState;->configPermissions:Ljava/util/Map;

    iput-object p8, p0, Lcom/android/server/permission/access/MutableExternalState;->privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/immutable/IndexedListSet;

    iput-object p9, p0, Lcom/android/server/permission/access/MutableExternalState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    iput-object p10, p0, Lcom/android/server/permission/access/MutableExternalState;->implicitToSourcePermissions:Lcom/android/server/permission/access/immutable/IndexedMap;

    iput-boolean p11, p0, Lcom/android/server/permission/access/MutableExternalState;->isSystemReady:Z

    return-void
.end method


# virtual methods
.method public final getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/permission/access/MutableExternalState;->appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    return-object p0
.end method

.method public final getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/permission/access/MutableExternalState;->userIdsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIntSet;

    return-object p0
.end method

.method public final toMutable()Ljava/lang/Object;
    .registers 13

    new-instance v0, Lcom/android/server/permission/access/MutableExternalState;

    iget-object v1, p0, Lcom/android/server/permission/access/MutableExternalState;->userIdsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/server/permission/access/MutableExternalState;->appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/permission/access/MutableExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    iget-boolean v6, p0, Lcom/android/server/permission/access/MutableExternalState;->isLeanback:Z

    iget-object v7, p0, Lcom/android/server/permission/access/MutableExternalState;->configPermissions:Ljava/util/Map;

    iget-object v8, p0, Lcom/android/server/permission/access/MutableExternalState;->privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/immutable/IndexedListSet;

    iget-object v9, p0, Lcom/android/server/permission/access/MutableExternalState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    iget-object v10, p0, Lcom/android/server/permission/access/MutableExternalState;->implicitToSourcePermissions:Lcom/android/server/permission/access/immutable/IndexedMap;

    iget-boolean v11, p0, Lcom/android/server/permission/access/MutableExternalState;->isSystemReady:Z

    invoke-direct/range {v0 .. v11}, Lcom/android/server/permission/access/MutableExternalState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;Z)V

    return-object v0
.end method
