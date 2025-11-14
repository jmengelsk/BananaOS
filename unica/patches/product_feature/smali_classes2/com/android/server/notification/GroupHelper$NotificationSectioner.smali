.class public final Lcom/android/server/notification/GroupHelper$NotificationSectioner;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mName:Ljava/lang/String;

.field public final mSectionChecker:Ljava/util/function/Predicate;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSectionChecker:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final isInSection(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isForegroundService()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    if-le v2, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iget v4, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    if-le v4, v3, :cond_2

    const-class v4, Landroid/app/Notification$CallStyle;

    invoke-virtual {v0, v4}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-nez v2, :cond_5

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSectionChecker:Ljava/util/function/Predicate;

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v3

    :cond_5
    :goto_2
    return v1
.end method
