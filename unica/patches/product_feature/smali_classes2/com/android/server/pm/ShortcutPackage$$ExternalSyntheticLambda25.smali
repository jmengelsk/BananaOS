.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/function/Predicate;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Landroid/util/ArraySet;

.field public final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;Landroid/util/ArraySet;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;->f$2:Ljava/util/function/Predicate;

    iput p4, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;->f$3:I

    iput-object p5, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;->f$5:Landroid/util/ArraySet;

    iput-boolean p7, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;->f$6:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;->f$2:Ljava/util/function/Predicate;

    iget v3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;->f$3:I

    iget-object v4, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;->f$5:Landroid/util/ArraySet;

    iget-boolean p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;->f$6:Z

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_1

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez p0, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isFloating()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result v5

    if-nez v5, :cond_2

    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ignored because it isn\'t pinned by "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "ShortcutService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p1, v3}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    const/4 v3, 0x2

    if-nez p0, :cond_3

    if-nez v0, :cond_3

    invoke-virtual {p1, v3}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    :cond_3
    if-eqz v2, :cond_5

    invoke-interface {v2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    :goto_2
    if-nez v0, :cond_6

    invoke-virtual {p1, v3}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    :cond_6
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
