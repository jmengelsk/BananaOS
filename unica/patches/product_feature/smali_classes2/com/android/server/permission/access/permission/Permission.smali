.class public final Lcom/android/server/permission/access/permission/Permission;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final appId:I

.field public final areGidsPerUser:Z

.field public final gids:[I

.field public final isReconciled:Z

.field public final permissionInfo:Landroid/content/pm/PermissionInfo;

.field public final type:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PermissionInfo;ZII)V
    .registers 12

    sget-object v5, Llibcore/util/EmptyArray;->INT:[I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PermissionInfo;ZII[IZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iput-boolean p2, p0, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    iput p3, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    iput p4, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    iput-object p5, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    iput-boolean p6, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    return-void
.end method

.method public static copy$default(Lcom/android/server/permission/access/permission/Permission;Landroid/content/pm/PermissionInfo;ZI)Lcom/android/server/permission/access/permission/Permission;
    .registers 11

    new-instance v0, Lcom/android/server/permission/access/permission/Permission;

    iget v3, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    iget-object v5, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    iget-boolean v6, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZ)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_3

    goto :goto_3d

    :cond_3
    instance-of v0, p1, Lcom/android/server/permission/access/permission/Permission;

    if-nez v0, :cond_8

    goto :goto_3b

    :cond_8
    check-cast p1, Lcom/android/server/permission/access/permission/Permission;

    iget-object v0, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, p1, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_3b

    :cond_15
    iget-boolean v0, p0, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    iget-boolean v1, p1, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    if-eq v0, v1, :cond_1c

    goto :goto_3b

    :cond_1c
    iget v0, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    iget v1, p1, Lcom/android/server/permission/access/permission/Permission;->type:I

    if-eq v0, v1, :cond_23

    goto :goto_3b

    :cond_23
    iget v0, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    iget v1, p1, Lcom/android/server/permission/access/permission/Permission;->appId:I

    if-eq v0, v1, :cond_2a

    goto :goto_3b

    :cond_2a
    iget-object v0, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    iget-object v1, p1, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_3b

    :cond_35
    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    iget-boolean p1, p1, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    if-eq p0, p1, :cond_3d

    :goto_3b
    const/4 p0, 0x0

    return p0

    :cond_3d
    :goto_3d
    const/4 p0, 0x1

    return p0
.end method

.method public final getGidsForUser(I)[I
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    iget-object p0, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    if-eqz v0, :cond_18

    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_17

    aget v3, p0, v2

    invoke-static {p1, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_17
    return-object v1

    :cond_18
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const-string/jumbo p1, "copyOf(...)"

    invoke-static {p1, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Permission(permissionInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isReconciled="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", appId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    const-string v3, ", gids="

    const-string v4, ", areGidsPerUser="

    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    const-string v0, ")"

    invoke-static {v0, v2, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
