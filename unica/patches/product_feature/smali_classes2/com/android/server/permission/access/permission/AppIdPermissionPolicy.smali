.class public final Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
.super Lcom/android/server/permission/access/SchemePolicy;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final NEARBY_DEVICES_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

.field public static final NOTIFICATIONS_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

.field public static final NO_IMPLICIT_FLAG_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

.field public static final STORAGE_AND_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;


# instance fields
.field public volatile isSignaturePermissionAllowlistForceEnforced:Z

.field public final migration:Lcom/android/server/permission/access/permission/AppIdPermissionMigration;

.field public volatile onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

.field public final onPermissionFlagsChangedListenersLock:Ljava/lang/Object;

.field public final persistence:Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

.field public final privilegedPermissionAllowlistViolations:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

.field public final upgrade:Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string/jumbo v4, "android.permission.READ_MEDIA_VIDEO"

    const-string/jumbo v5, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    const-string/jumbo v0, "android.permission.ACCESS_MEDIA_LOCATION"

    const-string/jumbo v1, "android.permission.ACTIVITY_RECOGNITION"

    const-string/jumbo v2, "android.permission.READ_MEDIA_AUDIO"

    const-string/jumbo v3, "android.permission.READ_MEDIA_IMAGES"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NO_IMPLICIT_FLAG_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    const-string/jumbo v0, "android.permission.BLUETOOTH_SCAN"

    const-string/jumbo v1, "android.permission.NEARBY_WIFI_DEVICES"

    const-string/jumbo v2, "android.permission.BLUETOOTH_ADVERTISE"

    const-string/jumbo v3, "android.permission.BLUETOOTH_CONNECT"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NEARBY_DEVICES_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    const-string/jumbo v0, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NOTIFICATIONS_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    const-string/jumbo v6, "android.permission.ACCESS_MEDIA_LOCATION"

    const-string/jumbo v7, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string/jumbo v3, "android.permission.READ_MEDIA_AUDIO"

    const-string/jumbo v4, "android.permission.READ_MEDIA_VIDEO"

    const-string/jumbo v5, "android.permission.READ_MEDIA_IMAGES"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->STORAGE_AND_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

    new-instance v0, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->migration:Lcom/android/server/permission/access/permission/AppIdPermissionMigration;

    new-instance v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;-><init>(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;)V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->upgrade:Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListenersLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->privilegedPermissionAllowlistViolations:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    return-void
.end method

.method public static addPermissionGroups(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V
    .registers 14

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    const-string v4, "AppIdPermissionPolicy"

    if-ge v3, v1, :cond_bc

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/PackageUserState;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v5

    if-nez v5, :cond_b8

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_2c
    if-ge v2, v1, :cond_b7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    const-wide/16 v5, 0x80

    invoke-static {v3, v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionGroups()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PermissionGroupInfo;

    if-eqz v7, :cond_a4

    iget-object v8, v3, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    iget-object v9, v7, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a4

    iget-object v8, v3, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    iget-object v7, v7, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v9

    const-string v10, "Ignoring permission group "

    if-nez v9, :cond_75

    const-string v3, " declared in package "

    const-string v6, ": already declared in another package "

    invoke-static {v10, v5, v3, v8, v6}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, v7, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b3

    :cond_75
    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v9, :cond_96

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_96

    const-string v3, " declared in system package "

    const-string v6, ": already declared in another system package "

    invoke-static {v10, v5, v3, v8, v6}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, v7, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b3

    :cond_96
    const-string/jumbo v9, "Overriding permission group "

    const-string v10, " with new declaration in system package "

    const-string v11, ": originally declared in another package "

    invoke-static {v9, v5, v10, v8, v11}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v8, v7, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    invoke-static {v6}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/permission/access/MutableSystemState;->permissionGroupsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v6}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-virtual {v6, v5, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_b3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2c

    :cond_b7
    return-void

    :cond_b8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    :cond_bc
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Ignoring permission groups declared in package "

    const-string v0, ": instant apps cannot declare permission groups"

    invoke-static {p1, p0, v0, v4}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static adoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V
    .registers 19

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v2, :cond_b7

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/PackageState;

    if-nez v9, :cond_2f

    goto :goto_55

    :cond_2f
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v10

    const-string v11, " to "

    const-string/jumbo v12, "Unable to adopt permissions from "

    const-string v13, "AppIdPermissionPolicy"

    if-nez v10, :cond_46

    const-string v8, ": original package not in system partition"

    invoke-static {v12, v5, v11, v6, v8}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    :cond_46
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v9

    if-eqz v9, :cond_59

    const-string v8, ": original package still exists"

    invoke-static {v12, v5, v11, v6, v8}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    :goto_55
    move-object/from16 v13, p2

    const/4 v3, 0x0

    goto :goto_b3

    :cond_59
    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v9

    iget-object v10, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_68
    if-ge v11, v10, :cond_55

    iget-object v12, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/permission/access/permission/Permission;

    check-cast v12, Ljava/lang/String;

    iget-object v14, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v14, v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_88

    move-object/from16 v13, p2

    const/4 v3, 0x0

    goto :goto_b0

    :cond_88
    new-instance v14, Landroid/content/pm/PermissionInfo;

    invoke-direct {v14}, Landroid/content/pm/PermissionInfo;-><init>()V

    iget-object v15, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v3, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object v3, v14, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iput-object v6, v14, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget v3, v15, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iput v3, v14, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v3, 0x0

    invoke-static {v13, v14, v3, v3}, Lcom/android/server/permission/access/permission/Permission;->copy$default(Lcom/android/server/permission/access/permission/Permission;Landroid/content/pm/PermissionInfo;ZI)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v13

    invoke-static {v8}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v14, v11, v13}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, p2

    invoke-virtual {v13, v12}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)V

    :goto_b0
    add-int/lit8 v11, v11, 0x1

    goto :goto_68

    :goto_b3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_10

    :cond_b7
    return-void
.end method

