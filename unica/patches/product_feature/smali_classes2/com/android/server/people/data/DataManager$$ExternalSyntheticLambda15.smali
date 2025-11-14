.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/android/server/people/data/ConversationStore;

.field public final synthetic f$3:Lcom/android/server/people/data/PackageData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;JLcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/PackageData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/people/data/DataManager;

    iput-wide p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;->f$1:J

    iput-object p4, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;->f$2:Lcom/android/server/people/data/ConversationStore;

    iput-object p5, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;->f$3:Lcom/android/server/people/data/PackageData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/people/data/DataManager;

    iget-wide v2, v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;->f$1:J

    iget-object v4, v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;->f$2:Lcom/android/server/people/data/ConversationStore;

    iget-object v0, v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;->f$3:Lcom/android/server/people/data/PackageData;

    move-object/from16 v5, p1

    check-cast v5, Lcom/android/server/people/data/ConversationInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v6, v5, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iget-object v8, v5, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iget-object v9, v5, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v5, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/people/ConversationStatus;

    invoke-virtual {v12}, Landroid/app/people/ConversationStatus;->getEndTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-ltz v13, :cond_1

    invoke-virtual {v12}, Landroid/app/people/ConversationStatus;->getEndTimeMillis()J

    move-result-wide v13

    cmp-long v13, v2, v13

    if-gez v13, :cond_0

    :cond_1
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v9}, Ljava/util/Map;->clear()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v3, v3, 0x1

    check-cast v11, Landroid/app/people/ConversationStatus;

    invoke-virtual {v11}, Landroid/app/people/ConversationStatus;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/people/data/ConversationInfo;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v6, v2, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iput-object v7, v2, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iput-object v8, v2, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iget-object v3, v5, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iget-object v3, v5, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iget-object v3, v5, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iget-wide v6, v5, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    iput-wide v6, v2, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    iget-wide v6, v5, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    iput-wide v6, v2, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    iget v3, v5, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iput v3, v2, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iget v3, v5, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iput v3, v2, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iput-object v9, v2, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    iget-object v3, v0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/people/data/PackageData;->mUserId:I

    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    return-void
.end method
