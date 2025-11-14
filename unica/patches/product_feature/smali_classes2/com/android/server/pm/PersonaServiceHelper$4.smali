.class public final Lcom/android/server/pm/PersonaServiceHelper$4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$handler:Landroid/os/Handler;

.field public final synthetic val$observer:Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$pms:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic val$settings:Lcom/android/server/pm/Settings;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/Settings;Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;Landroid/content/Context;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$pms:Lcom/android/server/pm/PackageManagerService;

    iput p4, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$userId:I

    iput-object p5, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$settings:Lcom/android/server/pm/Settings;

    iput-object p6, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$observer:Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;

    iput-object p7, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    const-string/jumbo v0, "PersonaServiceHelper"

    const-string/jumbo v1, "returnCode: "

    const-string/jumbo v2, "return delete result to caller: "

    iget-object v3, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$handler:Landroid/os/Handler;

    invoke-virtual {v3, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v3, 0x1

    :try_start_f
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v4

    if-eqz v4, :cond_34

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iget-object v6, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationUninstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string/jumbo v4, "This app uninstallation is not allowed"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    goto :goto_7e

    :catch_32
    move v4, v3

    goto :goto_7e

    :cond_34
    iget-object v4, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$pms:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$userId:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "deletePackageXForKnox: pkg{"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "}, user{"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "}, flags{4}"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const-wide/16 v8, -0x1

    const/4 v7, 0x4

    const/4 v11, 0x1

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(IIJLjava/lang/String;Z)I

    move-result v4
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_68} :catch_32

    :try_start_68
    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    const-string/jumbo v6, "jp.co.mmbi.app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7e

    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$settings:Lcom/android/server/pm/Settings;

    const-string/jumbo v6, "android.uid.mmbi"

    const/16 v7, 0x2392

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v3, v8, v6}, Lcom/android/server/pm/Settings;->addSharedUserLPw(IIILjava/lang/String;)Lcom/android/server/pm/SharedUserSetting;
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_7e} :catch_7e

    :catch_7e
    :cond_7e
    :goto_7e
    if-gez v4, :cond_8d

    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$userId:I

    const/16 v7, 0xce

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v7, v5}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    :cond_8d
    :try_start_8d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$observer:Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$observer:Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;

    iget-object v2, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->packageDeleted(Ljava/lang/String;I)V
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_b8} :catch_b9

    goto :goto_bf

    :catch_b9
    const-string/jumbo v1, "Observer no longer exists."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_bf
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$context:Landroid/content/Context;

    invoke-static {p0, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    return-void
.end method
