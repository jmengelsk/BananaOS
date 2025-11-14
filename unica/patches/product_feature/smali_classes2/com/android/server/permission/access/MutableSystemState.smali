.class public final Lcom/android/server/permission/access/MutableSystemState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/permission/access/WritableState;
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final permissionGroupsReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public final permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public final permissionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public writeMode:I


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/MutableSystemState;->permissionGroupsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iput-object p2, p0, Lcom/android/server/permission/access/MutableSystemState;->permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iput-object p3, p0, Lcom/android/server/permission/access/MutableSystemState;->permissionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/permission/access/MutableSystemState;->writeMode:I

    return-void
.end method


# virtual methods
.method public final getPermissionGroups()Lcom/android/server/permission/access/immutable/IndexedMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/permission/access/MutableSystemState;->permissionGroupsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    return-object p0
.end method

.method public final getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/permission/access/MutableSystemState;->permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    return-object p0
.end method

.method public final getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/permission/access/MutableSystemState;->permissionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    return-object p0
.end method

.method public final getWriteMode()I
    .locals 0

    iget p0, p0, Lcom/android/server/permission/access/MutableSystemState;->writeMode:I

    return p0
.end method

.method public final mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/permission/access/MutableSystemState;->permissionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    return-object p0
.end method

.method public final toMutable()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/server/permission/access/MutableSystemState;

    iget-object v1, p0, Lcom/android/server/permission/access/MutableSystemState;->permissionGroupsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/permission/access/MutableSystemState;->permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/permission/access/MutableSystemState;->permissionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/permission/access/MutableSystemState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;)V

    return-object v0
.end method
