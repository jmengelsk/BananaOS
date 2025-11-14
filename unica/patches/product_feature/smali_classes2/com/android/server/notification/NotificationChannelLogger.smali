.class public interface abstract Lcom/android/server/notification/NotificationChannelLogger;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static getLoggingImportance(Landroid/app/NotificationChannel;I)I
    .registers 3

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x4

    if-ge p1, v0, :cond_a

    goto :goto_12

    :cond_a
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x5

    return p0

    :cond_12
    :goto_12
    return p1
.end method


# virtual methods
.method public logNotificationChannelModified(Landroid/app/NotificationChannel;ILjava/lang/String;IZ)V
    .registers 13

    if-eqz p5, :cond_6

    sget-object p5, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_UPDATED_BY_USER:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    :goto_4
    move-object v1, p5

    goto :goto_9

    :cond_6
    sget-object p5, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_UPDATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    goto :goto_4

    :goto_9
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p5

    invoke-static {p1, p5}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    move-result v6

    move-object v0, p0

    check-cast v0, Lcom/android/server/notification/NotificationChannelLoggerImpl;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/NotificationChannelLoggerImpl;->logNotificationChannel(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannel;ILjava/lang/String;II)V

    return-void
.end method
