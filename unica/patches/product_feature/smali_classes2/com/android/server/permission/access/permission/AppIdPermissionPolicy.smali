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
    .locals 8

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
    .locals 1

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
    .locals 12

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "AppIdPermissionPolicy"

    if-ge v3, v1, :cond_5

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/PackageUserState;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_3

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

    if-eqz v7, :cond_2

    iget-object v8, v3, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    iget-object v9, v7, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v3, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    iget-object v7, v7, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v9

    const-string v10, "Ignoring permission group "

    if-nez v9, :cond_0

    const-string v3, " declared in package "

    const-string v6, ": already declared in another package "

    invoke-static {v10, v5, v3, v8, v6}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, v7, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v9, :cond_1

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_1

    const-string v3, " declared in system package "

    const-string v6, ": already declared in another system package "

    invoke-static {v10, v5, v3, v8, v6}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, v7, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string/jumbo v9, "Overriding permission group "

    const-string v10, " with new declaration in system package "

    const-string v11, ": originally declared in another package "

    invoke-static {v9, v5, v10, v8, v11}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v8, v7, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v6}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/permission/access/MutableSystemState;->permissionGroupsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v6}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-virtual {v6, v5, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Ignoring permission groups declared in package "

    const-string v0, ": instant apps cannot declare permission groups"

    invoke-static {p1, p0, v0, v4}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static adoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V
    .locals 16

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

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

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v10

    const-string v11, " to "

    const-string/jumbo v12, "Unable to adopt permissions from "

    const-string v13, "AppIdPermissionPolicy"

    if-nez v10, :cond_1

    const-string v8, ": original package not in system partition"

    invoke-static {v12, v5, v11, v6, v8}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v9

    if-eqz v9, :cond_3

    const-string v8, ": original package still exists"

    invoke-static {v12, v5, v11, v6, v8}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    move-object/from16 v13, p2

    const/4 v3, 0x0

    goto :goto_4

    :cond_3
    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v9

    iget-object v10, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_2

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

    if-nez v14, :cond_4

    move-object/from16 v13, p2

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
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

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public static findPermissionTree(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;
    .locals 7

    iget-object p0, p0, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p0

    iget-object v0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

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

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2e

    if-ne v3, v5, :cond_0

    move-object v2, v4

    :cond_0
    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static getAppIdTargetSdkVersion(ILjava/lang/String;Lcom/android/server/permission/access/AccessState;)I
    .locals 6

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

    :goto_0
    if-ge v2, v1, :cond_2

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

    if-eqz v5, :cond_1

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    if-le v4, v3, :cond_1

    move v4, v3

    :cond_1
    iput v4, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget p0, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    return p0
.end method

.method public static getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/MutableUserState;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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
    .locals 4

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

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    iget-object p0, p2, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    const p1, 0x8000

    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "Permission "

    const-string p1, " cannot be granted to privileged vendor (or odm) app "

    const-string p2, " because it isn\'t a vendorPrivileged permission"

    invoke-static {p0, v0, p1, v1, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppIdPermissionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object p2, p2, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {p2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p2

    const/16 v2, 0x4000

    invoke-static {p2, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isOem()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/permission/access/MutableExternalState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionAllowlist;->mOemAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_4
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

    :cond_5
    return v3
.end method


# virtual methods
.method public final addPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V
    .locals 28

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

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_1c

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

    if-eqz v0, :cond_2

    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    goto :goto_3

    :cond_2
    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    :goto_3
    invoke-static {v1, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->findPermissionTree(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v2

    iget-object v3, v15, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const-string v5, " declared in package "

    const-string v6, "Ignoring permission "

    const-string v8, "AppIdPermissionPolicy"

    if-eqz v2, :cond_3

    iget-object v7, v2, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

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

    :goto_4
    move-object/from16 v0, p3

    move/from16 v22, v9

    move-object/from16 v21, v10

    move/from16 v26, v11

    move/from16 v27, v12

    :goto_5
    const/4 v1, 0x1

    goto/16 :goto_15

    :cond_3
    if-eqz v0, :cond_12

    iget-object v2, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v7

    if-nez v7, :cond_4

    const-string v0, ": already declared in another package "

    invoke-static {v6, v4, v5, v3, v0}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v2, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_5

    const-string v0, " declared in system package "

    const-string v5, ": already declared in another system package "

    invoke-static {v6, v4, v0, v3, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v2, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
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

    :goto_6
    if-ge v2, v8, :cond_7

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

    :goto_7
    if-ge v5, v0, :cond_6

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

    goto :goto_7

    :cond_6
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

    goto :goto_6

    :cond_7
    move-object v7, v0

    move/from16 v22, v9

    move-object v9, v3

    :cond_8
    move-object/from16 v21, v10

    move/from16 v26, v11

    move/from16 v27, v12

    goto/16 :goto_e

    :cond_9
    move-object v7, v0

    move/from16 v22, v9

    move-object v9, v3

    iget-boolean v0, v7, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    if-eqz v0, :cond_8

    invoke-virtual {v15}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v15, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v1, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v16, 0x1

    goto :goto_8

    :cond_a
    const/16 v16, 0x0

    :goto_8
    invoke-virtual {v15}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    :cond_b
    invoke-virtual {v15}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    iget-object v0, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    if-ne v0, v1, :cond_c

    goto :goto_9

    :cond_c
    const/16 v17, 0x1

    goto :goto_a

    :cond_d
    :goto_9
    const/16 v17, 0x0

    :goto_a
    if-nez v16, :cond_e

    if-eqz v17, :cond_8

    :cond_e
    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_8

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

    :goto_c
    if-ge v10, v6, :cond_11

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

    if-eqz v16, :cond_f

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

    goto :goto_d

    :cond_f
    move/from16 v24, v6

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v27, v12

    :goto_d
    if-eqz v17, :cond_10

    const-string/jumbo v5, "Revoking permission "

    invoke-static {v0, v5, v4, v2, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as the permission protection changed."

    invoke-static {v3, v2, v8, v1}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_10
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

    goto :goto_c

    :cond_11
    move-object/from16 v18, v0

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v26, v11

    move/from16 v27, v12

    add-int/lit8 v2, v20, 0x1

    move-object/from16 v10, v21

    goto/16 :goto_b

    :cond_12
    move-object v7, v0

    move/from16 v22, v9

    move-object/from16 v21, v10

    move/from16 v26, v11

    move/from16 v27, v12

    move-object v9, v3

    :goto_e
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/permission/access/MutableExternalState;->configPermissions:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/SystemConfig$PermissionEntry;

    if-eqz v1, :cond_14

    iget-object v2, v1, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v2, :cond_13

    iget-boolean v0, v1, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    move v1, v0

    move-object v0, v2

    goto :goto_f

    :cond_13
    const/4 v1, 0x0

    :goto_f
    move/from16 v20, v1

    :goto_10
    move-object/from16 v19, v0

    move-object v0, v14

    goto :goto_11

    :cond_14
    const/16 v20, 0x0

    goto :goto_10

    :goto_11
    new-instance v14, Lcom/android/server/permission/access/permission/Permission;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v18

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v20}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZ)V

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/MutableSystemState;->permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-virtual {v0, v4, v14}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p3

    goto/16 :goto_5

    :cond_15
    invoke-static {v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v0

    invoke-virtual {v0, v4, v14}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v7, :cond_1b

    iget-object v0, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, v15, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iget-object v1, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-ne v0, v1, :cond_1b

    iget-boolean v0, v7, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    if-eqz v0, :cond_19

    invoke-virtual {v15}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    if-nez v22, :cond_16

    goto :goto_12

    :cond_16
    move-object/from16 v0, p3

    const/4 v1, 0x1

    goto :goto_14

    :cond_17
    :goto_12
    invoke-virtual {v15}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/high16 v1, 0x8000000

    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v15, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    iget-object v1, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_18
    invoke-virtual {v15}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    iget-object v0, v15, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v2, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    :goto_13
    move-object/from16 v0, p3

    goto :goto_14

    :cond_19
    const/4 v1, 0x1

    :cond_1a
    move-object/from16 v0, p3

    goto :goto_15

    :cond_1b
    const/4 v1, 0x1

    goto :goto_13

    :goto_14
    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)V

    :goto_15
    add-int/lit8 v12, v27, 0x1

    move-object/from16 v1, p1

    move-object/from16 v10, v21

    move/from16 v9, v22

    move/from16 v11, v26

    goto/16 :goto_2

    :cond_1c
    return-void
.end method

.method public final evaluateAllPermissionStatesForPackage(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/PackageState;)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, v0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, p1, p2, v3, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluateAllPermissionStatesForPackageAndUser(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILcom/android/server/pm/pkg/PackageState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final evaluateAllPermissionStatesForPackageAndUser(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILcom/android/server/pm/pkg/PackageState;)V
    .locals 8

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

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

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final evaluatePermissionState(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V
    .locals 26

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

    :goto_0
    const/4 v10, 0x1

    if-ge v8, v6, :cond_2

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

    if-eqz v12, :cond_0

    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move v9, v10

    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v10, :cond_3

    if-eqz v9, :cond_3

    goto/16 :goto_a

    :cond_3
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

    if-nez v0, :cond_4

    if-nez v6, :cond_e

    const/4 v5, -0x1

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    return-void

    :cond_4
    iget-object v1, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v1

    const/16 v2, 0x40

    const-string v3, "AppIdPermissionPolicy"

    const/4 v8, 0x2

    if-nez v1, :cond_f

    invoke-static {v6, v10}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {v6, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz p5, :cond_5

    invoke-interface/range {p5 .. p5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v10

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_7

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v13

    if-eqz v13, :cond_6

    move v11, v10

    goto :goto_4

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v12, :cond_a

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

    :goto_6
    array-length v10, v15

    if-ge v7, v10, :cond_9

    add-int/lit8 v10, v7, 0x1

    :try_start_0
    aget-object v7, v15, v7
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v7}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v8

    invoke-virtual {v7}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getSdkVersion()I

    move-result v7

    if-ge v8, v7, :cond_8

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

    goto :goto_7

    :cond_8
    move v7, v10

    const/4 v8, 0x2

    goto :goto_6

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v16

    const/4 v8, 0x2

    goto :goto_5

    :cond_a
    move/from16 v16, v10

    const/4 v7, 0x0

    :goto_7
    if-eqz v1, :cond_c

    if-nez v9, :cond_c

    if-nez v11, :cond_c

    if-eqz v7, :cond_b

    goto :goto_8

    :cond_b
    const/4 v10, 0x2

    goto :goto_9

    :cond_c
    :goto_8
    move/from16 v10, v16

    :goto_9
    iget-object v0, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    invoke-static {v0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_d

    and-int/lit8 v0, v6, 0x28

    or-int/2addr v10, v0

    :cond_d
    move v6, v10

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    :cond_e
    :goto_a
    return-void

    :cond_f
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v16, v10

    iget-object v7, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v7

    const/16 v11, 0x10

    const/4 v15, 0x4

    const/4 v2, 0x2

    if-ne v7, v2, :cond_10

    goto :goto_b

    :cond_10
    iget-object v2, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v2

    if-ne v2, v15, :cond_5e

    :goto_b
    invoke-static {v6, v15}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v9, :cond_11

    if-eqz v2, :cond_11

    move/from16 v24, v6

    move v7, v15

    goto/16 :goto_32

    :cond_11
    iget-object v2, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v2

    invoke-static {v2, v11}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    const-string v9, " ("

    const-string v7, " for package "

    const-string/jumbo v13, "android"

    if-eqz v2, :cond_29

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v2, :cond_27

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/pm/pkg/PackageState;

    sget-boolean v20, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    if-eqz v20, :cond_13

    :cond_12
    :goto_d
    move/from16 v23, v2

    move/from16 v24, v6

    :goto_e
    move/from16 v2, v16

    goto/16 :goto_16

    :cond_13
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    goto :goto_d

    :cond_14
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    move-result v10

    if-nez v10, :cond_15

    goto :goto_d

    :cond_15
    iget-object v10, v4, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v10}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/permission/access/MutableExternalState;->privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/immutable/IndexedListSet;

    iget-object v8, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget-object v10, v10, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    goto :goto_d

    :cond_16
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

    if-nez v22, :cond_17

    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    move-result v22

    if-eqz v22, :cond_18

    :cond_17
    move/from16 v23, v2

    move/from16 v24, v6

    move-object/from16 v25, v10

    goto/16 :goto_14

    :cond_18
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->isProduct()Z

    move-result v22

    if-eqz v22, :cond_1a

    iget-object v11, v14, Lcom/android/server/pm/permission/PermissionAllowlist;->mProductPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v11, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArrayMap;

    if-nez v11, :cond_19

    :goto_f
    const/4 v8, 0x0

    goto :goto_10

    :cond_19
    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    :goto_10
    move/from16 v23, v2

    move/from16 v24, v6

    move-object/from16 v25, v10

    goto/16 :goto_15

    :cond_1a
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->isSystemExt()Z

    move-result v22

    if-eqz v22, :cond_1c

    iget-object v11, v14, Lcom/android/server/pm/permission/PermissionAllowlist;->mSystemExtPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v11, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArrayMap;

    if-nez v11, :cond_1b

    goto :goto_f

    :cond_1b
    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    goto :goto_10

    :cond_1c
    if-eqz v11, :cond_20

    invoke-virtual {v14, v15, v8}, Lcom/android/server/pm/permission/PermissionAllowlist;->getPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v22

    move/from16 v23, v2

    if-eqz v22, :cond_1d

    const-string/jumbo v2, "Package "

    move/from16 v24, v6

    const-string v6, " is an APK in APEX but has permission allowlist on the system image, please bundle the allowlist in the "

    move-object/from16 v25, v10

    const-string v10, " APEX instead"

    invoke-static {v2, v15, v6, v11, v10}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_1d
    move/from16 v24, v6

    move-object/from16 v25, v10

    :goto_11
    iget-object v2, v14, Lcom/android/server/pm/permission/PermissionAllowlist;->mApexPrivilegedAppAllowlists:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-nez v2, :cond_1e

    :goto_12
    const/4 v8, 0x0

    goto :goto_13

    :cond_1e
    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-nez v2, :cond_1f

    goto :goto_12

    :cond_1f
    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    move-object v8, v2

    :goto_13
    if-nez v8, :cond_22

    move-object/from16 v8, v22

    goto :goto_15

    :cond_20
    move/from16 v23, v2

    move/from16 v24, v6

    move-object/from16 v25, v10

    invoke-virtual {v14, v15, v8}, Lcom/android/server/pm/permission/PermissionAllowlist;->getPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_15

    :goto_14
    iget-object v2, v14, Lcom/android/server/pm/permission/PermissionAllowlist;->mVendorPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-nez v2, :cond_21

    const/4 v8, 0x0

    goto :goto_15

    :cond_21
    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    move-object v8, v2

    :cond_22
    :goto_15
    if-eqz v8, :cond_23

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_16

    :cond_23
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v2

    if-eqz v2, :cond_24

    goto/16 :goto_e

    :cond_24
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/permission/access/MutableExternalState;->isSystemReady:Z

    if-nez v2, :cond_25

    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->isApkInUpdatedApex()Z

    move-result v2

    if-nez v2, :cond_25

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

    if-eqz v2, :cond_25

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

    :cond_25
    sget-boolean v2, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    xor-int/lit8 v2, v2, 0x1

    :goto_16
    if-eqz v2, :cond_26

    move/from16 v2, v16

    goto :goto_17

    :cond_26
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v23

    move/from16 v6, v24

    const/16 v11, 0x10

    const/4 v15, 0x4

    goto/16 :goto_c

    :cond_27
    move/from16 v24, v6

    const/4 v2, 0x0

    :goto_17
    if-eqz v2, :cond_28

    goto :goto_18

    :cond_28
    const/4 v2, 0x0

    goto :goto_19

    :cond_29
    move/from16 v24, v6

    :goto_18
    move/from16 v2, v16

    :goto_19
    iget-object v6, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v6}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_2a

    move/from16 v6, v16

    goto :goto_1a

    :cond_2a
    const/4 v6, 0x0

    :goto_1a
    if-eqz v6, :cond_43

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_1b
    if-ge v8, v6, :cond_42

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

    if-eqz v12, :cond_2b

    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v12

    if-eqz v12, :cond_2b

    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v12

    goto :goto_1c

    :cond_2b
    const/4 v12, 0x0

    :goto_1c
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

    if-eqz v12, :cond_2c

    const/4 v15, 0x4

    invoke-virtual {v12, v11, v15}, Landroid/content/pm/SigningDetails;->hasCommonSignerWithCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v12

    move/from16 v15, v16

    if-ne v12, v15, :cond_2c

    goto :goto_1d

    :cond_2c
    invoke-virtual {v11, v14}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    move-result v12

    if-nez v12, :cond_2e

    const/4 v15, 0x4

    invoke-virtual {v14, v11, v15}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v11

    if-eqz v11, :cond_2d

    goto :goto_1d

    :cond_2d
    const/4 v11, 0x0

    goto :goto_1e

    :cond_2e
    :goto_1d
    const/4 v11, 0x1

    :goto_1e
    if-nez v11, :cond_30

    :cond_2f
    :goto_1f
    const/4 v10, 0x0

    goto/16 :goto_29

    :cond_30
    iget-object v11, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-static {v11, v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_40

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v11

    if-eqz v11, :cond_32

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v11

    if-eqz v11, :cond_40

    iget-object v11, v4, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v11}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v11, :cond_31

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v11

    goto :goto_20

    :cond_31
    const/4 v11, 0x0

    :goto_20
    if-eqz v11, :cond_32

    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v12, v12, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_32

    goto/16 :goto_28

    :cond_32
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

    if-nez v15, :cond_3e

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    move-result v15

    if-eqz v15, :cond_33

    goto/16 :goto_26

    :cond_33
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->isProduct()Z

    move-result v15

    if-eqz v15, :cond_35

    iget-object v12, v12, Lcom/android/server/pm/permission/PermissionAllowlist;->mProductSignatureAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArrayMap;

    if-nez v12, :cond_34

    goto/16 :goto_25

    :cond_34
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    goto/16 :goto_27

    :cond_35
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->isSystemExt()Z

    move-result v15

    if-eqz v15, :cond_37

    iget-object v12, v12, Lcom/android/server/pm/permission/PermissionAllowlist;->mSystemExtSignatureAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArrayMap;

    if-nez v12, :cond_36

    goto :goto_25

    :cond_36
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    goto/16 :goto_27

    :cond_37
    iget-object v15, v12, Lcom/android/server/pm/permission/PermissionAllowlist;->mApexSignatureAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArrayMap;

    if-nez v15, :cond_38

    const/4 v15, 0x0

    goto :goto_21

    :cond_38
    invoke-virtual {v15, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    :goto_21
    if-nez v15, :cond_3d

    iget-object v15, v12, Lcom/android/server/pm/permission/PermissionAllowlist;->mProductSignatureAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArrayMap;

    if-nez v15, :cond_39

    const/4 v15, 0x0

    goto :goto_22

    :cond_39
    invoke-virtual {v15, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    :goto_22
    if-nez v15, :cond_3d

    iget-object v15, v12, Lcom/android/server/pm/permission/PermissionAllowlist;->mVendorSignatureAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArrayMap;

    if-nez v15, :cond_3a

    const/4 v15, 0x0

    goto :goto_23

    :cond_3a
    invoke-virtual {v15, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    :goto_23
    if-nez v15, :cond_3d

    iget-object v15, v12, Lcom/android/server/pm/permission/PermissionAllowlist;->mSystemExtSignatureAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArrayMap;

    if-nez v15, :cond_3b

    const/4 v15, 0x0

    goto :goto_24

    :cond_3b
    invoke-virtual {v15, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    :goto_24
    if-nez v15, :cond_3d

    iget-object v12, v12, Lcom/android/server/pm/permission/PermissionAllowlist;->mSignatureAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArrayMap;

    if-nez v12, :cond_3c

    :goto_25
    const/4 v11, 0x0

    goto :goto_27

    :cond_3c
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    goto :goto_27

    :cond_3d
    move-object v11, v15

    goto :goto_27

    :cond_3e
    :goto_26
    iget-object v12, v12, Lcom/android/server/pm/permission/PermissionAllowlist;->mVendorSignatureAppAllowlist:Landroid/util/ArrayMap;

    invoke-virtual {v12, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArrayMap;

    if-nez v12, :cond_3f

    goto :goto_25

    :cond_3f
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    :goto_27
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v11, v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_40

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

    if-eqz v10, :cond_2f

    iget-boolean v10, v1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isSignaturePermissionAllowlistForceEnforced:Z

    if-eqz v10, :cond_40

    goto/16 :goto_1f

    :cond_40
    :goto_28
    const/4 v10, 0x1

    :goto_29
    if-eqz v10, :cond_41

    const/4 v3, 0x1

    goto :goto_2a

    :cond_41
    add-int/lit8 v8, v8, 0x1

    const/16 v16, 0x1

    goto/16 :goto_1b

    :cond_42
    const/4 v3, 0x0

    :goto_2a
    if-eqz v3, :cond_43

    const/4 v3, 0x1

    goto :goto_2b

    :cond_43
    const/4 v3, 0x0

    :goto_2b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_2c
    if-ge v7, v6, :cond_58

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

    if-nez v12, :cond_44

    iget-object v12, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v12}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v12

    const/16 v13, 0x4000

    invoke-static {v12, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v12

    if-eqz v12, :cond_49

    :cond_44
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v12

    if-eqz v12, :cond_49

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v12

    if-eqz v12, :cond_47

    iget-object v12, v4, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v12}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v12, :cond_45

    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v13

    goto :goto_2d

    :cond_45
    const/4 v13, 0x0

    :goto_2d
    if-eqz v13, :cond_46

    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v13

    iget-object v14, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_46

    invoke-static {v4, v12, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->shouldGrantPrivilegedOrOemPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z

    move-result v12

    if-eqz v12, :cond_46

    const/4 v12, 0x1

    goto :goto_2e

    :cond_46
    const/4 v12, 0x0

    goto :goto_2e

    :cond_47
    invoke-static {v4, v8, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->shouldGrantPrivilegedOrOemPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z

    move-result v12

    :goto_2e
    if-eqz v12, :cond_49

    :cond_48
    :goto_2f
    const/4 v8, 0x1

    goto/16 :goto_30

    :cond_49
    iget-object v12, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v12}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v12

    const/16 v13, 0x80

    invoke-static {v12, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v12

    if-eqz v12, :cond_4a

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v12

    const/16 v13, 0x17

    if-ge v12, v13, :cond_4a

    goto :goto_2f

    :cond_4a
    iget-object v12, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v12}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v12

    const/16 v13, 0x100

    invoke-static {v12, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v12

    if-eqz v12, :cond_4b

    iget-object v12, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v12, [Ljava/lang/Object;

    invoke-static {v12, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_48

    iget-object v12, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    const/4 v13, 0x7

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v12, [Ljava/lang/Object;

    invoke-static {v12, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4b

    goto :goto_2f

    :cond_4b
    iget-object v12, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v12}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v12

    const/16 v13, 0x200

    invoke-static {v12, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v12

    if-eqz v12, :cond_4c

    iget-object v12, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    const/4 v15, 0x4

    invoke-virtual {v12, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v12, [Ljava/lang/Object;

    invoke-static {v12, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4c

    goto :goto_2f

    :cond_4c
    iget-object v12, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v12}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v12

    const/16 v13, 0x400

    invoke-static {v12, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v12

    if-eqz v12, :cond_4d

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v12

    if-eqz v12, :cond_4d

    goto/16 :goto_2f

    :cond_4d
    iget-object v12, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v12}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v12

    const/high16 v13, 0x8000000

    invoke-static {v12, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v12

    if-eqz v12, :cond_4e

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v9

    iget-object v12, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v12, v12, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    invoke-virtual {v9, v12}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z

    move-result v9

    if-eqz v9, :cond_4e

    goto/16 :goto_2f

    :cond_4e
    iget-object v9, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v9

    const/16 v12, 0x800

    invoke-static {v9, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_4f

    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v9, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4f

    goto/16 :goto_2f

    :cond_4f
    iget-object v9, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v9

    const/high16 v12, 0x10000

    invoke-static {v9, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_50

    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    const/4 v12, 0x6

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v9, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_50

    goto/16 :goto_2f

    :cond_50
    iget-object v9, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v9

    const/high16 v12, 0x80000

    invoke-static {v9, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_51

    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    const/16 v12, 0xa

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v9, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_51

    goto/16 :goto_2f

    :cond_51
    iget-object v9, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v9

    const/high16 v12, 0x100000

    invoke-static {v9, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_52

    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    const/16 v12, 0xb

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v9, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_52

    goto/16 :goto_2f

    :cond_52
    iget-object v9, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v9

    const/high16 v12, 0x200000

    invoke-static {v9, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_53

    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    const/16 v12, 0xc

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v9, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_53

    goto/16 :goto_2f

    :cond_53
    iget-object v9, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v9

    const/high16 v12, 0x800000

    invoke-static {v9, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_54

    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    const/16 v12, 0xf

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v9, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_54

    goto/16 :goto_2f

    :cond_54
    iget-object v9, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v9

    const/high16 v12, 0x2000000

    invoke-static {v9, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_55

    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v9, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_55

    goto/16 :goto_2f

    :cond_55
    iget-object v9, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v9

    const/high16 v10, 0x400000

    invoke-static {v9, v10}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_56

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getApexModuleName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_56

    goto/16 :goto_2f

    :cond_56
    const/4 v8, 0x0

    :goto_30
    if-eqz v8, :cond_57

    const/4 v10, 0x1

    goto :goto_31

    :cond_57
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2c

    :cond_58
    const/4 v10, 0x0

    :goto_31
    if-eqz v2, :cond_5a

    if-nez v3, :cond_59

    if-eqz v10, :cond_5a

    :cond_59
    const/4 v7, 0x4

    goto :goto_32

    :cond_5a
    const/4 v7, 0x0

    :goto_32
    iget-object v2, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v2

    const/16 v3, 0x40

    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_5b

    and-int/lit8 v2, v24, 0x28

    or-int/2addr v7, v2

    :cond_5b
    iget-object v2, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v2

    const/16 v3, 0x20

    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_5c

    and-int/lit8 v2, v24, 0x10

    or-int/2addr v7, v2

    :cond_5c
    iget-object v0, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    const/high16 v2, 0x4000000

    invoke-static {v0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_5d

    and-int/lit8 v0, v24, 0x18

    or-int/2addr v7, v0

    :cond_5d
    move v6, v7

    const/4 v5, -0x1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v0, v1

    move-object v1, v4

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    return-void

    :cond_5e
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

    if-ne v7, v15, :cond_87

    const v6, 0xfffff8

    and-int v6, v24, v6

    const/high16 v7, 0x40000

    if-eqz v6, :cond_65

    invoke-static {v6, v15}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-eqz v8, :cond_60

    :cond_5f
    :goto_33
    const/4 v15, 0x1

    goto :goto_35

    :cond_60
    const/4 v13, 0x2

    invoke-static {v6, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-eqz v8, :cond_61

    :goto_34
    const/4 v15, 0x0

    goto :goto_35

    :cond_61
    const/4 v15, 0x4

    invoke-static {v6, v15}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-eqz v8, :cond_62

    goto :goto_33

    :cond_62
    const/16 v13, 0x400

    invoke-static {v6, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-nez v8, :cond_5f

    const/16 v12, 0x800

    invoke-static {v6, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-eqz v8, :cond_63

    goto :goto_33

    :cond_63
    invoke-static {v6, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-eqz v8, :cond_64

    goto :goto_34

    :cond_64
    const/16 v13, 0x10

    invoke-static {v6, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v15

    :goto_35
    if-nez v15, :cond_65

    const/4 v15, 0x1

    goto :goto_36

    :cond_65
    const/4 v15, 0x0

    :goto_36
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v9, 0x2710

    const/4 v10, 0x0

    :goto_37
    if-ge v10, v8, :cond_67

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v11

    if-le v9, v11, :cond_66

    move v9, v11

    :cond_66
    add-int/lit8 v10, v10, 0x1

    goto :goto_37

    :cond_67
    sget-boolean v8, Lcom/samsung/android/rune/PMRune;->PM_GRANT_ALL_RUNTIME_PERMISSION_UNPACK:Z

    const v10, 0x38000

    if-eqz v8, :cond_69

    or-int/lit16 v6, v6, 0x210

    :cond_68
    :goto_38
    move/from16 p5, v7

    move v7, v10

    const/16 v16, 0x1

    goto/16 :goto_46

    :cond_69
    const/16 v13, 0x17

    if-ge v9, v13, :cond_6c

    iget-object v8, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v8}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v8

    const/16 v11, 0x2000

    invoke-static {v8, v11}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-eqz v8, :cond_6a

    and-int v6, v24, v10

    goto :goto_38

    :cond_6a
    or-int/lit16 v8, v6, 0x400

    if-eqz v15, :cond_6b

    const v8, 0x100400

    or-int/2addr v6, v8

    goto :goto_39

    :cond_6b
    move v6, v8

    :goto_39
    iget-object v8, v1, Lcom/android/server/permission/access/MutateStateScope;->oldState:Lcom/android/server/permission/access/AccessState;

    invoke-static {v8, v2, v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v8

    if-nez v8, :cond_68

    or-int/lit16 v6, v6, 0x1000

    goto :goto_38

    :cond_6c
    const/16 v13, 0x400

    invoke-static {v6, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    const/16 v11, 0x1000

    invoke-static {v6, v11}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v12

    if-eqz v8, :cond_6d

    const v6, 0xfffbf8

    and-int v6, v24, v6

    if-nez v12, :cond_6d

    or-int/lit8 v6, v6, 0x10

    :cond_6d
    const/16 v13, 0x800

    invoke-static {v6, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v13

    iget-object v14, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v14

    iget-boolean v14, v14, Lcom/android/server/permission/access/MutableExternalState;->isLeanback:Z

    if-eqz v14, :cond_6e

    sget-object v14, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NOTIFICATIONS_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    iget-object v14, v14, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v14, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6e

    const/4 v14, 0x1

    :goto_3a
    move/from16 p5, v7

    goto :goto_3b

    :cond_6e
    const/4 v14, 0x0

    goto :goto_3a

    :goto_3b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v10, 0x0

    :goto_3c
    if-ge v10, v7, :cond_70

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

    if-eqz v11, :cond_6f

    const/4 v7, 0x1

    goto :goto_3d

    :cond_6f
    add-int/lit8 v10, v10, 0x1

    const/16 v11, 0x1000

    goto :goto_3c

    :cond_70
    const/4 v7, 0x0

    :goto_3d
    iget-object v10, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v10}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/permission/access/MutableExternalState;->implicitToSourcePermissions:Lcom/android/server/permission/access/immutable/IndexedMap;

    iget-object v10, v10, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/immutable/IndexedListSet;

    if-eqz v10, :cond_74

    iget-object v11, v10, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move/from16 v17, v7

    const/4 v7, 0x0

    :goto_3e
    if-ge v7, v11, :cond_75

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

    if-eqz v7, :cond_73

    iget-object v7, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_71

    move v7, v8

    goto :goto_3f

    :cond_71
    const/4 v7, 0x0

    :goto_3f
    if-nez v7, :cond_72

    move/from16 v16, v8

    goto :goto_40

    :cond_72
    add-int/lit8 v7, v21, 0x1

    move/from16 v8, v20

    goto :goto_3e

    :cond_73
    const-string/jumbo v0, "Unknown source permission "

    const-string v1, " in split permissions"

    invoke-static {v0, v8, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_74
    move/from16 v17, v7

    :cond_75
    move/from16 v20, v8

    const/16 v16, 0x1

    const/4 v8, 0x0

    :goto_40
    if-nez v14, :cond_79

    if-eqz v17, :cond_76

    if-eqz v8, :cond_76

    goto :goto_41

    :cond_76
    and-int/lit16 v7, v6, -0x801

    if-nez v20, :cond_77

    if-eqz v13, :cond_78

    :cond_77
    const/high16 v8, 0x100000

    invoke-static {v7, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-eqz v8, :cond_78

    const v7, -0x100811

    and-int/2addr v6, v7

    goto :goto_42

    :cond_78
    move v6, v7

    goto :goto_42

    :cond_79
    :goto_41
    or-int/lit16 v7, v6, 0x800

    if-eqz v15, :cond_78

    const v7, 0x100800

    or-int/2addr v6, v7

    :goto_42
    if-nez v17, :cond_7c

    if-eqz v12, :cond_7c

    and-int/lit16 v7, v6, -0x1001

    sget-object v8, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NEARBY_DEVICES_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    iget-object v8, v8, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v8, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7a

    iget-object v8, v1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    const-string/jumbo v10, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {v8, v2, v3, v10}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v10

    if-eqz v10, :cond_7a

    const/16 v10, 0x1000

    invoke-static {v8, v10}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-nez v8, :cond_7a

    move/from16 v15, v16

    goto :goto_43

    :cond_7a
    const/4 v15, 0x0

    :goto_43
    const/16 v8, 0x180

    invoke-static {v7, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v8

    if-nez v15, :cond_7d

    if-eqz v8, :cond_7b

    goto :goto_45

    :cond_7b
    and-int/lit16 v6, v6, -0x1071

    :cond_7c
    :goto_44
    const v7, 0x38000

    goto :goto_46

    :cond_7d
    :goto_45
    if-eqz v13, :cond_7e

    or-int/lit8 v6, v7, 0x10

    goto :goto_44

    :cond_7e
    move v6, v7

    goto :goto_44

    :goto_46
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

    if-nez v8, :cond_7f

    iget-object v8, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v8, v8, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {v8, v10}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-eqz v8, :cond_80

    :cond_7f
    if-nez v15, :cond_80

    if-nez v7, :cond_80

    const/high16 v7, 0x20000

    or-int/2addr v6, v7

    move/from16 v15, v16

    :cond_80
    iget-object v7, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v7, v7, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v7

    if-eqz v7, :cond_81

    if-nez v15, :cond_81

    or-int v6, v6, p5

    goto :goto_47

    :cond_81
    const v7, -0x40001

    and-int/2addr v6, v7

    :goto_47
    iget-object v0, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {v0, v10}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_86

    if-nez v15, :cond_86

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v7, 0x0

    :goto_48
    if-ge v7, v0, :cond_85

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/PackageState;

    const-string/jumbo v8, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v4, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_82

    const-string/jumbo v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v4, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_83

    :cond_82
    const/16 v8, 0x1d

    if-lt v9, v8, :cond_83

    move/from16 v15, v16

    goto :goto_49

    :cond_83
    const/4 v15, 0x0

    :goto_49
    if-eqz v15, :cond_84

    goto :goto_4b

    :cond_84
    add-int/lit8 v7, v7, 0x1

    goto :goto_48

    :cond_85
    const/high16 v18, 0x80000

    or-int v0, v6, v18

    :goto_4a
    move v6, v0

    goto :goto_4c

    :cond_86
    :goto_4b
    const v0, -0x80001

    and-int/2addr v0, v6

    goto :goto_4a

    :goto_4c
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    return-void

    :cond_87
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
    .locals 17

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

    :goto_0
    if-ge v11, v9, :cond_4

    iget-object v0, v8, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v7}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v12

    iget-object v0, v12, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_3

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

    :goto_2
    if-ge v5, v4, :cond_2

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

    if-nez v10, :cond_0

    const-string/jumbo v0, "packageState does not exist: "

    const-string v1, "AppIdPermissionPolicy"

    invoke-static {v0, v15, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v10, :cond_1

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v4, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionState(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v0, v16

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    goto :goto_1

    :cond_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public final getObjectScheme()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "permission"

    return-object p0
.end method

.method public final getSubjectScheme()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "uid"

    return-object p0
.end method

.method public final inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V
    .locals 19

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

    :goto_0
    if-ge v5, v4, :cond_1

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

    if-eqz v11, :cond_0

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v9, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_c

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

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_a

    iget-object v0, v1, Lcom/android/server/permission/access/MutateStateScope;->oldState:Lcom/android/server/permission/access/AccessState;

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v7}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/MutableExternalState;->implicitToSourcePermissions:Lcom/android/server/permission/access/immutable/IndexedMap;

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedListSet;

    if-nez v0, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v13, v1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-static {v13, v2, v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v14

    iget-object v15, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v15, :cond_8

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

    if-eqz v0, :cond_7

    invoke-static {v13, v2, v3, v10}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v10

    move/from16 v16, v0

    invoke-static {v14}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v0

    if-eqz v10, :cond_3

    if-nez v0, :cond_3

    const/16 v18, 0x1

    goto :goto_4

    :cond_3
    const/16 v18, 0x0

    :goto_4
    if-eq v10, v0, :cond_4

    if-eqz v18, :cond_6

    :cond_4
    if-eqz v18, :cond_5

    const/4 v14, 0x0

    :cond_5
    const v0, 0xfffff8

    and-int v0, v16, v0

    or-int/2addr v0, v14

    move v14, v0

    :cond_6
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v17

    goto :goto_3

    :cond_7
    const-string/jumbo v0, "Unknown source permission "

    invoke-static {v0, v10, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    const/16 v0, 0x17

    if-lt v8, v0, :cond_9

    sget-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NO_IMPLICIT_FLAG_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    and-int/lit16 v0, v14, -0x1001

    :goto_5
    move v6, v0

    goto :goto_6

    :cond_9
    or-int/lit16 v0, v14, 0x1000

    goto :goto_5

    :goto_6
    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    :cond_a
    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v0, "Unknown implicit permission "

    invoke-static {v0, v4, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    return-void
.end method

.method public final migrateSystemState(Lcom/android/server/permission/access/MutableAccessState;)V
    .locals 4

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

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissionTrees()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
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
    .locals 16

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

    if-le v4, v5, :cond_c

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

    :try_start_0
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v0}, Lcom/android/server/pm/Settings;->getLegacyPermissionsState(I)Lcom/android/permission/persistence/RuntimePermissionsState;

    move-result-object v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-class v6, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {v6}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageManagerLocal;

    invoke-interface {v6}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v6

    :try_start_1
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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

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

    if-nez v9, :cond_0

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

    goto/16 :goto_7

    :cond_0
    new-instance v10, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v10}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v6, v11, v10}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

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

    if-nez v13, :cond_1

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

    goto/16 :goto_5

    :cond_1
    iget-object v14, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v14}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v14

    const/4 v15, 0x2

    if-nez v14, :cond_2

    iget-boolean v14, v11, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->mGranted:Z

    if-eqz v14, :cond_8

    move v15, v2

    goto :goto_4

    :cond_2
    iget-object v14, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v14}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v14

    const/4 v1, 0x4

    if-ne v14, v15, :cond_3

    goto :goto_2

    :cond_3
    iget-object v14, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v14}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v14

    if-ne v14, v1, :cond_7

    :goto_2
    iget-boolean v14, v11, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->mGranted:Z

    if-eqz v14, :cond_6

    iget-object v14, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v14}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v14

    const/16 v15, 0x20

    invoke-static {v14, v15}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v14

    if-nez v14, :cond_5

    iget-object v14, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v14}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v14

    const/high16 v15, 0x4000000

    invoke-static {v14, v15}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_3

    :cond_4
    move v15, v1

    goto :goto_4

    :cond_5
    :goto_3
    const/16 v15, 0x14

    goto :goto_4

    :cond_6
    const/4 v15, 0x0

    goto :goto_4

    :cond_7
    iget-object v1, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v1

    if-ne v1, v2, :cond_6

    iget-boolean v1, v11, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->mGranted:Z

    if-eqz v1, :cond_6

    const/16 v15, 0x10

    :cond_8
    :goto_4
    iget v1, v11, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->mFlags:I

    invoke-static {v13, v15, v1, v1}, Lcom/android/server/permission/access/permission/PermissionFlags;->updateFlags(Lcom/android/server/permission/access/permission/Permission;III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v12, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v1

    iget-object v7, v9, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_a

    iget-object v10, v9, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/2addr v8, v2

    goto :goto_6

    :cond_a
    :goto_7
    const/4 v1, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v6, :cond_b

    :try_start_2
    invoke-interface {v6}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_8
    throw v1

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_c
    return-void
.end method

.method public final onAppIdRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 3

    iget-object p0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p1

    iget-object v0, p1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->keyAt(I)I

    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/MutableUserState;

    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;I)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/permission/access/MutableUserState;->appIdPermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-static {v2, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V
    .locals 5

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

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluateAllPermissionStatesForPackage(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/PackageState;)V

    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, v0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    invoke-virtual {p0, p1, v4, v3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokePermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V

    return-void
.end method

.method public final onPackageInstalled(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .locals 11

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

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

    if-nez v5, :cond_3

    :cond_2
    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v4, p3

    goto/16 :goto_3

    :cond_3
    iget-object v2, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_4
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

    :goto_2
    if-ge v6, v4, :cond_7

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

    if-nez v8, :cond_5

    const-string/jumbo v9, "packageState does not exist: "

    const-string v10, "AppIdPermissionPolicy"

    invoke-static {v9, v7, v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v8, :cond_6

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    const/high16 v6, 0x20000

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionExemptFlags(Lcom/android/server/permission/access/MutateStateScope;IILcom/android/server/permission/access/permission/Permission;II)V

    :goto_3
    move-object p0, v1

    move-object p1, v2

    move p3, v4

    goto/16 :goto_0

    :cond_8
    :goto_4
    return-void
.end method

.method public final onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

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

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V

    :cond_0
    iget-object p2, v1, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    invoke-virtual {v1, p3}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
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
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    return-void
.end method

.method public final onStateMutated()V
    .locals 3

    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    iget-object v0, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;

    invoke-interface {v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;->onStateMutated()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/List;Z)V
    .locals 9

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>()V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    if-ge v3, v1, :cond_1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, v4, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->adoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    invoke-static {p1, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addPermissionGroups(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    move v1, v2

    :goto_3
    if-ge v1, v0, :cond_5

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageState;

    if-nez v3, :cond_3

    goto :goto_5

    :cond_3
    if-eqz p3, :cond_4

    move-object v5, v3

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {p0, p1, v3, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluateAllPermissionStatesForPackage(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/PackageState;)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p3

    move v0, v2

    :goto_6
    if-ge v0, p3, :cond_8

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    if-nez v1, :cond_6

    goto :goto_8

    :cond_6
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/MutableExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    move-result-object v3

    iget-object v5, v3, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    move v6, v2

    :goto_7
    if-ge v6, v5, :cond_7

    iget-object v7, v3, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    invoke-virtual {p0, p1, v8, v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_7
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokePermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    return-void
.end method

.method public final onSystemReady()V
    .locals 4

    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->privilegedPermissionAllowlistViolations:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    iget-object v0, p0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "We detected priv-permissions violations from below apps:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "\\nPrivileged apps MUST put their \'signature|privileged\' permissions into the allowlist.\nPlease ASSIGN this issue to above apps to apply.\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "AppIdPermissionPolicy"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfo(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onUserAdded(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 5

    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, p2, v3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluateAllPermissionStatesForPackageAndUser(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILcom/android/server/pm/pkg/PackageState;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedListSet;

    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "permission-trees"

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    invoke-static {p1, p2, p0}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->parsePermissions(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;Z)V

    return-void

    :cond_0
    const-string/jumbo v0, "permissions"

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-static {p1, p2, p0}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->parsePermissions(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;Z)V

    :cond_1
    return-void
.end method

.method public final parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 16

    move-object/from16 v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "app-id-permissions"

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

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

    if-eqz v4, :cond_1

    if-ne v4, v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v4, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v4

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eq v4, v8, :cond_2

    if-eq v4, v6, :cond_2

    if-eq v4, v7, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v4

    const-string v9, "AppIdPermissionPersistence"

    const-string v10, " when parsing permission state"

    if-eq v4, v8, :cond_1b

    if-eq v4, v6, :cond_4

    if-ne v4, v7, :cond_3

    goto/16 :goto_e

    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v4, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
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

    if-eqz v11, :cond_12

    const/4 v11, 0x0

    const-string/jumbo v15, "id"

    invoke-virtual {v0, v11, v15}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    new-instance v11, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v11}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    invoke-static {v3, v15, v11}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v15

    if-eqz v15, :cond_6

    if-ne v15, v6, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v15, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v15

    if-eq v15, v8, :cond_7

    if-eq v15, v6, :cond_7

    if-eq v15, v7, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v15

    if-eq v15, v8, :cond_13

    if-eq v15, v6, :cond_9

    if-ne v15, v7, :cond_8

    goto/16 :goto_9

    :cond_8
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v15, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v15

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v7, "permission"

    invoke-static {v8, v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

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

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6, v10, v9}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v15, :cond_11

    :goto_5
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_10

    const/4 v8, 0x3

    if-ne v6, v8, :cond_f

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v15, :cond_d

    :goto_6
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_b

    if-eq v6, v7, :cond_b

    const/4 v7, 0x3

    if-eq v6, v7, :cond_c

    move v8, v7

    const/4 v7, 0x2

    goto :goto_6

    :cond_b
    const/4 v7, 0x3

    :cond_c
    const/4 v8, 0x0

    goto :goto_5

    :cond_d
    move v7, v8

    :goto_7
    const/4 v8, 0x1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v6

    if-eq v6, v8, :cond_e

    const/4 v8, 0x2

    if-eq v6, v8, :cond_e

    if-eq v6, v7, :cond_e

    goto :goto_7

    :cond_e
    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    goto/16 :goto_3

    :cond_f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v6, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_8
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_c

    const/4 v7, 0x2

    if-eq v6, v7, :cond_c

    const/4 v7, 0x3

    if-eq v6, v7, :cond_c

    goto :goto_8

    :cond_11
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v6, v15, v13, v12}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6, v10, v9}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_9
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v4, :cond_1a

    :cond_14
    :goto_a
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_18

    const/4 v8, 0x3

    if-ne v6, v8, :cond_17

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v4, :cond_15

    :goto_b
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v6

    const/4 v9, 0x1

    if-eq v6, v9, :cond_14

    if-eq v6, v7, :cond_14

    if-eq v6, v8, :cond_14

    goto :goto_b

    :cond_15
    :goto_c
    const/4 v9, 0x1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v4

    if-eq v4, v9, :cond_16

    if-eq v4, v7, :cond_16

    if-eq v4, v8, :cond_16

    const/4 v7, 0x2

    goto :goto_c

    :cond_16
    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v6, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_d
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v6

    const/4 v8, 0x1

    const/4 v7, 0x2

    if-eq v6, v8, :cond_19

    const/4 v8, 0x3

    if-eq v6, v7, :cond_14

    if-eq v6, v8, :cond_14

    goto :goto_d

    :cond_19
    const/4 v8, 0x3

    goto :goto_a

    :cond_1a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v6, v4, v13, v12}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_e
    iget-object v0, v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    :goto_f
    const/4 v4, -0x1

    if-ge v4, v0, :cond_1d

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

    if-nez v5, :cond_1c

    const-string v5, "Dropping unknown app ID "

    invoke-static {v4, v5, v10, v9}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->removeAt$1(I)V

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/android/server/permission/access/MutableUserState;->requestWriteMode(I)V

    goto :goto_10

    :cond_1c
    const/4 v8, 0x1

    :goto_10
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_1d
    return-void
.end method

.method public final resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .locals 16

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

    if-nez v9, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    if-nez v10, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

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

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v5, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    iget-object v0, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v5, 0x2

    invoke-static {v0, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_5

    :cond_3
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

    :goto_1
    if-ge v12, v5, :cond_6

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

    if-nez v14, :cond_4

    const-string/jumbo v15, "packageState does not exist: "

    const-string v6, "AppIdPermissionPolicy"

    invoke-static {v15, v13, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v14, :cond_5

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, v1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v0

    const/16 v5, 0x180

    invoke-static {v0, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {v9, v3}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    const/16 v5, 0x8

    invoke-static {v0, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v5

    if-nez v5, :cond_a

    const/16 v5, 0x200

    invoke-static {v0, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_2

    :cond_9
    and-int/lit16 v0, v0, -0x219

    goto :goto_3

    :cond_a
    :goto_2
    or-int/lit8 v0, v0, 0x10

    :goto_3
    const v5, -0xf00061

    and-int/2addr v0, v5

    const/16 v5, 0x400

    invoke-static {v0, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v5

    if-eqz v5, :cond_c

    or-int/lit16 v0, v0, 0x1000

    sget-boolean v5, Lcom/samsung/android/rune/PMRune;->PERM_CHINA_COMPAT_LOW_SDK:Z

    if-eqz v5, :cond_b

    sget-object v5, Lcom/samsung/android/rune/PMRune;->PERM_CHINA_COMPAT_LOW_SDK_EXCEPTION:Landroid/util/ArraySet;

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const/high16 v6, 0x100000

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    :goto_4
    or-int/2addr v0, v6

    :cond_c
    move v6, v0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    :cond_d
    :goto_5
    move-object/from16 v1, p1

    move/from16 v3, p3

    goto/16 :goto_0

    :cond_e
    :goto_6
    return-void
.end method

.method public final revokePermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 19

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

    if-eqz v4, :cond_d

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

    :goto_0
    if-ge v12, v11, :cond_d

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

    if-nez v14, :cond_0

    invoke-static {v9, v13, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v14, :cond_c

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v13

    if-eqz v13, :cond_c

    invoke-static {v2, v6, v3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAppIdTargetSdkVersion(ILjava/lang/String;Lcom/android/server/permission/access/AccessState;)I

    move-result v4

    invoke-static {v2, v6, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAppIdTargetSdkVersion(ILjava/lang/String;Lcom/android/server/permission/access/AccessState;)I

    move-result v11

    const/16 v12, 0x1d

    if-lt v4, v12, :cond_1

    if-ge v11, v12, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    if-ge v4, v12, :cond_2

    if-lt v11, v12, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
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

    :goto_3
    if-ge v14, v12, :cond_5

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

    if-nez v7, :cond_3

    invoke-static {v9, v15, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v15

    if-eqz v15, :cond_4

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v7

    if-eqz v7, :cond_4

    move/from16 v3, v16

    goto :goto_4

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_5
    const/16 v16, 0x1

    const/4 v3, 0x0

    :goto_4
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

    :goto_5
    if-ge v12, v11, :cond_8

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

    if-nez v15, :cond_6

    invoke-static {v9, v14, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v15, :cond_7

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    move-result v14

    if-eqz v14, :cond_7

    move/from16 v7, v16

    goto :goto_6

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_6
    if-nez v4, :cond_9

    if-nez v3, :cond_9

    if-eqz v7, :cond_9

    goto :goto_7

    :cond_9
    if-eqz v13, :cond_e

    :goto_7
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v4, :cond_e

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

    if-eqz v12, :cond_b

    iget-object v13, v12, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    :goto_9
    const/4 v14, -0x1

    if-ge v14, v13, :cond_b

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

    if-eqz v10, :cond_a

    const/16 v10, 0x10

    invoke-static {v15, v10}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v0, v1, v2, v11, v14}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    :cond_a
    add-int/lit8 v13, v13, -0x1

    goto :goto_9

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_c
    const/16 v16, 0x1

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_d
    const/16 v16, 0x1

    :cond_e
    invoke-static {v2, v6, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAppIdTargetSdkVersion(ILjava/lang/String;Lcom/android/server/permission/access/AccessState;)I

    move-result v3

    const/16 v4, 0x24

    if-lt v3, v4, :cond_f

    goto/16 :goto_13

    :cond_f
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

    :goto_a
    const-string/jumbo v7, "android.permission.BODY_SENSORS"

    if-ge v6, v4, :cond_12

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

    if-nez v11, :cond_10

    invoke-static {v9, v10, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    if-eqz v11, :cond_11

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    if-eqz v10, :cond_11

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    move/from16 v3, v16

    goto :goto_b

    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_12
    const/4 v3, 0x0

    :goto_b
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

    :goto_c
    const-string/jumbo v11, "android.permission.health.READ_HEART_RATE"

    if-ge v10, v6, :cond_15

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

    if-nez v13, :cond_13

    invoke-static {v9, v12, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    if-eqz v13, :cond_14

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v12

    if-eqz v12, :cond_14

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    move/from16 v4, v16

    goto :goto_d

    :cond_14
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_15
    const/4 v4, 0x0

    :goto_d
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

    :goto_e
    const-string/jumbo v13, "android.permission.BODY_SENSORS_BACKGROUND"

    if-ge v12, v10, :cond_18

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

    if-nez v15, :cond_16

    invoke-static {v9, v14, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    if-eqz v15, :cond_17

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v14

    if-eqz v14, :cond_17

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    move/from16 v6, v16

    goto :goto_f

    :cond_17
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_18
    const/4 v6, 0x0

    :goto_f
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

    :goto_10
    const-string/jumbo v15, "android.permission.health.READ_HEALTH_DATA_IN_BACKGROUND"

    if-ge v14, v12, :cond_1b

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

    if-nez v4, :cond_19

    invoke-static {v9, v3, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    if-eqz v4, :cond_1a

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_11

    :cond_1a
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v17

    move/from16 v4, v18

    goto :goto_10

    :cond_1b
    move/from16 v17, v3

    move/from16 v18, v4

    const/16 v16, 0x0

    :goto_11
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v4, :cond_21

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

    if-eqz v17, :cond_1d

    if-eqz v18, :cond_1d

    invoke-static {v9, v2, v8, v11}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v12

    if-eq v10, v12, :cond_1d

    if-eqz v10, :cond_1c

    invoke-virtual {v0, v1, v2, v8, v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1c

    const/4 v10, 0x0

    :cond_1c
    if-eqz v12, :cond_1d

    invoke-virtual {v0, v1, v2, v8, v11}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    :cond_1d
    invoke-static {v9, v2, v8, v13}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v12

    if-eqz v12, :cond_1e

    if-nez v10, :cond_1e

    invoke-virtual {v0, v1, v2, v8, v13}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1e

    const/4 v12, 0x0

    :cond_1e
    if-eqz v6, :cond_20

    if-eqz v16, :cond_20

    invoke-static {v9, v2, v8, v15}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v9

    if-eq v12, v9, :cond_20

    if-eqz v12, :cond_1f

    invoke-virtual {v0, v1, v2, v8, v13}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    :cond_1f
    if-eqz v9, :cond_20

    invoke-virtual {v0, v1, v2, v8, v15}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z

    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_21
    :goto_13
    return-void
.end method

.method public final revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;)Z
    .locals 9

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

    if-eqz v3, :cond_0

    const-string/jumbo p0, "Not allowed to revoke "

    const-string p1, " for appId: "

    invoke-static {p2, p0, p4, p1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, p3, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
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
    .locals 1

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
    .locals 11

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

    :goto_0
    if-ge v2, v0, :cond_2

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

    :goto_1
    if-ge v6, v3, :cond_1

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

    if-eqz v7, :cond_0

    and-int/lit8 v8, v8, -0x11

    :cond_0
    const-string/jumbo v7, "flags"

    invoke-virtual {p1, p2, v7, v8}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1, p2, v9}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2, p3}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 13

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

    :goto_0
    if-ge v5, v3, :cond_1

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

    if-eqz v7, :cond_0

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_2
    if-ge v4, v2, :cond_4

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

    if-eqz v3, :cond_3

    iget-object v5, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move v12, v5

    :goto_3
    const/4 v5, -0x1

    if-ge v5, v12, :cond_3

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

    if-nez v5, :cond_2

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    goto :goto_4

    :cond_2
    move-object v5, p0

    move-object v6, p1

    move v7, p2

    :goto_4
    add-int/lit8 v12, v12, -0x1

    move-object p0, v5

    move-object p1, v6

    move p2, v7

    goto :goto_3

    :cond_3
    move-object v5, p0

    move-object v6, p1

    move v7, p2

    add-int/lit8 v4, v4, 0x1

    move-object p0, v5

    move-object p1, v6

    move p2, v7

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final trimPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V
    .locals 20

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

    if-eqz v9, :cond_0

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    move-object v10, v2

    goto :goto_0

    :cond_0
    move-object v10, v0

    :goto_0
    if-eqz v9, :cond_1

    if-nez v10, :cond_1

    goto/16 :goto_d

    :cond_1
    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    :cond_2
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

    :goto_1
    const/4 v13, -0x1

    if-ge v13, v2, :cond_8

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

    if-eqz v4, :cond_7

    if-eqz v9, :cond_4

    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v13}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    if-eqz v11, :cond_6

    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v5, :cond_6

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_6
    invoke-static {v8}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/permission/access/MutableSystemState;->permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    iget-object v3, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v15

    iget-object v0, v15, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v12

    :goto_5
    if-ge v13, v0, :cond_12

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

    if-ne v2, v5, :cond_a

    iget-object v2, v3, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->findPermissionTree(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_6

    :cond_9
    new-instance v5, Landroid/content/pm/PermissionInfo;

    iget-object v6, v3, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-direct {v5, v6}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    iget-object v6, v2, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iget v2, v2, Lcom/android/server/permission/access/permission/Permission;->appId:I

    invoke-static {v3, v5, v12, v2}, Lcom/android/server/permission/access/permission/Permission;->copy$default(Lcom/android/server/permission/access/permission/Permission;Landroid/content/pm/PermissionInfo;ZI)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v3

    :cond_a
    :goto_6
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

    if-eqz v2, :cond_b

    if-eqz v9, :cond_d

    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v3, :cond_d

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v16

    if-nez v16, :cond_c

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_b
    :goto_8
    move v7, v0

    move-object/from16 v0, p3

    goto/16 :goto_c

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_d
    if-eqz v11, :cond_f

    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v3, :cond_f

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    move-result v16

    if-nez v16, :cond_e

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_8

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_f
    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v3, :cond_11

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

    :goto_b
    if-ge v14, v13, :cond_10

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

    goto :goto_b

    :cond_10
    move v7, v0

    move-object/from16 v17, v2

    move/from16 v19, v3

    move/from16 v18, v5

    add-int/lit8 v5, v18, 0x1

    move-object/from16 v1, p1

    const/4 v12, 0x1

    const/4 v13, -0x1

    move-object/from16 v7, p2

    goto :goto_a

    :cond_11
    move v7, v0

    invoke-static {v8}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)V

    :goto_c
    add-int/lit8 v1, v7, -0x1

    move-object/from16 v7, p2

    move v0, v1

    const/4 v12, 0x1

    const/4 v13, -0x1

    move-object/from16 v1, p1

    goto/16 :goto_5

    :cond_12
    :goto_d
    return-void
.end method

.method public final updatePermissionExemptFlags(Lcom/android/server/permission/access/MutateStateScope;IILcom/android/server/permission/access/permission/Permission;II)V
    .locals 16

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

    if-ne v5, v3, :cond_0

    goto/16 :goto_8

    :cond_0
    const v7, 0x38000

    invoke-static {v3, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v7

    iget-object v8, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v8, v8, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v9, 0x4

    invoke-static {v8, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    const/4 v11, 0x1

    if-eqz v8, :cond_7

    if-nez v7, :cond_7

    const/high16 v8, 0x40000

    or-int/2addr v3, v8

    invoke-static {v5, v11}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_1
    :goto_0
    move v8, v11

    goto :goto_2

    :cond_2
    const/4 v12, 0x2

    invoke-static {v5, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v12

    if-eqz v12, :cond_3

    :goto_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    invoke-static {v5, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_0

    :cond_4
    const/16 v9, 0x400

    invoke-static {v5, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-nez v9, :cond_1

    const/16 v9, 0x800

    invoke-static {v5, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v5, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_1

    :cond_6
    const/16 v8, 0x10

    invoke-static {v5, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v8

    :goto_2
    if-eqz v8, :cond_8

    and-int/lit16 v3, v3, -0x81

    goto :goto_3

    :cond_7
    const v8, -0x40001

    and-int/2addr v3, v8

    :cond_8
    :goto_3
    iget-object v0, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 v8, 0x8

    invoke-static {v0, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez v7, :cond_e

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

    :goto_4
    if-ge v12, v9, :cond_d

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

    if-nez v14, :cond_9

    const-string/jumbo v15, "packageState does not exist: "

    const-string v10, "AppIdPermissionPolicy"

    invoke-static {v15, v13, v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v14, :cond_c

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    if-eqz v10, :cond_c

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const-string/jumbo v10, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v4, v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string/jumbo v10, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v4, v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    :cond_a
    const/16 v10, 0x1d

    if-lt v7, v10, :cond_b

    move v10, v11

    goto :goto_5

    :cond_b
    const/4 v10, 0x0

    :goto_5
    if-eqz v10, :cond_c

    goto :goto_6

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_d
    const/high16 v0, 0x80000

    or-int/2addr v0, v3

    goto :goto_7

    :cond_e
    :goto_6
    const v0, -0x80001

    and-int/2addr v0, v3

    :goto_7
    if-ne v5, v0, :cond_f

    :goto_8
    return-void

    :cond_f
    const/4 v5, -0x1

    move v3, v6

    move v6, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    return-void
.end method

.method public final updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z
    .locals 5

    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "Unable to update permission flags for missing user "

    const-string p1, "AppIdPermissionPolicy"

    invoke-static {p3, p0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
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

    if-ne v0, p5, :cond_1

    return v1

    :cond_1
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

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v2}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    invoke-virtual {p1, p2, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->put(ILcom/android/server/permission/access/immutable/Immutable;)V

    :goto_0
    check-cast v2, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, p4, v3, v4}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->putWithDefault(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    :cond_3
    iget-object v2, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    iget-object p0, v2, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_4

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

    goto :goto_1

    :cond_4
    return p6
.end method

.method public final upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .locals 21

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

    if-gt v8, v0, :cond_3

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

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    sget-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LEGACY_RESTRICTED_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    const/high16 v5, 0x20000

    const/high16 v6, 0x20000

    iget-object v0, v9, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

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

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {v9, v1, v7, v3, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    :cond_3
    const/16 v0, 0xa

    const-string v15, ", user: "

    if-gt v8, v0, :cond_4

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

    if-eqz v0, :cond_4

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v11, v0, v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v9, v1, v7, v3, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    :cond_4
    const/16 v0, 0xc

    const-string/jumbo v2, "android.permission.BODY_SENSORS"

    const-string/jumbo v4, "android.permission.BODY_SENSORS_BACKGROUND"

    const/16 v6, 0x21

    const/16 v16, 0x0

    if-gt v8, v0, :cond_c

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

    if-ge v5, v6, :cond_5

    move-object/from16 v18, v2

    goto/16 :goto_4

    :cond_5
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    sget-object v5, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->STORAGE_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    iget-object v6, v5, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    move-object/from16 v18, v2

    move/from16 v2, v16

    :goto_1
    if-ge v2, v6, :cond_9

    invoke-virtual {v5, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v2

    move-object/from16 v2, v19

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    move-object/from16 v19, v5

    goto :goto_3

    :cond_6
    move-object/from16 v19, v5

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v5, v3, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x20

    invoke-static {v2, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->AURAL_VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    iget-object v6, v2, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    move/from16 v5, v16

    :goto_2
    if-ge v5, v6, :cond_9

    invoke-virtual {v2, v5}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v2

    move-object/from16 v2, v19

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-virtual {v9, v1, v7, v3, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v20

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 v2, v20, 0x1

    move-object/from16 v5, v19

    goto :goto_1

    :cond_9
    :goto_4
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_5
    move-object/from16 v20, v12

    move-object/from16 p0, v14

    move-object/from16 v12, v18

    goto :goto_6

    :cond_a
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v2, v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v0

    const v5, 0x38000

    invoke-static {v0, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
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

    if-eqz v0, :cond_d

    invoke-virtual {v9, v1, v7, v3, v14}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    goto :goto_7

    :cond_c
    move-object/from16 v20, v12

    move-object/from16 p0, v14

    move-object v12, v2

    :goto_6
    move-object v14, v4

    :cond_d
    :goto_7
    const/16 v0, 0xe

    if-gt v8, v0, :cond_12

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

    if-ge v4, v5, :cond_e

    goto :goto_a

    :cond_e
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    sget-object v4, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    iget-object v5, v4, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    move/from16 v6, v16

    :goto_8
    if-ge v6, v5, :cond_13

    invoke-virtual {v4, v6}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p0, v4

    move-object/from16 v4, v17

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_10

    move/from16 v17, v5

    :cond_f
    const/16 v5, 0x20

    goto :goto_9

    :cond_10
    move/from16 v17, v5

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v5, v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    move-result v5

    if-eqz v5, :cond_f

    const/16 v5, 0x20

    invoke-static {v4, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string/jumbo v4, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v9, v1, v7, v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    goto :goto_a

    :cond_11
    :goto_9
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    goto :goto_8

    :cond_12
    move-object/from16 v2, p0

    :cond_13
    :goto_a
    const/16 v0, 0x10

    if-gt v8, v0, :cond_19

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

    if-lt v2, v4, :cond_14

    goto :goto_b

    :cond_14
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

    if-eqz v2, :cond_16

    if-eqz v4, :cond_16

    invoke-virtual {v9, v1, v7, v3, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->isRuntimePermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v2

    if-eq v6, v2, :cond_16

    if-eqz v6, :cond_15

    invoke-virtual {v9, v1, v7, v3, v12}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    move/from16 v6, v16

    :cond_15
    if-eqz v2, :cond_16

    invoke-virtual {v9, v1, v7, v3, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    :cond_16
    invoke-virtual {v9, v1, v7, v3, v14}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->isRuntimePermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v2

    if-nez v6, :cond_17

    if-eqz v2, :cond_17

    invoke-virtual {v9, v1, v7, v3, v14}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    move/from16 v2, v16

    :cond_17
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v5, "android.permission.health.READ_HEALTH_DATA_IN_BACKGROUND"

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v4, :cond_19

    if-eqz v0, :cond_19

    invoke-virtual {v9, v1, v7, v3, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->isRuntimePermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    move-result v0

    if-eq v2, v0, :cond_19

    if-eqz v2, :cond_18

    invoke-virtual {v9, v1, v7, v3, v14}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    :cond_18
    if-eqz v0, :cond_19

    invoke-virtual {v9, v1, v7, v3, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->revokeRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)Z

    :cond_19
    :goto_b
    return-void
.end method
