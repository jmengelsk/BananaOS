.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroid/content/IntentFilter;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Ljava/util/List;Landroid/content/IntentFilter;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/pm/ShortcutService;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;->f$2:Landroid/content/IntentFilter;

    iput-object p4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;->f$4:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;->f$0:Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;->f$2:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;->f$3:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;->f$4:I

    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p0

    invoke-virtual {p1, v3, v2, p0}, Lcom/android/server/pm/ShortcutPackage;->getMatchingShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
