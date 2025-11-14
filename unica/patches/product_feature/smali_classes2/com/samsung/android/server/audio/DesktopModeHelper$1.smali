.class public final Lcom/samsung/android/server/audio/DesktopModeHelper$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/DesktopModeHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    iget-object v0, v0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/audio/utils/DesktopUtils;->isDesktopWindowing(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    iget-object v1, v1, Lcom/samsung/android/server/audio/DesktopModeHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "external_display_audio_output"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v3, v2

    :cond_0
    const-string/jumbo v1, "onDisplayAdded: #Id="

    const-string v2, ", isInDesktopWindowing="

    const-string v4, ", isAudioOutputToDisplay : "

    invoke-static {p1, v1, v2, v4, v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "AS.DesktopModeHelper"

    invoke-static {v1, p1, v3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    xor-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    iget-boolean p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    if-eq p1, v0, :cond_3

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    iget-object p0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    const-string/jumbo p1, "dex"

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "none"

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/server/audio/utils/DesktopUtils;->setDexPolicyParameter(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    const-string/jumbo p0, "onDisplayChanged: #Id="

    const-string v0, "AS.DesktopModeHelper"

    invoke-static {p1, p0, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    iget-object v0, v0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/audio/utils/DesktopUtils;->isDesktopWindowing(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    iget-object v1, v1, Lcom/samsung/android/server/audio/DesktopModeHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "external_display_audio_output"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v3, v2

    :cond_0
    const-string/jumbo v1, "onDisplayRemoved: #Id="

    const-string v2, ", isInDesktopWindowing="

    const-string v4, ", isAudioOutputToDisplay : "

    invoke-static {p1, v1, v2, v4, v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "AS.DesktopModeHelper"

    invoke-static {v1, p1, v3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    xor-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    iget-boolean p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    if-eq p1, v0, :cond_3

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    iget-object p0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    const-string/jumbo p1, "dex"

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "none"

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/server/audio/utils/DesktopUtils;->setDexPolicyParameter(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
