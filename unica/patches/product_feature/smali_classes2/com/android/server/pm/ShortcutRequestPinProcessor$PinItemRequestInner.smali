.class public abstract Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;
.super Landroid/content/pm/IPinItemRequest$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAccepted:Z

.field public final mLauncherUid:I

.field public final mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

.field public final mResultIntent:Landroid/content/IntentSender;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;I)V
    .registers 4

    invoke-direct {p0}, Landroid/content/pm/IPinItemRequest$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mResultIntent:Landroid/content/IntentSender;

    iput p3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mLauncherUid:I

    return-void
.end method


# virtual methods
.method public final accept(Landroid/os/Bundle;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    iget v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mLauncherUid:I

    iget-object v0, v0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    if-ne v1, v0, :cond_4c

    if-eqz p1, :cond_25

    :try_start_e
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_1a} :catch_1b

    goto :goto_26

    :catch_1b
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "options cannot be unparceled"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_25
    const/4 p1, 0x0

    :goto_26
    monitor-enter p0

    :try_start_27
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mAccepted:Z

    if-nez v0, :cond_41

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mAccepted:Z

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_3f

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->tryAccept()Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mResultIntent:Landroid/content/IntentSender;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->sendResultIntent(Landroid/content/IntentSender;Landroid/content/Intent;)V

    return v0

    :cond_3d
    const/4 p0, 0x0

    return p0

    :catchall_3f
    move-exception p1

    goto :goto_4a

    :cond_41
    :try_start_41
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "accept() called already"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_3f

    throw p1

    :cond_4c
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Calling uid mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isValid()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    iget v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mLauncherUid:I

    iget-object v0, v0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_10

    move v0, v3

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    if-nez v0, :cond_14

    return v2

    :cond_14
    monitor-enter p0

    :try_start_15
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mAccepted:Z

    xor-int/2addr v0, v3

    monitor-exit p0

    return v0

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public tryAccept()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
