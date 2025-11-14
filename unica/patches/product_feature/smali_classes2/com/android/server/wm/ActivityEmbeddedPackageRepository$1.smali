.class public final Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityEmbeddedPackageRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object p2, p2, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string/jumbo v4, "android.window.PROPERTY_ACTIVITY_EMBEDDING_ALLOW_SYSTEM_OVERRIDE"

    invoke-virtual {p2, v4, v2}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_3

    move p2, v1

    goto :goto_0

    :catch_0
    :cond_3
    move p2, v3

    :goto_0
    if-eqz p2, :cond_5

    const-string/jumbo p2, "android.intent.action.PACKAGE_ADDED"

    if-eq v0, p2, :cond_4

    const-string/jumbo p2, "android.intent.action.PACKAGE_REPLACED"

    if-ne v0, p2, :cond_7

    :cond_4
    iget-object p2, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    iget-object p2, p2, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p2, v1, p1, v2, v3}, Lcom/android/server/wm/MultiTaskingController;->updateEmbedActivityPackageEnabled(IILjava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->add(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string/jumbo p2, "android.intent.action.PACKAGE_REMOVED"

    if-ne v0, p2, :cond_7

    iget-object p2, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    monitor-enter p2

    :try_start_1
    iget-object v0, p2, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_6

    monitor-exit p2

    return-void

    :cond_6
    :try_start_2
    iget-object v0, p2, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p2

    iget-object p0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    iget-object p0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, v3, p1, v2, v1}, Lcom/android/server/wm/MultiTaskingController;->updateEmbedActivityPackageEnabled(IILjava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_7
    :goto_1
    return-void
.end method
