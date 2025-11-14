.class public final Lcom/android/server/permission/access/MutableUserState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/permission/access/WritableState;
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final appIdAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public final appIdDevicePermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public final appIdPermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public defaultPermissionGrantFingerprint:Ljava/lang/String;

.field public final packageAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public final packageVersionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public writeMode:I


# direct methods
.method public constructor <init>()V
    .registers 8

    new-instance v1, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    invoke-direct {v1, v0, v0}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    new-instance v2, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;-><init>()V

    invoke-direct {v2, v0, v0}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    new-instance v3, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;-><init>()V

    invoke-direct {v3, v0, v0}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    new-instance v4, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;-><init>()V

    invoke-direct {v4, v0, v0}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    new-instance v5, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;-><init>()V

    invoke-direct {v5, v0, v0}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/permission/access/MutableUserState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/MutableUserState;->packageVersionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iput-object p2, p0, Lcom/android/server/permission/access/MutableUserState;->appIdPermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iput-object p3, p0, Lcom/android/server/permission/access/MutableUserState;->appIdDevicePermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iput-object p4, p0, Lcom/android/server/permission/access/MutableUserState;->appIdAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iput-object p5, p0, Lcom/android/server/permission/access/MutableUserState;->packageAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iput-object p6, p0, Lcom/android/server/permission/access/MutableUserState;->defaultPermissionGrantFingerprint:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/permission/access/MutableUserState;->writeMode:I

    return-void
.end method


# virtual methods
.method public final getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/permission/access/MutableUserState;->appIdAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    return-object p0
.end method

.method public final getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/permission/access/MutableUserState;->appIdDevicePermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    return-object p0
.end method

.method public final getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/permission/access/MutableUserState;->appIdPermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    return-object p0
.end method

.method public final getPackageAppOpModes()Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/permission/access/MutableUserState;->packageAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    return-object p0
.end method

.method public final getWriteMode()I
    .registers 1

    iget p0, p0, Lcom/android/server/permission/access/MutableUserState;->writeMode:I

    return p0
.end method

.method public final mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/permission/access/MutableUserState;->packageVersionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    return-object p0
.end method

.method public final requestWriteMode(I)V
    .registers 3

    iget v0, p0, Lcom/android/server/permission/access/MutableUserState;->writeMode:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/permission/access/MutableUserState;->writeMode:I

    return-void
.end method

.method public final toMutable()Ljava/lang/Object;
    .registers 8

    new-instance v0, Lcom/android/server/permission/access/MutableUserState;

    iget-object v1, p0, Lcom/android/server/permission/access/MutableUserState;->packageVersionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/permission/access/MutableUserState;->appIdPermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/permission/access/MutableUserState;->appIdDevicePermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/permission/access/MutableUserState;->appIdAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/permission/access/MutableUserState;->packageAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v5}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/permission/access/MutableUserState;->defaultPermissionGrantFingerprint:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/android/server/permission/access/MutableUserState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Ljava/lang/String;)V

    return-object v0
.end method
