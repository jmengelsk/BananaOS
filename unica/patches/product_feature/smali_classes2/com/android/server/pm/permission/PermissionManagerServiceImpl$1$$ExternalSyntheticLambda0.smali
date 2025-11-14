.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$4:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "default:0"

    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    const-string/jumbo v5, "android.permission.BACKUP"

    invoke-virtual {v4, v2, v5, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-string/jumbo v4, "user_setup_complete"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->getSecureInt(ILjava/lang/String;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda2;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "user_setup_personalization_state"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->getSecureInt(ILjava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda2;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-nez v3, :cond_3

    const-string/jumbo v1, "permissions revoked"

    invoke-static {v0, p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    return-void

    :cond_3
    invoke-static {v0, p0, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    return-void
.end method
