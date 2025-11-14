.class public final Lcom/android/server/policy/PermissionPolicyService$Internal$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/ActivityInterceptorCallback;


# instance fields
.field public final synthetic this$1:Lcom/android/server/policy/PermissionPolicyService$Internal;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService$Internal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1;->this$1:Lcom/android/server/policy/PermissionPolicyService$Internal;

    return-void
.end method


# virtual methods
.method public final onActivityLaunched(Landroid/app/TaskInfo;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V
    .locals 8

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getCheckedOptions()Landroid/app/ActivityOptions;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1;->this$1:Lcom/android/server/policy/PermissionPolicyService$Internal;

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/policy/PermissionPolicyService$Internal;->shouldShowNotificationDialogOrClearFlags(Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->getUserId()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal$1;->this$1:Lcom/android/server/policy/PermissionPolicyService$Internal;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v2

    iget-object v0, v0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/android/server/policy/PermissionPolicyService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v2, p1, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getWindowStyle(IILjava/lang/String;)Lcom/android/server/wm/ActivityRecord$WindowStyle;

    move-result-object p1

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_1

    return-void

    :cond_1
    :goto_0
    iget p1, v1, Landroid/app/TaskInfo;->userId:I

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const-wide/32 v2, 0xb9cec21

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3, v4, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, v0, Lcom/android/server/policy/PermissionPolicyService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, v1, p3}, Lcom/android/server/policy/PermissionPolicyService$Internal$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PermissionPolicyService$Internal$1;Landroid/content/pm/ActivityInfo;Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final onInterceptActivityLaunch(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
