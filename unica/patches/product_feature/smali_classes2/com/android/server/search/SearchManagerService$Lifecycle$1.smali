.class public final Lcom/android/server/search/SearchManagerService$Lifecycle$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/search/SearchManagerService$Lifecycle;


# direct methods
.method public constructor <init>(Lcom/android/server/search/SearchManagerService$Lifecycle;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1;->this$0:Lcom/android/server/search/SearchManagerService$Lifecycle;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;-><init>(Lcom/android/server/search/SearchManagerService$Lifecycle$1;Landroid/content/Intent;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
