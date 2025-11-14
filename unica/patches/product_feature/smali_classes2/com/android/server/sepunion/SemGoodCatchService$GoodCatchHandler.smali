.class public final Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 13

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2ee

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_17e

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, v6, :cond_f1

    if-eq v0, v5, :cond_88

    if-eq v0, v4, :cond_73

    if-eq v0, v3, :cond_16

    goto/16 :goto_2e5

    :cond_16
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureWakeUp:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "SemGoodCatchService"

    const-string/jumbo v0, "function LIKE ?"

    const-string/jumbo v1, "wakeup_done"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "module"

    const-string v5, "FeatureWakeUp"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "function"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "value"

    const-string/jumbo v4, "on"

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_46
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, p0, v3, v0, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget p0, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    const-string/jumbo p0, "doneTrigger()"

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_59} :catch_5b

    goto/16 :goto_2e5

    :catch_5b
    move-exception v0

    move-object p0, v0

    sget v0, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "doneTrigger error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e5

    :cond_73
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureDetectAds:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    const-string/jumbo p1, "setActiveState, false"

    const-string/jumbo v0, "SemGoodCatchService"

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mActiveState:Z

    return-void

    :cond_88
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchObserver:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

    const-string/jumbo v0, "SemGoodCatchService"

    if-nez p1, :cond_97

    const-string/jumbo p1, "mGoodCatchObserver is null, trying to createObserver."

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_97
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mFeatureSetting.getUri() : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    iget-object v1, v1, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFeatureEvent.getUri() : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    iget-object v1, v1, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mFeatureSettingsProvider.getUri() : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSettingsProvider:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    iget-object v1, v1, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchObserver:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

    if-nez p1, :cond_ea

    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    iget-object p1, p1, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    if-eqz p1, :cond_ea

    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    iget-object p1, p1, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    if-eqz p1, :cond_ea

    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSettingsProvider:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    iget-object p1, p1, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    if-eqz p1, :cond_ea

    new-instance p1, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchObserver:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

    const-string/jumbo p0, "created GoodCatchObserver object"

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_ea
    const-string/jumbo p0, "does not create GoodCatchObserver"

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    aget-object v0, p1, v1

    aget-object v1, p1, v2

    aget-object v2, p1, v6

    aget-object v5, p1, v5

    aget-object v4, p1, v4

    aget-object v3, p1, v3

    const/4 v6, 0x6

    aget-object p1, p1, v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "update, "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "SemGoodCatchService"

    invoke-static {v7, v6}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v8, "module"

    invoke-virtual {v6, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "function"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "time"

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "message"

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "extra"

    invoke-virtual {v6, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_159
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p0, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_164} :catch_166

    goto/16 :goto_2e5

    :catch_166
    move-exception v0

    move-object p0, v0

    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "insertGoodCatch error : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e5

    :cond_17e
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    const-string/jumbo p1, "query, cur.getCount() : "

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_196

    sget p0, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    const-string/jumbo p0, "SemGoodCatchService"

    const-string/jumbo p1, "uri is null"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e5

    :cond_196
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    iget-object v3, v0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    monitor-enter v3

    const/4 v4, 0x0

    :try_start_19c
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    iget-object v5, v0, Lcom/android/server/sepunion/SemGoodCatchService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_1cd

    sget v0, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    const-string/jumbo v0, "SemGoodCatchService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d8

    :catchall_1c5
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2e6

    :catch_1c9
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2c7

    :cond_1cd
    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    const-string/jumbo p1, "SemGoodCatchService"

    const-string/jumbo v0, "query, cur is null"

    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d8
    move p1, v1

    :cond_1d9
    :goto_1d9
    if-eqz v4, :cond_2be

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2be

    const-string/jumbo v0, "module"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "function"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "value"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    const-string/jumbo v7, "SemGoodCatchService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "module=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\', function=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\', value=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2b4

    if-eqz v5, :cond_2b4

    if-nez v6, :cond_239

    goto/16 :goto_2b4

    :cond_239
    iget-object v7, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    iget-object v7, v7, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_245
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;

    invoke-virtual {v8, v0, v5}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_245

    const-string/jumbo v7, "on"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26b

    invoke-virtual {v8, v5}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_275

    invoke-virtual {v8, v5}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->on(Ljava/lang/String;)V

    :goto_269
    move p1, v2

    goto :goto_275

    :cond_26b
    invoke-virtual {v8, v5}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_275

    invoke-virtual {v8, v5}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->off(Ljava/lang/String;)V

    goto :goto_269

    :cond_275
    :goto_275
    if-eqz p1, :cond_1d9

    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    const-string/jumbo p1, "SemGoodCatchService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GoodCatchClient has module=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', function=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', value -> \'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a0

    const-string/jumbo v0, "on"

    goto :goto_2a3

    :cond_2a0
    const-string/jumbo v0, "off"

    :goto_2a3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d8

    :cond_2b4
    :goto_2b4
    const-string/jumbo v0, "SemGoodCatchService"

    const-string v5, "It is abnormal that query results have null string."

    invoke-static {v0, v5}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2bc
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_2bc} :catch_1c9
    .catchall {:try_start_19c .. :try_end_2bc} :catchall_1c5

    goto/16 :goto_1d9

    :cond_2be
    if-eqz v4, :cond_2e4

    :goto_2c0
    :try_start_2c0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2c3
    .catchall {:try_start_2c0 .. :try_end_2c3} :catchall_2c4

    goto :goto_2e4

    :catchall_2c4
    move-exception v0

    move-object p0, v0

    goto :goto_2ec

    :goto_2c7
    :try_start_2c7
    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    const-string/jumbo p1, "SemGoodCatchService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e1
    .catchall {:try_start_2c7 .. :try_end_2e1} :catchall_1c5

    if-eqz v4, :cond_2e4

    goto :goto_2c0

    :cond_2e4
    :goto_2e4
    :try_start_2e4
    monitor-exit v3

    :goto_2e5
    return-void

    :goto_2e6
    if-eqz v4, :cond_2eb

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2eb
    throw p0

    :goto_2ec
    monitor-exit v3
    :try_end_2ed
    .catchall {:try_start_2e4 .. :try_end_2ed} :catchall_2c4

    throw p0

    :cond_2ee
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    new-instance p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    new-instance p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    new-instance p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureDetectAds:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    new-instance p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureWakeUp:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    new-instance p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSettingsProvider:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    return-void
.end method
