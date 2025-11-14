.class public final Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final AURAL_VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

.field public static final LEGACY_RESTRICTED_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

.field public static final STORAGE_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

.field public static final VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;


# instance fields
.field public final policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const-string/jumbo v9, "android.permission.WRITE_CALL_LOG"

    const-string/jumbo v10, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string/jumbo v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string/jumbo v3, "android.permission.SEND_SMS"

    const-string/jumbo v4, "android.permission.RECEIVE_SMS"

    const-string/jumbo v5, "android.permission.RECEIVE_WAP_PUSH"

    const-string/jumbo v6, "android.permission.RECEIVE_MMS"

    const-string/jumbo v7, "android.permission.READ_CELL_BROADCASTS"

    const-string/jumbo v8, "android.permission.READ_CALL_LOG"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LEGACY_RESTRICTED_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    const-string/jumbo v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->STORAGE_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    const-string/jumbo v0, "android.permission.READ_MEDIA_AUDIO"

    const-string/jumbo v1, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    const-string/jumbo v2, "android.permission.READ_MEDIA_IMAGES"

    const-string/jumbo v3, "android.permission.READ_MEDIA_VIDEO"

    const-string/jumbo v4, "android.permission.ACCESS_MEDIA_LOCATION"

    filled-new-array {v0, v2, v3, v4, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->AURAL_VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    return-void
.end method


# virtual methods
.method public final grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V
    .registers 14

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Granting runtime permission for package: "

    const-string v2, ", permission: "

    const-string v3, ", userId: "

    invoke-static {v1, v0, v2, p4, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AppIdPermissionUpgrade"

    invoke-static {v0, p3, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    invoke-interface {p2, p3}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v0, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/16 v2, 0x1000

    invoke-static {v0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-nez v0, :cond_41

    return-void

    :cond_41
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    iget-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-static {v0, v4, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v0

    const v2, 0x2001e0

    invoke-static {v0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Not allowed to grant "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_78
    or-int/lit8 p2, v0, 0x10

    const v0, -0x701401

    and-int v8, p2, v0

    const/4 v7, -0x1

    iget-object v2, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-object v3, p1

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    return-void
.end method

.method public final isRuntimePermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z
    .registers 5

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p2

    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-static {p0, p2, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result p0

    return p0
.end method

.method public final revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z
    .registers 16

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Revoking runtime permission for package: "

    const-string v2, ", permission: "

    const-string v3, ", userId: "

    invoke-static {v1, v0, v2, p4, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppIdPermissionUpgrade"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    iget-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-static {v0, v6, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v0

    const/16 v4, 0x180

    invoke-static {v0, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Cannot revoke fixed runtime permission from package: "

    invoke-static {p1, p0, v2, p4, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, p3, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_41
    const p2, -0xf00279

    and-int v10, v0, p2

    const/4 v9, -0x1

    iget-object v4, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-object v5, p1

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    const/4 p0, 0x1

    return p0
.end method
