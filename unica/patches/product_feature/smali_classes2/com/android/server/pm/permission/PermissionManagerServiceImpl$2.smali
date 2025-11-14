.class public final Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;
.super Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic val$asyncUpdatedUsers:Landroid/util/ArraySet;

.field public final synthetic val$revokedPermissions:Landroid/util/ArraySet;

.field public final synthetic val$syncUpdatedUsers:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;[Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$revokedPermissions:Landroid/util/ArraySet;

    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$syncUpdatedUsers:Landroid/util/ArraySet;

    iput-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$asyncUpdatedUsers:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final onGidsChanged(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->onGidsChanged(II)V

    return-void
.end method

.method public final onInstallPermissionGranted()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->onInstallPermissionGranted()V

    return-void
.end method

.method public final onInstallPermissionUpdated()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->onInstallPermissionUpdated()V

    return-void
.end method

.method public final onPermissionGranted(II)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->onPermissionGranted(II)V

    return-void
.end method

.method public final onPermissionRevoked(Ljava/lang/String;IZILjava/lang/String;)V
    .registers 6

    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$revokedPermissions:Landroid/util/ArraySet;

    invoke-static {p2, p4}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$syncUpdatedUsers:Landroid/util/ArraySet;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPermissionUpdated([IZI)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    array-length p3, p1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p3, :cond_3b

    aget v1, p1, v0

    if-eqz p2, :cond_22

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$syncUpdatedUsers:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$asyncUpdatedUsers:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_22
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$syncUpdatedUsers:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_38

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$asyncUpdatedUsers:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_38
    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_3b
    return-void
.end method
