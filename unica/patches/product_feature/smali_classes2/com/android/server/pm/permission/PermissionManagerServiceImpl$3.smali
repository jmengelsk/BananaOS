.class public final Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic val$appId:I

.field public final synthetic val$appOp:I

.field public final synthetic val$checkAppOpsAllowed:Z

.field public final synthetic val$killUid:Z

.field public final synthetic val$pkgName:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IIILjava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iput p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$userId:I

    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$appId:I

    iput p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$appOp:I

    iput-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$pkgName:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$checkAppOpsAllowed:Z

    iput-boolean p7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$killUid:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$userId:I

    iget v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$appId:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iget v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$appOp:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$checkAppOpsAllowed:Z

    if-eqz v3, :cond_1

    if-nez v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$appOp:I

    invoke-virtual {v1, v2, v0, v4}, Landroid/app/AppOpsManager;->setUidMode(III)V

    iget-boolean v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$killUid:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$appId:I

    iget p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$userId:I

    const-string/jumbo v1, "Permission related app op changed"

    invoke-static {v0, p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    :cond_2
    return-void
.end method
