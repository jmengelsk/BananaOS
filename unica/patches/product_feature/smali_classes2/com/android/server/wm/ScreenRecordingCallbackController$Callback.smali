.class public final Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallback:Landroid/window/IScreenRecordingCallback;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ScreenRecordingCallbackController;Landroid/window/IScreenRecordingCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    iput-object p2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mCallback:Landroid/window/IScreenRecordingCallback;

    iput p3, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mUid:I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mCallback:Landroid/window/IScreenRecordingCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ScreenRecordingCallbackController;->unregister(Landroid/window/IScreenRecordingCallback;)V

    return-void
.end method
