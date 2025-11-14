.class public final Lcom/android/server/notification/NotificationHighlightCore;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sNotificationHighlightCore:Lcom/android/server/notification/NotificationHighlightCore;


# instance fields
.field public final AUTO_GROUPING_URI:Landroid/net/Uri;

.field public final BG_ACTIVITIES_URI:Landroid/net/Uri;

.field public final MINIMIZED_NOTIFICATIONS_URI:Landroid/net/Uri;

.field public final PRIVACY_CONVERSATION_URI:Landroid/net/Uri;

.field public final PROMOTION_URI:Landroid/net/Uri;

.field public mBgActivitiesEnabled:Z

.field public final mContext:Landroid/content/Context;

.field public final mConversationList:Ljava/util/HashSet;

.field public mHandler:Landroid/os/Handler;

.field public mMinimizedNotiEnabled:Z

.field public mNotificationClassifier:Lcom/android/server/notification/NotificationClassifier;

.field public mPrivacyConverstionEnabled:Z

.field public mPromotionsEnabled:Z

.field public mSettingsObserver:Lcom/android/server/notification/NotificationHighlightCore$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mConversationList:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mNotificationClassifier:Lcom/android/server/notification/NotificationClassifier;

    const-string/jumbo v0, "noti_intelligence_priority_conversation"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->PRIVACY_CONVERSATION_URI:Landroid/net/Uri;

    const-string/jumbo v0, "noti_auto_more_grouping"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->AUTO_GROUPING_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mPrivacyConverstionEnabled:Z

    const-string/jumbo v1, "noti_filter_promotion_notification"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NotificationHighlightCore;->PROMOTION_URI:Landroid/net/Uri;

    const-string/jumbo v1, "noti_filter_background_notification"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NotificationHighlightCore;->BG_ACTIVITIES_URI:Landroid/net/Uri;

    const-string/jumbo v1, "noti_filter_low_importance_notification"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NotificationHighlightCore;->MINIMIZED_NOTIFICATIONS_URI:Landroid/net/Uri;

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mPromotionsEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mBgActivitiesEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mMinimizedNotiEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static needToCheckNonImportantNotification(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    const-string/jumbo v1, "NotificationHighlightCore"

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    const-string/jumbo p0, "isNonImportantNotification skip isGroupSummary"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_17
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string/jumbo p0, "isNonImportantNotification skip isImportantConversation"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_26
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v0, "android.ongoingActivityNoti.style"

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_3e

    const-string/jumbo p0, "isNonImportantNotification : OngoingActivityNotiStyle filter"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3e
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final setConversationList(Ljava/util/List;)V
    .registers 6

    if-nez p1, :cond_3

    goto :goto_1f

    :cond_3
    iget-object v0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mConversationList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1f

    iget-object v2, p0, Lcom/android/server/notification/NotificationHighlightCore;->mConversationList:Ljava/util/HashSet;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1f
    :goto_1f
    return-void
.end method
