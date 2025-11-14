.class public final Lcom/android/server/rollback/LocalIntentReceiver$1;
.super Landroid/content/IIntentSender$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/rollback/LocalIntentReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/rollback/LocalIntentReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/rollback/LocalIntentReceiver$1;->this$0:Lcom/android/server/rollback/LocalIntentReceiver;

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    iget-object p0, p0, Lcom/android/server/rollback/LocalIntentReceiver$1;->this$0:Lcom/android/server/rollback/LocalIntentReceiver;

    iget-object p0, p0, Lcom/android/server/rollback/LocalIntentReceiver;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
