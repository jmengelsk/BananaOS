.class public final Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mOtherCalls:Landroid/util/ArrayMap;

.field public final mTelCalls:Landroid/util/ArrayMap;

.field public mThresholdMinutes:I


# direct methods
.method public static -$$Nest$misRepeat(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)Z
    .registers 7

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    if-gtz v0, :cond_12

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e019a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    :cond_12
    iget v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    const/4 v1, 0x0

    if-lez v0, :cond_3c

    if-nez p2, :cond_1a

    goto :goto_3c

    :cond_1a
    invoke-static {p2}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3a

    array-length v0, p2

    if-nez v0, :cond_24

    goto :goto_3a

    :cond_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUp(Landroid/util/ArrayMap;J)V

    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUp(Landroid/util/ArrayMap;J)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->checkCallers(Landroid/content/Context;[Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result p1
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    monitor-exit p0

    return p1

    :catchall_38
    move-exception p1

    goto :goto_3e

    :cond_3a
    :goto_3a
    monitor-exit p0

    return v1

    :cond_3c
    :goto_3c
    monitor-exit p0

    return v1

    :goto_3e
    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_38

    throw p1
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final declared-synchronized checkCallers(Landroid/content/Context;[Ljava/lang/String;Landroid/util/ArraySet;)Z
    .registers 13

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_2
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_12
    array-length v5, p2

    if-ge v1, v5, :cond_48

    aget-object v5, p2, v1

    if-nez v5, :cond_1a

    goto :goto_46

    :cond_1a
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string/jumbo v7, "tel"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->checkForNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    move v2, v0

    :cond_36
    move v3, v0

    goto :goto_46

    :catchall_38
    move-exception p1

    goto :goto_8b

    :cond_3a
    iget-object v4, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    move v2, v0

    move v4, v2

    goto :goto_46

    :cond_45
    move v4, v0

    :goto_46
    add-int/2addr v1, v0

    goto :goto_12

    :cond_48
    if-eqz p3, :cond_63

    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_63

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3, p1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->checkForNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_61

    move v2, v0

    :cond_61
    move v3, v0

    goto :goto_4e

    :cond_63
    sget-object p1, Lcom/android/server/notification/ZenLog;->STATE_CHANGES:Landroid/util/LocalLog;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "res="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", given phone number="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", given uri="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x14

    invoke-static {p2, p1}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V
    :try_end_89
    .catchall {:try_start_2 .. :try_end_89} :catchall_38

    monitor-exit p0

    return v2

    :goto_8b
    :try_start_8b
    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_38

    throw p1
.end method

.method public final declared-synchronized checkForNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_30

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    monitor-exit p0

    return v1

    :cond_c
    :try_start_c
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_32

    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2, p2}, Landroid/telephony/PhoneNumberUtils;->areSamePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_30

    if-eqz v2, :cond_1c

    monitor-exit p0

    return v1

    :catchall_30
    move-exception p1

    goto :goto_35

    :cond_32
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_30

    throw p1
.end method

.method public final declared-synchronized cleanUp(Landroid/util/ArrayMap;J)V
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_2d

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-gtz v3, :cond_27

    sub-long v1, p2, v1

    iget v3, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    const v4, 0xea60

    mul-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_2a

    goto :goto_27

    :catchall_25
    move-exception p1

    goto :goto_2f

    :cond_27
    :goto_27
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_25

    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_2d
    monitor-exit p0

    return-void

    :goto_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_25

    throw p1
.end method

.method public final declared-synchronized recordCallers([Ljava/lang/String;Landroid/util/ArraySet;J)V
    .registers 14

    const/4 v0, 0x1

    monitor-enter p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_6
    :try_start_6
    array-length v5, p1

    if-ge v1, v5, :cond_44

    aget-object v5, p1, v1

    if-nez v5, :cond_e

    goto :goto_42

    :cond_e
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string/jumbo v7, "tel"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_42

    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v0

    move v3, v2

    goto :goto_42

    :catchall_35
    move-exception p1

    goto :goto_86

    :cond_37
    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v0

    move v4, v2

    :cond_42
    :goto_42
    add-int/2addr v1, v0

    goto :goto_6

    :cond_44
    if-eqz p2, :cond_64

    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4a
    :goto_4a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_4a

    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v0

    move v3, v2

    goto :goto_4a

    :cond_64
    if-eqz v2, :cond_84

    sget-object p1, Lcom/android/server/notification/ZenLog;->STATE_CHANGES:Landroid/util/LocalLog;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "has phone number="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", has uri="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x13

    invoke-static {p2, p1}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V
    :try_end_84
    .catchall {:try_start_6 .. :try_end_84} :catchall_35

    :cond_84
    monitor-exit p0

    return-void

    :goto_86
    :try_start_86
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_35

    throw p1
.end method
