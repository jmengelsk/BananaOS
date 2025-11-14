.class public final Lcom/android/server/supervision/SupervisionService$Lifecycle$ProfileOwnerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/supervision/SupervisionService$Lifecycle;


# direct methods
.method public constructor <init>(Lcom/android/server/supervision/SupervisionService$Lifecycle;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/supervision/SupervisionService$Lifecycle$ProfileOwnerBroadcastReceiver;->this$0:Lcom/android/server/supervision/SupervisionService$Lifecycle;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    iget-object p1, p0, Lcom/android/server/supervision/SupervisionService$Lifecycle$ProfileOwnerBroadcastReceiver;->this$0:Lcom/android/server/supervision/SupervisionService$Lifecycle;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p0

    iget-object p1, p1, Lcom/android/server/supervision/SupervisionService$Lifecycle;->mSupervisionService:Lcom/android/server/supervision/SupervisionService;

    iget-object p2, p1, Lcom/android/server/supervision/SupervisionService;->mInjector:Lcom/android/server/supervision/SupervisionService$Injector;

    iget-object v0, p2, Lcom/android/server/supervision/SupervisionService$Injector;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v0, :cond_18

    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p2, Lcom/android/server/supervision/SupervisionService$Injector;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    :cond_18
    iget-object p2, p2, Lcom/android/server/supervision/SupervisionService$Injector;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz p2, :cond_21

    invoke-virtual {p2, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p2

    goto :goto_22

    :cond_21
    const/4 p2, 0x0

    :goto_22
    const/4 v0, 0x1

    if-eqz p2, :cond_4a

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/supervision/SupervisionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object p2, p1, Lcom/android/server/supervision/SupervisionService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/server/supervision/SupervisionService;->setSupervisionEnabledForUserInternal(ILjava/lang/String;Z)V

    return-void

    :cond_4a
    if-eqz p2, :cond_6a

    iget-object v1, p1, Lcom/android/server/supervision/SupervisionService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040347

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/server/supervision/SupervisionService;->setSupervisionEnabledForUserInternal(ILjava/lang/String;Z)V

    :cond_6a
    return-void
.end method
