.class public final Lcom/android/server/remoteappmode/RemoteAppModeService$2;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/RemoteAppModeService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$2;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$2;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    invoke-virtual {p1}, Lcom/android/server/remoteappmode/RemoteAppModeService;->initializeStates()V

    iget-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$2;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    iget-object p1, p1, Lcom/android/server/remoteappmode/RemoteAppModeService;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/android/server/remoteappmode/RemoteAppModeService$2;->this$0:Lcom/android/server/remoteappmode/RemoteAppModeService;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/remoteappmode/RemoteAppModeService;->mUserSetupCompleteObserver:Lcom/android/server/remoteappmode/RemoteAppModeService$2;

    return-void
.end method
