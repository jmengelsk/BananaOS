.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;->$r8$classId:I

    packed-switch p0, :pswitch_data_28

    check-cast p1, Lcom/android/server/pm/ShortcutLauncher;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    return-void

    :pswitch_b  #0x2
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result p0

    if-nez p0, :cond_17

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    :cond_17
    return-void

    :pswitch_18  #0x1
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->clearImplicitRankAndRankChangedFlag()V

    return-void

    :pswitch_1e  #0x0
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    const p0, 0x60004000

    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->clearFlags(I)V

    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_18  #00000001
        :pswitch_b  #00000002
    .end packed-switch
.end method
