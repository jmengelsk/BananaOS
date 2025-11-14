.class public final Lcom/android/server/notification/NotificationAttentionHelper$3;
.super Landroid/telephony/PhoneStateListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationAttentionHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationAttentionHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .registers 4

    iget-object p2, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    iget p2, p2, Lcom/android/server/notification/NotificationAttentionHelper;->mCallState:I

    if-ne p2, p1, :cond_7

    return-void

    :cond_7
    sget-boolean p2, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz p2, :cond_23

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Call state changed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/notification/NotificationAttentionHelper;->callStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "NotifAttentionHelper"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    iput p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallState:I

    return-void
.end method
