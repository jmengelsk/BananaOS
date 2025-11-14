.class public final Lcom/android/server/tv/TvInputManagerService$3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/hdmi/HdmiClient$OnDeviceSelectedListener;


# virtual methods
.method public final onDeviceSelected(II)V
    .locals 0

    const-string/jumbo p0, "TvInputManagerService"

    if-nez p1, :cond_0

    const-string/jumbo p1, "Setting TV as the active CEC device was successful."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo p2, "Setting TV as the active CEC device failed with result "

    invoke-static {p1, p2, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
