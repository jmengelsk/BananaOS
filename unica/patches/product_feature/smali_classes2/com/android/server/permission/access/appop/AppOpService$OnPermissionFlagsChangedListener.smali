.class public final Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;
.implements Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;


# instance fields
.field public final pendingChanges:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/permission/access/appop/AppOpService;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/appop/AppOpService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final addPendingChangedModeIfNeeded(IILjava/lang/String;IIIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p5, p6}, Lcom/android/server/permission/access/appop/AppOpService;->evaluateModeFromPermissionFlags(II)I

    move-result p5

    invoke-static {p7, p8}, Lcom/android/server/permission/access/appop/AppOpService;->evaluateModeFromPermissionFlags(II)I

    move-result p6

    if-eq p5, p6, :cond_0

    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    new-instance p2, Lcom/android/server/permission/jarjar/kotlin/Triple;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p2, p1, p3, p4}, Lcom/android/server/permission/jarjar/kotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onDevicePermissionFlagsChanged(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 15

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v9, p5

    iget-object v10, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    iget-object v0, v10, Lcom/android/server/permission/access/appop/AppOpService;->backgroundToForegroundPermissionNames:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/util/ArraySet;

    const-string/jumbo v12, "state"

    const/4 v13, 0x0

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v9

    const/4 v0, 0x0

    move v14, v0

    :goto_0
    if-ge v14, v9, :cond_5

    invoke-virtual {v11, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, v10, Lcom/android/server/permission/access/appop/AppOpService;->runtimePermissionNameToAppOp:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v3, v10, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v5, v10, Lcom/android/server/permission/access/appop/AppOpService;->permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1, v2, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v5

    move v7, v5

    move-object v0, p0

    move/from16 v6, p3

    move-object/from16 v3, p4

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->addPendingChangedModeIfNeeded(IILjava/lang/String;IIIII)V

    goto :goto_1

    :cond_0
    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v13

    :cond_1
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v10, Lcom/android/server/permission/access/appop/AppOpService;->foregroundToBackgroundPermissionName:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v3, v10, Lcom/android/server/permission/access/appop/AppOpService;->runtimePermissionNameToAppOp:Landroid/util/ArrayMap;

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v3, v10, Lcom/android/server/permission/access/appop/AppOpService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v5, v10, Lcom/android/server/permission/access/appop/AppOpService;->permissionPolicy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1, v2, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    move-result v6

    move v8, v6

    move-object v0, p0

    move/from16 v5, p3

    move-object/from16 v3, p4

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->addPendingChangedModeIfNeeded(IILjava/lang/String;IIIII)V

    sget-object v13, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    goto :goto_2

    :cond_3
    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v13

    :cond_4
    :goto_2
    if-nez v13, :cond_5

    iget-object v0, v10, Lcom/android/server/permission/access/appop/AppOpService;->runtimePermissionNameToAppOp:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/16 v6, 0x10

    const/16 v8, 0x10

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v5, p3

    move-object/from16 v3, p4

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->addPendingChangedModeIfNeeded(IILjava/lang/String;IIIII)V

    :cond_5
    return-void
.end method

.method public final onPermissionFlagsChanged(IIIILjava/lang/String;)V
    .locals 7

    const-string/jumbo v4, "default:0"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->onDevicePermissionFlagsChanged(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final onStateMutated()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    iget-object v0, v0, Lcom/android/server/permission/access/appop/AppOpService;->listeners:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    check-cast v5, Lcom/android/server/permission/jarjar/kotlin/Triple;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v6

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_0

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$3;

    invoke-virtual {v5}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {v5}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/permission/jarjar/kotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-virtual {v8, v9, v11, v10}, Lcom/android/server/appop/AppOpsService$3;->onUidModeChanged(IILjava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnPermissionFlagsChangedListener;->pendingChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method
