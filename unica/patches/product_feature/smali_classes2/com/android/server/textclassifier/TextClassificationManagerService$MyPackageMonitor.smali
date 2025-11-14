.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$MyPackageMonitor;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyPackageInstallStatusChange(Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$MyPackageMonitor;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iget-object v1, v1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$MyPackageMonitor;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->-$$Nest$mgetServiceStateLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;Ljava/lang/String;)Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    move-result-object p0

    if-eqz p0, :cond_0

    iput-boolean p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mInstalled:Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$MyPackageMonitor;->notifyPackageInstallStatusChange(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$MyPackageMonitor;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iget-object v1, v1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$MyPackageMonitor;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->-$$Nest$mgetServiceStateLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;Ljava/lang/String;)Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->isServiceEnabledForUser()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mEnabled:Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$MyPackageMonitor;->notifyPackageInstallStatusChange(Ljava/lang/String;Z)V

    return-void
.end method
