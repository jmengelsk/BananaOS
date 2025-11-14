.class public final synthetic Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;II)V
    .locals 0

    iput p4, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    iput-object p2, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 9

    iget v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    iget p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$2:I

    iget-object v0, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Revoking permissions from disabled data services for user:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultPermGrantPolicy"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    iget-object v5, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x1

    invoke-static {v5, v4, v6, v7, p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-static {v5, v4, v6, v7, p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$2:I

    iget-object v2, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Granting permissions to enabled data services for user:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DefaultPermGrantPolicy"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    array-length p0, v1

    const/4 v0, 0x0

    move v8, v0

    :goto_2
    if-ge v8, p0, :cond_4

    aget-object v4, v1, v8

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v7, v0

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    aput-object v3, v7, v6

    const/4 v6, 0x1

    iget-object v3, v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    iget p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$2:I

    iget-object v0, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Revoke permissions from LUI apps for user:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultPermGrantPolicy"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    array-length v2, v1

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_7

    aget-object v4, v1, v3

    iget-object v5, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v7, 0x1

    invoke-static {v5, v4, v6, v7, p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeRuntimePermissions(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;Ljava/util/Set;ZI)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$2:I

    iget-object v2, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Granting permissions to enabled carrier apps for user:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DefaultPermGrantPolicy"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    array-length p0, v1

    const/4 v0, 0x0

    move v8, v0

    :goto_6
    if-ge v8, p0, :cond_9

    aget-object v4, v1, v8

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v7, v0

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    aput-object v3, v7, v6

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x2

    aput-object v3, v7, v6

    const/4 v6, 0x0

    iget-object v3, v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;->f$2:I

    iget-object v2, v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Granting permissions to enabled ImsServices for user:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DefaultPermGrantPolicy"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_a

    goto :goto_9

    :cond_a
    array-length p0, v1

    const/4 v0, 0x0

    move v8, v0

    :goto_8
    if-ge v8, p0, :cond_b

    aget-object v4, v1, v8

    const/4 v3, 0x5

    new-array v7, v3, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v7, v0

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x1

    aput-object v3, v7, v6

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->ALWAYS_LOCATION_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x2

    aput-object v3, v7, v6

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x3

    aput-object v3, v7, v6

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/4 v6, 0x4

    aput-object v3, v7, v6

    const/4 v6, 0x0

    iget-object v3, v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsToSystemPackage(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;Ljava/lang/String;IZ[Ljava/util/Set;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
