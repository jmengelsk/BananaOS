.class public final Lcom/android/server/tv/TvRemoteServiceInput$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/tv/TvRemoteServiceInput;

.field public final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/tv/TvRemoteServiceInput;Landroid/os/IBinder;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/tv/TvRemoteServiceInput$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/tv/TvRemoteServiceInput$1;->this$0:Lcom/android/server/tv/TvRemoteServiceInput;

    iput-object p2, p0, Lcom/android/server/tv/TvRemoteServiceInput$1;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget v0, p0, Lcom/android/server/tv/TvRemoteServiceInput$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput$1;->this$0:Lcom/android/server/tv/TvRemoteServiceInput;

    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput$1;->val$token:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Lcom/android/server/tv/TvRemoteServiceInput;->closeInputBridge(Landroid/os/IBinder;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput$1;->this$0:Lcom/android/server/tv/TvRemoteServiceInput;

    iget-object p0, p0, Lcom/android/server/tv/TvRemoteServiceInput$1;->val$token:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Lcom/android/server/tv/TvRemoteServiceInput;->closeInputBridge(Landroid/os/IBinder;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
