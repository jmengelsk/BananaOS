.class public final synthetic Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    check-cast p1, Landroid/os/IBinder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;Landroid/os/IBinder;)V

    return-object v0
.end method
