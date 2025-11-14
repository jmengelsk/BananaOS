.class public final Lcom/android/server/permission/access/permission/DevicePermissionPolicy;
.super Lcom/android/server/permission/access/SchemePolicy;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public volatile listeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

.field public final listenersLock:Ljava/lang/Object;

.field public final persistence:Lcom/android/server/permission/access/permission/DevicePermissionPersistence;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/permission/access/permission/DevicePermissionPersistence;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/DevicePermissionPersistence;

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listenersLock:Ljava/lang/Object;

    return-void
.end method

.method public static getPermissionFlags(IILcom/android/server/permission/access/GetStateScope;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    iget-object p2, p2, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p1

    check-cast p1, Lcom/android/server/permission/access/MutableUserState;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/permission/access/MutableUserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    if-eqz p0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p4, p1}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static onDeviceIdRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/MutableUserState;

    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableUserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_1
    const/4 v7, -0x1

    if-ge v7, v5, :cond_1

    iget-object v7, v4, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v8

    check-cast v8, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    invoke-virtual {p0, v3, v6}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v8, Lcom/android/server/permission/access/MutableUserState;->appIdDevicePermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v8}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v8

    check-cast v8, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-virtual {v8, v7}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v7, p1}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->remove$1(Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static trimDevicePermissionStates(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Set;)V
    .locals 12

    iget-object p0, p0, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    iget-object v3, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/MutableUserState;

    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableUserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_1
    const/4 v7, -0x1

    if-ge v7, v5, :cond_3

    iget-object v8, v4, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    invoke-virtual {p0, v3, v6}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v9, v9, Lcom/android/server/permission/access/MutableUserState;->appIdDevicePermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v9}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-virtual {v9, v8}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v8

    check-cast v8, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    if-nez v8, :cond_0

    goto :goto_3

    :cond_0
    iget-object v9, v8, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    sub-int/2addr v9, v6

    :goto_2
    if-ge v7, v9, :cond_2

    iget-object v10, v8, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v11

    check-cast v11, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v10, Ljava/lang/String;

    invoke-interface {p1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v8, v10}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->remove$1(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public final getObjectScheme()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "device-permission"

    return-object p0
.end method

.method public final getSubjectScheme()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "uid"

    return-object p0
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

    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableUserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;I)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/permission/access/MutableUserState;->appIdDevicePermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

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
    .locals 0

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->trimPermissionStates$1(Lcom/android/server/permission/access/MutateStateScope;I)V

    return-void
.end method

.method public final onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .locals 0

    iget-object p2, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->trimPermissionStates$1(Lcom/android/server/permission/access/MutateStateScope;I)V

    :cond_0
    return-void
.end method

.method public final onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    return-void
.end method

