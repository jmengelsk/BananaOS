.class public final synthetic Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PermissionPolicyService$Internal$1;

.field public final synthetic f$1:Landroid/content/pm/ActivityInfo;

.field public final synthetic f$2:Landroid/app/TaskInfo;

.field public final synthetic f$3:Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PermissionPolicyService$Internal$1;Landroid/content/pm/ActivityInfo;Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PermissionPolicyService$Internal$1;

    iput-object p2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/ActivityInfo;

    iput-object p3, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;->f$2:Landroid/app/TaskInfo;

    iput-object p4, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PermissionPolicyService$Internal$1;

    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;->f$2:Landroid/app/TaskInfo;

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v3, v2, Landroid/app/TaskInfo;->userId:I

    iget v2, v2, Landroid/app/TaskInfo;->taskId:I

    iget-object v0, v0, Lcom/android/server/policy/PermissionPolicyService$Internal$1;->this$1:Lcom/android/server/policy/PermissionPolicyService$Internal;

    invoke-virtual {v0, v1, v3, v2, p0}, Lcom/android/server/policy/PermissionPolicyService$Internal;->showNotificationPromptIfNeeded(Ljava/lang/String;IILcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V

    return-void
.end method
