.class public interface abstract Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public abstract checkComponentPermission(ILjava/lang/String;)I
.end method

.method public abstract getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;
.end method

.method public abstract getAppOpsManager()Landroid/app/AppOpsManager;
.end method

.method public abstract getCallingPid()I
.end method

.method public abstract getCallingUid()I
.end method

.method public abstract getCallingUserId()I
.end method

.method public abstract getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;
.end method

.method public abstract getIPackageManager()Landroid/content/pm/IPackageManager;
.end method

.method public abstract getPackageManager()Landroid/content/pm/PackageManager;
.end method

.method public abstract getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
.end method

.method public abstract getUserManager()Landroid/os/UserManager;
.end method

.method public abstract killUid(I)V
.end method

.method public abstract sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
.end method

.method public abstract withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;
.end method

.method public abstract withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
.end method
