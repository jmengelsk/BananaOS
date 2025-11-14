.class public final Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;
.super Landroid/os/RemoteCallbackList;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$1:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;->this$1:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallbackDied(Landroid/os/IInterface;)V
    .registers 2

    check-cast p1, Landroid/os/IScreenTimeoutPolicyListener;

    iget-object p0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;->this$1:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    iget-object p0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mLastReportedState:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
