.class public abstract Lcom/android/server/media/VolumeCtrl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final USAGE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "the options are as follows: \n\t\t--stream STREAM selects the stream to control, see AudioManager.STREAM_*\n\t\t                controls AudioManager.STREAM_MUSIC if no stream is specified\n\t\t--set INDEX     sets the volume index value\n\t\t--adj DIRECTION adjusts the volume, use raise|same|lower for the direction\n\t\t--get           outputs the current volume\n\t\t--show          shows the UI during the volume change\n\texamples:\n\t\tadb shell media_session volume --show --stream 3 --set 11\n\t\tadb shell media_session volume --stream 0 --adj lower\n\t\tadb shell media_session volume --stream 3 --get\n\n\t\tSamsung custom options are as follows: \n\t\t--setfine INDEX sets the fine volume index value\n\t\t--getfine       outputs the current fine volume\n\texamples:\n\t\tadb shell media_session volume --show --setfine 127\n\t\tadb shell media_session volume --getfine\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/media/VolumeCtrl;->USAGE:Ljava/lang/String;

    return-void
.end method
