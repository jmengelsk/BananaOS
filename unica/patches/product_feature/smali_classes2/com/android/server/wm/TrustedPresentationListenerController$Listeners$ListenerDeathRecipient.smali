.class public final Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mInstances:I

.field public final mListenerBinder:Landroid/os/IBinder;

.field public final synthetic this$1:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->this$1:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    iput-object p2, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mListenerBinder:Landroid/os/IBinder;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mInstances:I

    :try_start_a
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->this$1:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    iget-object v0, v0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->this$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    iget-object v0, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
