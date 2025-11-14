.class public final Lcom/android/server/people/prediction/ShareTargetPredictor;
.super Lcom/android/server/people/prediction/AppTargetPredictor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mChooserActivity:Ljava/lang/String;

.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public final mRemoteAppPredictor:Landroid/app/prediction/AppPredictor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ShareTargetPredictor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/prediction/AppPredictionContext;Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;Lcom/android/server/people/data/DataManager;ILandroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/people/prediction/AppTargetPredictor;-><init>(Landroid/app/prediction/AppPredictionContext;Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;Lcom/android/server/people/data/DataManager;I)V

    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo p3, "intent_filter"

    const-class v0, Landroid/content/IntentFilter;

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/IntentFilter;

    iput-object p2, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo p2, "systemui"

    const-string/jumbo p3, "dark_launch_remote_prediction_service_enabled"

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo v1, "remote_app_predictor"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p5, p2, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p2

    const-class p4, Landroid/app/prediction/AppPredictionManager;

    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/prediction/AppPredictionManager;

    invoke-virtual {p2, p1}, Landroid/app/prediction/AppPredictionManager;->createAppPredictionSession(Landroid/app/prediction/AppPredictionContext;)Landroid/app/prediction/AppPredictor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mRemoteAppPredictor:Landroid/app/prediction/AppPredictor;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mRemoteAppPredictor:Landroid/app/prediction/AppPredictor;

    :goto_0
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x104030b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p3

    :goto_1
    iput-object p3, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mChooserActivity:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final predictTargets()V
    .locals 13

    sget-boolean v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ShareTargetPredictor"

    const-string/jumbo v1, "predictTargets"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mUpdatePredictionsMethod:Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;

    if-nez v0, :cond_1

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v1, p0}, Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mDataManager:Lcom/android/server/people/data/DataManager;

    iget-object v4, v3, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v5, v3, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallingUserId:I

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/pm/ShortcutServiceInternal;->getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    new-instance v8, Landroid/app/prediction/AppTarget$Builder;

    new-instance v9, Landroid/app/prediction/AppTargetId;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9, v7}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {v4}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v4

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/app/prediction/AppTarget$Builder;->setRank(I)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v4

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v9

    invoke-virtual {v3, v9, v8}, Lcom/android/server/people/data/DataManager;->getPackage(ILjava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v8, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v9, v7}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v10

    if-eqz v10, :cond_8

    new-instance v5, Lcom/android/server/people/data/AggregateEventHistoryImpl;

    invoke-direct {v5}, Lcom/android/server/people/data/AggregateEventHistoryImpl;-><init>()V

    invoke-virtual {v9, v7}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    iget-object v11, v8, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    invoke-virtual {v11, v6, v7}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v7, v5, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v6, v9, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v11, v7, v6}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v7, v5, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v6, v9, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    :cond_5
    iget-object v7, v8, Lcom/android/server/people/data/PackageData;->mIsDefaultDialerPredicate:Ljava/util/function/Predicate;

    iget-object v9, v8, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x2

    invoke-virtual {v11, v7, v6}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v12, v5, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v7, v8, Lcom/android/server/people/data/PackageData;->mIsDefaultSmsAppPredicate:Ljava/util/function/Predicate;

    invoke-interface {v7, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x3

    invoke-virtual {v11, v7, v6}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v7, v5, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    move-object v10, v5

    :cond_8
    :goto_1
    new-instance v6, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    invoke-direct {v6, v4, v5, v10}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;-><init>(Landroid/app/prediction/AppTarget;Lcom/android/server/people/data/EventHistory;Lcom/android/server/people/data/ConversationInfo;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v4

    if-lez v4, :cond_a

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v5

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/server/people/data/DataManager;->mimeTypeToShareEventType(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/people/prediction/SharesheetModelScorer;->computeScore(Ljava/util/List;IJ)V

    new-instance v2, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    new-instance v3, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    iget-object v3, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    invoke-virtual {v3}, Landroid/app/prediction/AppPredictionContext;->getPredictedTargetCount()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v6, v3, :cond_b

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    invoke-virtual {v3}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getAppTarget()Landroid/app/prediction/AppTarget;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {v1, v2}, Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final reportAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V
    .locals 7

    sget-boolean v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ShareTargetPredictor"

    const-string/jumbo v1, "reportAppTargetEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mDataManager:Lcom/android/server/people/data/DataManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getTarget()Landroid/app/prediction/AppTarget;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    new-instance v6, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;

    invoke-direct {v6, v3, v4}, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/UserData;Ljava/lang/String;)V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/data/PackageData;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/people/data/DataManager;->mimeTypeToShareEventType(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v5, "direct_share"

    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getLaunchLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "chooser_target"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    iget-object v6, v3, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {v6, v5}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v6

    if-nez v6, :cond_5

    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/people/data/DataManager;->addOrUpdateConversationInfo(Landroid/content/pm/ShortcutInfo;)V

    :cond_5
    iget-object v1, v3, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object v1

    goto :goto_0

    :cond_6
    iget-object v1, v3, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    const/4 v3, 0x4

    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object v1

    :goto_0
    new-instance v2, Lcom/android/server/people/data/Event;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-virtual {v1, v2}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mRemoteAppPredictor:Landroid/app/prediction/AppPredictor;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Landroid/app/prediction/AppPredictor;->notifyAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    :cond_8
    return-void
.end method

.method public final sortTargets(Ljava/util/List;Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-boolean v2, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ShareTargetPredictor"

    const-string/jumbo v3, "sortTargets"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v2, :cond_1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    return-void

    :cond_1
    move-object/from16 v2, p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    iget-object v5, v0, Lcom/android/server/people/prediction/AppTargetPredictor;->mDataManager:Lcom/android/server/people/data/DataManager;

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/prediction/AppTarget;

    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v5, v8, v7}, Lcom/android/server/people/data/DataManager;->getPackage(ILjava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v5

    new-instance v7, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    if-nez v5, :cond_2

    move-object v5, v6

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    iget-object v5, v5, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    invoke-virtual {v5, v9, v8}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/android/server/people/data/AggregateEventHistoryImpl;

    invoke-direct {v5}, Lcom/android/server/people/data/AggregateEventHistoryImpl;-><init>()V

    :goto_1
    invoke-direct {v7, v4, v5, v6}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;-><init>(Landroid/app/prediction/AppTarget;Lcom/android/server/people/data/EventHistory;Lcom/android/server/people/data/ConversationInfo;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v2, v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v6

    :goto_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/people/data/DataManager;->mimeTypeToShareEventType(Ljava/lang/String;)I

    move-result v2

    iget-object v7, v0, Lcom/android/server/people/prediction/AppTargetPredictor;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    invoke-virtual {v7}, Landroid/app/prediction/AppPredictionContext;->getPredictedTargetCount()I

    move-result v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v3, v2, v8, v9}, Lcom/android/server/people/prediction/SharesheetModelScorer;->computeScore(Ljava/util/List;IJ)V

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v4

    :goto_3
    if-ge v9, v8, :cond_8

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    invoke-virtual {v10}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getAppTarget()Landroid/app/prediction/AppTarget;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda0;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v2, v11, v12}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    move v12, v4

    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_7

    invoke-virtual {v10}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v13

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    invoke-virtual {v14}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    invoke-interface {v11, v12, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sget-wide v8, Lcom/android/server/people/prediction/SharesheetModelScorer;->FOREGROUND_APP_PROMO_TIME_WINDOW:J

    sub-long v15, v17, v8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-class v8, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/UsageStatsManagerInternal;

    check-cast v9, Lcom/android/server/usage/UsageStatsService$LocalService;

    iget-object v13, v9, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    sget-object v20, Llibcore/util/EmptyArray;->INT:[I

    const/16 v21, 0x0

    iget v14, v0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallingUserId:I

    const/16 v19, 0xa

    invoke-virtual/range {v13 .. v21}, Lcom/android/server/usage/UsageStatsService;->queryEventsWithQueryFilters(IJJI[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;

    move-result-object v9

    const/4 v10, 0x1

    if-nez v9, :cond_9

    goto :goto_7

    :cond_9
    :goto_6
    invoke-virtual {v9}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v11

    if-eqz v11, :cond_a

    new-instance v11, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v11}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    invoke-virtual {v9, v11}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v12

    if-ne v12, v10, :cond_9

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    :goto_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v10

    move-object v10, v6

    :goto_8
    if-ltz v9, :cond_e

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v11}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v12}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_d

    if-eqz v11, :cond_b

    iget-object v13, v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mChooserActivity:Ljava/lang/String;

    if-eqz v13, :cond_b

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_9

    :cond_b
    if-nez v10, :cond_c

    move-object v10, v12

    goto :goto_9

    :cond_c
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    move-object v6, v12

    goto :goto_a

    :cond_d
    :goto_9
    add-int/lit8 v9, v9, -0x1

    goto :goto_8

    :cond_e
    :goto_a
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz v6, :cond_f

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    invoke-virtual {v5}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v6

    sub-float v6, v0, v6

    mul-float/2addr v6, v0

    sub-float v6, v0, v6

    invoke-virtual {v5, v6}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->setScore(F)V

    :cond_f
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v4

    :cond_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_11
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    invoke-virtual {v11}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v12

    cmpl-float v12, v12, v10

    if-lez v12, :cond_11

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v11}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v11

    invoke-static {v11, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_b

    :cond_12
    if-lt v6, v7, :cond_13

    move/from16 p0, v10

    goto/16 :goto_13

    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sget-wide v5, Lcom/android/server/people/prediction/SharesheetModelScorer;->ONE_MONTH_WINDOW:J

    sub-long v24, v26, v5

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageStatsManagerInternal;

    check-cast v6, Lcom/android/server/usage/UsageStatsService$LocalService;

    iget-object v6, v6, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    const/16 v28, 0x4

    const/16 v29, 0x0

    move-object/from16 v22, v6

    move/from16 v23, v14

    invoke-virtual/range {v22 .. v29}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IJJIZ)Ljava/util/List;

    move-result-object v6

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    if-nez v6, :cond_15

    :cond_14
    move/from16 p0, v10

    goto/16 :goto_12

    :cond_15
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStats;

    invoke-virtual {v8}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    new-instance v11, Lcom/android/server/people/data/UsageStatsQueryHelper$$ExternalSyntheticLambda0;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-interface {v7, v9, v11}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/people/data/AppUsageStatsData;

    iget-object v11, v8, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-nez v11, :cond_17

    move v14, v4

    :cond_16
    move/from16 p0, v10

    goto :goto_10

    :cond_17
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v12

    move v13, v4

    move v14, v13

    :goto_d
    if-ge v13, v12, :cond_16

    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArrayMap;

    if-nez v15, :cond_18

    move/from16 p0, v10

    goto :goto_f

    :cond_18
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 p0, v10

    const/4 v10, 0x0

    :goto_e
    if-ge v10, v4, :cond_19

    invoke-virtual {v15, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    add-int v14, v16, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_19
    :goto_f
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, p0

    const/4 v4, 0x0

    goto :goto_d

    :goto_10
    iget v4, v9, Lcom/android/server/people/data/AppUsageStatsData;->mChosenCount:I

    add-int/2addr v4, v14

    iput v4, v9, Lcom/android/server/people/data/AppUsageStatsData;->mChosenCount:I

    invoke-virtual {v8}, Landroid/app/usage/UsageStats;->getAppLaunchCount()I

    move-result v4

    iget v8, v9, Lcom/android/server/people/data/AppUsageStatsData;->mLaunchCount:I

    add-int/2addr v8, v4

    iput v8, v9, Lcom/android/server/people/data/AppUsageStatsData;->mLaunchCount:I

    goto :goto_11

    :cond_1a
    move/from16 p0, v10

    :goto_11
    move/from16 v10, p0

    const/4 v4, 0x0

    goto :goto_c

    :goto_12
    new-instance v4, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda0;-><init>(I)V

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v5, v0

    invoke-static {v2, v7, v4, v5, v0}, Lcom/android/server/people/prediction/SharesheetModelScorer;->promoteApp(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/Function;FF)F

    move-result v0

    new-instance v4, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda0;-><init>(I)V

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v5, v0

    invoke-static {v2, v7, v4, v5, v0}, Lcom/android/server/people/prediction/SharesheetModelScorer;->promoteApp(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/Function;FF)F

    :goto_13
    new-instance v0, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v2, :cond_1c

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    invoke-virtual {v5}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getAppTarget()Landroid/app/prediction/AppTarget;

    move-result-object v6

    new-instance v7, Landroid/app/prediction/AppTarget$Builder;

    invoke-virtual {v6}, Landroid/app/prediction/AppTarget;->getId()Landroid/app/prediction/AppTargetId;

    move-result-object v8

    invoke-virtual {v6}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v6}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v7

    cmpl-float v7, v7, p0

    if-lez v7, :cond_1b

    invoke-virtual {v5}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v5

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v7

    float-to-int v5, v5

    goto :goto_15

    :cond_1b
    const/4 v5, 0x0

    :goto_15
    invoke-virtual {v6, v5}, Landroid/app/prediction/AppTarget$Builder;->setRank(I)Landroid/app/prediction/AppTarget$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1c
    invoke-virtual {v1, v0}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    return-void
.end method
