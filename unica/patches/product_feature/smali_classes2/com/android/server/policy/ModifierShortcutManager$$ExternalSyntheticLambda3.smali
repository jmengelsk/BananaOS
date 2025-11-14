.class public final synthetic Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/ModifierShortcutManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/ModifierShortcutManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/policy/ModifierShortcutManager;

    return-void
.end method


# virtual methods
.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/policy/ModifierShortcutManager;

    iget-object p2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mBookmarks:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/ModifierShortcutManager;->mAppIntentCache:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
