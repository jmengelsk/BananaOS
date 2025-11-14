.class public final Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/HqmDataDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/power/HqmDataDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver;->this$0:Lcom/android/server/power/HqmDataDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    iget-object p1, p0, Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver;->this$0:Lcom/android/server/power/HqmDataDispatcher;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;

    invoke-direct {p2}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;-><init>()V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move v3, v0

    move-wide v4, v1

    move-wide v6, v4

    :goto_0
    iget-object v8, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    iget-object v8, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    iget-wide v8, v8, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnCount:J

    add-long/2addr v6, v8

    iget-object v8, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    iget-wide v8, v8, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnDuration:J

    add-long/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "LOD"

    invoke-virtual {p2, v4, v5, v3}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(JLjava/lang/String;)V

    const-string v3, "LOCNT"

    invoke-virtual {p2, v6, v7, v3}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(JLjava/lang/String;)V

    const/4 v3, 0x3

    new-array v4, v3, [J

    move v5, v0

    :goto_1
    iget-object v6, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    move v6, v0

    :goto_2
    if-ge v6, v3, :cond_1

    aget-wide v7, v4, v6

    iget-object v9, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    iget-object v9, v9, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mBrightnessDuration:[J

    aget-wide v9, v9, v6

    add-long/2addr v7, v9

    aput-wide v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const-string v5, "LBLD"

    aget-wide v6, v4, v0

    invoke-virtual {p2, v6, v7, v5}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(JLjava/lang/String;)V

    const-string v5, "LBMD"

    const/4 v6, 0x1

    aget-wide v6, v4, v6

    invoke-virtual {p2, v6, v7, v5}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(JLjava/lang/String;)V

    const/4 v5, 0x2

    aget-wide v6, v4, v5

    const-string v4, "LBHD"

    invoke-virtual {p2, v6, v7, v4}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(JLjava/lang/String;)V

    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    if-eqz v4, :cond_5

    move v4, v0

    move-wide v6, v1

    :goto_3
    iget-object v8, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v4, v8, :cond_4

    iget-object v8, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    iget v8, v8, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mDisplayType:I

    if-nez v8, :cond_3

    iget-object v8, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    iget-object v8, v8, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mBrightnessDuration:[J

    aget-wide v8, v8, v5

    add-long/2addr v6, v8

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    const-string v4, "LBHD_M"

    invoke-virtual {p2, v6, v7, v4}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(JLjava/lang/String;)V

    :cond_5
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_LBHD_HIGHEST:Z

    if-eqz v4, :cond_8

    move v4, v0

    move-wide v5, v1

    :goto_4
    iget-object v7, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_7

    iget-object v7, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    iget v7, v7, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mDisplayType:I

    if-nez v7, :cond_6

    iget-object v7, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    iget-wide v7, v7, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    add-long/2addr v5, v7

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    const-string v4, "LBHD_HIGHEST"

    invoke-virtual {p2, v5, v6, v4}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(JLjava/lang/String;)V

    :cond_8
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SCREEN_CURTAIN:Z

    if-eqz v4, :cond_b

    move v4, v0

    move-wide v5, v1

    move-wide v7, v5

    :goto_5
    iget-object v9, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_a

    iget-object v9, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    iget v9, v9, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mDisplayType:I

    if-nez v9, :cond_9

    iget-object v9, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    iget-wide v9, v9, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainCount:J

    add-long/2addr v7, v9

    iget-object v9, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    iget-wide v9, v9, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainDuration:J

    add-long/2addr v5, v9

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    const-string/jumbo v4, "SC_DUR"

    invoke-virtual {p2, v5, v6, v4}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(JLjava/lang/String;)V

    const-string/jumbo v4, "SC_CNT"

    invoke-virtual {p2, v7, v8, v4}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(JLjava/lang/String;)V

    :cond_b
    const-string v4, "DPLD"

    iget-object p2, p2, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->mJsonObj:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v5, "\\{"

    const-string v6, ""

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v5, "\\}"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lcom/android/server/power/HqmDataDispatcher;->sendDataSetToHqm(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v0

    :goto_6
    iget-object v4, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge p2, v4, :cond_d

    iget-object v4, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    iput-wide v1, v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnCount:J

    iput-wide v1, v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnDuration:J

    const/4 v5, -0x1

    iput v5, v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    move v5, v0

    :goto_7
    if-ge v5, v3, :cond_c

    iget-object v6, v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mBrightnessDuration:[J

    aput-wide v1, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_c
    iput-wide v1, v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainCount:J

    iput-wide v1, v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainDuration:J

    iput-wide v1, v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    iput-boolean v0, v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_d
    iget-object p0, p0, Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver;->this$0:Lcom/android/server/power/HqmDataDispatcher;

    iget-object p1, p0, Lcom/android/server/power/HqmDataDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "screen_brightness_mode"

    const/4 v1, -0x2

    invoke-static {p1, p2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    const-string/jumbo v2, "screen_brightness"

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "MODE"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    :try_start_0
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_8
    const-string p2, "LEVEL"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :try_start_1
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_9
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "\\{"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "\\}"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DPSI"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/power/HqmDataDispatcher;->sendDataSetToHqm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
