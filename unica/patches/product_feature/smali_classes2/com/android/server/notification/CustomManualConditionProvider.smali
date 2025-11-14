.class public final Lcom/android/server/notification/CustomManualConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/notification/CustomManualConditionProvider;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .registers 2

    const-string p0, "    "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "CustomManualConditionProvider"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, ": ENABLED"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final isScheduleEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isValidConditionId(Landroid/net/Uri;)Z
    .registers 2

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidCustomManualConditionId(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public final onBootComplete()V
    .registers 1

    return-void
.end method

.method public final onConnected()V
    .registers 1

    return-void
.end method

.method public final onScheduleEnabled(Z)V
    .registers 2

    return-void
.end method

.method public final onSubscribe(Landroid/net/Uri;)V
    .registers 2

    return-void
.end method

.method public final onUnsubscribe(Landroid/net/Uri;)V
    .registers 2

    return-void
.end method

.method public final onUserSwitched(Landroid/os/UserHandle;)V
    .registers 2

    return-void
.end method
