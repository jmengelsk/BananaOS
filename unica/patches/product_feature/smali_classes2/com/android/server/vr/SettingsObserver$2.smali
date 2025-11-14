.class public final Lcom/android/server/vr/SettingsObserver$2;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/SettingsObserver;

.field public final synthetic val$settingUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/SettingsObserver;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/SettingsObserver$2;->this$0:Lcom/android/server/vr/SettingsObserver;

    iput-object p3, p0, Lcom/android/server/vr/SettingsObserver$2;->val$settingUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/server/vr/SettingsObserver$2;->val$settingUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/vr/SettingsObserver$2;->this$0:Lcom/android/server/vr/SettingsObserver;

    iget-object p0, p0, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {p1}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    goto :goto_0

    :cond_1
    return-void
.end method
