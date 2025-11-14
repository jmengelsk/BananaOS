.class public final Lcom/android/server/pm/StagingManager$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/StagingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/StagingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/StagingManager$2;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p2, p0, Lcom/android/server/pm/StagingManager$2;->this$0:Lcom/android/server/pm/StagingManager;

    invoke-virtual {p2}, Lcom/android/server/pm/StagingManager;->onBootCompletedBroadcastReceived()V

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
