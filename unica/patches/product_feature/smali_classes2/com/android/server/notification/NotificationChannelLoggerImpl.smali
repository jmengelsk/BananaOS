.class public final Lcom/android/server/notification/NotificationChannelLoggerImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/notification/NotificationChannelLogger;


# instance fields
.field public mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# virtual methods
.method public final logNotificationChannel(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannel;ILjava/lang/String;II)V
    .registers 18

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->getId()I

    move-result v1

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    const/16 p1, 0x2000

    invoke-static {p0, p1}, Ljava/lang/Math;->floorMod(II)I

    move-result v4

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isConversation()Z

    move-result v7

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floorMod(II)I

    move-result v8

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v9

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v10

    const/16 v0, 0xf6

    move v2, p3

    move-object v3, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIIZIZZ)V

    return-void
.end method

.method public final logNotificationChannelGroup(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannelGroup;ILjava/lang/String;Z)V
    .registers 17

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->getId()I

    move-result v1

    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    const/16 p1, 0x2000

    invoke-static {p0, p1}, Ljava/lang/Math;->floorMod(II)I

    move-result v4

    const/4 p0, 0x3

    const/4 p1, 0x0

    if-eqz p5, :cond_18

    move v5, p1

    goto :goto_19

    :cond_18
    move v5, p0

    :goto_19
    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p2

    if-eqz p2, :cond_21

    move v6, p1

    goto :goto_22

    :cond_21
    move v6, p0

    :goto_22
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v0, 0xf6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIIZIZZ)V

    return-void
.end method
