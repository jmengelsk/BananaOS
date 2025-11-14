.class public final Lcom/android/server/pm/pu/ProfileUtilizationStorage;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mPolicyDisabled:Lcom/android/server/pm/pu/ScpmPolicyDisabled;

.field public final mPolicyPackages:Lcom/android/server/pm/pu/ScpmPolicyPackages;

.field public final mProtectedContext:Landroid/content/Context;

.field public final mSharedPrefs:Landroid/content/SharedPreferences;

.field public final mSharedPrefsDumps:Landroid/content/SharedPreferences;

.field public final mSharedPrefsScpm:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mProtectedContext:Landroid/content/Context;

    const-string/jumbo p1, "apps_weights"

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->initSharedPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo p1, "dumps"

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->initSharedPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefsDumps:Landroid/content/SharedPreferences;

    const-string/jumbo p1, "scpm"

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->initSharedPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefsScpm:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/android/server/pm/pu/ScpmPolicyDisabled;

    invoke-direct {v0, p1}, Lcom/android/server/pm/pu/ScpmPolicyDisabled;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mPolicyDisabled:Lcom/android/server/pm/pu/ScpmPolicyDisabled;

    new-instance v0, Lcom/android/server/pm/pu/ScpmPolicyPackages;

    invoke-direct {v0, p1}, Lcom/android/server/pm/pu/ScpmPolicyPackages;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mPolicyPackages:Lcom/android/server/pm/pu/ScpmPolicyPackages;

    return-void
.end method

.method public static dumpSharedPrefs(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Stored "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "no data stored"

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final initSharedPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "profile_utilization"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mProtectedContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public final loadAppsList()Ljava/util/List;
    .locals 15

    iget-object p0, p0, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "json_apps_weights"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "PU_Storage"

    if-nez p0, :cond_0

    const-string/jumbo p0, "Stored apps not found"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    const-string/jumbo v0, "Load "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Bad stored positions for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", add with -1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/pm/pu/App;

    const-wide/16 v8, -0x1

    invoke-direct {v5, v8, v9, v7}, Lcom/android/server/pm/pu/App;-><init>(JLjava/lang/String;)V

    add-int/lit8 v6, v4, 0x1

    iput v4, v5, Lcom/android/server/pm/pu/App;->mResultingPos:I

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_1

    :cond_1
    new-instance v6, Lcom/android/server/pm/pu/App;

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->optInt(I)I

    move-result v9

    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->optInt(I)I

    move-result v10

    const/4 v11, 0x3

    invoke-virtual {v5, v11}, Lorg/json/JSONArray;->optInt(I)I

    move-result v11

    const/4 v12, 0x4

    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->optInt(I)I

    move-result v12

    const/4 v13, 0x5

    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->optInt(I)I

    move-result v13

    const/4 v14, 0x6

    invoke-virtual {v5, v14}, Lorg/json/JSONArray;->optInt(I)I

    move-result v5

    invoke-direct/range {v6 .. v13}, Lcom/android/server/pm/pu/App;-><init>(Ljava/lang/String;IIIIII)V

    iput v5, v6, Lcom/android/server/pm/pu/App;->mResultingPos:I

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string v0, "Failed to parse json string apps"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method
