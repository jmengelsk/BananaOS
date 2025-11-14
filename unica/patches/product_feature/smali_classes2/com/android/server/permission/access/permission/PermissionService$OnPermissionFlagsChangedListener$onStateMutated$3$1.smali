.class public final Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $uid:I

.field public final synthetic this$0:Lcom/android/server/permission/access/permission/PermissionService;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/permission/PermissionService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3$1;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    iput p2, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3$1;->$uid:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3$1;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    iget p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3$1;->$uid:I

    const-string/jumbo v1, "permission grant or revoke changed gids"

    invoke-static {v0, p0, v1}, Lcom/android/server/permission/access/permission/PermissionService;->access$killUid(Lcom/android/server/permission/access/permission/PermissionService;ILjava/lang/String;)V

    return-void
.end method
