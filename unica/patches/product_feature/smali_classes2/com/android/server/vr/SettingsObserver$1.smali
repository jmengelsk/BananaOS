.class public final Lcom/android/server/vr/SettingsObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/SettingsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/SettingsObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/SettingsObserver$1;->this$0:Lcom/android/server/vr/SettingsObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "setting_name"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "enabled_vr_listeners"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "previous_value"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo p1, "new_value"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/vr/SettingsObserver$1;->this$0:Lcom/android/server/vr/SettingsObserver;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    iget-object p0, p1, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {p1}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    goto :goto_0

    :cond_0
    return-void
.end method
