.class public abstract Lcom/android/server/stats/pull/SettingsStatsUtil;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final GLOBAL_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

.field public static final SECURE_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

.field public static final SYSTEM_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v1, "GlobalFeature__boolean_whitelist"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v3, "GlobalFeature__integer_whitelist"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v5, "GlobalFeature__float_whitelist"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v7, "GlobalFeature__string_whitelist"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v3, v5}, [Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/pull/SettingsStatsUtil;->GLOBAL_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    new-instance v0, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string/jumbo v1, "SecureFeature__boolean_whitelist"

    invoke-direct {v0, v1, v2}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string/jumbo v3, "SecureFeature__integer_whitelist"

    invoke-direct {v1, v3, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string/jumbo v5, "SecureFeature__float_whitelist"

    invoke-direct {v3, v5, v6}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string/jumbo v7, "SecureFeature__string_whitelist"

    invoke-direct {v5, v7, v8}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v3, v5}, [Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/pull/SettingsStatsUtil;->SECURE_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    new-instance v0, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string/jumbo v1, "SystemFeature__boolean_whitelist"

    invoke-direct {v0, v1, v2}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string/jumbo v2, "SystemFeature__integer_whitelist"

    invoke-direct {v1, v2, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string/jumbo v3, "SystemFeature__float_whitelist"

    invoke-direct {v2, v3, v6}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string/jumbo v4, "SystemFeature__string_whitelist"

    invoke-direct {v3, v4, v8}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/pull/SettingsStatsUtil;->SYSTEM_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    return-void
.end method

.method public static createStatsEvent(IIILjava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;
    .locals 5

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz p3, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto :goto_3

    :cond_0
    const/4 p3, 0x1

    if-eq p2, p3, :cond_4

    const/4 p3, 0x2

    const-string v3, "Can not parse value to float: "

    const-string/jumbo v4, "SettingsStatsUtil"

    if-eq p2, p3, :cond_3

    const/4 p3, 0x3

    if-eq p2, p3, :cond_2

    const/4 p3, 0x4

    if-eq p2, p3, :cond_1

    const-string/jumbo p3, "Unexpected value type "

    invoke-static {p2, p3, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move p3, v0

    goto :goto_2

    :cond_2
    :try_start_0
    invoke-static {p4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move p3, v0

    :goto_1
    move-object p4, v2

    goto :goto_2

    :catch_0
    invoke-static {v3, p4, v4}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-static {v3, p4, v4}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p3, "1"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    move p4, v0

    move v0, p3

    move p3, p4

    goto :goto_1

    :goto_2
    invoke-virtual {p0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    :goto_3
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method public static getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;
    .locals 3

    const-string/jumbo v0, "settings_stats"

    invoke-static {v0, p0}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lcom/android/service/nano/StringListParamProto;->parseFrom([B)Lcom/android/service/nano/StringListParamProto;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "SettingsStatsUtil"

    const-string v2, "Error parsing string list proto"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static logGlobalSettings(Landroid/content/Context;II)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/android/server/stats/pull/SettingsStatsUtil;->GLOBAL_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    aget-object v4, v1, v3

    iget-object v5, v4, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mFlagName:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/stats/pull/SettingsStatsUtil;->getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, v5, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    invoke-static {p0, v8, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iget v10, v4, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mDataType:I

    invoke-static {p1, p2, v10, v8, v9}, Lcom/android/server/stats/pull/SettingsStatsUtil;->createStatsEvent(IIILjava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static logSecureSettings(Landroid/content/Context;II)Ljava/util/List;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/android/server/stats/pull/SettingsStatsUtil;->SECURE_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    aget-object v4, v1, v3

    iget-object v5, v4, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mFlagName:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/stats/pull/SettingsStatsUtil;->getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, v5, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    invoke-static {p0, v8, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    iget v10, v4, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mDataType:I

    invoke-static {p1, p2, v10, v8, v9}, Lcom/android/server/stats/pull/SettingsStatsUtil;->createStatsEvent(IIILjava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static logSystemSettings(Landroid/content/Context;II)Ljava/util/List;
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/stats/pull/SettingsStatsUtil;->SYSTEM_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_5

    aget-object v5, v2, v4

    iget-object v6, v5, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mFlagName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/stats/pull/SettingsStatsUtil;->getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_4

    :cond_0
    iget-object v6, v6, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    invoke-static {v1, v9, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    if-nez v9, :cond_1

    :goto_2
    move-object v10, v11

    goto :goto_3

    :cond_1
    const-string/jumbo v12, "peak_refresh_rate"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    if-nez v10, :cond_2

    const-string/jumbo v10, "SettingsTelemetryUtils"

    const-string/jumbo v12, "PEAK_REFRESH_RATE value is null"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const/high16 v11, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {v11}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {p0}, Lcom/android/internal/display/RefreshRateSettingsUtils;->findHighestRefreshRateAmongAllBuiltInDisplays(Landroid/content/Context;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    :cond_3
    :goto_3
    iget v11, v5, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mDataType:I

    invoke-static {p1, p2, v11, v9, v10}, Lcom/android/server/stats/pull/SettingsStatsUtil;->createStatsEvent(IIILjava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method
