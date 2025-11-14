.class public final Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;
.super Landroid/telephony/TelephonyCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field public final mTelephonyManagerForSubId:Landroid/telephony/TelephonyManager;

.field public final synthetic this$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler;Landroid/telephony/TelephonyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    iput-object p2, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;->mTelephonyManagerForSubId:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;

    iget-object p1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mIsPhoneCallOngoing:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mCallback:Lcom/android/server/soundtrigger/DeviceStateHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/DeviceStateHandler;->onPhoneCallStateChanged(Z)V

    :cond_1
    return-void
.end method
