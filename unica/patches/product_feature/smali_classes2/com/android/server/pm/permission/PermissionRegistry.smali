.class public final Lcom/android/server/pm/permission/PermissionRegistry;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAppOpPermissionPackages:Landroid/util/ArrayMap;

.field public final mPermissionGroups:Landroid/util/ArrayMap;

.field public final mPermissionTrees:Landroid/util/ArrayMap;

.field public final mPermissions:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionGroups:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final enforcePermissionTree(ILjava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-static {p2, p0}, Lcom/android/server/pm/permission/Permission;->findPermissionTree(Ljava/lang/String;Ljava/util/Collection;)Lcom/android/server/pm/permission/Permission;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p2, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p2, "Calling uid "

    const-string v0, " is not allowed to add to or remove from the permission tree"

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/Permission;

    return-object p0
.end method

.method public final transferPermissions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    :goto_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/Permission;

    iget-object v4, v3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    new-instance v4, Landroid/content/pm/PermissionInfo;

    invoke-direct {v4}, Landroid/content/pm/PermissionInfo;-><init>()V

    iget-object v5, v3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v6, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object v6, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object p2, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget v5, v5, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v5, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput-object v4, v3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iput-boolean v0, v3, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    iput v0, v3, Lcom/android/server/pm/permission/Permission;->mUid:I

    sget-object v4, Llibcore/util/EmptyArray;->INT:[I

    iput-object v4, v3, Lcom/android/server/pm/permission/Permission;->mGids:[I

    iput-boolean v0, v3, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
