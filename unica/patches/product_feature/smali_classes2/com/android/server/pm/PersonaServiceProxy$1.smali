.class public final Lcom/android/server/pm/PersonaServiceProxy$1;
.super Landroid/os/ContainerStateReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PersonaServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaServiceProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeviceOwnerActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3

    const-string/jumbo p1, "PersonaManagerService::Proxy"

    const-string/jumbo p2, "onDeviceOwnerActivated..."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mIsDoEnabled:Z

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/pm/PersonaServiceProxy;->-$$Nest$mfindAndConnectToContainerService(Lcom/android/server/pm/PersonaServiceProxy;I)V

    return-void
.end method
