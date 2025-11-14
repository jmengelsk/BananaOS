.class public final Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityEmbeddedPackageRepository;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_24

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    :cond_24
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_2e

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    :cond_2e
    if-nez v2, :cond_31

    goto :goto_90

    :cond_31
    iget-object p2, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v3, 0x0

    :try_start_38
    iget-object p2, p2, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string/jumbo v4, "android.window.PROPERTY_ACTIVITY_EMBEDDING_ALLOW_SYSTEM_OVERRIDE"

    invoke-virtual {p2, v4, v2}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object p2
    :try_end_47
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_38 .. :try_end_47} :catch_4b

    if-eqz p2, :cond_4b

    move p2, v1

    goto :goto_4c

    :catch_4b
    :cond_4b
    move p2, v3

    :goto_4c
    if-eqz p2, :cond_67

    const-string/jumbo p2, "android.intent.action.PACKAGE_ADDED"

    if-eq v0, p2, :cond_58

    const-string/jumbo p2, "android.intent.action.PACKAGE_REPLACED"

    if-ne v0, p2, :cond_90

    :cond_58
    iget-object p2, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    iget-object p2, p2, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p2, v1, p1, v2, v3}, Lcom/android/server/wm/MultiTaskingController;->updateEmbedActivityPackageEnabled(IILjava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->add(Ljava/lang/String;)V

    return-void

    :cond_67
    const-string/jumbo p2, "android.intent.action.PACKAGE_REMOVED"

    if-ne v0, p2, :cond_90

    iget-object p2, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    monitor-enter p2

    :try_start_6f
    iget-object v0, p2, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_77
    .catchall {:try_start_6f .. :try_end_77} :catchall_8d

    if-nez v0, :cond_7b

    monitor-exit p2

    return-void

    :cond_7b
    :try_start_7b
    iget-object v0, p2, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mRepository:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_8d

    monitor-exit p2

    iget-object p0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository$1;->this$0:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    iget-object p0, p0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, v3, p1, v2, v1}, Lcom/android/server/wm/MultiTaskingController;->updateEmbedActivityPackageEnabled(IILjava/lang/String;Z)V

    return-void

    :catchall_8d
    move-exception p0

    :try_start_8e
    monitor-exit p2
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw p0

    :cond_90
    :goto_90
    return-void
.end method
