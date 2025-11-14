.class public final Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mLastReportedState:Landroid/util/ArrayMap;

.field public final mListeners:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;

.field public volatile mScreenTimeoutPolicy:I

.field public final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->this$0:Lcom/android/server/power/Notifier;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mLastReportedState:Landroid/util/ArrayMap;

    iput p2, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mScreenTimeoutPolicy:I

    new-instance p1, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;

    invoke-direct {p1, p0}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;-><init>(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;)V

    iput-object p1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;

    return-void
.end method


# virtual methods
.method public final notifyListenerIfNeeded(Landroid/os/IScreenTimeoutPolicyListener;)V
    .locals 4

    const-string/jumbo v0, "PowerManagerNotifier"

    iget v1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mScreenTimeoutPolicy:I

    iget-object v2, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mLastReportedState:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :try_start_0
    invoke-interface {p1, v1}, Landroid/os/IScreenTimeoutPolicyListener;->onScreenTimeoutPolicyChanged(I)V

    iget-object v2, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mLastReportedState:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :goto_0
    const-string v2, "Exception when notifying screen timeout policy change"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mListeners:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    iget-object p0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mLastReportedState:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :goto_1
    const-string/jumbo p1, "Remote exception when notifying screen timeout policy change"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-void
.end method
