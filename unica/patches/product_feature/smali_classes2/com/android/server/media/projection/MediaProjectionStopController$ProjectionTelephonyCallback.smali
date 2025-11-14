.class public final Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionStopController;


# direct methods
.method public constructor <init>(Lcom/android/server/media/projection/MediaProjectionStopController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionTelephonyCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionStopController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionTelephonyCallback;->this$0:Lcom/android/server/media/projection/MediaProjectionStopController;

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionStopController;->callStateChanged()V

    return-void
.end method
