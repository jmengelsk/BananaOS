.class public final Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;

    iget-object p1, p1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->onScreenChanged(Z)V

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    const-string/jumbo p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;

    iget-object p1, p1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;->mEdgeLightingClientManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->onScreenChanged(Z)V

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$2;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method
