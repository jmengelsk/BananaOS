.class public final Lcom/android/server/notification/SnoozeHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/SnoozeHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/SnoozeHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/SnoozeHelper$1;->this$0:Lcom/android/server/notification/SnoozeHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-boolean p1, Lcom/android/server/notification/SnoozeHelper;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "SnoozeHelper"

    const-string/jumbo v0, "Reposting notification"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p1, Lcom/android/server/notification/SnoozeHelper;->REPOST_ACTION:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/notification/SnoozeHelper$1;->this$0:Lcom/android/server/notification/SnoozeHelper;

    const-string/jumbo p1, "key"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "userId"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/SnoozeHelper;->repost(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
