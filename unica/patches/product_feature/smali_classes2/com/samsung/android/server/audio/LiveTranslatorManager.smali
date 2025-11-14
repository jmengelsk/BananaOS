.class public final Lcom/samsung/android/server/audio/LiveTranslatorManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static mCr:Landroid/content/ContentResolver;

.field public static sInstance:Lcom/samsung/android/server/audio/LiveTranslatorManager;

.field public static final sVoipLiveTranslateLogger:Lcom/android/server/utils/EventLogger;


# instance fields
.field public final mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

.field public final mCallAssistantUri:Landroid/net/Uri;

.field public mCurAudioMode:I

.field public mIsLiveTranslateOn:Z

.field public final mIsVoiceCapable:Z

.field public mPackageName:Ljava/lang/String;

.field public mStates:I

.field public mVoipPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/utils/EventLogger;

    const/16 v1, 0x1e

    const-string/jumbo v2, "Live translate history"

    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->sVoipLiveTranslateLogger:Lcom/android/server/utils/EventLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mVoipPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCurAudioMode:I

    iput v0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mStates:I

    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mIsVoiceCapable:Z

    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo p1, "content://com.samsung.android.callassistant.voipprovider"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCallAssistantUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final setVoipTranslator(Ljava/lang/String;Z)V
    .locals 7

    sget-object v0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->sVoipLiveTranslateLogger:Lcom/android/server/utils/EventLogger;

    const-string/jumbo v1, "LiveTranslatorManager"

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    sget-object v3, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCr:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCallAssistantUri:Landroid/net/Uri;

    const-string/jumbo v5, "isSupportedVoipTranslation"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, p1, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "is_support_voip_translation"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    const-string/jumbo v4, "l_voip_translate_package_name="

    invoke-static {v4, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/server/utils/EventLogger$StringEvent;

    invoke-direct {v5, v4}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    move v3, v2

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iput-boolean v4, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mIsLiveTranslateOn:Z

    const-string/jumbo v4, "setVoipTranslator enable "

    const-string v5, ", supported "

    const-string v6, ", mode "

    invoke-static {v4, p2, v5, v3, v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v3, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCurAudioMode:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, p2, v1}, Lcom/android/server/utils/EventLogger;->enqueueAndLog(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v0, "voip_translator_package"

    sget-object v1, Lcom/samsung/android/server/audio/utils/AudioUtils;->DEVICE_OUT_WIRED_DEVICE_SET:Ljava/util/Set;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1
    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-object p1, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCr:Landroid/content/ContentResolver;

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mIsLiveTranslateOn:Z

    const-string/jumbo p2, "voip_translator_enable"

    invoke-static {p1, p2, p0}, Lcom/samsung/android/server/audio/utils/AudioUtils;->setSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final updateAudioMode(ILjava/lang/String;)V
    .locals 1

    iput-object p2, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mPackageName:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCurAudioMode:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateAudioMode() audioMode="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCurAudioMode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", caller="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "LiveTranslatorManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/LiveTranslatorManager;->updateVoipTranslator()V

    iget p1, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCurAudioMode:I

    if-nez p1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mVoipPackageName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final updateVoipTranslator()V
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mIsVoiceCapable:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "com.android.server.telecom"

    iget-object v1, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "android"

    iget-object v1, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mPackageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mVoipPackageName:Ljava/lang/String;

    :goto_1
    sget-object v1, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "translate_during_calls"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCurAudioMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_6

    iget v1, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mStates:I

    and-int/2addr v1, v3

    if-lez v1, :cond_2

    goto/16 :goto_4

    :cond_2
    sget-object v1, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v4, "translate_during_allow_apps"

    invoke-static {v1, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string/jumbo v4, "LiveTranslatorManager"

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    iget-object v5, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mCallPolicyAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    iget-object v1, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mCallPolicyAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v5, Lcom/samsung/android/server/audio/AudioSettingsHelper$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    goto :goto_3

    :cond_5
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "voip allowPackages from globalDB packageName: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/server/audio/LiveTranslatorManager;->sVoipLiveTranslateLogger:Lcom/android/server/utils/EventLogger;

    invoke-virtual {v6, v2, v5, v4}, Lcom/android/server/utils/EventLogger;->enqueueAndLog(ILjava/lang/String;Ljava/lang/String;)V

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is supported voip "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    move v3, v2

    :goto_5
    sget-object v1, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "voip_translator_package"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/server/audio/LiveTranslatorManager;->mIsLiveTranslateOn:Z

    if-ne v2, v3, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/server/audio/LiveTranslatorManager;->setVoipTranslator(Ljava/lang/String;Z)V

    :cond_8
    return-void
.end method
