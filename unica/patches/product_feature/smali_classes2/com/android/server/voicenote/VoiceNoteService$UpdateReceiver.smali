.class public final Lcom/android/server/voicenote/VoiceNoteService$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string/jumbo p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-static {p1}, Lcom/android/server/voicenote/VoiceNoteService;->backgroundAllowlist(Landroid/content/Context;)V

    return-void
.end method
