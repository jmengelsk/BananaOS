.class public final Lcom/android/server/policy/AppOpsPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/AppOpsPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/AppOpsPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/AppOpsPolicy$1;->this$0:Lcom/android/server/policy/AppOpsPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_28

    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_12

    goto :goto_28

    :cond_12
    iget-object p2, p0, Lcom/android/server/policy/AppOpsPolicy$1;->this$0:Lcom/android/server/policy/AppOpsPolicy;

    iget-object p2, p2, Lcom/android/server/policy/AppOpsPolicy;->mRoleManager:Landroid/app/role/RoleManager;

    const-string/jumbo v0, "android.app.role.SYSTEM_ACTIVITY_RECOGNIZER"

    invoke-virtual {p2, v0}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_28

    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy$1;->this$0:Lcom/android/server/policy/AppOpsPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/AppOpsPolicy;->updateActivityRecognizerTags(Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-void
.end method
