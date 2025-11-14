.class public final Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final EDGE_LIGHTING_SETTING:Landroid/net/Uri;

.field public final EDGE_LIGHTING_SHOW_CONDITION:Landroid/net/Uri;

.field public final defaultCarrierEdgeLighting:Ljava/lang/String;

.field public final defaultEdgeLighting:Ljava/lang/String;

.field public mDefaultValue:I

.field public mLastEnabled:Z

.field public final synthetic this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;)V
    .registers 10

    iput-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    const-string/jumbo v0, "edge_lighting"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->EDGE_LIGHTING_SETTING:Landroid/net/Uri;

    const-string/jumbo v2, "edge_lighting_show_condition"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->EDGE_LIGHTING_SHOW_CONDITION:Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Framework_ConfigDefStatusEdgeLighting"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->defaultEdgeLighting:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v4

    const-string v5, "CarrierFeature_SystemUI_ConfigDefStatusEdgeLighting"

    const-string v6, ""

    invoke-virtual {v4, p2, v5, v6, p2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->defaultCarrierEdgeLighting:Ljava/lang/String;

    const-string v5, "-defaulton"

    const/4 v6, 0x1

    if-eqz v3, :cond_3f

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_47

    :cond_3f
    if-eqz v4, :cond_49

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_49

    :cond_47
    move v3, p2

    goto :goto_4a

    :cond_49
    move v3, v6

    :goto_4a
    iput v3, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    iget-object v3, p1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    const/4 v5, -0x2

    invoke-static {v3, v0, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v6, :cond_5c

    goto :goto_5d

    :cond_5c
    move v6, p2

    :goto_5d
    iput-boolean v6, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    iget-object p1, p1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v1, p2, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p1, v2, p2, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "EdgeLightingSettingObserver : mLastEnabled = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mDefaultValue = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    const-string p2, "EdgeLightingClientManager"

    invoke-static {p1, p0, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .registers 9

    const-string p1, "EdgeLightingClientManager"

    const/4 v0, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_f

    iget-object v3, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->EDGE_LIGHTING_SETTING:Landroid/net/Uri;

    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    :cond_f
    iget-object v3, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    iget-object v3, v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "edge_lighting"

    iget v5, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    invoke-static {v3, v4, v5, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_24

    move v3, v2

    goto :goto_25

    :cond_24
    move v3, v1

    :goto_25
    const-string/jumbo v4, "onChange - edge_lighting : newValue = "

    const-string v5, " mLastEnabled = "

    invoke-static {v4, v5, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    invoke-static {p1, v4, v5}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v4, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    if-eq v3, v4, :cond_57

    iput-boolean v3, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    if-eqz v3, :cond_57

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.android.systemui"

    const-string/jumbo v5, "com.android.systemui.edgelighting.EdgeLightingService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_49
    iget-object v4, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    iget-object v4, v4, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_57
    :goto_57
    if-eqz p2, :cond_61

    iget-object v3, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->EDGE_LIGHTING_SHOW_CONDITION:Landroid/net/Uri;

    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_95

    :cond_61
    iget-object p2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    iget-object p2, p2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v3, "edge_lighting_show_condition"

    invoke-static {p2, v3, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_81

    if-eq p2, v2, :cond_7c

    const/4 v0, 0x2

    if-eq p2, v0, :cond_81

    iget-object p2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    iput v1, p2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mCondition:I

    goto :goto_86

    :cond_7c
    iget-object p2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    iput v2, p2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mCondition:I

    goto :goto_86

    :cond_81
    iget-object p2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    const/4 v0, 0x3

    iput v0, p2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mCondition:I

    :goto_86
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onChange - edge_lighting_show_condition : mCondition = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    iget p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mCondition:I

    invoke-static {p2, p0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_95
    return-void
.end method

.method public final recheckEdgeLightingDefaultValue()V
    .registers 8

    const-string/jumbo v0, "edge_lighting"

    const-string/jumbo v1, "recheckEdgeLightingDefaultValue : mLastEnabled = "

    iget-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->defaultEdgeLighting:Ljava/lang/String;

    const-string v3, "-defaulton"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_14

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_14
    iget-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->defaultCarrierEdgeLighting:Ljava/lang/String;

    if-eqz v2, :cond_20

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1e
    move v2, v4

    goto :goto_21

    :cond_20
    move v2, v5

    :goto_21
    iput v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recheckEdgeLightingDefaultValue : mDefaultValue = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    const-string v6, "EdgeLightingClientManager"

    invoke-static {v2, v3, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v2, -0x2

    :try_start_33
    iget-object v3, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    iget-object v3, v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_43

    move v3, v5

    goto :goto_44

    :cond_43
    move v3, v4

    :goto_44
    iput-boolean v3, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_33 .. :try_end_57} :catch_58

    return-void

    :catch_58
    iget v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    if-ne v1, v5, :cond_5d

    move v4, v5

    :cond_5d
    iput-boolean v4, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    iget-object v1, v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v3, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    invoke-static {v1, v0, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "recheckEdgeLightingDefaultValue - SettingNotFoundException : mLastEnabled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    invoke-static {v6, v0, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void
.end method
