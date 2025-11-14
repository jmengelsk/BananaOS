.class public final Lcom/samsung/android/server/corestate/CoreStateSettingObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

.field public final mGlobalSettingToTypeMap:Ljava/util/Map;

.field public final mIntegerDefaultKeyMap:Ljava/util/Map;

.field public final mSecureSettingToTypeMap:Ljava/util/Map;

.field public final mSecureSettingToTypeMapForUser:Ljava/util/Map;

.field public final mSystemSettingToTypeMap:Ljava/util/Map;

.field public final mSystemSettingToTypeMapForUser:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/corestate/CoreStateObserverController;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMap:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMap:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMapForUser:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMapForUser:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    const-string/jumbo p0, "open_in_pop_up_view"

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final beginObserveCoreStateSettings()V
    .locals 6

    const-string v0, "CoreStateSettingObserver"

    const-string/jumbo v1, "beginObserveCoreStateSettings"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string/jumbo v3, "beginObserveCoreStateSettings : "

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, p0, v4}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->registerContentObserver(Landroid/net/Uri;Lcom/samsung/android/server/corestate/CoreStateSettingObserver;I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, p0, v4}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->registerContentObserver(Landroid/net/Uri;Lcom/samsung/android/server/corestate/CoreStateSettingObserver;I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, p0, v4}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->registerContentObserver(Landroid/net/Uri;Lcom/samsung/android/server/corestate/CoreStateSettingObserver;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettingsForSingleUser(I)V

    return-void
.end method

.method public final beginObserveCoreStateSettingsForSingleUser(I)V
    .locals 5

    const-string/jumbo v0, "beginObserveCoreStateSettingsForSingleUser(u"

    const-string v1, ")"

    const-string v2, "CoreStateSettingObserver"

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMapForUser:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string/jumbo v3, "beginObserveCoreStateSettings : "

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, p0, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->registerContentObserver(Landroid/net/Uri;Lcom/samsung/android/server/corestate/CoreStateSettingObserver;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMapForUser:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, p0, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->registerContentObserver(Landroid/net/Uri;Lcom/samsung/android/server/corestate/CoreStateSettingObserver;I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onChange(u"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") : uri="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CoreStateSettingObserver"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZILcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    return-void
.end method

.method public final populate(Landroid/os/Bundle;Ljava/util/Map;I)Z
    .locals 11

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    if-ne v3, v5, :cond_6

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, p3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    const-string v3, ""

    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v2, v6

    goto :goto_0

    :cond_6
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v5, :cond_d

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_3

    :cond_7
    move v3, v1

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    goto :goto_4

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    goto :goto_4

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_a

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    goto :goto_4

    :cond_a
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    goto :goto_4

    :cond_b
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v5, :cond_c

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v1, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    goto :goto_4

    :cond_c
    move v5, v1

    :goto_4
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v5, v3, :cond_0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_d
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v5, :cond_13

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMap:Ljava/util/Map;

    const/4 v5, 0x0

    if-ne p2, v3, :cond_e

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    goto :goto_5

    :cond_e
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v3, :cond_f

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    goto :goto_5

    :cond_f
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v3, :cond_10

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    goto :goto_5

    :cond_10
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v3, :cond_11

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v5, p3}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v5

    goto :goto_5

    :cond_11
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v3, :cond_12

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v5, p3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v5

    :cond_12
    :goto_5
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    cmpl-float v3, v5, v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_2

    :cond_13
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMap:Ljava/util/Map;

    const-wide/16 v7, 0x0

    if-ne p2, v3, :cond_14

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v7, v8}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    goto :goto_6

    :cond_14
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v3, :cond_15

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v7, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    goto :goto_6

    :cond_15
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v3, :cond_16

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v7, v8}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    goto :goto_6

    :cond_16
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v3, :cond_17

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v7, v8, p3}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v7

    goto :goto_6

    :cond_17
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v3, :cond_18

    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v7, v8, p3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v7

    :cond_18
    :goto_6
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v3, v7, v9

    if-eqz v3, :cond_0

    invoke-virtual {p1, v4, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_2

    :cond_19
    return v2
.end method

.method public final registerContentObserver(Landroid/net/Uri;Lcom/samsung/android/server/corestate/CoreStateSettingObserver;I)V
    .locals 2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/corestate/CoreStateSettingObserver;Landroid/net/Uri;Lcom/samsung/android/server/corestate/CoreStateSettingObserver;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
