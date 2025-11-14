.class public final Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;
.implements Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;


# instance fields
.field public final gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

.field public isKillRuntimePermissionRevokedUidsSkipped:Z

.field public isPermissionFlagsChanged:Z

.field public final killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

.field public final runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;

.field public final runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

.field public final synthetic this$0:Lcom/android/server/permission/access/permission/PermissionService;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/permission/PermissionService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    new-instance p1, Lcom/android/server/permission/access/immutable/MutableIntMap;

    invoke-direct {p1}, Lcom/android/server/permission/access/immutable/MutableIntMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    new-instance p1, Lcom/android/server/permission/access/immutable/MutableIntSet;

    invoke-direct {p1}, Lcom/android/server/permission/access/immutable/MutableIntSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final getSecureInt(ILjava/lang/String;)Ljava/lang/Integer;
    .registers 4

    :try_start_0
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_10
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    sget-object p1, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Setting "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "PermissionService"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onDevicePermissionFlagsChanged(IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isPermissionFlagsChanged:Z

    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    iget-object v1, p2, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    if-eqz v1, :cond_8c

    iget-object p2, p2, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p2, p5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/permission/access/permission/Permission;

    if-nez p2, :cond_29

    goto :goto_8b

    :cond_29
    invoke-static {p3}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result p3

    invoke-static {p6}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result p6

    iget-object v1, p2, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v1

    if-ne v1, v0, :cond_7c

    if-eqz p3, :cond_55

    if-nez p6, :cond_55

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    sget-object v2, Lcom/android/server/permission/access/permission/PermissionService;->NOTIFICATIONS_PERMISSIONS:Landroid/util/ArraySet;

    invoke-virtual {v2, p5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_51

    iget-object p5, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p5, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p5

    if-eqz p5, :cond_51

    move p5, v0

    goto :goto_52

    :cond_51
    const/4 p5, 0x0

    :goto_52
    invoke-virtual {v1, p1, p5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_55
    iget-object p5, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;

    iget-object v1, p5, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_60

    goto :goto_77

    :cond_60
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object p5, p5, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {p5, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_74

    invoke-virtual {p5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    invoke-virtual {p5, v2, v1}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_77

    :cond_74
    invoke-virtual {p5, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_77
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7c
    iget-object p2, p2, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    array-length p2, p2

    if-nez p2, :cond_82

    goto :goto_8b

    :cond_82
    if-eq p3, p6, :cond_8b

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_8b
    :goto_8b
    return-void

    :cond_8c
    const-string/jumbo p0, "state"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onPermissionFlagsChanged(IIIILjava/lang/String;)V
    .registers 13

    const-string/jumbo v4, "default:0"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->onDevicePermissionFlagsChanged(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final onStateMutated()V
    .registers 14

    iget-boolean v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isPermissionFlagsChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    iput-boolean v1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isPermissionFlagsChanged:Z

    :cond_a
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;

    iget-object v2, v0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v3, v1

    :goto_13
    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v10, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    if-ge v3, v2, :cond_55

    iget-object v6, v0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v7, v0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2b
    :goto_2b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_52

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v10, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    if-eqz v9, :cond_4b

    iget-object v11, v9, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v11

    if-lez v11, :cond_2b

    invoke-virtual {v9, v5, v6, v1, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2b

    :cond_4b
    const-string/jumbo p0, "onPermissionsChangeListeners"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_55
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-boolean v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isKillRuntimePermissionRevokedUidsSkipped:Z

    const-string/jumbo v2, "handler"

    if-nez v0, :cond_c7

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9e

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    const-string v3, "<this>"

    invoke-static {v3, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-interface {v3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v7, v1

    :goto_7f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_95

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/2addr v7, v5

    if-le v7, v5, :cond_91

    const-string v9, ", "

    invoke-interface {v3, v9}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_91
    invoke-static {v3, v8}, Lcom/android/server/permission/jarjar/kotlin/text/StringsKt__AppendableKt;->appendElement(Ljava/lang/Appendable;Ljava/lang/Object;)V

    goto :goto_7f

    :cond_95
    invoke-interface {v3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9c
    move-object v11, v0

    goto :goto_a2

    :cond_9e
    const-string/jumbo v0, "permissions revoked"

    goto :goto_9c

    :goto_a2
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move v5, v1

    :goto_a9
    if-ge v5, v3, :cond_c7

    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    iget-object v12, v10, Lcom/android/server/permission/access/permission/PermissionService;->handler:Landroid/os/Handler;

    if-eqz v12, :cond_c3

    new-instance v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;

    move-object v8, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;-><init>(ZLcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;ILcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_a9

    :cond_c3
    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_c7
    move-object v8, p0

    iget-object p0, v8, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object p0, v8, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

    iget-object v0, p0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    move v3, v1

    :goto_d6
    if-ge v3, v0, :cond_f1

    iget-object v5, p0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    iget-object v6, v10, Lcom/android/server/permission/access/permission/PermissionService;->handler:Landroid/os/Handler;

    if-eqz v6, :cond_ed

    new-instance v7, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3$1;

    invoke-direct {v7, v10, v5}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3$1;-><init>(Lcom/android/server/permission/access/permission/PermissionService;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_d6

    :cond_ed
    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_f1
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->clear()V

    iput-boolean v1, v8, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isKillRuntimePermissionRevokedUidsSkipped:Z

    iget-object p0, v8, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method
