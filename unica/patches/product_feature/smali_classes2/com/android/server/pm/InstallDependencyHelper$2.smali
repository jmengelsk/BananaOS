.class public final Lcom/android/server/pm/InstallDependencyHelper$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/InstallDependencyHelper;

.field public final synthetic val$componentName:Landroid/content/ComponentName;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstallDependencyHelper;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    iput-object p2, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->val$componentName:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->val$userId:I

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    iget-object v0, v0, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    iget-object v1, v1, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->val$userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    iget-object v1, v1, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->val$userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/ServiceConnector;

    invoke-interface {v1}, Lcom/android/internal/infra/ServiceConnector;->unbind()V

    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    iget-object v1, v1, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    iget p0, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->val$userId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onBinderDied()V
    .locals 2

    sget v0, Lcom/android/server/pm/InstallDependencyHelper;->$r8$clinit:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DependencyInstallerService "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has died"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallDependencyHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pm/InstallDependencyHelper$2;->destroy()V

    return-void
.end method

.method public final onDisconnected(Landroid/os/IInterface;)V
    .locals 1

    check-cast p1, Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;

    sget p1, Lcom/android/server/pm/InstallDependencyHelper;->$r8$clinit:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "DependencyInstallerService "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is disconnected"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InstallDependencyHelper"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pm/InstallDependencyHelper$2;->destroy()V

    return-void
.end method
