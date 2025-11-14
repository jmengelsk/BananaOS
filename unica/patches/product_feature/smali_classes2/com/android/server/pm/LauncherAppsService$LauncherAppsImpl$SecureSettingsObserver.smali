.class public final Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object p1, p1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final getPrivateProfile()Landroid/os/UserHandle;
    .registers 5

    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerInternal;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1e

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget p0, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1e
    const/16 p0, -0x2710

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .registers 8

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string/jumbo p1, "hide_privatespace_entry_point"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9d

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->getPrivateProfile()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    const/16 v0, -0x2710

    if-ne p2, v0, :cond_1e

    goto/16 :goto_9d

    :cond_1e
    iget-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object p2, p2, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p2

    const/4 v0, 0x0

    :goto_27
    if-ge v0, p2, :cond_96

    :try_start_29
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v1, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IOnAppsChangedListener;

    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v2, v2, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    const-string/jumbo v4, "onSecureSettingsChange"

    invoke-virtual {v3, p1, v2, v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Ljava/lang/String;)Z

    move-result v3
    :try_end_46
    .catchall {:try_start_29 .. :try_end_46} :catchall_6c

    const-string v4, "LauncherAppsService"

    if-nez v3, :cond_6e

    :try_start_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSecureSettingsChange: Skipping - profile not enabled or not accessible for package="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", packageUid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_4a .. :try_end_6b} :catchall_6c

    goto :goto_8b

    :catchall_6c
    move-exception p1

    goto :goto_8e

    :cond_6e
    :try_start_6e
    const-string/jumbo v2, "onUserConfigChanged: triggering onUserConfigChanged"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v2, v2, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManagerInternal;->getLauncherUserInfo(I)Landroid/content/pm/LauncherUserInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/pm/IOnAppsChangedListener;->onUserConfigChanged(Landroid/content/pm/LauncherUserInfo;)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_83} :catch_84
    .catchall {:try_start_6e .. :try_end_83} :catchall_6c

    goto :goto_8b

    :catch_84
    move-exception v1

    :try_start_85
    const-string/jumbo v2, "onUserConfigChanged: Callback failed "

    invoke-static {v4, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b
    .catchall {:try_start_85 .. :try_end_8b} :catchall_6c

    :goto_8b
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :goto_8e
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw p1

    :cond_96
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$SecureSettingsObserver;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_9d
    :goto_9d
    return-void
.end method
