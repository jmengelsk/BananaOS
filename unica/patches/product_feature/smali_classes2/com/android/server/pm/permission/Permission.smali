.class public final Lcom/android/server/pm/permission/Permission;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mDefinitionChanged:Z

.field public mGids:[I

.field public mGidsPerUser:Z

.field public mPermissionInfo:Landroid/content/pm/PermissionInfo;

.field public mReconciled:Z

.field public final mType:I

.field public mUid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iput-object p2, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object p3, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const/4 p2, 0x2

    iput p2, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput p1, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PermissionInfo;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    iput-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iput p2, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    return-void
.end method

.method public static createOrUpdate(Lcom/android/server/pm/permission/Permission;Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/PackageSetting;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/Permission;
    .locals 8

    const-string/jumbo v0, "Permission"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    if-ne v3, v1, :cond_0

    iget-boolean v3, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    if-nez v3, :cond_0

    iput-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iput-boolean v1, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p4

    iput p4, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    new-instance p4, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "New decl "

    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of permission  "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is system; overriding "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {p4, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    move p4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p4, v2

    :goto_1
    if-eqz p0, :cond_2

    iget v3, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    if-eq v3, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    if-eqz p0, :cond_3

    iget v4, p0, Lcom/android/server/pm/permission/Permission;->mType:I

    if-eq v4, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    if-nez p0, :cond_4

    new-instance p0, Lcom/android/server/pm/permission/Permission;

    iget-object v5, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/android/server/pm/permission/Permission;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-boolean v2, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const-string v5, " from package "

    const-string/jumbo v6, "Permission "

    if-eqz v2, :cond_6

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ignored: original from "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    :goto_4
    iget-object v2, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v2, p3}, Lcom/android/server/pm/permission/Permission;->findPermissionTree(Ljava/lang/String;Ljava/util/Collection;)Lcom/android/server/pm/permission/Permission;

    move-result-object p3

    if-eqz p3, :cond_8

    iget-object v2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ignored: base tree "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is from package "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    :goto_5
    iput-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iput-boolean v1, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    :cond_9
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isInternal()Z

    move-result p1

    if-eqz p1, :cond_a

    if-nez p4, :cond_b

    if-nez v3, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isRuntime()Z

    move-result p1

    if-eqz p1, :cond_c

    if-nez p4, :cond_b

    if-eqz v4, :cond_c

    :cond_b
    iput-boolean v1, p0, Lcom/android/server/pm/permission/Permission;->mDefinitionChanged:Z

    :cond_c
    return-object p0
.end method

.method public static findPermissionTree(Ljava/lang/String;Ljava/util/Collection;)Lcom/android/server/pm/permission/Permission;
    .locals 4

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/Permission;

    iget-object v1, v0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/Permission;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v2, 0x1

    if-ne v1, p1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    iget v3, p3, Lcom/android/server/pm/permission/Permission;->mUid:I

    if-ne v1, v3, :cond_6

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v1, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v1, v0, Landroid/content/pm/PermissionInfo;->icon:I

    iget v3, p2, Landroid/content/pm/PermissionInfo;->icon:I

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/content/pm/PermissionInfo;->logo:I

    iget v3, p2, Landroid/content/pm/PermissionInfo;->logo:I

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iget v3, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eq v1, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget-object v3, p2, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    move v0, v2

    :goto_1
    new-instance v1, Landroid/content/pm/PermissionInfo;

    invoke-direct {v1, p2}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    iput-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p2, p3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p2, p2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object p2, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput p1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput-boolean v2, p0, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    iget p1, p3, Lcom/android/server/pm/permission/Permission;->mUid:I

    iput p1, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    return v0
.end method

.method public final computeGids(I)[I
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget v2, v2, v1

    invoke-static {p1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mGids:[I

    array-length p1, p0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    :cond_2
    return-object p0
.end method

.method public final generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/pm/PermissionInfo;

    iget-object v1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    const/16 v1, 0x80

    and-int/2addr p1, v1

    if-eq p1, v1, :cond_1

    const/4 p1, 0x0

    iput-object p1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    iget-object p1, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object p1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_1
    :goto_0
    iget p1, v0, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr p1, v1

    iput p1, v0, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 p1, 0x1a

    if-lt p2, p1, :cond_2

    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput p0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    return-object v0

    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 p1, p0, 0xf

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    iput p0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    return-object v0

    :cond_3
    iput p1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getProtectionLevel()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    return p0
.end method

.method public final isDevelopment()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/permission/Permission;->isSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isInstant()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isInternal()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isPrivileged()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isRole()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/high16 v0, 0x4000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isRuntime()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isSignature()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
