.class public final Lcom/android/server/pm/AsecInstallHelper$3;
.super Landroid/content/IIntentReceiver$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/AsecInstallHelper;

.field public final synthetic val$keys:Ljava/util/Set;

.field public final synthetic val$reportStatus:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AsecInstallHelper;ZLjava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$3;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    iput-boolean p2, p0, Lcom/android/server/pm/AsecInstallHelper$3;->val$reportStatus:Z

    iput-object p3, p0, Lcom/android/server/pm/AsecInstallHelper$3;->val$keys:Ljava/util/Set;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "do force gc after sending broadcast: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "PackageManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/Thread;

    iget-boolean p2, p0, Lcom/android/server/pm/AsecInstallHelper$3;->val$reportStatus:Z

    iget-object p3, p0, Lcom/android/server/pm/AsecInstallHelper$3;->val$keys:Ljava/util/Set;

    new-instance p4, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p2, p3, p7}, Lcom/android/server/pm/AsecInstallHelper$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AsecInstallHelper$3;ZLjava/util/Set;I)V

    invoke-direct {p1, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
