.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:Landroid/content/pm/ShortcutInfo;

.field public final synthetic f$2:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ShortcutInfo;Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/pm/ShortcutService;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$1:Landroid/content/pm/ShortcutInfo;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$2:Lcom/android/server/pm/ShortcutPackage;

    iput-object p4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$1:Landroid/content/pm/ShortcutInfo;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$2:Lcom/android/server/pm/ShortcutPackage;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$3:Ljava/util/List;

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    sget-object v3, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v3

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v4

    const-string/jumbo v5, "ShortcutService"

    if-eq v3, v4, :cond_1

    const-string/jumbo v3, "ShortcutInfo.enabled cannot be changed with updateShortcuts()"

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    move-result v3

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isLongLived()Z

    move-result v4

    if-eq v3, v4, :cond_2

    const-string/jumbo v3, "ShortcutInfo.longLived cannot be changed with updateShortcuts()"

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->hasRank()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->setRankChanged()V

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getImplicitRank()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/pm/ShortcutInfo;->setImplicitRank(I)V

    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_5

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ShortcutPackageItem;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    :cond_5
    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutInfo;->copyNonNullFieldsFrom(Landroid/content/pm/ShortcutInfo;)V

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/content/pm/ShortcutInfo;->setTimestamp(J)V

    if-eqz v3, :cond_6

    invoke-virtual {v0, v2, p1}, Lcom/android/server/pm/ShortcutService;->saveIconAndFixUpShortcutLocked(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V

    :cond_6
    if-nez v3, :cond_7

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->hasStringResources()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V

    :cond_8
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_1
    return-void
.end method
