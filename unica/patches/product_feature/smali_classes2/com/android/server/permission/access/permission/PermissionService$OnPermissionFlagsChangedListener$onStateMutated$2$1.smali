.class public final Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $areOnlyNotificationsPermissionsRevoked:Z

.field public final synthetic $reason:Ljava/lang/String;

.field public final synthetic $uid:I

.field public final synthetic this$0:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

.field public final synthetic this$1:Lcom/android/server/permission/access/permission/PermissionService;


# direct methods
.method public constructor <init>(ZLcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;ILcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$areOnlyNotificationsPermissionsRevoked:Z

    iput-object p2, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->this$0:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    iput p3, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$uid:I

    iput-object p4, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->this$1:Lcom/android/server/permission/access/permission/PermissionService;

    iput-object p5, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$reason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$areOnlyNotificationsPermissionsRevoked:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->this$0:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    iget v1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$uid:I

    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    const-string/jumbo v3, "android.permission.BACKUP"

    const-string/jumbo v4, "default:0"

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/permission/access/permission/PermissionService;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v2, v2, Lcom/android/server/permission/access/permission/PermissionService;->mSystemReady:Z

    const-string/jumbo v3, "PermissionService"

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    :try_start_0
    const-string/jumbo v2, "user_setup_complete"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->getSecureInt(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const-string/jumbo v2, "user_setup_personalization_state"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->getSecureInt(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    const-string v1, "Can not find SettingsProvider. Catch NPE to prvent reset."

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->this$1:Lcom/android/server/permission/access/permission/PermissionService;

    iget-boolean v0, v0, Lcom/android/server/permission/access/permission/PermissionService;->mSystemReady:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    iget v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$uid:I

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$reason:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Do not kill uid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " while App BNR is running, before System Ready. kill reason : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->this$1:Lcom/android/server/permission/access/permission/PermissionService;

    iget v1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$uid:I

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$reason:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$killUid(Lcom/android/server/permission/access/permission/PermissionService;ILjava/lang/String;)V

    return-void
.end method
