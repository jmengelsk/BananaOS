.class public final Lcom/android/server/policy/PhoneWindowManager$HdmiControl$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;


# virtual methods
.method public final onComplete(I)V
    .registers 3

    if-eqz p1, :cond_b

    const-string/jumbo p0, "One touch play failed: "

    const-string/jumbo v0, "PhoneWindowManager"

    invoke-static {p1, p0, v0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method
