.class public final Lcom/android/server/notification/sec/TimeToLeaveHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public enqueuedNotifications:Ljava/util/Set;

.field public isFirstTTLNoti:Z

.field public mContext:Landroid/content/Context;


# direct methods
.method public static makeNotiKey(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string/jumbo v3, "|"

    if-nez p2, :cond_0

    new-array p2, v2, [Ljava/lang/CharSequence;

    aput-object p1, p2, v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    invoke-static {v3, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object p1, v4, v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v0

    aput-object p2, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createAppSearchSession(Ljava/util/concurrent/ExecutorService;)Landroid/app/appsearch/AppSearchSession;
    .locals 5

    const-string/jumbo v0, "TimeToLeaveHelper"

    const-string v1, "Create AppSearchSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/appsearch/AppSearchManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/AppSearchManager;

    new-instance v1, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    const-string/jumbo v2, "ai-suggestion"

    invoke-direct {v1, v2}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v3, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v2, v4}, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/sec/TimeToLeaveHelper;Ljava/util/concurrent/CompletableFuture;I)V

    invoke-virtual {v0, v1, p1, v3}, Landroid/app/appsearch/AppSearchManager;->createSearchSession(Landroid/app/appsearch/AppSearchManager$SearchContext;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    const-wide/16 p0, 0xa

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p0, p1, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/appsearch/AppSearchSession;

    return-object p0
.end method

.method public final deleteDocument(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "TimeToLeaveHelper"

    const-string/jumbo v1, "[DELETE]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2, p3}, Lcom/android/server/notification/sec/TimeToLeaveHelper;->makeNotiKey(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/notification/sec/TimeToLeaveHelper;->createAppSearchSession(Ljava/util/concurrent/ExecutorService;)Landroid/app/appsearch/AppSearchSession;

    move-result-object p3

    const-string/jumbo v1, "Remove document"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    const-string v1, "ContextualInsightData"

    invoke-direct {v0, v1}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->addIds([Ljava/lang/String;)Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/RemoveByDocumentIdRequest;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v2, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/sec/TimeToLeaveHelper;Ljava/util/concurrent/CompletableFuture;I)V

    invoke-virtual {p3, v0, p2, v2}, Landroid/app/appsearch/AppSearchSession;->remove(Landroid/app/appsearch/RemoveByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    const-wide/16 v2, 0xa

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, p2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper;->enqueuedNotifications:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Landroid/app/appsearch/AppSearchSession;->close()V

    return-void
.end method

.method public final insertDocument(Ljava/lang/String;ILjava/lang/String;ILandroid/os/Bundle;[Landroid/app/Notification$Action;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string/jumbo v9, "TimeToLeaveHelper"

    const-string/jumbo v10, "[INSERT]"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v10, p3

    invoke-static {v2, v0, v10}, Lcom/android/server/notification/sec/TimeToLeaveHelper;->makeNotiKey(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/android/server/notification/sec/TimeToLeaveHelper;->createAppSearchSession(Ljava/util/concurrent/ExecutorService;)Landroid/app/appsearch/AppSearchSession;

    move-result-object v12

    const-string/jumbo v13, "Set Schema"

    invoke-static {v9, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Landroid/app/appsearch/SetSchemaRequest$Builder;

    invoke-direct {v13}, Landroid/app/appsearch/SetSchemaRequest$Builder;-><init>()V

    const/4 v14, 0x4

    new-array v14, v14, [Landroid/app/appsearch/AppSearchSchema;

    sget-object v15, Lcom/samsung/android/sdk/aisuggestion/schema/google/TimeToLeaveSuggestionDataDocument;->schema:Landroid/app/appsearch/AppSearchSchema;

    aput-object v15, v14, v8

    sget-object v15, Lcom/samsung/android/sdk/aisuggestion/schema/google/ContextualInsightDataDocument;->schema:Landroid/app/appsearch/AppSearchSchema;

    aput-object v15, v14, v7

    sget-object v15, Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument;->schema:Landroid/app/appsearch/AppSearchSchema;

    aput-object v15, v14, v6

    const/4 v15, 0x3

    sget-object v16, Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument;->schema:Landroid/app/appsearch/AppSearchSchema;

    aput-object v16, v14, v15

    invoke-virtual {v13, v14}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addSchemas([Landroid/app/appsearch/AppSearchSchema;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setVersion(I)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setForceOverride(Z)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v13

    new-instance v14, Landroid/app/appsearch/PackageIdentifier;

    new-instance v15, Landroid/content/pm/Signature;

    const-string v8, "C8A2E9BCCF597C2FB6DC66BEE293FC13F2FC47EC77BC6B2B0D52C11F51192AB8"

    invoke-direct {v15, v8}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    const-string/jumbo v15, "com.samsung.android.smartsuggestions"

    invoke-direct {v14, v15, v8}, Landroid/app/appsearch/PackageIdentifier;-><init>(Ljava/lang/String;[B)V

    const-string v8, "ContextualInsightData:ContextualInsight"

    invoke-virtual {v13, v8, v7, v14}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setSchemaTypeVisibilityForPackage(Ljava/lang/String;ZLandroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v13

    new-instance v14, Landroid/app/appsearch/PackageIdentifier;

    new-instance v6, Landroid/content/pm/Signature;

    const-string v7, "34DF0E7A9F1CF1892E45C056B4973CD81CCF148A4050D11AEA4AC5A65F900A42"

    invoke-direct {v6, v7}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-direct {v14, v15, v6}, Landroid/app/appsearch/PackageIdentifier;-><init>(Ljava/lang/String;[B)V

    const/4 v6, 0x1

    invoke-virtual {v13, v8, v6, v14}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setSchemaTypeVisibilityForPackage(Ljava/lang/String;ZLandroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/appsearch/SetSchemaRequest$Builder;->build()Landroid/app/appsearch/SetSchemaRequest;

    move-result-object v6

    new-instance v7, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v7}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v13, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda0;

    const/4 v14, 0x2

    invoke-direct {v13, v1, v7, v14}, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/sec/TimeToLeaveHelper;Ljava/util/concurrent/CompletableFuture;I)V

    invoke-virtual {v12, v6, v11, v11, v13}, Landroid/app/appsearch/AppSearchSession;->setSchema(Landroid/app/appsearch/SetSchemaRequest;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v13, 0xa

    invoke-virtual {v7, v13, v14, v6}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    iget-boolean v6, v1, Lcom/android/server/notification/sec/TimeToLeaveHelper;->isFirstTTLNoti:Z

    const-string v7, ""

    if-eqz v6, :cond_0

    const-string v6, "Clear documents"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v6}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v15, Landroid/app/appsearch/SearchSpec$Builder;

    invoke-direct {v15}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    invoke-virtual {v15}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    move-result-object v15

    new-instance v13, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda0;

    const/4 v14, 0x0

    invoke-direct {v13, v1, v6, v14}, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/sec/TimeToLeaveHelper;Ljava/util/concurrent/CompletableFuture;I)V

    invoke-virtual {v12, v7, v15, v11, v13}, Landroid/app/appsearch/AppSearchSession;->remove(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    iput-boolean v14, v1, Lcom/android/server/notification/sec/TimeToLeaveHelper;->isFirstTTLNoti:Z

    :cond_0
    const-string/jumbo v6, "Put document"

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "android.title"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    const-string/jumbo v13, "android.text"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    const-string/jumbo v14, "android.ongoingActivityNoti.primaryInfo"

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v14

    const-string/jumbo v15, "android.ongoingActivityNoti.secondaryInfo"

    invoke-virtual {v4, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 p3, v11

    const-string/jumbo v11, "android.ongoingActivityNoti.tertiaryInfo"

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    move-object/from16 v17, v12

    const-string/jumbo v12, "android.ongoingActivityNoti.nowbarPrimaryInfo"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    move-object/from16 v18, v8

    const-string/jumbo v8, "android.ongoingActivityNoti.nowbarSecondaryInfo"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    move-object/from16 v19, v10

    const-string/jumbo v10, "android.ongoingActivityNoti.nowbarIcon"

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {v4, v10, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    array-length v4, v5

    if-lez v4, :cond_1

    const/16 v16, 0x0

    aget-object v4, v5, v16

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    move-object/from16 v8, p0

    move-object/from16 v5, v17

    move-object/from16 v3, v19

    goto/16 :goto_4

    :cond_2
    if-eqz v14, :cond_1

    if-eqz v15, :cond_1

    if-eqz v11, :cond_1

    if-eqz v12, :cond_1

    if-eqz v8, :cond_1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "pkg="

    const-string v10, " id="

    move-object/from16 p5, v1

    const-string v1, " userId="

    invoke-static {v2, v4, v0, v10, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "title="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " text="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ONGOING primary="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " secondary="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " tertiary="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "NOWBAR primary="

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "NOWBAR icon="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    aget-object v1, v5, v16

    iget-object v1, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "ACTION title="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v5, v16

    iget-object v4, v4, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " actionIntent="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v16

    iget-object v4, v4, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "br.ttl.start.navigation"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "ttl-noti-pkg"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "ttl-noti-id"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "ttl-noti-userid"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v2, "contextualinsight"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "invoke.broadcast"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "receiverPermission"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v0, v5, v16

    iget-object v0, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    aget-object v0, v5, v16

    iget-object v0, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "translatedUriString="

    invoke-static {v1, v0, v9}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v0, v7

    :goto_1
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Nowbar Icon uri="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument$Builder;

    invoke-direct {v2}, Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument$Builder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, v1}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument$Builder;->build()Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/aisuggestion/schema/google/TimeToLeaveSuggestionDataDocument$Builder;

    const-string v4, "ContextualInsightData:TimeToLeaveSuggestion"

    const-string v6, "ContextualInsightData"

    invoke-direct {v2, v6, v7, v4}, Landroid/app/appsearch/GenericDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "insightMessageTitle"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    const-string/jumbo v4, "insight message description"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "insightMessageDescription"

    invoke-virtual {v2, v8, v4}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    const-string/jumbo v4, "reason description"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "reasonDescription"

    invoke-virtual {v2, v8, v4}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    const-wide/16 v12, 0x3

    const/4 v4, 0x1

    new-array v8, v4, [J

    const/16 v16, 0x0

    aput-wide v12, v8, v16

    const-string/jumbo v4, "schemaVersion"

    invoke-virtual {v2, v4, v8}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyLong(Ljava/lang/String;[J)Landroid/app/appsearch/GenericDocument$Builder;

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "scheduleName"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v10, v8}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "ttlInfo"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v10, v8}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    new-instance v8, Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument$Builder;

    invoke-direct {v8}, Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument$Builder;-><init>()V

    const/16 v16, 0x0

    aget-object v5, v5, v16

    iget-object v5, v5, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "name"

    invoke-virtual {v8, v10, v5}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "uri"

    invoke-virtual {v8, v5, v0}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    const/4 v11, 0x1

    new-array v0, v11, [Landroid/app/appsearch/GenericDocument;

    const/16 v16, 0x0

    aput-object v1, v0, v16

    const-string/jumbo v1, "icon"

    invoke-virtual {v8, v1, v0}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyDocument(Ljava/lang/String;[Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/GenericDocument$Builder;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument$Builder;->build()Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument;

    move-result-object v0

    new-array v8, v11, [Landroid/app/appsearch/GenericDocument;

    aput-object v0, v8, v16

    const-string/jumbo v0, "directionsAction"

    invoke-virtual {v2, v0, v8}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyDocument(Ljava/lang/String;[Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/GenericDocument$Builder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/aisuggestion/schema/google/TimeToLeaveSuggestionDataDocument$Builder;->build()Lcom/samsung/android/sdk/aisuggestion/schema/google/TimeToLeaveSuggestionDataDocument;

    move-result-object v2

    move-object/from16 v8, p0

    :try_start_0
    iget-object v0, v8, Lcom/android/server/notification/sec/TimeToLeaveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "Exception occurred while setting currentLocale: "

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v7

    :goto_2
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "com.google.android.apps.maps"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v15, "what"

    move-wide/from16 p1, v12

    const-string/jumbo v12, "some value"

    invoke-virtual {v14, v15, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    iget-object v12, v8, Lcom/android/server/notification/sec/TimeToLeaveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->icon:I

    const-string/jumbo v13, "android.resource://%s/%d"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Exception occurred while setting appIconResource: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument$Builder;-><init>()V

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument$Builder;->build()Lcom/samsung/android/sdk/aisuggestion/schema/google/ImageResourceDataDocument;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument$Builder;

    invoke-direct {v3}, Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument$Builder;-><init>()V

    const-string/jumbo v7, "Tap Action"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v10, v7}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    const/4 v7, 0x1

    new-array v9, v7, [Landroid/app/appsearch/GenericDocument;

    const/16 v16, 0x0

    aput-object v0, v9, v16

    invoke-virtual {v3, v1, v9}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyDocument(Ljava/lang/String;[Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/GenericDocument$Builder;

    invoke-virtual {v14, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument$Builder;->build()Lcom/samsung/android/sdk/aisuggestion/schema/google/PotentialActionDataDocument;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/aisuggestion/schema/google/ContextualInsightDataDocument$Builder;

    move-object/from16 v5, v18

    move-object/from16 v3, v19

    invoke-direct {v1, v6, v3, v5}, Landroid/app/appsearch/GenericDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v5, v7, [J

    const/16 v16, 0x0

    aput-wide p1, v5, v16

    invoke-virtual {v1, v4, v5}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyLong(Ljava/lang/String;[J)Landroid/app/appsearch/GenericDocument$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/app/appsearch/GenericDocument$Builder;->setCreationTimestampMillis(J)Landroid/app/appsearch/GenericDocument$Builder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/aisuggestion/schema/google/ContextualInsightDataDocument$Builder;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xa

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Landroid/app/appsearch/GenericDocument$Builder;->setTtlMillis(J)Landroid/app/appsearch/GenericDocument$Builder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/aisuggestion/schema/google/ContextualInsightDataDocument$Builder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x1

    new-array v4, v6, [Landroid/app/appsearch/GenericDocument;

    const/4 v14, 0x0

    aput-object v2, v4, v14

    const-string/jumbo v2, "appDomain"

    invoke-virtual {v1, v2, v4}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyDocument(Ljava/lang/String;[Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/GenericDocument$Builder;

    const-string/jumbo v2, "currentLocale"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    new-array v2, v6, [Landroid/app/appsearch/GenericDocument;

    aput-object v0, v2, v14

    const-string/jumbo v0, "tapAction"

    invoke-virtual {v1, v0, v2}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyDocument(Ljava/lang/String;[Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/GenericDocument$Builder;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/aisuggestion/schema/google/ContextualInsightDataDocument$Builder;->build()Lcom/samsung/android/sdk/aisuggestion/schema/google/ContextualInsightDataDocument;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/PutDocumentsRequest$Builder;

    invoke-direct {v1}, Landroid/app/appsearch/PutDocumentsRequest$Builder;-><init>()V

    new-array v2, v6, [Landroid/app/appsearch/GenericDocument;

    aput-object v0, v2, v14

    invoke-virtual {v1, v2}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->addGenericDocuments([Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/PutDocumentsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->build()Landroid/app/appsearch/PutDocumentsRequest;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v2, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v8, v1, v14}, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/sec/TimeToLeaveHelper;Ljava/util/concurrent/CompletableFuture;I)V

    move-object/from16 v4, p3

    move-object/from16 v5, v17

    invoke-virtual {v5, v0, v4, v2}, Landroid/app/appsearch/AppSearchSession;->put(Landroid/app/appsearch/PutDocumentsRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xa

    invoke-virtual {v1, v6, v7, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    :goto_4
    iget-object v0, v8, Lcom/android/server/notification/sec/TimeToLeaveHelper;->enqueuedNotifications:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/app/appsearch/AppSearchSession;->close()V

    return-void
.end method

.method public final searchDocument()V
    .locals 6

    const-string/jumbo v0, "TimeToLeaveHelper"

    const-string/jumbo v1, "[SEARCH]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/notification/sec/TimeToLeaveHelper;->createAppSearchSession(Ljava/util/concurrent/ExecutorService;)Landroid/app/appsearch/AppSearchSession;

    move-result-object p0

    const-string/jumbo v2, "Searching documents"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Landroid/app/appsearch/SearchSpec$Builder;

    invoke-direct {v3}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    const-string v4, "ContextualInsightData"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterNamespaces([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/appsearch/SearchSpec$Builder;->setNumericSearchEnabled(Z)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/app/appsearch/SearchSpec$Builder;->setSnippetCount(I)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    move-result-object v3

    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    const-string v5, ""

    invoke-virtual {p0, v5, v3}, Landroid/app/appsearch/AppSearchSession;->search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/SearchResults;

    move-result-object v3

    new-instance v5, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda4;

    invoke-direct {v5, v4}, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v3, v1, v5}, Landroid/app/appsearch/SearchResults;->getNextPage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {v4}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    const-string/jumbo v4, "index: "

    const-string v5, ", "

    invoke-static {v3, v4, v5, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/appsearch/SearchResult;

    invoke-virtual {v4}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "Finish searching documents"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SEARCH RESULT = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchSession;->close()V

    return-void
.end method
