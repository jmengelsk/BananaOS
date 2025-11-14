.class public final synthetic Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/function/HexConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    check-cast p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    check-cast p2, Landroid/os/IBinder;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p4, Landroid/os/IBinder;

    check-cast p5, Landroid/os/RemoteCallback;

    check-cast p6, Landroid/os/RemoteCallback;

    iget-object p3, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter p3

    :try_start_13
    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_57

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p2, v0, :cond_1d

    goto :goto_57

    :cond_1d
    const-class p2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p2, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAttachedNonFinishingActivityForTask(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    move-result-object p0

    if-eqz p0, :cond_49

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAssistToken:Landroid/os/IBinder;
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_3c

    if-eq p2, p4, :cond_30

    goto :goto_49

    :cond_30
    :try_start_30
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAppThread:Landroid/app/IApplicationThread;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mActivityToken:Landroid/os/IBinder;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-interface {p2, p0, p1, p5, p6}, Landroid/app/IApplicationThread;->requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_3b} :catch_3e
    .catchall {:try_start_30 .. :try_end_3b} :catchall_3c

    goto :goto_55

    :catchall_3c
    move-exception p0

    goto :goto_65

    :catch_3e
    move-exception p0

    :try_start_3f
    const-string/jumbo p1, "Unexpected remote error"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p6, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_55

    :cond_49
    :goto_49
    const-string/jumbo p0, "VoiceInteractionServiceManager"

    const-string/jumbo p1, "Unknown activity to query for direct actions during retrying"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p6, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :goto_55
    monitor-exit p3

    return-void

    :cond_57
    :goto_57
    const-string/jumbo p0, "VoiceInteractionServiceManager"

    const-string/jumbo p1, "retryRequestDirectActions does not match active session"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p6, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    monitor-exit p3

    return-void

    :goto_65
    monitor-exit p3
    :try_end_66
    .catchall {:try_start_3f .. :try_end_66} :catchall_3c

    throw p0
.end method
