.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda11;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda11;->f$0:I

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    const/16 v0, 0x1000

    if-nez p0, :cond_15

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->hasFlags(I)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v1

    if-ne v1, p0, :cond_15

    goto :goto_22

    :cond_15
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->setDisabledReason(I)V

    if-eqz p0, :cond_22

    const/16 p0, 0x40

    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    :cond_22
    :goto_22
    return-void
.end method