.method public final onStateMutated()V
    .locals 3

    iget-object p0, p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    iget-object v0, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;

    invoke-interface {v2}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;->onStateMutated()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/List;Z)V
    .locals 3

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->trimPermissionStates$1(Lcom/android/server/permission/access/MutateStateScope;I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 19

    move-object/from16 v0, p1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "app-id-device-permissions"

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v1, 0x0

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/android/server/permission/access/MutableUserState;->appIdDevicePermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

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

    const-string v9, " when parsing permission state"

    const-string v10, "DevicePermissionPersistence"

    if-eq v4, v8, :cond_2a

    if-eq v4, v6, :cond_4

    if-ne v4, v7, :cond_3

    goto/16 :goto_14

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

    const-string v12, "Ignoring unknown tag "

    const-string/jumbo v13, "Unexpected post-block depth "

    const-string v14, ", expected "

    if-eqz v11, :cond_21

    const/4 v11, 0x0

    const-string/jumbo v15, "id"

    invoke-virtual {v0, v11, v15}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    new-instance v11, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    invoke-direct {v11}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;-><init>()V

    invoke-static {v3, v7, v11}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v7

    if-eqz v7, :cond_6

    if-ne v7, v6, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v7, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v7

    if-eq v7, v8, :cond_7

    if-eq v7, v6, :cond_7

    const/4 v6, 0x3

    if-eq v7, v6, :cond_8

    const/4 v6, 0x2

    goto :goto_2

    :cond_7
    const/4 v6, 0x3

    :cond_8
    :goto_3
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v8, :cond_22

    const/4 v8, 0x2

    if-eq v7, v8, :cond_a

    if-ne v7, v6, :cond_9

    goto/16 :goto_f

    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v7, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "device"

    invoke-static {v7, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v15}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v8}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    invoke-virtual {v11, v7, v8}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->put(Ljava/lang/Object;Lcom/android/server/permission/access/immutable/MutableIndexedMap;)V

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v7

    const/4 v2, 0x2

    if-eqz v7, :cond_c

    if-ne v7, v2, :cond_b

    goto :goto_4

    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v7, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_4
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v7

    move-object/from16 v17, v11

    const/4 v11, 0x1

    if-eq v7, v11, :cond_d

    if-eq v7, v2, :cond_d

    const/4 v2, 0x3

    if-eq v7, v2, :cond_e

    move-object/from16 v11, v17

    const/4 v2, 0x2

    goto :goto_4

    :cond_d
    const/4 v2, 0x3

    :cond_e
    :goto_5
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v11, :cond_f

    const/4 v11, 0x2

    if-eq v7, v11, :cond_11

    if-ne v7, v2, :cond_10

    :cond_f
    move-object/from16 v18, v15

    goto/16 :goto_b

    :cond_10
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v7, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v11, "permission"

    invoke-static {v7, v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string/jumbo v7, "name"

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v7}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v11, "intern(...)"

    invoke-static {v11, v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v11, "flags"

    move-object/from16 v18, v15

    const/4 v15, 0x0

    invoke-virtual {v0, v15, v11}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v7, v11}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_12
    move-object/from16 v18, v15

    const/4 v15, 0x0

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7, v9, v10}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v7

    if-ne v7, v2, :cond_19

    :goto_7
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v7

    const/4 v11, 0x2

    if-eq v7, v11, :cond_18

    const/4 v15, 0x3

    if-ne v7, v15, :cond_17

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_15

    :goto_8
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v7

    const/4 v15, 0x1

    if-eq v7, v15, :cond_13

    if-eq v7, v11, :cond_13

    const/4 v11, 0x3

    if-eq v7, v11, :cond_14

    move v15, v11

    const/4 v11, 0x2

    goto :goto_8

    :cond_13
    const/4 v11, 0x3

    :cond_14
    const/4 v15, 0x0

    goto :goto_7

    :cond_15
    move v11, v15

    :goto_9
    const/4 v15, 0x1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v2

    if-eq v2, v15, :cond_16

    const/4 v7, 0x2

    if-eq v2, v7, :cond_16

    if-eq v2, v11, :cond_16

    goto :goto_9

    :cond_16
    move-object/from16 v15, v18

    const/4 v2, 0x3

    const/4 v11, 0x1

    goto/16 :goto_5

    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v7, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_a
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v7

    const/4 v15, 0x1

    if-eq v7, v15, :cond_14

    const/4 v11, 0x2

    if-eq v7, v11, :cond_14

    const/4 v15, 0x3

    if-eq v7, v15, :cond_14

    goto :goto_a

    :cond_19
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v7, v2, v13, v14}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    move-object/from16 v17, v11

    move-object/from16 v18, v15

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2, v9, v10}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v2

    if-ne v2, v6, :cond_20

    :cond_1b
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v2

    const/4 v11, 0x2

    if-eq v2, v11, :cond_1f

    const/4 v15, 0x3

    if-ne v2, v15, :cond_1e

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v6, :cond_1c

    :goto_c
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_1b

    if-eq v2, v11, :cond_1b

    if-eq v2, v15, :cond_1b

    goto :goto_c

    :cond_1c
    :goto_d
    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v2

    if-eq v2, v7, :cond_1d

    if-eq v2, v11, :cond_1d

    if-eq v2, v15, :cond_1d

    const/4 v11, 0x2

    goto :goto_d

    :cond_1d
    move-object/from16 v2, p2

    move-object/from16 v11, v17

    move-object/from16 v15, v18

    const/4 v6, 0x3

    const/4 v8, 0x1

    goto/16 :goto_3

    :cond_1e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v2, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_e
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v2

    const/4 v15, 0x1

    if-eq v2, v15, :cond_1b

    const/4 v11, 0x2

    if-eq v2, v11, :cond_1b

    const/4 v15, 0x3

    if-eq v2, v15, :cond_1b

    goto :goto_e

    :cond_20
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v2, v6, v13, v14}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2, v9, v10}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    :goto_f
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v2

    if-ne v2, v4, :cond_29

    :cond_23
    :goto_10
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v2

    const/4 v11, 0x2

    if-eq v2, v11, :cond_27

    const/4 v15, 0x3

    if-ne v2, v15, :cond_26

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v4, :cond_24

    :goto_11
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_23

    if-eq v2, v11, :cond_23

    if-eq v2, v15, :cond_23

    goto :goto_11

    :cond_24
    :goto_12
    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v2

    if-eq v2, v7, :cond_25

    if-eq v2, v11, :cond_25

    if-eq v2, v15, :cond_25

    const/4 v11, 0x2

    goto :goto_12

    :cond_25
    move-object/from16 v2, p2

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_26
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v2, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    :goto_13
    invoke-virtual {v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v2

    const/4 v15, 0x1

    const/4 v11, 0x2

    if-eq v2, v15, :cond_28

    const/4 v15, 0x3

    if-eq v2, v11, :cond_23

    if-eq v2, v15, :cond_23

    goto :goto_13

    :cond_28
    const/4 v15, 0x3

    goto :goto_10

    :cond_29
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-static {v2, v4, v13, v14}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    :goto_14
    iget-object v0, v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_15
    const/4 v2, -0x1

    if-ge v2, v0, :cond_2c

    iget-object v2, v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v3, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-nez v4, :cond_2b

    const-string v4, "Dropping unknown app ID "

    invoke-static {v2, v4, v9, v10}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->removeAt$1(I)V

    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Lcom/android/server/permission/access/MutableUserState;->requestWriteMode(I)V

    goto :goto_16

    :cond_2b
    const/4 v15, 0x1

    :goto_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    :cond_2c
    return-void
.end method

.method public final resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .locals 12

    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/MutableUserState;

    if-nez v1, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableUserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    if-nez v1, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedListSet;

    iget-object v5, v3, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_6

    iget-object v8, v3, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v8, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    move-object v3, p0

    move-object v7, p1

    move v5, p3

    goto :goto_3

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    iget-object v3, v1, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v10

    move v11, v6

    :goto_2
    if-ge v11, v10, :cond_4

    iget-object v3, v1, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v11}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedMap;

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v7, p1

    move v5, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->setPermissionFlags(IIILcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :goto_3
    move-object p0, v3

    move p3, v5

    move-object p1, v7

    goto/16 :goto_0

    :cond_7
    :goto_4
    return-void
.end method

.method public final serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
    .locals 17

    move-object/from16 v0, p1

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v1

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/android/server/permission/access/MutableUserState;

    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableUserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "app-id-device-permissions"

    invoke-virtual {v0, v2, v3}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    iget-object v7, v1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v1, v6}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v8

    check-cast v8, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    const-string/jumbo v9, "app-id"

    invoke-virtual {v0, v2, v9}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "id"

    invoke-virtual {v0, v2, v10, v7}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v7, v8, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v7, :cond_2

    iget-object v12, v8, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v11}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v13

    check-cast v13, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v12, Ljava/lang/String;

    const-string/jumbo v14, "device"

    invoke-virtual {v0, v2, v14}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v0, v2, v10, v12}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v12, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v12, :cond_1

    iget-object v5, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v2, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    check-cast v5, Ljava/lang/String;

    move-object/from16 p3, v1

    const-string/jumbo v1, "permission"

    move/from16 v16, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move/from16 p2, v6

    const-string/jumbo v6, "name"

    invoke-virtual {v0, v4, v6, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/high16 v5, 0x200000

    invoke-static {v2, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/lit8 v2, v2, -0x11

    :cond_0
    const-string/jumbo v5, "flags"

    invoke-virtual {v0, v4, v5, v2}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v0, v4, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v15, v15, 0x1

    move/from16 v6, p2

    move-object/from16 v1, p3

    move-object v2, v4

    move/from16 v4, v16

    goto :goto_2

    :cond_1
    move-object/from16 p3, v1

    move/from16 v16, v4

    move/from16 p2, v6

    move-object v4, v2

    invoke-virtual {v0, v4, v14}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v11, v11, 0x1

    move/from16 v6, p2

    move-object/from16 v1, p3

    move-object v2, v4

    move/from16 v4, v16

    goto :goto_1

    :cond_2
    move-object/from16 p3, v1

    move/from16 v16, v4

    move/from16 p2, v6

    move-object v4, v2

    invoke-virtual {v0, v4, v9}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, p2, 0x1

    move-object/from16 v1, p3

    move-object v2, v4

    move/from16 v4, v16

    goto/16 :goto_0

    :cond_3
    move-object v4, v2

    invoke-virtual {v0, v4, v3}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final setPermissionFlags(IIILcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p4, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "Unable to update permission flags for missing user "

    const-string p1, "DevicePermissionPolicy"

    invoke-static {p2, p0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p4, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/server/permission/access/MutableUserState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p5}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedMap;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, p6, v3}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne v0, p3, :cond_2

    return v1

    :cond_2
    iget-object p4, p4, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    const/4 v3, 0x1

    invoke-virtual {p4, p2, v3}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p4

    invoke-static {p4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p4, p4, Lcom/android/server/permission/access/MutableUserState;->appIdDevicePermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p4}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p4

    check-cast p4, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-virtual {p4, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    invoke-direct {v4}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;-><init>()V

    invoke-virtual {p4, p1, v4}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->put(ILcom/android/server/permission/access/immutable/Immutable;)V

    :goto_1
    check-cast v4, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    iget-object v5, v4, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, p5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/immutable/MutableReference;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    new-instance v2, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v2}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    invoke-virtual {v4, p5, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->put(Ljava/lang/Object;Lcom/android/server/permission/access/immutable/MutableIndexedMap;)V

    :goto_2
    check-cast v2, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, p6, v5, v6}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->putWithDefault(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v4, p5}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->remove$1(Ljava/lang/Object;)V

    iget-object v2, v4, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p4, p1}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    :cond_6
    iget-object v2, p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->listeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    iget-object p0, v2, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_3
    if-ge v1, v4, :cond_7

    iget-object p0, v2, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;

    move-object p4, p5

    move-object p5, p6

    move p6, p3

    move p3, v0

    invoke-interface/range {p0 .. p6}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;->onDevicePermissionFlagsChanged(IIILjava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    move p3, p6

    move-object p6, p5

    move-object p5, p4

    goto :goto_3

    :cond_7
    return v3
.end method

.method public final trimPermissionStates$1(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 16

    move/from16 v1, p2

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v4, p1

    iget-object v0, v4, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/android/server/permission/access/immutable/IndexedListSet;

    iget-object v3, v2, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_1

    iget-object v8, v2, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v8, Lcom/android/server/pm/pkg/PackageState;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v8

    iget-object v0, v8, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v9

    move v10, v5

    :goto_2
    if-ge v10, v9, :cond_5

    iget-object v0, v8, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v8, v10}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/MutableUserState;

    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    if-eqz v11, :cond_4

    iget-object v0, v11, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v12, v0

    :goto_3
    const/4 v13, -0x1

    if-ge v13, v12, :cond_4

    iget-object v0, v11, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v12}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/android/server/permission/access/immutable/IndexedMap;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v0, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v15, v0

    :goto_4
    if-ge v13, v15, :cond_3

    iget-object v0, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->setPermissionFlags(IIILcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v4, p1

    move/from16 v1, p2

    goto :goto_4

    :cond_3
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v4, p1

    move/from16 v1, p2

    goto :goto_3

    :cond_4
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, p1

    move/from16 v1, p2

    goto :goto_2

    :cond_5
    return-void
.end method
