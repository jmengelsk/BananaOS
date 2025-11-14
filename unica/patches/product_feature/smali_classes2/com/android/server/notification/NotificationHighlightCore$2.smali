.class public final Lcom/android/server/notification/NotificationHighlightCore$2;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationHighlightCore;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHighlightCore;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 5

    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    iget-object p1, p1, Lcom/android/server/notification/NotificationHighlightCore;->PRIVACY_CONVERSATION_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string/jumbo v0, "NotificationHighlightCore"

    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    iget-object p2, p1, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v4, "noti_intelligence_priority_conversation"

    invoke-static {p2, v4, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p1, Lcom/android/server/notification/NotificationHighlightCore;->mPrivacyConverstionEnabled:Z

    goto/16 :goto_4

    :cond_1
    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    iget-object p1, p1, Lcom/android/server/notification/NotificationHighlightCore;->PROMOTION_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    iget-object p2, p1, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v4, "noti_filter_promotion_notification"

    invoke-static {p2, v4, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput-boolean v2, p1, Lcom/android/server/notification/NotificationHighlightCore;->mPromotionsEnabled:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "onChange  mPromotionsEnabled="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    iget-boolean p2, p2, Lcom/android/server/notification/NotificationHighlightCore;->mPromotionsEnabled:Z

    invoke-static {v0, p1, p2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    goto :goto_4

    :cond_3
    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    iget-object p1, p1, Lcom/android/server/notification/NotificationHighlightCore;->BG_ACTIVITIES_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    iget-object p2, p1, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v4, "noti_filter_background_notification"

    invoke-static {p2, v4, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-ne p2, v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    iput-boolean v2, p1, Lcom/android/server/notification/NotificationHighlightCore;->mBgActivitiesEnabled:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "onChange  mBgActivitiesEnabled="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    iget-boolean p2, p2, Lcom/android/server/notification/NotificationHighlightCore;->mBgActivitiesEnabled:Z

    invoke-static {v0, p1, p2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    iget-object p1, p1, Lcom/android/server/notification/NotificationHighlightCore;->MINIMIZED_NOTIFICATIONS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    iget-object p2, p1, Lcom/android/server/notification/NotificationHighlightCore;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v4, "noti_filter_low_importance_notification"

    invoke-static {p2, v4, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-ne p2, v2, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    iput-boolean v2, p1, Lcom/android/server/notification/NotificationHighlightCore;->mMinimizedNotiEnabled:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "onChange  mMinimizedNotiEnabled="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    iget-boolean p2, p2, Lcom/android/server/notification/NotificationHighlightCore;->mMinimizedNotiEnabled:Z

    invoke-static {v0, p1, p2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_7
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "onChange  mPrivacyConverstionEnabled="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/NotificationHighlightCore$2;->this$0:Lcom/android/server/notification/NotificationHighlightCore;

    iget-boolean p0, p0, Lcom/android/server/notification/NotificationHighlightCore;->mPrivacyConverstionEnabled:Z

    invoke-static {v0, p1, p0}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void
.end method
