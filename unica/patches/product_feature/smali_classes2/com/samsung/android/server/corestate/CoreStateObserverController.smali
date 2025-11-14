.class public final Lcom/samsung/android/server/corestate/CoreStateObserverController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallback:Lcom/android/server/wm/CoreStateController;

.field public final mPreferenceObserver:Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;

.field public final mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

.field public final mStartedUserIds:Landroid/util/ArraySet;

.field public final mStateForUser:Landroid/util/SparseArray;

.field public final mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

.field public final mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/CoreStateController;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStateForUser:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mCallback:Lcom/android/server/wm/CoreStateController;

    new-instance p2, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    invoke-direct {p2, p1, p3, p0}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/corestate/CoreStateObserverController;)V

    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    new-instance p2, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    invoke-direct {p2, p1}, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    new-instance p2, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    invoke-direct {p2, p3, p0}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;-><init>(Landroid/os/Handler;Lcom/samsung/android/server/corestate/CoreStateObserverController;)V

    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    new-instance p2, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;

    invoke-direct {p2, p1}, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mPreferenceObserver:Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;

    return-void
.end method


# virtual methods
.method public final copyCoreStateLocked(I)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStateForUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-nez p0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public final populateCoreState(I)I
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStateForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStateForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->mSystemFeaturesRepository:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMap:Ljava/util/Map;

    invoke-virtual {v3, v0, v4, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v4

    iget-object v5, v3, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMap:Ljava/util/Map;

    invoke-virtual {v3, v0, v5, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v5

    or-int/2addr v4, v5

    iget-object v5, v3, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    invoke-virtual {v3, v0, v5, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v5

    or-int/2addr v4, v5

    iget-object v5, v3, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMapForUser:Ljava/util/Map;

    invoke-virtual {v3, v0, v5, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    or-int/2addr v4, v5

    iget-object v5, v3, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMapForUser:Ljava/util/Map;

    invoke-virtual {v3, v0, v5, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    or-int/2addr v3, v4

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    if-eqz v5, :cond_15

    iget-object v6, v5, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesToTypeMapForUser:Ljava/util/Map;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v2

    :cond_4
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    if-ne v8, v10, :cond_7

    iget-object v8, v5, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mStringDefaultKeyMap:Ljava/util/Map;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, ""

    if-eqz v8, :cond_5

    goto :goto_5

    :cond_5
    move-object v8, v10

    :goto_5
    iget-object v11, v5, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    check-cast v11, Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    if-eqz v11, :cond_6

    invoke-virtual {v11, p1, v10}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    :cond_6
    if-eqz v10, :cond_4

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    move v7, v4

    goto :goto_4

    :cond_7
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v10, :cond_a

    iget-object v8, v5, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_7

    :cond_8
    move v8, v2

    :goto_7
    iget-object v10, v5, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    if-eqz v10, :cond_9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, p1, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :cond_9
    invoke-virtual {v0, v9, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-eq v8, v10, :cond_4

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    :cond_a
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v8, v10, :cond_d

    iget-object v8, v5, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mFloatDefaultKeyMap:Ljava/util/Map;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    const/4 v10, 0x0

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_8

    :cond_b
    move v8, v10

    :goto_8
    iget-object v11, v5, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    check-cast v11, Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    if-eqz v11, :cond_c

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v11, p1, v10}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    goto :goto_9

    :cond_c
    move v10, v8

    :goto_9
    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v8

    cmpl-float v8, v10, v8

    if-eqz v8, :cond_4

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_6

    :cond_d
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v10, :cond_10

    iget-object v8, v5, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mLongDefaultKeyMap:Ljava/util/Map;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    const-wide/16 v10, 0x0

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_a

    :cond_e
    move-wide v12, v10

    :goto_a
    iget-object v8, v5, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    if-eqz v8, :cond_f

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, p1, v10}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_b

    :cond_f
    move-wide v10, v12

    :goto_b
    invoke-virtual {v0, v9, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-eqz v8, :cond_4

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_6

    :cond_10
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v10, :cond_4

    iget-object v8, v5, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mBooleanDefaultKeyMap:Ljava/util/Map;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    if-eqz v8, :cond_11

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_c

    :cond_11
    move v8, v2

    :goto_c
    iget-object v10, v5, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    if-eqz v10, :cond_12

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_d

    :cond_12
    move v10, v2

    :goto_d
    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eq v10, v8, :cond_4

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_13
    if-eqz v7, :cond_14

    goto :goto_e

    :cond_14
    move v1, v2

    :goto_e
    or-int/2addr v3, v1

    :cond_15
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mPreferenceObserver:Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;

    if-eqz p0, :cond_1b

    iget-object p1, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mSharedPrefKeyTypeMap:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v2

    :cond_16
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v8, :cond_16

    iget-object v6, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mSharedPrefKeyTypeMap:Ljava/util/Map;

    if-ne p1, v6, :cond_19

    iget-object v6, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mPref:Landroid/content/SharedPreferences;

    if-nez v6, :cond_17

    iget-object v6, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "multiwindow.property"

    invoke-virtual {v6, v8, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mPref:Landroid/content/SharedPreferences;

    :cond_17
    iget-object v6, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mPref:Landroid/content/SharedPreferences;

    if-eqz v6, :cond_18

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_10

    :cond_18
    const-string v6, "CoreStatePreferenceObserver"

    const-string/jumbo v8, "populate: failed to get getSharedPreference"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    move v6, v2

    :goto_10
    iget-object v8, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eq v6, v8, :cond_16

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v5, v4

    goto :goto_f

    :cond_1a
    or-int p0, v3, v5

    return p0

    :cond_1b
    return v3
.end method

.method public final sendCoreState(ZILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->populateCoreState(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mCallback:Lcom/android/server/wm/CoreStateController;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->copyCoreStateLocked(I)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p2, p1, p3}, Lcom/android/server/wm/CoreStateController;->onCoreStateChanged(Landroid/os/Bundle;IZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    return-void

    :cond_0
    and-int/lit8 p1, v0, 0x1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->populateCoreState(I)I

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->copyCoreStateLocked(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v2, p3}, Lcom/android/server/wm/CoreStateController;->onCoreStateChanged(Landroid/os/Bundle;IZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    goto :goto_0

    :cond_2
    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_3

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->copyCoreStateLocked(I)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v1, p0, p2, v2, p3}, Lcom/android/server/wm/CoreStateController;->onCoreStateChanged(Landroid/os/Bundle;IZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    :cond_3
    return-void
.end method

.method public final setVolatileState(Ljava/lang/String;Ljava/lang/Object;IZZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    if-eqz p0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_4

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_5
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_6
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_7
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_8
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mVolatileStatesRepository:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    :goto_1
    if-eqz p4, :cond_b

    if-eqz p5, :cond_a

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    invoke-virtual {p0, p1, p3, p6}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    return-void

    :cond_a
    new-instance p1, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p3, p6}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;ILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    return-void
.end method
