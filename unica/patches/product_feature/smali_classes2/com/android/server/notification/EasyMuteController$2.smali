.class public final Lcom/android/server/notification/EasyMuteController$2;
.super Landroid/app/INotificationPlayerOnCompletionListener$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/EasyMuteController;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/EasyMuteController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController$2;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-direct {p0}, Landroid/app/INotificationPlayerOnCompletionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion()V
    .locals 2

    const-string v0, "EasyMuteController"

    const-string/jumbo v1, "onCompletion"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/notification/EasyMuteController$2;->this$0:Lcom/android/server/notification/EasyMuteController;

    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    :cond_0
    return-void
.end method
