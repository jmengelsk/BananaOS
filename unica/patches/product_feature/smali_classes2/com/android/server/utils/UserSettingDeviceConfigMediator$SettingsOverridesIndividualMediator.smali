.class public final Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mProperties:Landroid/provider/DeviceConfig$Properties;

.field public final mSettingsParser:Landroid/util/KeyValueListParser;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mSettingsParser:Landroid/util/KeyValueListParser;

    return-void
.end method


# virtual methods
.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mSettingsParser:Landroid/util/KeyValueListParser;

    iget-object p0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mProperties:Landroid/provider/DeviceConfig$Properties;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final getFloat(FLjava/lang/String;)F
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mSettingsParser:Landroid/util/KeyValueListParser;

    iget-object p0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mProperties:Landroid/provider/DeviceConfig$Properties;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p1}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    move-result p1

    :goto_0
    invoke-virtual {v0, p2, p1}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public final getLong(JLjava/lang/String;)J
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mSettingsParser:Landroid/util/KeyValueListParser;

    iget-object p0, p0, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;->mProperties:Landroid/provider/DeviceConfig$Properties;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3, p1, p2}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    :goto_0
    invoke-virtual {v0, p3, p1, p2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method
