.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;->$r8$classId:I

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    packed-switch p0, :pswitch_data_26

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_e  #0x3
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_15  #0x2
    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1a  #0x1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_21  #0x0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isNonManifestVisible()Z

    move-result p0

    return p0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_21  #00000000
        :pswitch_1a  #00000001
        :pswitch_15  #00000002
        :pswitch_e  #00000003
    .end packed-switch
.end method
