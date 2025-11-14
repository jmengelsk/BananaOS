.class public final Lcom/android/server/people/data/DataManager$NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActiveNotifKeys:Ljava/util/Map;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public constructor <init>(Lcom/android/server/people/data/DataManager;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifKeys:Ljava/util/Map;

    iput p2, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    return-void
.end method


# virtual methods
.method public final onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .registers 12

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    if-eq v0, v1, :cond_a

    goto/16 :goto_7a

    :cond_a
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {v0, p2, p1}, Lcom/android/server/people/data/DataManager;->getPackage(ILjava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object p2

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_7a

    if-nez v0, :cond_1d

    goto :goto_7a

    :cond_1d
    iget-object v1, p2, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v1, v0}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    if-nez v0, :cond_26

    goto :goto_7a

    :cond_26
    new-instance v2, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v2, v0}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    const/16 v0, 0x40

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p4, v5, :cond_49

    if-eq p4, v4, :cond_49

    const/4 p3, 0x3

    if-eq p4, p3, :cond_39

    goto :goto_6f

    :cond_39
    const/4 p3, 0x0

    iput-object p3, v2, Lcom/android/server/people/data/ConversationInfo$Builder;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)V

    invoke-virtual {v2, v0, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)V

    invoke-virtual {v2, v4, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)V

    invoke-virtual {v2, v3, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)V

    goto :goto_6f

    :cond_49
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v2, Lcom/android/server/people/data/ConversationInfo$Builder;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p4

    invoke-virtual {v2, v5, p4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)V

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result p4

    invoke-virtual {v2, v0, p4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)V

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p4

    if-gt p4, v4, :cond_64

    goto :goto_65

    :cond_64
    move v5, v6

    :goto_65
    invoke-virtual {v2, v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)V

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result p3

    invoke-virtual {v2, v3, p3}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)V

    :goto_6f
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {v2}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object p3

    iget p2, p2, Lcom/android/server/people/data/PackageData;->mUserId:I

    invoke-virtual {p0, v1, p3, p1, p2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    :cond_7a
    :goto_7a
    return-void
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 14

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    if-eq v0, v1, :cond_e

    goto/16 :goto_b1

    :cond_e
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    new-instance v2, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/DataManager$NotificationListener;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;I)V

    invoke-static {v1, p1, v2}, Lcom/android/server/people/data/DataManager;->-$$Nest$mgetPackageIfConversationExists(Lcom/android/server/people/data/DataManager;Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    if-eqz p0, :cond_b1

    new-instance v1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object p2, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {p2, v0}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v2

    if-nez v2, :cond_39

    goto :goto_b1

    :cond_39
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v3, v2, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iget-object v4, v2, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iget-object v5, v2, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v6

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_67

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v1

    goto :goto_6f

    :cond_67
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    :goto_6f
    iget-object v9, v2, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/server/people/data/ConversationInfo;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v9, v10, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iput-object v3, v10, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iput-object v4, v10, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iget-object v3, v2, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iput-object v3, v10, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iput-object v8, v10, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iput-object v1, v10, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iput-wide v6, v10, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    iget-wide v3, v2, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    iput-wide v3, v10, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    iget v1, v2, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iput v1, v10, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iget v1, v2, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iput v1, v10, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iput-object v5, v10, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    invoke-virtual {p2, v10}, Lcom/android/server/people/data/ConversationStore;->updateConversationsInMemory(Lcom/android/server/people/data/ConversationInfo;)V

    invoke-virtual {p2}, Lcom/android/server/people/data/ConversationStore;->scheduleUpdateConversationsOnDisk()V

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object p0

    new-instance p2, Lcom/android/server/people/data/Event;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    const/4 p1, 0x2

    invoke-direct {p2, v0, v1, p1}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-virtual {p0, p2}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    :cond_b1
    :goto_b1
    return-void
.end method

.method public final declared-synchronized onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_5
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget v3, v1, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_92

    if-eq v2, v3, :cond_13

    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    new-instance v4, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v0, v2, v5}, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/DataManager$NotificationListener;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;I)V

    invoke-static {v3, v0, v4}, Lcom/android/server/people/data/DataManager;->-$$Nest$mgetPackageIfConversationExists(Lcom/android/server/people/data/DataManager;Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;

    move-result-object v0

    const/4 v3, 0x1

    move/from16 v4, p3

    if-ne v4, v3, :cond_94

    if-nez v0, :cond_2f

    goto :goto_94

    :cond_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v5, v2}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v5
    :try_end_39
    .catchall {:try_start_13 .. :try_end_39} :catchall_92

    if-nez v5, :cond_3d

    monitor-exit p0

    return-void

    :cond_3d
    :try_start_3d
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v6, v5, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iget-object v8, v5, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iget-object v9, v5, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iget-object v10, v5, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iget-object v11, v5, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iget-wide v12, v5, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    iget v14, v5, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iget v15, v5, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iget-object v5, v5, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 p2, v2

    new-instance v2, Lcom/android/server/people/data/ConversationInfo;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v6, v2, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iput-object v7, v2, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iput-object v8, v2, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iput-object v9, v2, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iput-object v10, v2, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iput-object v11, v2, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iput-wide v3, v2, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    iput-wide v12, v2, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    iput v14, v2, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iput v15, v2, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iput-object v5, v2, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v5, v2}, Lcom/android/server/people/data/ConversationStore;->updateConversationsInMemory(Lcom/android/server/people/data/ConversationInfo;)V

    invoke-virtual {v5}, Lcom/android/server/people/data/ConversationStore;->scheduleUpdateConversationsOnDisk()V

    iget-object v0, v0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v2, 0x0

    move-object/from16 v5, p2

    invoke-virtual {v0, v2, v5}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object v0

    new-instance v2, Lcom/android/server/people/data/Event;

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-virtual {v0, v2}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V
    :try_end_90
    .catchall {:try_start_3d .. :try_end_90} :catchall_92

    monitor-exit p0

    return-void

    :catchall_92
    move-exception v0

    goto :goto_96

    :cond_94
    :goto_94
    monitor-exit p0

    return-void

    :goto_96
    :try_start_96
    monitor-exit p0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_92

    throw v0
.end method
