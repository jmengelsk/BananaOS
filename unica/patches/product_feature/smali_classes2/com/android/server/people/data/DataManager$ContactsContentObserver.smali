.class public final Lcom/android/server/people/data/DataManager$ContactsContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mLastUpdatedTimestamp:J

.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->mLastUpdatedTimestamp:J

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    iget-object v3, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    iget-object v2, v2, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/people/data/ContactsQueryHelper;

    invoke-direct {v2, v3}, Lcom/android/server/people/data/ContactsQueryHelper;-><init>(Landroid/content/Context;)V

    iget-wide v3, v0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->mLastUpdatedTimestamp:J

    const-string/jumbo v5, "has_phone_number"

    const-string/jumbo v6, "contact_last_updated_timestamp"

    const-string/jumbo v7, "_id"

    const-string/jumbo v8, "lookup"

    const-string/jumbo v9, "starred"

    filled-new-array {v7, v8, v9, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v6, "contact_last_updated_timestamp > ?"

    invoke-virtual {v2, v4, v5, v6, v3}, Lcom/android/server/people/data/ContactsQueryHelper;->queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v2, Lcom/android/server/people/data/ContactsQueryHelper;->mContactUri:Landroid/net/Uri;

    new-instance v4, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    iput-object v5, v4, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    iput-object v5, v4, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mPackageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {v5, v1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v5

    if-nez v5, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v6, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v3, v4}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    iget-object v3, v4, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    if-nez v3, :cond_2

    iget-wide v1, v2, Lcom/android/server/people/data/ContactsQueryHelper;->mLastUpdatedTimestamp:J

    iput-wide v1, v0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->mLastUpdatedTimestamp:J

    return-void

    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v5, v3, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iget-object v7, v3, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iget-object v8, v3, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iget-object v9, v3, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iget-wide v10, v3, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    iget-wide v12, v3, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    iget v14, v3, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iget v15, v3, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iget-object v3, v3, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    move/from16 p1, v15

    iget-boolean v15, v2, Lcom/android/server/people/data/ContactsQueryHelper;->mIsStarred:Z

    move/from16 p2, v15

    const/16 v15, 0x20

    if-eqz p2, :cond_3

    or-int/lit8 v15, p1, 0x20

    goto :goto_1

    :cond_3
    not-int v15, v15

    and-int v15, p1, v15

    :goto_1
    iget-object v1, v2, Lcom/android/server/people/data/ContactsQueryHelper;->mPhoneNumber:Ljava/lang/String;

    move-object/from16 p1, v2

    iget-object v2, v0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    iget-object v0, v4, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 p2, v0

    new-instance v0, Lcom/android/server/people/data/ConversationInfo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v5, v0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iput-object v7, v0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iput-object v8, v0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iput-object v9, v0, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iput-wide v10, v0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    iput-wide v12, v0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    iput v14, v0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iput v15, v0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iput-object v3, v0, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    iget-object v1, v4, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mPackageName:Ljava/lang/String;

    move-object/from16 v4, p2

    move/from16 v3, p3

    invoke-virtual {v2, v4, v0, v1, v3}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/people/data/ContactsQueryHelper;->mLastUpdatedTimestamp:J

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->mLastUpdatedTimestamp:J

    return-void
.end method
