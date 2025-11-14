.class public Lcom/android/server/supervision/SupervisionService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mSupervisionService:Lcom/android/server/supervision/SupervisionService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/supervision/SupervisionService;

    invoke-direct {v0, p1}, Lcom/android/server/supervision/SupervisionService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService$Lifecycle;->mSupervisionService:Lcom/android/server/supervision/SupervisionService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/supervision/SupervisionService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/supervision/SupervisionService$Lifecycle;->mSupervisionService:Lcom/android/server/supervision/SupervisionService;

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 3

    const-class v0, Landroid/app/supervision/SupervisionManagerInternal;

    iget-object v1, p0, Lcom/android/server/supervision/SupervisionService$Lifecycle;->mSupervisionService:Lcom/android/server/supervision/SupervisionService;

    iget-object v2, v1, Lcom/android/server/supervision/SupervisionService;->mInternal:Lcom/android/server/supervision/SupervisionService$SupervisionManagerInternalImpl;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string/jumbo v0, "supervision"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    return-void
.end method

.method public registerProfileOwnerListener()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.app.action.PROFILE_OWNER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/supervision/SupervisionService$Lifecycle$ProfileOwnerBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/supervision/SupervisionService$Lifecycle$ProfileOwnerBroadcastReceiver;-><init>(Lcom/android/server/supervision/SupervisionService$Lifecycle;)V

    const/4 p0, 0x0

    invoke-virtual {v1, v2, v0, p0, p0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
