.class public final Lcom/android/server/notification/GroupHelper$NotificationSectioner;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mName:Ljava/lang/String;

.field public final mSectionChecker:Ljava/util/function/Predicate;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/function/Predicate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSectionChecker:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final isInSection(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 7

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    goto :goto_4c

    :cond_8
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isForegroundService()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v2

    if-eqz v2, :cond_21

    iget v2, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    if-le v2, v3, :cond_21

    move v2, v3

    goto :goto_22

    :cond_21
    move v2, v1

    :goto_22
    iget v4, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    if-le v4, v3, :cond_30

    const-class v4, Landroid/app/Notification$CallStyle;

    invoke-virtual {v0, v4}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_30

    move v0, v3

    goto :goto_31

    :cond_30
    move v0, v1

    :goto_31
    if-nez v2, :cond_4c

    if-eqz v0, :cond_36

    goto :goto_4c

    :cond_36
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_4c

    :cond_43
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSectionChecker:Ljava/util/function/Predicate;

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4c

    return v3

    :cond_4c
    :goto_4c
    return v1
.end method
