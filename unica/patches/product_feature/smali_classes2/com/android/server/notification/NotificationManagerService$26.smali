.class public final Lcom/android/server/notification/NotificationManagerService$26;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$26;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$26;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo v0, "enabled"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/server/notification/NotificationManagerService;->mIsRuneStoneEnabled:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "RuneStone State change mIsRuneStoneEnabled = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$26;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService;->mIsRuneStoneEnabled:Z

    const-string/jumbo p2, "NotificationService"

    invoke-static {p2, p1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void
.end method
