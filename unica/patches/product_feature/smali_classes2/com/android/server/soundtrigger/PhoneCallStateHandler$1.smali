.class public final Lcom/android/server/soundtrigger/PhoneCallStateHandler$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$1;->this$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAddListenerFailed()V
    .locals 1

    const-string/jumbo p0, "SoundTriggerPhoneCallStateHandler"

    const-string v0, "Failed to add a telephony listener"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSubscriptionsChanged()V
    .locals 7

    iget-object p0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$1;->this$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;

    iget-object v0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mListenerList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;

    iget-object v5, v4, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;

    iget-object v5, v5, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mListenerList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
