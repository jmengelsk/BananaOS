.class public final Lcom/android/server/policy/SideFpsEventHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/SideFpsEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/SideFpsEventHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$1;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$1;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