.method public static findPermissionTree(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;
    .registers 9

    iget-object p0, p0, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    iget-object v0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_11
    const/4 v2, 0x0

    if-ge v1, v0, :cond_52

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/permission/Permission;

    check-cast v3, Ljava/lang/String;

    const-string v5, "<this>"

    invoke-static {v5, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v5, "prefix"

    invoke-static {v5, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_4c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2e

    if-ne v3, v5, :cond_4c

    move-object v2, v4

    :cond_4c
    if-eqz v2, :cond_4f

    return-object v2

    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_52
    return-object v2
.end method

.method public static getAppIdTargetSdkVersion(ILjava/lang/String;Lcom/android/server/permission/access/AccessState;)I
    .registers 9

    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedListSet;

    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/16 v1, 0x2710

    iput v1, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v1, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v1, :cond_61

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget v4, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v5

    if-eqz v5, :cond_5c

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p1, :cond_55

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    :cond_55
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    if-le v4, v3, :cond_5c

    move v4, v3

    :cond_5c
    iput v4, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_61
    iget p0, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    return p0
.end method

.method public static getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/MutableUserState;

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p0

    if-eqz p0, :cond_19

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static shouldGrantPrivilegedOrOemPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z
    .registers 7

    iget-object v0, p2, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4b

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result p0

    if-eqz p0, :cond_95

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result p0

    if-nez p0, :cond_29

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    move-result p0

    if-eqz p0, :cond_49

    :cond_29
    iget-object p0, p2, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const p1, 0x8000

    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-nez p0, :cond_49

    const-string/jumbo p0, "Permission "

    const-string p1, " cannot be granted to privileged vendor (or odm) app "

    const-string p2, " because it isn\'t a vendorPrivileged permission"

    invoke-static {p0, v0, p1, v1, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppIdPermissionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_49
    const/4 p0, 0x1

    return p0

    :cond_4b
    iget-object p2, p2, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {p2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p2

    const/16 v2, 0x4000

    invoke-static {p2, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_95

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isOem()Z

    move-result p1

    if-eqz p1, :cond_95

    iget-object p0, p0, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/permission/access/MutableExternalState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionAllowlist;->mOemAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_73

    const/4 p0, 0x0

    goto :goto_79

    :cond_73
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    :goto_79
    if-eqz p0, :cond_80

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_80
    const-string/jumbo p0, "OEM permission "

    const-string p1, " requested by package "

    const-string p2, " must be explicitly declared granted or not"

    invoke-static {p0, v0, p1, v1, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_95
    return v3
.end method


# virtual methods
.method public final addPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V
    .registers 32

    move-object/from16 v1, p1

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/server/permission/access/MutateStateScope;->oldState:Lcom/android/server/permission/access/AccessState;

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v2, :cond_22

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    if-eqz v2, :cond_35

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    const/4 v9, 0x1

    goto :goto_36

    :cond_35
    const/4 v9, 0x0

    :goto_36
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_3f
    if-ge v12, v11, :cond_35a

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    const-wide/16 v2, 0x80

    invoke-static {v13, v2, v3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionInfo(Lcom/android/internal/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v0

    iget-object v14, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    if-eqz v0, :cond_6c

    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    goto :goto_7c

    :cond_6c
    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    :goto_7c
    invoke-static {v1, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->findPermissionTree(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v2

    iget-object v3, v15, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const-string v5, " declared in package "

    const-string v6, "Ignoring permission "

    const-string v8, "AppIdPermissionPolicy"

    if-eqz v2, :cond_bf

    iget-object v7, v2, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_bf

    iget-object v0, v2, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const-string v7, ": base permission tree "

    invoke-static {v6, v4, v5, v3, v7}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is declared in another package "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b2
    move-object/from16 v0, p3

    move/from16 v22, v9

    move-object/from16 v21, v10

    move/from16 v26, v11

    move/from16 v27, v12

    :goto_bc
    const/4 v1, 0x1

    goto/16 :goto_34e

    :cond_bf
    if-eqz v0, :cond_285

    iget-object v2, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_197

    iget-object v2, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v7

    if-nez v7, :cond_df

    const-string v0, ": already declared in another package "

    invoke-static {v6, v4, v5, v3, v0}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v2, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b2

    :cond_df
    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v5, :cond_100

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_100

    const-string v0, " declared in system package "

    const-string v5, ": already declared in another system package "

    invoke-static {v6, v4, v0, v3, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v2, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b2

    :cond_100
    const-string/jumbo v5, "Overriding permission "

    const-string v6, " with new declaration in system package "

    const-string v7, ": originally declared in another package "

    invoke-static {v5, v4, v6, v3, v7}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    move-result-object v7

    iget-object v2, v7, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    const/4 v2, 0x0

    :goto_124
    if-ge v2, v8, :cond_18b

    iget-object v5, v7, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v6

    move-object/from16 v16, v0

    iget-object v0, v6, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move/from16 v17, v5

    const/4 v5, 0x0

    :goto_13f
    if-ge v5, v0, :cond_178

    move/from16 v18, v0

    iget-object v0, v6, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v6, v5}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v19

    check-cast v19, Lcom/android/server/permission/access/immutable/IndexedListSet;

    move/from16 v19, v5

    const/4 v5, -0x1

    move-object/from16 v20, v6

    const/4 v6, 0x0

    move-object/from16 v21, v7

    move/from16 v22, v9

    move-object/from16 v7, v16

    move/from16 v16, v2

    move-object v9, v3

    move/from16 v3, v17

    move v2, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    add-int/lit8 v5, v19, 0x1

    move-object/from16 v1, p1

    move-object v3, v9

    move/from16 v2, v16

    move/from16 v0, v18

    move-object/from16 v6, v20

    move/from16 v9, v22

    move-object/from16 v16, v7

    move-object/from16 v7, v21

    goto :goto_13f

    :cond_178
    move-object/from16 v21, v7

    move/from16 v22, v9

    move-object/from16 v7, v16

    move/from16 v16, v2

    move-object v9, v3

    add-int/lit8 v2, v16, 0x1

    move-object/from16 v1, p1

    move-object v0, v7

    move-object/from16 v7, v21

    move/from16 v9, v22

    goto :goto_124

    :cond_18b
    move-object v7, v0

    move/from16 v22, v9

    move-object v9, v3

    :cond_18f
    move-object/from16 v21, v10

    move/from16 v26, v11

    move/from16 v27, v12

    goto/16 :goto_28f

    :cond_197
    move-object v7, v0

    move/from16 v22, v9

    move-object v9, v3

    iget-boolean v0, v7, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    if-eqz v0, :cond_18f

    invoke-virtual {v15}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_1b6

    iget-object v0, v15, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v0, :cond_1b6

    iget-object v1, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b6

    const/16 v16, 0x1

    goto :goto_1b8

    :cond_1b6
    const/16 v16, 0x0

    :goto_1b8
    invoke-virtual {v15}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_1c7

    iget-object v0, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d7

    :cond_1c7
    invoke-virtual {v15}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1da

    iget-object v0, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    if-ne v0, v1, :cond_1d7

    goto :goto_1da

    :cond_1d7
    const/16 v17, 0x1

    goto :goto_1dc

    :cond_1da
    :goto_1da
    const/16 v17, 0x0

    :goto_1dc
    if-nez v16, :cond_1e0

    if-eqz v17, :cond_18f

    :cond_1e0
    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1ef
    if-ge v2, v1, :cond_18f

    iget-object v3, v0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v5

    iget-object v6, v5, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    move-object/from16 v21, v10

    const/4 v10, 0x0

    :goto_208
    if-ge v10, v6, :cond_275

    move-object/from16 v18, v0

    iget-object v0, v5, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v5, v10}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v19

    check-cast v19, Lcom/android/server/permission/access/immutable/IndexedListSet;

    move/from16 v19, v1

    const-string v1, " and userId "

    move/from16 v20, v2

    const-string v2, " for appId "

    move-object/from16 v23, v5

    if-eqz v16, :cond_244

    iget-object v5, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move/from16 v24, v6

    iget-object v6, v15, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move/from16 v25, v10

    const-string/jumbo v10, "Revoking runtime permission "

    invoke-static {v0, v10, v4, v2, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v26, v11

    const-string v11, " as the permission group changed from "

    move/from16 v27, v12

    const-string v12, " to "

    invoke-static {v3, v11, v5, v12, v10}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {v10, v6, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24c

    :cond_244
    move/from16 v24, v6

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v27, v12

    :goto_24c
    if-eqz v17, :cond_25a

    const-string/jumbo v5, "Revoking permission "

    invoke-static {v0, v5, v4, v2, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as the permission protection changed."

    invoke-static {v3, v2, v8, v1}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_25a
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v2, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    add-int/lit8 v10, v25, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v5, v23

    move/from16 v6, v24

    move/from16 v11, v26

    move/from16 v12, v27

    goto :goto_208

    :cond_275
    move-object/from16 v18, v0

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v26, v11

    move/from16 v27, v12

    add-int/lit8 v2, v20, 0x1

    move-object/from16 v10, v21

    goto/16 :goto_1ef

    :cond_285
    move-object v7, v0

    move/from16 v22, v9

    move-object/from16 v21, v10

    move/from16 v26, v11

    move/from16 v27, v12

    move-object v9, v3

    :goto_28f
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v1

    if-nez v1, :cond_2bb

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_2bb

    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/permission/access/MutableExternalState;->configPermissions:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/SystemConfig$PermissionEntry;

    if-eqz v1, :cond_2bb

    iget-object v2, v1, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v2, :cond_2b4

    iget-boolean v0, v1, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    move v1, v0

    move-object v0, v2

    goto :goto_2b5

    :cond_2b4
    const/4 v1, 0x0

    :goto_2b5
    move/from16 v20, v1

    :goto_2b7
    move-object/from16 v19, v0

    move-object v0, v14

    goto :goto_2be

    :cond_2bb
    const/16 v20, 0x0

    goto :goto_2b7

    :goto_2be
    new-instance v14, Lcom/android/server/permission/access/permission/Permission;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v18

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v20}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZ)V

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v1

    if-eqz v1, :cond_2e4

    invoke-static {v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/MutableSystemState;->permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-virtual {v0, v4, v14}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p3

    goto/16 :goto_bc

    :cond_2e4
    invoke-static {v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v0

    invoke-virtual {v0, v4, v14}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v7, :cond_349

    iget-object v0, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_349

    iget v0, v15, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iget-object v1, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-ne v0, v1, :cond_349

    iget-boolean v0, v7, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    if-eqz v0, :cond_345

    invoke-virtual {v15}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_315

    if-nez v22, :cond_311

    goto :goto_315

    :cond_311
    move-object/from16 v0, p3

    const/4 v1, 0x1

    goto :goto_34b

    :cond_315
    :goto_315
    invoke-virtual {v15}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/high16 v1, 0x8000000

    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_32d

    iget-object v0, v15, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    iget-object v1, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_311

    :cond_32d
    invoke-virtual {v15}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_346

    iget-object v0, v15, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v0, :cond_346

    iget-object v2, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_346

    :goto_342
    move-object/from16 v0, p3

    goto :goto_34b

    :cond_345
    const/4 v1, 0x1

    :cond_346
    move-object/from16 v0, p3

    goto :goto_34e

    :cond_349
    const/4 v1, 0x1

    goto :goto_342

    :goto_34b
    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)V

    :goto_34e
    add-int/lit8 v12, v27, 0x1

    move-object/from16 v1, p1

    move-object/from16 v10, v21

    move/from16 v9, v22

    move/from16 v11, v26

    goto/16 :goto_3f

    :cond_35a
    return-void
.end method

.method public final evaluateAllPermissionStatesForPackage(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/PackageState;)V
    .registers 8

    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_1f

    iget-object v3, v0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, p1, p2, v3, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluateAllPermissionStatesForPackageAndUser(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILcom/android/server/pm/pkg/PackageState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1f
    return-void
.end method

.method public final evaluateAllPermissionStatesForPackageAndUser(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILcom/android/server/pm/pkg/PackageState;)V
    .registers 13

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionState(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    goto :goto_10

    :cond_29
    return-void
.end method

.method public final evaluatePermissionState(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V
    .registers 32

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v0, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedListSet;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_28
    const/4 v10, 0x1

    if-ge v8, v6, :cond_5c

    iget-object v11, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget-object v12, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v12}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v11, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v12

    if-eqz v12, :cond_58

    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_59

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_59

    :cond_58
    move v9, v10

    :cond_59
    :goto_59
    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    :cond_5c
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v10, :cond_68

    if-eqz v9, :cond_68

    goto/16 :goto_16c

    :cond_68
    iget-object v0, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    iget-object v6, v1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-static {v6, v2, v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v6

    if-nez v0, :cond_8c

    if-nez v6, :cond_16c

    const/4 v5, -0x1

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    return-void

    :cond_8c
    iget-object v1, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v1

    const/16 v2, 0x40

    const-string v3, "AppIdPermissionPolicy"

    const/4 v8, 0x2

    if-nez v1, :cond_16d

    invoke-static {v6, v10}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-nez v1, :cond_16c

    invoke-static {v6, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz p5, :cond_b8

    invoke-interface/range {p5 .. p5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b8

    move v9, v10

    goto :goto_b9

    :cond_b8
    const/4 v9, 0x0

    :goto_b9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_be
    if-ge v12, v11, :cond_d1

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v13

    if-eqz v13, :cond_ce

    move v11, v10

    goto :goto_d2

    :cond_ce
    add-int/lit8 v12, v12, 0x1

    goto :goto_be

    :cond_d1
    const/4 v11, 0x0

    :goto_d2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_d7
    if-ge v13, v12, :cond_140

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v15, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    const-string/jumbo v7, "array"

    invoke-static {v7, v15}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    move/from16 v16, v10

    const/4 v7, 0x0

    :goto_f1
    array-length v10, v15

    if-ge v7, v10, :cond_13a

    add-int/lit8 v10, v7, 0x1

    :try_start_f6
    aget-object v7, v15, v7
    :try_end_f8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f6 .. :try_end_f8} :catch_12f

    invoke-virtual {v7}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12c

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v8

    invoke-virtual {v7}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getSdkVersion()I

    move-result v7

    if-ge v8, v7, :cond_12c

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Auto-granting "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to old package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v7, v16

    goto :goto_143

    :cond_12c
    move v7, v10

    const/4 v8, 0x2

    goto :goto_f1

    :catch_12f
    move-exception v0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13a
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v16

    const/4 v8, 0x2

    goto :goto_d7

    :cond_140
    move/from16 v16, v10

    const/4 v7, 0x0

    :goto_143
    if-eqz v1, :cond_14e

    if-nez v9, :cond_14e

    if-nez v11, :cond_14e

    if-eqz v7, :cond_14c

    goto :goto_14e

    :cond_14c
    const/4 v10, 0x2

    goto :goto_150

    :cond_14e
    :goto_14e
    move/from16 v10, v16

    :goto_150
    iget-object v0, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    invoke-static {v0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_15f

    and-int/lit8 v0, v6, 0x28

    or-int/2addr v10, v0

    :cond_15f
    move v6, v10

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    :cond_16c
    :goto_16c
    return-void

    :cond_16d
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v16, v10

    iget-object v7, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v7

    const/16 v11, 0x10

    const/4 v15, 0x4

    const/4 v2, 0x2

    if-ne v7, v2, :cond_180

    goto :goto_188

    :cond_180
    iget-object v2, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v2

    if-ne v2, v15, :cond_792

    :goto_188
    invoke-static {v6, v15}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v9, :cond_195

    if-eqz v2, :cond_195

    move/from16 v24, v6

    move v7, v15

    goto/16 :goto_751

    :cond_195
    iget-object v2, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v2

    invoke-static {v2, v11}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    const-string v9, " ("

    const-string v7, " for package "

    const-string/jumbo v13, "android"

    if-eqz v2, :cond_338

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v12, 0x0

    :goto_1ad
    if-ge v12, v2, :cond_330

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/pm/pkg/PackageState;

    sget-boolean v20, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    if-eqz v20, :cond_1c1

    :cond_1b9
    :goto_1b9
    move/from16 v23, v2

    move/from16 v24, v6

    :goto_1bd
    move/from16 v2, v16

    goto/16 :goto_320

    :cond_1c1
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1cc

    goto :goto_1b9

    :cond_1cc
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v10

    if-eqz v10, :cond_1b9

    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result v10

    if-nez v10, :cond_1d9

    goto :goto_1b9

    :cond_1d9
    iget-object v10, v4, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v10}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/permission/access/MutableExternalState;->privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/immutable/IndexedListSet;

    iget-object v8, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v10, v10, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1ee

    goto :goto_1b9

    :cond_1ee
    iget-object v8, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v10, v4, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v10}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/permission/access/MutableExternalState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->getApexModuleName()Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result v22

    if-nez v22, :cond_20e

    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    move-result v22

    if-eqz v22, :cond_216

    :cond_20e
    move/from16 v23, v2

    move/from16 v24, v6

    move-object/from16 v25, v10

    goto/16 :goto_29b

    :cond_216
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->isProduct()Z

    move-result v22

    if-eqz v22, :cond_236

    iget-object v11, v14, Lcom/android/server/pm/permission/PermissionAllowlist;->mProductPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v11, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArrayMap;

    if-nez v11, :cond_228

    :goto_226
    const/4 v8, 0x0

    goto :goto_22e

    :cond_228
    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    :goto_22e
    move/from16 v23, v2

    move/from16 v24, v6

    move-object/from16 v25, v10

    goto/16 :goto_2ae

    :cond_236
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->isSystemExt()Z

    move-result v22

    if-eqz v22, :cond_24e

    iget-object v11, v14, Lcom/android/server/pm/permission/PermissionAllowlist;->mSystemExtPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v11, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArrayMap;

    if-nez v11, :cond_247

    goto :goto_226

    :cond_247
    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    goto :goto_22e

    :cond_24e
    if-eqz v11, :cond_290

    invoke-virtual {v14, v15, v8}, Lcom/android/server/pm/permission/PermissionAllowlist;->getPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v22

    move/from16 v23, v2

    if-eqz v22, :cond_26b

    const-string/jumbo v2, "Package "

    move/from16 v24, v6

    const-string v6, " is an APK in APEX but has permission allowlist on the system image, please bundle the allowlist in the "

    move-object/from16 v25, v10

    const-string v10, " APEX instead"

    invoke-static {v2, v15, v6, v11, v10}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26f

    :cond_26b
    move/from16 v24, v6

    move-object/from16 v25, v10

    :goto_26f
    iget-object v2, v14, Lcom/android/server/pm/permission/PermissionAllowlist;->mApexPrivilegedAppAllowlists:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-nez v2, :cond_27b

    :goto_279
    const/4 v8, 0x0

    goto :goto_28b

    :cond_27b
    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-nez v2, :cond_284

    goto :goto_279

    :cond_284
    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    move-object v8, v2

    :goto_28b
    if-nez v8, :cond_2ae

    move-object/from16 v8, v22

    goto :goto_2ae

    :cond_290
    move/from16 v23, v2

    move/from16 v24, v6

    move-object/from16 v25, v10

    invoke-virtual {v14, v15, v8}, Lcom/android/server/pm/permission/PermissionAllowlist;->getPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_2ae

    :goto_29b
    iget-object v2, v14, Lcom/android/server/pm/permission/PermissionAllowlist;->mVendorPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-nez v2, :cond_2a7

    const/4 v8, 0x0

    goto :goto_2ae

    :cond_2a7
    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    move-object v8, v2

    :cond_2ae
    :goto_2ae
    if-eqz v8, :cond_2b5

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_320

    :cond_2b5
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v2

    if-eqz v2, :cond_2bd

    goto/16 :goto_1bd

    :cond_2bd
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/permission/access/MutableExternalState;->isSystemReady:Z

    if-nez v2, :cond_31c

    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->isApkInUpdatedApex()Z

    move-result v2

    if-nez v2, :cond_31c

    iget-object v2, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v8

    const-string/jumbo v10, "Privileged permission "

    invoke-static {v10, v2, v7, v6, v9}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ") not in privileged permission allowlist"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v2, :cond_31c

    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v6

    iget-object v8, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->privilegedPermissionAllowlistViolations:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    invoke-virtual {v6, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)V

    :cond_31c
    sget-boolean v2, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    xor-int/lit8 v2, v2, 0x1

    :goto_320
    if-eqz v2, :cond_325

    move/from16 v2, v16

    goto :goto_333

    :cond_325
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v23

    move/from16 v6, v24

    const/16 v11, 0x10

    const/4 v15, 0x4

    goto/16 :goto_1ad

    :cond_330
    move/from16 v24, v6

    const/4 v2, 0x0

    :goto_333
    if-eqz v2, :cond_336

    goto :goto_33a

    :cond_336
    const/4 v2, 0x0

    goto :goto_33c

    :cond_338
    move/from16 v24, v6

    :goto_33a
    move/from16 v2, v16

    :goto_33c
    iget-object v6, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v6}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_348

    move/from16 v6, v16

    goto :goto_349

    :cond_348
    const/4 v6, 0x0

    :goto_349
    if-eqz v6, :cond_510

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_350
    if-ge v8, v6, :cond_50b

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v11

    iget-object v12, v4, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v12}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    iget-object v14, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v12, :cond_382

    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v12

    if-eqz v12, :cond_382

    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v12

    goto :goto_383

    :cond_382
    const/4 v12, 0x0

    :goto_383
    iget-object v14, v4, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v14, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v14

    if-eqz v12, :cond_3ab

    const/4 v15, 0x4

    invoke-virtual {v12, v11, v15}, Landroid/content/pm/SigningDetails;->hasCommonSignerWithCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v12

    move/from16 v15, v16

    if-ne v12, v15, :cond_3ab

    goto :goto_3bb

    :cond_3ab
    invoke-virtual {v11, v14}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v12

    if-nez v12, :cond_3bb

    const/4 v15, 0x4

    invoke-virtual {v14, v11, v15}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v11

    if-eqz v11, :cond_3b9

    goto :goto_3bb

    :cond_3b9
    const/4 v11, 0x0

    goto :goto_3bc

    :cond_3bb
    :goto_3bb
    const/4 v11, 0x1

    :goto_3bc
    if-nez v11, :cond_3c1

    :cond_3be
    :goto_3be
    const/4 v10, 0x0

    goto/16 :goto_501

    :cond_3c1
    iget-object v11, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v11, v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_500

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v11

    if-eqz v11, :cond_403

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v11

    if-eqz v11, :cond_500

    iget-object v11, v4, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v11}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v11, :cond_3f0

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v11

    goto :goto_3f1

    :cond_3f0
    const/4 v11, 0x0

    :goto_3f1
    if-eqz v11, :cond_403

    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v12, v12, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_403

    goto/16 :goto_500

    :cond_403
    iget-object v11, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v12, v4, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v12}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/permission/access/MutableExternalState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result v15

    if-nez v15, :cond_4b9

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    move-result v15

    if-eqz v15, :cond_421

    goto/16 :goto_4b9

    :cond_421
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->isProduct()Z

    move-result v15

    if-eqz v15, :cond_43b

    iget-object v12, v12, Lcom/android/server/pm/permission/PermissionAllowlist;->mProductSignatureAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArrayMap;

    if-nez v12, :cond_433

    goto/16 :goto_4ae

    :cond_433
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    goto/16 :goto_4ca

    :cond_43b
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->isSystemExt()Z

    move-result v15

    if-eqz v15, :cond_454

    iget-object v12, v12, Lcom/android/server/pm/permission/PermissionAllowlist;->mSystemExtSignatureAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArrayMap;

    if-nez v12, :cond_44c

    goto :goto_4ae

    :cond_44c
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    goto/16 :goto_4ca

    :cond_454
    iget-object v15, v12, Lcom/android/server/pm/permission/PermissionAllowlist;->mApexSignatureAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArrayMap;

    if-nez v15, :cond_460

    const/4 v15, 0x0

    goto :goto_466

    :cond_460
    invoke-virtual {v15, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    :goto_466
    if-nez v15, :cond_4b7

    iget-object v15, v12, Lcom/android/server/pm/permission/PermissionAllowlist;->mProductSignatureAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArrayMap;

    if-nez v15, :cond_474

    const/4 v15, 0x0

    goto :goto_47a

    :cond_474
    invoke-virtual {v15, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    :goto_47a
    if-nez v15, :cond_4b7

    iget-object v15, v12, Lcom/android/server/pm/permission/PermissionAllowlist;->mVendorSignatureAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArrayMap;

    if-nez v15, :cond_488

    const/4 v15, 0x0

    goto :goto_48e

    :cond_488
    invoke-virtual {v15, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    :goto_48e
    if-nez v15, :cond_4b7

    iget-object v15, v12, Lcom/android/server/pm/permission/PermissionAllowlist;->mSystemExtSignatureAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArrayMap;

    if-nez v15, :cond_49c

    const/4 v15, 0x0

    goto :goto_4a2

    :cond_49c
    invoke-virtual {v15, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    :goto_4a2
    if-nez v15, :cond_4b7

    iget-object v12, v12, Lcom/android/server/pm/permission/PermissionAllowlist;->mSignatureAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArrayMap;

    if-nez v12, :cond_4b0

    :goto_4ae
    const/4 v11, 0x0

    goto :goto_4ca

    :cond_4b0
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    goto :goto_4ca

    :cond_4b7
    move-object v11, v15

    goto :goto_4ca

    :cond_4b9
    :goto_4b9
    iget-object v12, v12, Lcom/android/server/pm/permission/PermissionAllowlist;->mVendorSignatureAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArrayMap;

    if-nez v12, :cond_4c4

    goto :goto_4ae

    :cond_4c4
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    :goto_4ca
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v11, v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_500

    iget-object v11, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object v10

    const-string/jumbo v14, "Signature permission "

    invoke-static {v14, v11, v7, v12, v9}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ") not in signature permission allowlist"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v10

    if-eqz v10, :cond_3be

    iget-boolean v10, v1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isSignaturePermissionAllowlistForceEnforced:Z

    if-eqz v10, :cond_500

    goto/16 :goto_3be

    :cond_500
    :goto_500
    const/4 v10, 0x1

    :goto_501
    if-eqz v10, :cond_505

    const/4 v3, 0x1

    goto :goto_50c

    :cond_505
    add-int/lit8 v8, v8, 0x1

    const/16 v16, 0x1

    goto/16 :goto_350

    :cond_50b
    const/4 v3, 0x0

    :goto_50c
    if-eqz v3, :cond_510

    const/4 v3, 0x1

    goto :goto_511

    :cond_510
    const/4 v3, 0x0

    :goto_511
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_516
    if-ge v7, v6, :cond_747

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v10, v4, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v10}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/permission/access/MutableExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v12}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v12

    const/16 v13, 0x10

    invoke-static {v12, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v12

    if-nez v12, :cond_54d

    iget-object v12, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v12}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v12

    const/16 v13, 0x4000

    invoke-static {v12, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v12

    if-eqz v12, :cond_596

    :cond_54d
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v12

    if-eqz v12, :cond_596

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v12

    if-eqz v12, :cond_58d

    iget-object v12, v4, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v12}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v12, :cond_572

    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v13

    goto :goto_573

    :cond_572
    const/4 v13, 0x0

    :goto_573
    if-eqz v13, :cond_58b

    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v13

    iget-object v14, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_58b

    invoke-static {v4, v12, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->shouldGrantPrivilegedOrOemPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z

    move-result v12

    if-eqz v12, :cond_58b

    const/4 v12, 0x1

    goto :goto_591

    :cond_58b
    const/4 v12, 0x0

    goto :goto_591

    :cond_58d
    invoke-static {v4, v8, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->shouldGrantPrivilegedOrOemPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z

    move-result v12

    :goto_591
    if-eqz v12, :cond_596

    :cond_593
    :goto_593
    const/4 v8, 0x1

    goto/16 :goto_73f

    :cond_596
    iget-object v12, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v12}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v12

    const/16 v13, 0x80

    invoke-static {v12, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v12

    if-eqz v12, :cond_5ad

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v12

    const/16 v13, 0x17

    if-ge v12, v13, :cond_5ad

    goto :goto_593

    :cond_5ad
    iget-object v12, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v12}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v12

    const/16 v13, 0x100

    invoke-static {v12, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v12

    if-eqz v12, :cond_5e0

    iget-object v12, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v12, [Ljava/lang/Object;

    invoke-static {v12, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_593

    iget-object v12, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    const/4 v13, 0x7

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v12, [Ljava/lang/Object;

    invoke-static {v12, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5e0

    goto :goto_593

    :cond_5e0
    iget-object v12, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v12}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v12

    const/16 v13, 0x200

    invoke-static {v12, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v12

    if-eqz v12, :cond_601

    iget-object v12, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    const/4 v15, 0x4

    invoke-virtual {v12, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v12, [Ljava/lang/Object;

    invoke-static {v12, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_601

    goto :goto_593

    :cond_601
    iget-object v12, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v12}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v12

    const/16 v13, 0x400

    invoke-static {v12, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v12

    if-eqz v12, :cond_617

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v12

    if-eqz v12, :cond_617

    goto/16 :goto_593

    :cond_617
    iget-object v12, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v12}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v12

    const/high16 v13, 0x8000000

    invoke-static {v12, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v12

    if-eqz v12, :cond_635

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v9

    iget-object v12, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v12, v12, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    invoke-virtual {v9, v12}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z

    move-result v9

    if-eqz v9, :cond_635

    goto/16 :goto_593

    :cond_635
    iget-object v9, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v9

    const/16 v12, 0x800

    invoke-static {v9, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_657

    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v9, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_657

    goto/16 :goto_593

    :cond_657
    iget-object v9, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v9

    const/high16 v12, 0x10000

    invoke-static {v9, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_679

    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    const/4 v12, 0x6

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v9, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_679

    goto/16 :goto_593

    :cond_679
    iget-object v9, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v9

    const/high16 v12, 0x80000

    invoke-static {v9, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_69c

    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    const/16 v12, 0xa

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v9, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_69c

    goto/16 :goto_593

    :cond_69c
    iget-object v9, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v9

    const/high16 v12, 0x100000

    invoke-static {v9, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_6bf

    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    const/16 v12, 0xb

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v9, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6bf

    goto/16 :goto_593

    :cond_6bf
    iget-object v9, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v9

    const/high16 v12, 0x200000

    invoke-static {v9, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_6e2

    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    const/16 v12, 0xc

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v9, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e2

    goto/16 :goto_593

    :cond_6e2
    iget-object v9, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v9

    const/high16 v12, 0x800000

    invoke-static {v9, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_705

    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    const/16 v12, 0xf

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v9, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_705

    goto/16 :goto_593

    :cond_705
    iget-object v9, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v9

    const/high16 v12, 0x2000000

    invoke-static {v9, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_728

    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v9, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_728

    goto/16 :goto_593

    :cond_728
    iget-object v9, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v9

    const/high16 v10, 0x400000

    invoke-static {v9, v10}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_73e

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getApexModuleName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_73e

    goto/16 :goto_593

    :cond_73e
    const/4 v8, 0x0

    :goto_73f
    if-eqz v8, :cond_743

    const/4 v10, 0x1

    goto :goto_748

    :cond_743
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_516

    :cond_747
    const/4 v10, 0x0

    :goto_748
    if-eqz v2, :cond_750

    if-nez v3, :cond_74e

    if-eqz v10, :cond_750

    :cond_74e
    const/4 v7, 0x4

    goto :goto_751

    :cond_750
    const/4 v7, 0x0

    :goto_751
    iget-object v2, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v2

    const/16 v3, 0x40

    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_762

    and-int/lit8 v2, v24, 0x28

    or-int/2addr v7, v2

    :cond_762
    iget-object v2, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v2

    const/16 v3, 0x20

    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_773

    and-int/lit8 v2, v24, 0x10

    or-int/2addr v7, v2

    :cond_773
    iget-object v0, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/high16 v2, 0x4000000

    invoke-static {v0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_784

    and-int/lit8 v0, v24, 0x18

    or-int/2addr v7, v0

    :cond_784
    move v6, v7

    const/4 v5, -0x1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v0, v1

    move-object v1, v4

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    return-void

    :cond_792
    move/from16 v2, p2

    move-object v1, v4

    move/from16 v24, v6

    move-object/from16 v4, p4

    move-object v6, v3

    move/from16 v3, p3

    iget-object v7, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v7

    const/4 v15, 0x1

    if-ne v7, v15, :cond_9fe

    const v6, 0xfffff8

    and-int v6, v24, v6

    const/high16 v7, 0x40000

    if-eqz v6, :cond_7e9

    invoke-static {v6, v15}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-eqz v8, :cond_7b6

    :cond_7b4
    :goto_7b4
    const/4 v15, 0x1

    goto :goto_7e5

    :cond_7b6
    const/4 v13, 0x2

    invoke-static {v6, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-eqz v8, :cond_7bf

    :goto_7bd
    const/4 v15, 0x0

    goto :goto_7e5

    :cond_7bf
    const/4 v15, 0x4

    invoke-static {v6, v15}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-eqz v8, :cond_7c7

    goto :goto_7b4

    :cond_7c7
    const/16 v13, 0x400

    invoke-static {v6, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-nez v8, :cond_7b4

    const/16 v12, 0x800

    invoke-static {v6, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-eqz v8, :cond_7d8

    goto :goto_7b4

    :cond_7d8
    invoke-static {v6, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-eqz v8, :cond_7df

    goto :goto_7bd

    :cond_7df
    const/16 v13, 0x10

    invoke-static {v6, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v15

    :goto_7e5
    if-nez v15, :cond_7e9

    const/4 v15, 0x1

    goto :goto_7ea

    :cond_7e9
    const/4 v15, 0x0

    :goto_7ea
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v9, 0x2710

    const/4 v10, 0x0

    :goto_7f1
    if-ge v10, v8, :cond_80a

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v11

    if-le v9, v11, :cond_807

    move v9, v11

    :cond_807
    add-int/lit8 v10, v10, 0x1

    goto :goto_7f1

    :cond_80a
    sget-boolean v8, Lcom/samsung/android/rune/PMRune;->PM_GRANT_ALL_RUNTIME_PERMISSION_UNPACK:Z

    const v10, 0x38000

    if-eqz v8, :cond_81a

    or-int/lit16 v6, v6, 0x210

    :cond_813
    :goto_813
    move/from16 p5, v7

    move v7, v10

    const/16 v16, 0x1

    goto/16 :goto_975

    :cond_81a
    const/16 v13, 0x17

    if-ge v9, v13, :cond_844

    iget-object v8, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v8}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v8

    const/16 v11, 0x2000

    invoke-static {v8, v11}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-eqz v8, :cond_82f

    and-int v6, v24, v10

    goto :goto_813

    :cond_82f
    or-int/lit16 v8, v6, 0x400

    if-eqz v15, :cond_838

    const v8, 0x100400

    or-int/2addr v6, v8

    goto :goto_839

    :cond_838
    move v6, v8

    :goto_839
    iget-object v8, v1, Lcom/android/server/permission/access/MutateStateScope;->oldState:Lcom/android/server/permission/access/AccessState;

    invoke-static {v8, v2, v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v8

    if-nez v8, :cond_813

    or-int/lit16 v6, v6, 0x1000

    goto :goto_813

    :cond_844
    const/16 v13, 0x400

    invoke-static {v6, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    const/16 v11, 0x1000

    invoke-static {v6, v11}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v12

    if-eqz v8, :cond_85b

    const v6, 0xfffbf8

    and-int v6, v24, v6

    if-nez v12, :cond_85b

    or-int/lit8 v6, v6, 0x10

    :cond_85b
    const/16 v13, 0x800

    invoke-static {v6, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v13

    iget-object v14, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v14

    iget-boolean v14, v14, Lcom/android/server/permission/access/MutableExternalState;->isLeanback:Z

    if-eqz v14, :cond_879

    sget-object v14, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NOTIFICATIONS_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    iget-object v14, v14, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v14, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_879

    const/4 v14, 0x1

    :goto_876
    move/from16 p5, v7

    goto :goto_87b

    :cond_879
    const/4 v14, 0x0

    goto :goto_876

    :goto_87b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v10, 0x0

    :goto_880
    if-ge v10, v7, :cond_8a0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_89b

    const/4 v7, 0x1

    goto :goto_8a1

    :cond_89b
    add-int/lit8 v10, v10, 0x1

    const/16 v11, 0x1000

    goto :goto_880

    :cond_8a0
    const/4 v7, 0x0

    :goto_8a1
    iget-object v10, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v10}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/permission/access/MutableExternalState;->implicitToSourcePermissions:Lcom/android/server/permission/access/immutable/IndexedMap;

    iget-object v10, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/immutable/IndexedListSet;

    if-eqz v10, :cond_907

    iget-object v11, v10, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move/from16 v17, v7

    const/4 v7, 0x0

    :goto_8bc
    if-ge v7, v11, :cond_909

    move/from16 v20, v8

    iget-object v8, v10, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move/from16 v21, v7

    iget-object v7, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v7}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/permission/Permission;

    if-eqz v7, :cond_8f4

    iget-object v7, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8e9

    move v7, v8

    goto :goto_8ea

    :cond_8e9
    const/4 v7, 0x0

    :goto_8ea
    if-nez v7, :cond_8ef

    move/from16 v16, v8

    goto :goto_90e

    :cond_8ef
    add-int/lit8 v7, v21, 0x1

    move/from16 v8, v20

    goto :goto_8bc

    :cond_8f4
    const-string/jumbo v0, "Unknown source permission "

    const-string v1, " in split permissions"

    invoke-static {v0, v8, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_907
    move/from16 v17, v7

    :cond_909
    move/from16 v20, v8

    const/16 v16, 0x1

    const/4 v8, 0x0

    :goto_90e
    if-nez v14, :cond_92a

    if-eqz v17, :cond_915

    if-eqz v8, :cond_915

    goto :goto_92a

    :cond_915
    and-int/lit16 v7, v6, -0x801

    if-nez v20, :cond_91b

    if-eqz v13, :cond_928

    :cond_91b
    const/high16 v8, 0x100000

    invoke-static {v7, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-eqz v8, :cond_928

    const v7, -0x100811

    and-int/2addr v6, v7

    goto :goto_932

    :cond_928
    move v6, v7

    goto :goto_932

    :cond_92a
    :goto_92a
    or-int/lit16 v7, v6, 0x800

    if-eqz v15, :cond_928

    const v7, 0x100800

    or-int/2addr v6, v7

    :goto_932
    if-nez v17, :cond_96a

    if-eqz v12, :cond_96a

    and-int/lit16 v7, v6, -0x1001

    sget-object v8, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NEARBY_DEVICES_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    iget-object v8, v8, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v8, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_95c

    iget-object v8, v1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    const-string/jumbo v10, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {v8, v2, v3, v10}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v10

    if-eqz v10, :cond_95c

    const/16 v10, 0x1000

    invoke-static {v8, v10}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-nez v8, :cond_95c

    move/from16 v15, v16

    goto :goto_95d

    :cond_95c
    const/4 v15, 0x0

    :goto_95d
    const/16 v8, 0x180

    invoke-static {v7, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v8

    if-nez v15, :cond_96e

    if-eqz v8, :cond_968

    goto :goto_96e

    :cond_968
    and-int/lit16 v6, v6, -0x1071

    :cond_96a
    :goto_96a
    const v7, 0x38000

    goto :goto_975

    :cond_96e
    :goto_96e
    if-eqz v13, :cond_973

    or-int/lit8 v6, v7, 0x10

    goto :goto_96a

    :cond_973
    move v6, v7

    goto :goto_96a

    :goto_975
    invoke-static {v6, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v15

    const/high16 v7, 0xc0000

    invoke-static {v6, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v7

    iget-object v8, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v8, v8, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v10, 0x4

    invoke-static {v8, v10}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    const/16 v10, 0x8

    if-nez v8, :cond_996

    iget-object v8, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v8, v8, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {v8, v10}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-eqz v8, :cond_99f

    :cond_996
    if-nez v15, :cond_99f

    if-nez v7, :cond_99f

    const/high16 v7, 0x20000

    or-int/2addr v6, v7

    move/from16 v15, v16

    :cond_99f
    iget-object v7, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v7, v7, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v7

    if-eqz v7, :cond_9af

    if-nez v15, :cond_9af

    or-int v6, v6, p5

    goto :goto_9b3

    :cond_9af
    const v7, -0x40001

    and-int/2addr v6, v7

    :goto_9b3
    iget-object v0, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {v0, v10}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_9f2

    if-nez v15, :cond_9f2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v7, 0x0

    :goto_9c4
    if-ge v7, v0, :cond_9ec

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/PackageState;

    const-string/jumbo v8, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v4, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9de

    const-string/jumbo v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v4, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9e5

    :cond_9de
    const/16 v8, 0x1d

    if-lt v9, v8, :cond_9e5

    move/from16 v15, v16

    goto :goto_9e6

    :cond_9e5
    const/4 v15, 0x0

    :goto_9e6
    if-eqz v15, :cond_9e9

    goto :goto_9f2

    :cond_9e9
    add-int/lit8 v7, v7, 0x1

    goto :goto_9c4

    :cond_9ec
    const/high16 v18, 0x80000

    or-int v0, v6, v18

    :goto_9f0
    move v6, v0

    goto :goto_9f7

    :cond_9f2
    :goto_9f2
    const v0, -0x80001

    and-int/2addr v0, v6

    goto :goto_9f0

    :goto_9f7
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    return-void

    :cond_9fe
    iget-object v0, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string/jumbo v4, "Unknown protection level "

    const-string/jumbo v5, "for permission "

    const-string v7, " while evaluating permission statefor appId "

    invoke-static {v1, v4, v5, v0, v7}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and userId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V
    .registers 20

    move-object/from16 v1, p1

    iget-object v6, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/permission/access/MutableExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    move-result-object v8

    iget-object v0, v8, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_13
    if-ge v11, v9, :cond_a5

    iget-object v0, v8, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v7}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v12

    iget-object v0, v12, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_26
    if-ge v14, v13, :cond_9f

    iget-object v0, v12, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v12, v14}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedListSet;

    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedListSet;

    iget-object v4, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_4c
    if-ge v5, v4, :cond_9a

    iget-object v15, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/pkg/PackageState;

    move-object/from16 v16, v0

    if-nez v10, :cond_6e

    const-string/jumbo v0, "packageState does not exist: "

    const-string v1, "AppIdPermissionPolicy"

    invoke-static {v0, v15, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    if-eqz v10, :cond_93

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_93

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v4, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionState(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    goto :goto_9a

    :cond_93
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v0, v16

    goto :goto_4c

    :cond_9a
    :goto_9a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    goto :goto_26

    :cond_9f
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_13

    :cond_a5
    return-void
.end method

.method public final getObjectScheme()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "permission"

    return-object p0
.end method

.method public final getSubjectScheme()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "uid"

    return-object p0
.end method

.method public final inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V
    .registers 23

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v7, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    const/4 v0, 0x0

    invoke-static {v2, v0, v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAppIdTargetSdkVersion(ILjava/lang/String;Lcom/android/server/permission/access/AccessState;)I

    move-result v8

    new-instance v9, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    invoke-direct {v9}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>()V

    invoke-virtual {v7}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedListSet;

    iget-object v4, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2a
    if-ge v5, v4, :cond_69

    iget-object v6, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v11

    if-eqz v11, :cond_66

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_58
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_66

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)V

    goto :goto_58

    :cond_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :cond_69
    iget-object v0, v9, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_70
    if-ge v12, v11, :cond_14c

    invoke-virtual {v9, v12}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    const-string v5, " in split permissions"

    if-eqz v0, :cond_13b

    iget-object v0, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_131

    iget-object v0, v1, Lcom/android/server/permission/access/MutateStateScope;->oldState:Lcom/android/server/permission/access/AccessState;

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_131

    invoke-virtual {v7}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/MutableExternalState;->implicitToSourcePermissions:Lcom/android/server/permission/access/immutable/IndexedMap;

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedListSet;

    if-nez v0, :cond_b0

    goto/16 :goto_131

    :cond_b0
    iget-object v13, v1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-static {v13, v2, v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v14

    iget-object v15, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v6, 0x0

    :goto_bd
    if-ge v6, v15, :cond_116

    iget-object v10, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v16

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    if-eqz v0, :cond_105

    invoke-static {v13, v2, v3, v10}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v10

    move/from16 v16, v0

    invoke-static {v14}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v0

    if-eqz v10, :cond_f0

    if-nez v0, :cond_f0

    const/16 v18, 0x1

    goto :goto_f2

    :cond_f0
    const/16 v18, 0x0

    :goto_f2
    if-eq v10, v0, :cond_f6

    if-eqz v18, :cond_100

    :cond_f6
    if-eqz v18, :cond_f9

    const/4 v14, 0x0

    :cond_f9
    const v0, 0xfffff8

    and-int v0, v16, v0

    or-int/2addr v0, v14

    move v14, v0

    :cond_100
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v17

    goto :goto_bd

    :cond_105
    const-string/jumbo v0, "Unknown source permission "

    invoke-static {v0, v10, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_116
    const/16 v0, 0x17

    if-lt v8, v0, :cond_128

    sget-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NO_IMPLICIT_FLAG_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    and-int/lit16 v0, v14, -0x1001

    :goto_126
    move v6, v0

    goto :goto_12b

    :cond_128
    or-int/lit16 v0, v14, 0x1000

    goto :goto_126

    :goto_12b
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    :cond_131
    :goto_131
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    goto/16 :goto_70

    :cond_13b
    const-string/jumbo v0, "Unknown implicit permission "

    invoke-static {v0, v4, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14c
    return-void
.end method

.method public final migrateSystemState(Lcom/android/server/permission/access/MutableAccessState;)V
    .registers 6

    const-class p0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getLegacyPermissions()Lcom/android/server/pm/permission/LegacyPermissionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissions()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissionTrees()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_31

    :cond_30
    return-void

    :cond_31
    :goto_31
    invoke-static {p1}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1}, Landroid/content/pm/PackageManagerInternal;->getLegacyPermissions()Lcom/android/server/pm/permission/LegacyPermissionSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissions()Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    new-instance v3, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {v0, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->migratePermissions(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/util/Map;)V

    invoke-static {p1}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/permission/access/MutableSystemState;->permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p1

    check-cast p1, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0}, Landroid/content/pm/PackageManagerInternal;->getLegacyPermissions()Lcom/android/server/pm/permission/LegacyPermissionSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissionTrees()Ljava/util/List;

    move-result-object p0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {p1, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->migratePermissions(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/util/Map;)V

    return-void
.end method

.method public final migrateUserState(Lcom/android/server/permission/access/MutableAccessState;I)V
    .registers 19

    move/from16 v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-class v3, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    invoke-virtual {v3, v0}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;->getLegacyPermissionStateVersion(I)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_1c1

    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    check-cast v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v6

    :try_start_2c
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v0}, Lcom/android/server/pm/Settings;->getLegacyPermissionsState(I)Lcom/android/permission/persistence/RuntimePermissionsState;

    move-result-object v4

    monitor-exit v6
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_1bc

    const-class v6, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {v6}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageManagerLocal;

    invoke-interface {v6}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v6

    :try_start_41
    invoke-interface {v6}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/permission/persistence/RuntimePermissionsState;->getPackagePermissions()Ljava/util/Map;

    move-result-object v8

    new-instance v9, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda1;

    invoke-direct {v9, v3, v7, v5, v1}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;Ljava/util/Map;Ljava/util/Map;I)V

    invoke-interface {v8, v9}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-interface {v6}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getSharedUsers()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/permission/persistence/RuntimePermissionsState;->getSharedUserPermissions()Ljava/util/Map;

    move-result-object v4

    new-instance v8, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda1;

    invoke-direct {v8, v3, v7, v5, v2}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;Ljava/util/Map;Ljava/util/Map;I)V

    invoke-interface {v4, v8}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_61
    .catchall {:try_start_41 .. :try_end_61} :catchall_1af

    invoke-interface {v6}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V

    invoke-static {v0}, Lcom/android/server/permission/access/util/PackageVersionMigration;->getVersion$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)I

    move-result v3

    move-object/from16 v4, p1

    invoke-virtual {v4, v0, v2}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v0, Lcom/android/server/permission/access/MutableUserState;->appIdPermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v6}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_81
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/immutable/IndexedListSet;

    if-nez v9, :cond_c7

    const-string v7, "AppIdPermissionMigration"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Dropping unknown app ID "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " when migrating permission state"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ac

    :cond_c7
    new-instance v10, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v10}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v6, v11, v10}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_db
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/permission/access/permission/Permission;

    if-nez v13, :cond_127

    const-string v11, "AppIdPermissionMigration"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Dropping unknown permission "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " for app ID "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " when migrating permission state"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18b

    :cond_127
    iget-object v14, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v14}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v14

    const/4 v15, 0x2

    if-nez v14, :cond_136

    iget-boolean v14, v11, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->mGranted:Z

    if-eqz v14, :cond_17e

    move v15, v2

    goto :goto_17e

    :cond_136
    iget-object v14, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v14}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v14

    const/4 v1, 0x4

    if-ne v14, v15, :cond_140

    goto :goto_148

    :cond_140
    iget-object v14, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v14}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v14

    if-ne v14, v1, :cond_170

    :goto_148
    iget-boolean v14, v11, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->mGranted:Z

    if-eqz v14, :cond_16e

    iget-object v14, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v14}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v14

    const/16 v15, 0x20

    invoke-static {v14, v15}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v14

    if-nez v14, :cond_16b

    iget-object v14, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v14}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v14

    const/high16 v15, 0x4000000

    invoke-static {v14, v15}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v14

    if-eqz v14, :cond_169

    goto :goto_16b

    :cond_169
    move v15, v1

    goto :goto_17e

    :cond_16b
    :goto_16b
    const/16 v15, 0x14

    goto :goto_17e

    :cond_16e
    const/4 v15, 0x0

    goto :goto_17e

    :cond_170
    iget-object v1, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v1

    if-ne v1, v2, :cond_16e

    iget-boolean v1, v11, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->mGranted:Z

    if-eqz v1, :cond_16e

    const/16 v15, 0x10

    :cond_17e
    :goto_17e
    iget v1, v11, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->mFlags:I

    invoke-static {v13, v15, v1, v1}, Lcom/android/server/permission/access/permission/PermissionFlags;->updateFlags(Lcom/android/server/permission/access/permission/Permission;III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v12, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_18b
    const/4 v1, 0x0

    goto/16 :goto_db

    :cond_18e
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v1

    iget-object v7, v9, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_199
    if-ge v8, v7, :cond_1ac

    iget-object v10, v9, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/2addr v8, v2

    goto :goto_199

    :cond_1ac
    :goto_1ac
    const/4 v1, 0x0

    goto/16 :goto_81

    :catchall_1af
    move-exception v0

    move-object v1, v0

    if-eqz v6, :cond_1bb

    :try_start_1b3
    invoke-interface {v6}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V
    :try_end_1b6
    .catchall {:try_start_1b3 .. :try_end_1b6} :catchall_1b7

    goto :goto_1bb

    :catchall_1b7
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1bb
    :goto_1bb
    throw v1

    :catchall_1bc
    move-exception v0

    :try_start_1bd
    monitor-exit v6
    :try_end_1be
    .catchall {:try_start_1bd .. :try_end_1be} :catchall_1bc

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_1c1
    return-void
.end method

.method public final onAppIdRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V
    .registers 6

    iget-object p0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p1

    iget-object v0, p1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_36

    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->keyAt(I)I

    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/MutableUserState;

    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-static {p0, v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;I)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/permission/access/MutableUserState;->appIdPermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-static {v2, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_36
    return-void
.end method

.method public final onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V
    .registers 8

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>()V

    invoke-static {p1, p2, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->adoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    invoke-static {p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addPermissionGroups(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V

    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_24
    if-ge v3, v1, :cond_32

    invoke-virtual {v0, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_32
    invoke-virtual {p0, p1, p2, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluateAllPermissionStatesForPackage(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/PackageState;)V

    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    :goto_45
    if-ge v2, v1, :cond_57

    iget-object v3, v0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    invoke-virtual {p0, p1, v4, v3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_57
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokePermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V

    return-void
.end method

.method public final onPackageInstalled(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .registers 15

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_c2

    :cond_8
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_10

    goto/16 :goto_c2

    :cond_10
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/server/permission/access/permission/Permission;

    if-nez v5, :cond_42

    :cond_3d
    :goto_3d
    move-object v1, p0

    move-object v2, p1

    move v4, p3

    goto/16 :goto_bd

    :cond_42
    iget-object v2, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-nez v2, :cond_59

    iget-object v2, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_3d

    :cond_59
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedListSet;

    iget-object v4, v2, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_71
    if-ge v6, v4, :cond_b4

    iget-object v7, v2, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/PackageState;

    if-nez v8, :cond_91

    const-string/jumbo v9, "packageState does not exist: "

    const-string v10, "AppIdPermissionPolicy"

    invoke-static {v9, v7, v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_91
    if-eqz v8, :cond_b1

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    if-eqz v7, :cond_b1

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v7

    if-eqz v7, :cond_b1

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b1

    goto :goto_3d

    :cond_b1
    add-int/lit8 v6, v6, 0x1

    goto :goto_71

    :cond_b4
    const/high16 v6, 0x20000

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionExemptFlags(Lcom/android/server/permission/access/MutateStateScope;IILcom/android/server/permission/access/permission/Permission;II)V

    :goto_bd
    move-object p0, v1

    move-object p1, v2

    move p3, v4

    goto/16 :goto_1c

    :cond_c2
    :goto_c2
    return-void
.end method

.method public final onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    new-instance v1, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    invoke-direct {v1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>()V

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_29

    invoke-virtual {p0, p1, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V

    :cond_29
    iget-object p2, v1, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_30
    if-ge p3, p2, :cond_3e

    invoke-virtual {v1, p3}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_30

    :cond_3e
    return-void

    :cond_3f
    const-string/jumbo p0, "Package "

    const-string p1, " reported as removed before disabled system package is enabled"

    invoke-static {p0, p2, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    return-void
.end method

.method public final onStateMutated()V
    .registers 4

    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    iget-object v0, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;

    invoke-interface {v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;->onStateMutated()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public final onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/List;Z)V
    .registers 13

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>()V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    iget-object v4, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    if-ge v3, v1, :cond_3e

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    if-nez v4, :cond_24

    goto :goto_3b

    :cond_24
    invoke-static {p1, v4, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->adoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    invoke-static {p1, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addPermissionGroups(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V

    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_3e
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    move v3, v2

    :goto_45
    if-ge v3, v1, :cond_53

    invoke-virtual {v0, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    :cond_53
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    move v1, v2

    :goto_58
    if-ge v1, v0, :cond_7a

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageState;

    if-nez v3, :cond_6f

    goto :goto_77

    :cond_6f
    if-eqz p3, :cond_73

    move-object v5, v3

    goto :goto_74

    :cond_73
    const/4 v5, 0x0

    :goto_74
    invoke-virtual {p0, p1, v3, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluateAllPermissionStatesForPackage(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/PackageState;)V

    :goto_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :cond_7a
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p3

    move v0, v2

    :goto_7f
    if-ge v0, p3, :cond_c1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    if-nez v1, :cond_96

    goto :goto_be

    :cond_96
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/MutableExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    move-result-object v3

    iget-object v5, v3, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    move v6, v2

    :goto_a5
    if-ge v6, v5, :cond_b7

    iget-object v7, v3, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    invoke-virtual {p0, p1, v8, v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a5

    :cond_b7
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokePermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V

    :goto_be
    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    :cond_c1
    return-void
.end method

.method public final onSystemReady()V
    .registers 5

    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->privilegedPermissionAllowlistViolations:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    iget-object v0, p0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "We detected priv-permissions violations from below apps:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_27

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_27
    const-string/jumbo p0, "\\nPrivileged apps MUST put their \'signature|privileged\' permissions into the allowlist.\nPlease ASSIGN this issue to above apps to apply.\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "AppIdPermissionPolicy"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfo(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method public final onUserAdded(Lcom/android/server/permission/access/MutateStateScope;I)V
    .registers 8

    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_10

    :cond_29
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, p2, v3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluateAllPermissionStatesForPackageAndUser(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILcom/android/server/pm/pkg/PackageState;)V

    goto :goto_10

    :cond_2e
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3d
    if-ge v2, v1, :cond_51

    iget-object v3, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedListSet;

    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_51
    return-void
.end method

.method public final parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V
    .registers 4

    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "permission-trees"

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p0, 0x1

    invoke-static {p1, p2, p0}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->parsePermissions(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;Z)V

    return-void

    :cond_12
    const-string/jumbo v0, "permissions"

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x0

    invoke-static {p1, p2, p0}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->parsePermissions(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;Z)V

    :cond_1f
    return-void
.end method

.method public final parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .registers 20

    move-object/from16 v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "app-id-permissions"

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ef

    const/4 v1, 0x0

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/android/server/permission/access/MutableUserState;->appIdPermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v4

    const-string/jumbo v5, "Unexpected event type "

    const/4 v6, 0x2

    if-eqz v4, :cond_3a

    if-ne v4, v6, :cond_30

    goto :goto_3a

    :cond_30
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v4, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    :goto_3a
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v4

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eq v4, v8, :cond_47

    if-eq v4, v6, :cond_47

    if-eq v4, v7, :cond_47

    goto :goto_3a

    :cond_47
    :goto_47
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v4

    const-string v9, "AppIdPermissionPersistence"

    const-string v10, " when parsing permission state"

    if-eq v4, v8, :cond_1b7

    if-eq v4, v6, :cond_61

    if-ne v4, v7, :cond_57

    goto/16 :goto_1b7

    :cond_57
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v4, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "app-id"

    invoke-static {v11, v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    const-string v12, ", expected "

    const-string/jumbo v13, "Unexpected post-block depth "

    const-string v14, "Ignoring unknown tag "

    if-eqz v11, :cond_158

    const/4 v11, 0x0

    const-string/jumbo v15, "id"

    invoke-virtual {v0, v11, v15}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    new-instance v11, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v11}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    invoke-static {v3, v15, v11}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v15

    if-eqz v15, :cond_9c

    if-ne v15, v6, :cond_92

    goto :goto_9c

    :cond_92
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v15, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9c
    :goto_9c
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v15

    if-eq v15, v8, :cond_a7

    if-eq v15, v6, :cond_a7

    if-eq v15, v7, :cond_a7

    goto :goto_9c

    :cond_a7
    :goto_a7
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v15

    if-eq v15, v8, :cond_15f

    if-eq v15, v6, :cond_bd

    if-ne v15, v7, :cond_b3

    goto/16 :goto_15f

    :cond_b3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v15, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bd
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v15

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v7, "permission"

    invoke-static {v8, v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f3

    const-string/jumbo v7, "name"

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v6, "intern(...)"

    invoke-static {v6, v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v6, "flags"

    invoke-virtual {v0, v8, v6}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v7, v6}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_fb

    :cond_f3
    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6, v10, v9}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_fb
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v15, :cond_14e

    :goto_101
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_140

    const/4 v8, 0x3

    if-ne v6, v8, :cond_136

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v15, :cond_123

    :goto_111
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_120

    if-eq v6, v7, :cond_120

    const/4 v7, 0x3

    if-eq v6, v7, :cond_121

    move v8, v7

    const/4 v7, 0x2

    goto :goto_111

    :cond_120
    const/4 v7, 0x3

    :cond_121
    const/4 v8, 0x0

    goto :goto_101

    :cond_123
    move v7, v8

    :goto_124
    const/4 v8, 0x1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v6

    if-eq v6, v8, :cond_131

    const/4 v8, 0x2

    if-eq v6, v8, :cond_131

    if-eq v6, v7, :cond_131

    goto :goto_124

    :cond_131
    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    goto/16 :goto_a7

    :cond_136
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v6, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_140
    :goto_140
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_121

    const/4 v7, 0x2

    if-eq v6, v7, :cond_121

    const/4 v7, 0x3

    if-eq v6, v7, :cond_121

    goto :goto_140

    :cond_14e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v6, v15, v13, v12}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_158
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6, v10, v9}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15f
    :goto_15f
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v4, :cond_1ad

    :cond_165
    :goto_165
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_19d

    const/4 v8, 0x3

    if-ne v6, v8, :cond_193

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v4, :cond_181

    :goto_175
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v6

    const/4 v9, 0x1

    if-eq v6, v9, :cond_165

    if-eq v6, v7, :cond_165

    if-eq v6, v8, :cond_165

    goto :goto_175

    :cond_181
    :goto_181
    const/4 v9, 0x1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v4

    if-eq v4, v9, :cond_18e

    if-eq v4, v7, :cond_18e

    if-eq v4, v8, :cond_18e

    const/4 v7, 0x2

    goto :goto_181

    :cond_18e
    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    goto/16 :goto_47

    :cond_193
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v6, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19d
    :goto_19d
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v6

    const/4 v8, 0x1

    const/4 v7, 0x2

    if-eq v6, v8, :cond_1ab

    const/4 v8, 0x3

    if-eq v6, v7, :cond_165

    if-eq v6, v8, :cond_165

    goto :goto_19d

    :cond_1ab
    const/4 v8, 0x3

    goto :goto_165

    :cond_1ad
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v6, v4, v13, v12}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b7
    :goto_1b7
    iget-object v0, v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    :goto_1bf
    const/4 v4, -0x1

    if-ge v4, v0, :cond_1ef

    iget-object v4, v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedMap;

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-nez v5, :cond_1eb

    const-string v5, "Dropping unknown app ID "

    invoke-static {v4, v5, v10, v9}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->removeAt$1(I)V

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/android/server/permission/access/MutableUserState;->requestWriteMode(I)V

    goto :goto_1ec

    :cond_1eb
    const/4 v8, 0x1

    :goto_1ec
    add-int/lit8 v0, v0, -0x1

    goto :goto_1bf

    :cond_1ef
    return-void
.end method

.method public final resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .registers 20

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move/from16 v3, p3

    iget-object v8, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/pm/pkg/PackageState;

    if-nez v9, :cond_19

    goto/16 :goto_128

    :cond_19
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    if-nez v10, :cond_21

    goto/16 :goto_128

    :cond_21
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_128

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    if-nez v0, :cond_4e

    goto/16 :goto_122

    :cond_4e
    iget-object v5, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_122

    iget-object v0, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v5, 0x2

    invoke-static {v0, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_64

    goto/16 :goto_122

    :cond_64
    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedListSet;

    iget-object v5, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v12, 0x0

    :goto_7c
    if-ge v12, v5, :cond_c3

    iget-object v13, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/pkg/PackageState;

    if-nez v14, :cond_9c

    const-string/jumbo v15, "packageState does not exist: "

    const-string v6, "AppIdPermissionPolicy"

    invoke-static {v15, v13, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9c
    if-eqz v14, :cond_c0

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    if-eqz v6, :cond_c0

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c0

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c0

    goto :goto_122

    :cond_c0
    add-int/lit8 v12, v12, 0x1

    goto :goto_7c

    :cond_c3
    iget-object v0, v1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v0

    const/16 v5, 0x180

    invoke-static {v0, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v5

    if-eqz v5, :cond_d2

    goto :goto_122

    :cond_d2
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v5

    if-nez v5, :cond_e2

    invoke-interface {v9, v3}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v5

    if-eqz v5, :cond_f3

    :cond_e2
    const/16 v5, 0x8

    invoke-static {v0, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v5

    if-nez v5, :cond_f6

    const/16 v5, 0x200

    invoke-static {v0, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v5

    if-eqz v5, :cond_f3

    goto :goto_f6

    :cond_f3
    and-int/lit16 v0, v0, -0x219

    goto :goto_f8

    :cond_f6
    :goto_f6
    or-int/lit8 v0, v0, 0x10

    :goto_f8
    const v5, -0xf00061

    and-int/2addr v0, v5

    const/16 v5, 0x400

    invoke-static {v0, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v5

    if-eqz v5, :cond_11b

    or-int/lit16 v0, v0, 0x1000

    sget-boolean v5, Lcom/samsung/android/rune/PMRune;->PERM_CHINA_COMPAT_LOW_SDK:Z

    if-eqz v5, :cond_119

    sget-object v5, Lcom/samsung/android/rune/PMRune;->PERM_CHINA_COMPAT_LOW_SDK_EXCEPTION:Landroid/util/ArraySet;

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_119

    const/high16 v6, 0x100000

    goto :goto_11a

    :cond_119
    const/4 v6, 0x0

    :goto_11a
    or-int/2addr v0, v6

    :cond_11b
    move v6, v0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    :cond_122
    :goto_122
    move-object/from16 v1, p1

    move/from16 v3, p3

    goto/16 :goto_2d

    :cond_128
    :goto_128
    return-void
.end method

.method public final revokePermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v1, Lcom/android/server/permission/access/MutateStateScope;->oldState:Lcom/android/server/permission/access/AccessState;

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    iget-object v5, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    const/4 v6, 0x0

    const-string v8, "AppIdPermissionPolicy"

    const-string/jumbo v9, "packageState does not exist: "

    if-eqz v4, :cond_183

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedListSet;

    iget-object v11, v4, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_38
    if-ge v12, v11, :cond_183

    iget-object v13, v4, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/pkg/PackageState;

    if-nez v14, :cond_53

    invoke-static {v9, v13, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    if-eqz v14, :cond_17d

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v13

    if-eqz v13, :cond_17d

    invoke-static {v2, v6, v3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAppIdTargetSdkVersion(ILjava/lang/String;Lcom/android/server/permission/access/AccessState;)I

    move-result v4

    invoke-static {v2, v6, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAppIdTargetSdkVersion(ILjava/lang/String;Lcom/android/server/permission/access/AccessState;)I

    move-result v11

    const/16 v12, 0x1d

    if-lt v4, v12, :cond_6b

    if-ge v11, v12, :cond_6b

    const/4 v13, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v13, 0x0

    :goto_6c
    if-ge v4, v12, :cond_72

    if-lt v11, v12, :cond_72

    const/4 v4, 0x1

    goto :goto_73

    :cond_72
    const/4 v4, 0x0

    :goto_73
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v11, Lcom/android/server/permission/access/immutable/IndexedListSet;

    iget-object v12, v11, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_8b
    if-ge v14, v12, :cond_c3

    iget-object v15, v11, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const/16 v16, 0x1

    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageState;

    if-nez v7, :cond_a8

    invoke-static {v9, v15, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a8
    if-eqz v7, :cond_c0

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v15

    if-eqz v15, :cond_c0

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v7

    if-eqz v7, :cond_c0

    move/from16 v3, v16

    goto :goto_c6

    :cond_c0
    add-int/lit8 v14, v14, 0x1

    goto :goto_8b

    :cond_c3
    const/16 v16, 0x1

    const/4 v3, 0x0

    :goto_c6
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Lcom/android/server/permission/access/immutable/IndexedListSet;

    iget-object v11, v7, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_de
    if-ge v12, v11, :cond_114

    iget-object v14, v7, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/pkg/PackageState;

    if-nez v15, :cond_f9

    invoke-static {v9, v14, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f9
    if-eqz v15, :cond_111

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v14

    if-eqz v14, :cond_111

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v14

    if-eqz v14, :cond_111

    move/from16 v7, v16

    goto :goto_115

    :cond_111
    add-int/lit8 v12, v12, 0x1

    goto :goto_de

    :cond_114
    const/4 v7, 0x0

    :goto_115
    if-nez v4, :cond_11c

    if-nez v3, :cond_11c

    if-eqz v7, :cond_11c

    goto :goto_11e

    :cond_11c
    if-eqz v13, :cond_185

    :goto_11e
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_129
    if-ge v7, v4, :cond_185

    iget-object v11, v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v3, v7}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v12

    check-cast v12, Lcom/android/server/permission/access/MutableUserState;

    invoke-virtual {v12}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v12

    check-cast v12, Lcom/android/server/permission/access/immutable/IndexedMap;

    if-eqz v12, :cond_17a

    iget-object v13, v12, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    :goto_14b
    const/4 v14, -0x1

    if-ge v14, v13, :cond_17a

    iget-object v14, v12, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    iget-object v15, v12, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v15, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    check-cast v14, Ljava/lang/String;

    sget-object v10, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->STORAGE_AND_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    iget-object v10, v10, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v10, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_177

    const/16 v10, 0x10

    invoke-static {v15, v10}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v10

    if-eqz v10, :cond_177

    invoke-virtual {v0, v1, v2, v11, v14}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    :cond_177
    add-int/lit8 v13, v13, -0x1

    goto :goto_14b

    :cond_17a
    add-int/lit8 v7, v7, 0x1

    goto :goto_129

    :cond_17d
    const/16 v16, 0x1

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_38

    :cond_183
    const/16 v16, 0x1

    :cond_185
    invoke-static {v2, v6, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAppIdTargetSdkVersion(ILjava/lang/String;Lcom/android/server/permission/access/AccessState;)I

    move-result v3

    const/16 v4, 0x24

    if-lt v3, v4, :cond_18f

    goto/16 :goto_35f

    :cond_18f
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedListSet;

    iget-object v4, v3, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_1a7
    const-string/jumbo v7, "android.permission.BODY_SENSORS"

    if-ge v6, v4, :cond_1e4

    iget-object v10, v3, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/pkg/PackageState;

    if-nez v11, :cond_1c5

    invoke-static {v9, v10, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c5
    if-eqz v11, :cond_1e1

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    if-eqz v10, :cond_1e1

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e1

    move/from16 v3, v16

    goto :goto_1e5

    :cond_1e1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a7

    :cond_1e4
    const/4 v3, 0x0

    :goto_1e5
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedListSet;

    iget-object v6, v4, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v10, 0x0

    :goto_1fd
    const-string/jumbo v11, "android.permission.health.READ_HEART_RATE"

    if-ge v10, v6, :cond_23a

    iget-object v12, v4, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/pkg/PackageState;

    if-nez v13, :cond_21b

    invoke-static {v9, v12, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_21b
    if-eqz v13, :cond_237

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v12

    if-eqz v12, :cond_237

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_237

    move/from16 v4, v16

    goto :goto_23b

    :cond_237
    add-int/lit8 v10, v10, 0x1

    goto :goto_1fd

    :cond_23a
    const/4 v4, 0x0

    :goto_23b
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Lcom/android/server/permission/access/immutable/IndexedListSet;

    iget-object v10, v6, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_253
    const-string/jumbo v13, "android.permission.BODY_SENSORS_BACKGROUND"

    if-ge v12, v10, :cond_290

    iget-object v14, v6, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/pkg/PackageState;

    if-nez v15, :cond_271

    invoke-static {v9, v14, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_271
    if-eqz v15, :cond_28d

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v14

    if-eqz v14, :cond_28d

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_28d

    move/from16 v6, v16

    goto :goto_291

    :cond_28d
    add-int/lit8 v12, v12, 0x1

    goto :goto_253

    :cond_290
    const/4 v6, 0x0

    :goto_291
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v10, Lcom/android/server/permission/access/immutable/IndexedListSet;

    iget-object v12, v10, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_2a9
    const-string/jumbo v15, "android.permission.health.READ_HEALTH_DATA_IN_BACKGROUND"

    if-ge v14, v12, :cond_2ec

    move/from16 v17, v3

    iget-object v3, v10, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move/from16 v18, v4

    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    if-nez v4, :cond_2cb

    invoke-static {v9, v3, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2cb
    if-eqz v4, :cond_2e5

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_2e5

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e5

    goto :goto_2f2

    :cond_2e5
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v17

    move/from16 v4, v18

    goto :goto_2a9

    :cond_2ec
    move/from16 v17, v3

    move/from16 v18, v4

    const/16 v16, 0x0

    :goto_2f2
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2fd
    if-ge v5, v4, :cond_35f

    iget-object v8, v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v3, v5}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/MutableUserState;

    iget-object v9, v1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-static {v9, v2, v8, v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v10

    invoke-static {v10}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v10

    if-eqz v17, :cond_331

    if-eqz v18, :cond_331

    invoke-static {v9, v2, v8, v11}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v12

    if-eq v10, v12, :cond_331

    if-eqz v10, :cond_32c

    invoke-virtual {v0, v1, v2, v8, v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_32c

    const/4 v10, 0x0

    :cond_32c
    if-eqz v12, :cond_331

    invoke-virtual {v0, v1, v2, v8, v11}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    :cond_331
    invoke-static {v9, v2, v8, v13}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v12

    if-eqz v12, :cond_344

    if-nez v10, :cond_344

    invoke-virtual {v0, v1, v2, v8, v13}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_344

    const/4 v12, 0x0

    :cond_344
    if-eqz v6, :cond_35c

    if-eqz v16, :cond_35c

    invoke-static {v9, v2, v8, v15}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v9

    if-eq v12, v9, :cond_35c

    if-eqz v12, :cond_357

    invoke-virtual {v0, v1, v2, v8, v13}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    :cond_357
    if-eqz v9, :cond_35c

    invoke-virtual {v0, v1, v2, v8, v15}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    :cond_35c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2fd

    :cond_35f
    :goto_35f
    return-void
.end method

.method public final revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z
    .registers 14

    const-string/jumbo v0, "Revoking runtime permission for appId: "

    const-string v1, ", permission: "

    const-string v2, ", userId: "

    invoke-static {p2, v0, v1, p4, v2}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AppIdPermissionPolicy"

    invoke-static {v0, p3, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-static {v0, p2, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v0

    const/16 v3, 0x180

    invoke-static {v0, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v3

    if-eqz v3, :cond_2c

    const-string/jumbo p0, "Not allowed to revoke "

    const-string p1, " for appId: "

    invoke-static {p2, p0, p4, p1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, p3, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2c
    const v1, -0xf00279

    and-int v8, v0, v1

    const/4 v7, -0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V
    .registers 4

    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p2

    const-string/jumbo v0, "permission-trees"

    invoke-static {p1, v0, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->serializePermissions(Lcom/android/modules/utils/BinaryXmlSerializer;Ljava/lang/String;Lcom/android/server/permission/access/immutable/IndexedMap;)V

    const-string/jumbo p2, "permissions"

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->serializePermissions(Lcom/android/modules/utils/BinaryXmlSerializer;Ljava/lang/String;Lcom/android/server/permission/access/immutable/IndexedMap;)V

    return-void
.end method

.method public final serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
    .registers 15

    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/server/permission/access/MutableUserState;

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p0

    const/4 p2, 0x0

    const-string/jumbo p3, "app-id-permissions"

    invoke-virtual {p1, p2, p3}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_20
    if-ge v2, v0, :cond_7f

    iget-object v3, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    const-string/jumbo v5, "app-id"

    invoke-virtual {p1, p2, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "id"

    invoke-virtual {p1, p2, v6, v3}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v6, v1

    :goto_41
    if-ge v6, v3, :cond_79

    iget-object v7, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v9, "permission"

    invoke-virtual {p1, p2, v9}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "name"

    invoke-virtual {p1, p2, v10, v7}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/high16 v7, 0x200000

    invoke-static {v8, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v7

    if-eqz v7, :cond_6d

    and-int/lit8 v8, v8, -0x11

    :cond_6d
    const-string/jumbo v7, "flags"

    invoke-virtual {p1, p2, v7, v8}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1, p2, v9}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_41

    :cond_79
    invoke-virtual {p1, p2, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_7f
    invoke-virtual {p1, p2, p3}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V
    .registers 16

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedListSet;

    iget-object v3, v2, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_20
    if-ge v5, v3, :cond_5f

    iget-object v6, v2, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    if-eqz v7, :cond_5c

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_5f
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_69
    if-ge v4, v2, :cond_c4

    iget-object v3, v1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v1, v4}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/MutableUserState;

    invoke-virtual {v3}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedMap;

    if-eqz v3, :cond_bb

    iget-object v5, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move v12, v5

    :goto_8c
    const/4 v5, -0x1

    if-ge v5, v12, :cond_bb

    iget-object v5, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b2

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    goto :goto_b5

    :cond_b2
    move-object v5, p0

    move-object v6, p1

    move v7, p2

    :goto_b5
    add-int/lit8 v12, v12, -0x1

    move-object p0, v5

    move-object p1, v6

    move p2, v7

    goto :goto_8c

    :cond_bb
    move-object v5, p0

    move-object v6, p1

    move v7, p2

    add-int/lit8 v4, v4, 0x1

    move-object p0, v5

    move-object p1, v6

    move p2, v7

    goto :goto_69

    :cond_c4
    return-void
.end method

.method public final trimPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V
    .registers 24

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    iget-object v8, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/pm/pkg/PackageState;

    const/4 v0, 0x0

    if-eqz v9, :cond_1c

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    move-object v10, v2

    goto :goto_1d

    :cond_1c
    move-object v10, v0

    :goto_1d
    if-eqz v9, :cond_23

    if-nez v10, :cond_23

    goto/16 :goto_202

    :cond_23
    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v2, :cond_35

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    :cond_35
    move-object v11, v0

    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v12, 0x1

    sub-int/2addr v2, v12

    :goto_46
    const/4 v13, -0x1

    if-ge v13, v2, :cond_cb

    iget-object v3, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/permission/Permission;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v4, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    if-eqz v9, :cond_8d

    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_71
    if-ge v6, v5, :cond_8d

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v15

    if-eqz v15, :cond_8a

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8a

    goto :goto_c7

    :cond_8a
    add-int/lit8 v6, v6, 0x1

    goto :goto_71

    :cond_8d
    if-eqz v11, :cond_b6

    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_b6

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v14, 0x0

    :goto_9a
    if-ge v14, v5, :cond_b6

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v13

    if-eqz v13, :cond_b3

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b3

    goto :goto_c7

    :cond_b3
    add-int/lit8 v14, v14, 0x1

    goto :goto_9a

    :cond_b6
    invoke-static {v8}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/permission/access/MutableSystemState;->permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object v3, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_c7
    :goto_c7
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_46

    :cond_cb
    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v15

    iget-object v0, v15, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v12

    :goto_da
    if-ge v13, v0, :cond_202

    iget-object v2, v15, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v15, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/permission/Permission;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    iget v2, v3, Lcom/android/server/permission/access/permission/Permission;->type:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_110

    iget-object v2, v3, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->findPermissionTree(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v2

    if-nez v2, :cond_fd

    goto :goto_110

    :cond_fd
    new-instance v5, Landroid/content/pm/PermissionInfo;

    iget-object v6, v3, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-direct {v5, v6}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    iget-object v6, v2, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget v2, v2, Lcom/android/server/permission/access/permission/Permission;->appId:I

    invoke-static {v3, v5, v12, v2}, Lcom/android/server/permission/access/permission/Permission;->copy$default(Lcom/android/server/permission/access/permission/Permission;Landroid/content/pm/PermissionInfo;ZI)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v3

    :cond_110
    :goto_110
    invoke-static {v8}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v3}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v3, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14d

    if-eqz v9, :cond_155

    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_135
    if-ge v5, v3, :cond_155

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v16

    if-nez v16, :cond_152

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_152

    :cond_14d
    :goto_14d
    move v7, v0

    move-object/from16 v0, p3

    goto/16 :goto_1f7

    :cond_152
    add-int/lit8 v5, v5, 0x1

    goto :goto_135

    :cond_155
    if-eqz v11, :cond_17e

    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_17e

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_162
    if-ge v5, v3, :cond_17e

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v16

    if-nez v16, :cond_17b

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17b

    goto :goto_14d

    :cond_17b
    add-int/lit8 v5, v5, 0x1

    goto :goto_162

    :cond_17e
    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_18d
    if-ge v5, v3, :cond_1e4

    iget-object v6, v2, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v12

    iget-object v13, v12, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_1a4
    if-ge v14, v13, :cond_1d4

    move/from16 v17, v0

    iget-object v0, v12, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v12, v14}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v18

    check-cast v18, Lcom/android/server/permission/access/immutable/IndexedListSet;

    move/from16 v18, v5

    const/4 v5, -0x1

    move/from16 v19, v3

    move v3, v6

    const/4 v6, 0x0

    move/from16 v7, v17

    move-object/from16 v17, v2

    move v2, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move v6, v3

    move v0, v7

    move-object/from16 v2, v17

    move/from16 v5, v18

    move/from16 v3, v19

    move-object/from16 v7, p2

    goto :goto_1a4

    :cond_1d4
    move v7, v0

    move-object/from16 v17, v2

    move/from16 v19, v3

    move/from16 v18, v5

    add-int/lit8 v5, v18, 0x1

    move-object/from16 v1, p1

    const/4 v12, 0x1

    const/4 v13, -0x1

    move-object/from16 v7, p2

    goto :goto_18d

    :cond_1e4
    move v7, v0

    invoke-static {v8}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)V

    :goto_1f7
    add-int/lit8 v1, v7, -0x1

    move-object/from16 v7, p2

    move v0, v1

    const/4 v12, 0x1

    const/4 v13, -0x1

    move-object/from16 v1, p1

    goto/16 :goto_da

    :cond_202
    :goto_202
    return-void
.end method

.method public final updatePermissionExemptFlags(Lcom/android/server/permission/access/MutateStateScope;IILcom/android/server/permission/access/permission/Permission;II)V
    .registers 23

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v0, p4

    move/from16 v3, p5

    iget-object v4, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    move/from16 v6, p3

    invoke-static {v5, v2, v6, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v5

    not-int v7, v3

    and-int/2addr v7, v5

    and-int v3, p6, v3

    or-int/2addr v3, v7

    if-ne v5, v3, :cond_1d

    goto/16 :goto_102

    :cond_1d
    const v7, 0x38000

    invoke-static {v3, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v7

    iget-object v8, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v8, v8, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v9, 0x4

    invoke-static {v8, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    const/4 v11, 0x1

    if-eqz v8, :cond_70

    if-nez v7, :cond_70

    const/high16 v8, 0x40000

    or-int/2addr v3, v8

    invoke-static {v5, v11}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v12

    if-eqz v12, :cond_3d

    :cond_3b
    :goto_3b
    move v8, v11

    goto :goto_6b

    :cond_3d
    const/4 v12, 0x2

    invoke-static {v5, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v12

    if-eqz v12, :cond_46

    :goto_44
    const/4 v8, 0x0

    goto :goto_6b

    :cond_46
    invoke-static {v5, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_4d

    goto :goto_3b

    :cond_4d
    const/16 v9, 0x400

    invoke-static {v5, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-nez v9, :cond_3b

    const/16 v9, 0x800

    invoke-static {v5, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_5e

    goto :goto_3b

    :cond_5e
    invoke-static {v5, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-eqz v8, :cond_65

    goto :goto_44

    :cond_65
    const/16 v8, 0x10

    invoke-static {v5, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    :goto_6b
    if-eqz v8, :cond_74

    and-int/lit16 v3, v3, -0x81

    goto :goto_74

    :cond_70
    const v8, -0x40001

    and-int/2addr v3, v8

    :cond_74
    :goto_74
    iget-object v0, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 v8, 0x8

    invoke-static {v0, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_fc

    if-nez v7, :cond_fc

    iget-object v0, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-static {v2, v4, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAppIdTargetSdkVersion(ILjava/lang/String;Lcom/android/server/permission/access/AccessState;)I

    move-result v7

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v8, Lcom/android/server/permission/access/immutable/IndexedListSet;

    iget-object v9, v8, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v12, 0x0

    :goto_a0
    if-ge v12, v9, :cond_f8

    iget-object v13, v8, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/pkg/PackageState;

    if-nez v14, :cond_c0

    const-string/jumbo v15, "packageState does not exist: "

    const-string v10, "AppIdPermissionPolicy"

    invoke-static {v15, v13, v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c0
    if-eqz v14, :cond_f5

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    if-eqz v10, :cond_f5

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f5

    const-string/jumbo v10, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v4, v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_eb

    const-string/jumbo v10, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v4, v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f1

    :cond_eb
    const/16 v10, 0x1d

    if-lt v7, v10, :cond_f1

    move v10, v11

    goto :goto_f2

    :cond_f1
    const/4 v10, 0x0

    :goto_f2
    if-eqz v10, :cond_f5

    goto :goto_fc

    :cond_f5
    add-int/lit8 v12, v12, 0x1

    goto :goto_a0

    :cond_f8
    const/high16 v0, 0x80000

    or-int/2addr v0, v3

    goto :goto_100

    :cond_fc
    :goto_fc
    const v0, -0x80001

    and-int/2addr v0, v3

    :goto_100
    if-ne v5, v0, :cond_103

    :goto_102
    return-void

    :cond_103
    const/4 v5, -0x1

    move v3, v6

    move v6, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    return-void
.end method

.method public final updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z
    .registers 12

    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    const-string/jumbo p0, "Unable to update permission flags for missing user "

    const-string p1, "AppIdPermissionPolicy"

    invoke-static {p3, p0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_18
    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/server/permission/access/MutableUserState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, p4, v2}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    not-int v2, p5

    and-int/2addr v2, v0

    and-int/2addr p5, p6

    or-int/2addr p5, v2

    if-ne v0, p5, :cond_46

    return v1

    :cond_46
    iget-object p1, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    const/4 p6, 0x1

    invoke-virtual {p1, p3, p6}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/android/server/permission/access/MutableUserState;->appIdPermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p1

    check-cast p1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-virtual {p1, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    if-eqz v2, :cond_5f

    goto :goto_67

    :cond_5f
    new-instance v2, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v2}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    invoke-virtual {p1, p2, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->put(ILcom/android/server/permission/access/immutable/Immutable;)V

    :goto_67
    check-cast v2, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, p4, v3, v4}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->putWithDefault(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-static {p1, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    :cond_7f
    iget-object v2, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    iget-object p0, v2, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_87
    if-ge v1, v3, :cond_a3

    iget-object p0, v2, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;

    move p1, p5

    move-object p5, p4

    move p4, p1

    move p1, p2

    move p2, p3

    move p3, v0

    invoke-interface/range {p0 .. p5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;->onPermissionFlagsChanged(IIIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    move-object v0, p5

    move p5, p4

    move-object p4, v0

    move v0, p3

    move p3, p2

    move p2, p1

    goto :goto_87

    :cond_a3
    return p6
.end method

.method public final upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .registers 26

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move/from16 v3, p3

    move/from16 v8, p4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->upgrade:Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    const/4 v0, 0x3

    iget-object v12, v9, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    const-string v13, ", version: "

    const-string v14, "AppIdPermissionUpgrade"

    if-gt v8, v0, :cond_9c

    const-string v0, "Allowlisting and upgrading background location permission for package: "

    const-string v2, ", user:"

    invoke-static {v8, v0, v10, v13, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3f
    :goto_3f
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    sget-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LEGACY_RESTRICTED_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    const/high16 v5, 0x20000

    const/high16 v6, 0x20000

    iget-object v0, v9, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    goto :goto_3f

    :cond_64
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v11, v0, v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v11, v0, v3, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v0

    invoke-static {v4}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v4

    if-nez v4, :cond_99

    invoke-static {v0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v0

    if-eqz v0, :cond_9c

    :cond_99
    invoke-virtual {v9, v1, v7, v3, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    :cond_9c
    const/16 v0, 0xa

    const-string v15, ", user: "

    if-gt v8, v0, :cond_de

    const-string/jumbo v0, "Upgrading access media location permission for package: "

    invoke-static {v8, v0, v10, v13, v15}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v2, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v11, v0, v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v0

    if-eqz v0, :cond_de

    invoke-virtual {v9, v1, v7, v3, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    :cond_de
    const/16 v0, 0xc

    const-string/jumbo v2, "android.permission.BODY_SENSORS"

    const-string/jumbo v4, "android.permission.BODY_SENSORS_BACKGROUND"

    const/16 v6, 0x21

    const/16 v16, 0x0

    if-gt v8, v0, :cond_1ca

    const-string/jumbo v0, "Upgrading scoped media and body sensor permissions for package: "

    invoke-static {v8, v0, v10, v13, v15}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v5

    if-ge v5, v6, :cond_10e

    move-object/from16 v18, v2

    goto/16 :goto_177

    :cond_10e
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    sget-object v5, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->STORAGE_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    iget-object v6, v5, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    move-object/from16 v18, v2

    move/from16 v2, v16

    :goto_11e
    if-ge v2, v6, :cond_177

    invoke-virtual {v5, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v2

    move-object/from16 v2, v19

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_133

    move-object/from16 v19, v5

    goto :goto_172

    :cond_133
    move-object/from16 v19, v5

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v5, v3, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v5

    if-eqz v5, :cond_172

    const/16 v5, 0x20

    invoke-static {v2, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_172

    sget-object v2, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->AURAL_VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    iget-object v6, v2, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    move/from16 v5, v16

    :goto_158
    if-ge v5, v6, :cond_177

    invoke-virtual {v2, v5}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v2

    move-object/from16 v2, v19

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16d

    invoke-virtual {v9, v1, v7, v3, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    :cond_16d
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v20

    goto :goto_158

    :cond_172
    :goto_172
    add-int/lit8 v2, v20, 0x1

    move-object/from16 v5, v19

    goto :goto_11e

    :cond_177
    :goto_177
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18f

    :goto_188
    move-object/from16 v20, v12

    move-object/from16 p0, v14

    move-object/from16 v12, v18

    goto :goto_1cf

    :cond_18f
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v2, v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v0

    const v5, 0x38000

    invoke-static {v0, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v0

    if-eqz v0, :cond_1a4

    goto :goto_188

    :cond_1a4
    iget-object v0, v9, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-object v5, v4

    const-string/jumbo v4, "android.permission.BODY_SENSORS_BACKGROUND"

    move-object v6, v5

    const/high16 v5, 0x20000

    move-object/from16 v19, v6

    const/high16 v6, 0x20000

    move-object/from16 v20, v12

    move-object/from16 p0, v14

    move-object/from16 v12, v18

    move-object/from16 v14, v19

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    invoke-static {v11, v2, v3, v12}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v0

    if-eqz v0, :cond_1d0

    invoke-virtual {v9, v1, v7, v3, v14}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    goto :goto_1d0

    :cond_1ca
    move-object/from16 v20, v12

    move-object/from16 p0, v14

    move-object v12, v2

    :goto_1cf
    move-object v14, v4

    :cond_1d0
    :goto_1d0
    const/16 v0, 0xe

    if-gt v8, v0, :cond_24b

    const-string/jumbo v0, "Upgrading visual media permission for package: "

    invoke-static {v8, v0, v10, v13, v15}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v4

    const/16 v5, 0x21

    if-ge v4, v5, :cond_1f7

    goto :goto_24d

    :cond_1f7
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    sget-object v4, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    iget-object v5, v4, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    move/from16 v6, v16

    :goto_205
    if-ge v6, v5, :cond_24d

    invoke-virtual {v4, v6}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p0, v4

    move-object/from16 v4, v17

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_21c

    move/from16 v17, v5

    :cond_219
    const/16 v5, 0x20

    goto :goto_244

    :cond_21c
    move/from16 v17, v5

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v5, v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v5

    if-eqz v5, :cond_219

    const/16 v5, 0x20

    invoke-static {v4, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v4

    if-eqz v4, :cond_244

    const-string/jumbo v4, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24d

    invoke-virtual {v9, v1, v7, v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    goto :goto_24d

    :cond_244
    :goto_244
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    goto :goto_205

    :cond_24b
    move-object/from16 v2, p0

    :cond_24d
    :goto_24d
    const/16 v0, 0x10

    if-gt v8, v0, :cond_2d9

    const-string/jumbo v0, "Upgrading body sensor / read heart rate permissions for package: "

    invoke-static {v8, v0, v10, v13, v15}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v2

    const/16 v4, 0x24

    if-lt v2, v4, :cond_272

    goto :goto_2d9

    :cond_272
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    const-string/jumbo v5, "android.permission.health.READ_HEART_RATE"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v9, v1, v7, v3, v12}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->isRuntimePermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v6

    if-eqz v2, :cond_2a2

    if-eqz v4, :cond_2a2

    invoke-virtual {v9, v1, v7, v3, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->isRuntimePermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v2

    if-eq v6, v2, :cond_2a2

    if-eqz v6, :cond_29d

    invoke-virtual {v9, v1, v7, v3, v12}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29d

    move/from16 v6, v16

    :cond_29d
    if-eqz v2, :cond_2a2

    invoke-virtual {v9, v1, v7, v3, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    :cond_2a2
    invoke-virtual {v9, v1, v7, v3, v14}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->isRuntimePermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v2

    if-nez v6, :cond_2b2

    if-eqz v2, :cond_2b2

    invoke-virtual {v9, v1, v7, v3, v14}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b2

    move/from16 v2, v16

    :cond_2b2
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v5, "android.permission.health.READ_HEALTH_DATA_IN_BACKGROUND"

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v4, :cond_2d9

    if-eqz v0, :cond_2d9

    invoke-virtual {v9, v1, v7, v3, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->isRuntimePermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v0

    if-eq v2, v0, :cond_2d9

    if-eqz v2, :cond_2d4

    invoke-virtual {v9, v1, v7, v3, v14}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    :cond_2d4
    if-eqz v0, :cond_2d9

    invoke-virtual {v9, v1, v7, v3, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    :cond_2d9
    :goto_2d9
    return-void
.end method
