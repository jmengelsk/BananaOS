.class public final synthetic Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;

    packed-switch p0, :pswitch_data_0

    instance-of p0, p1, Lcom/android/server/policy/ModifierShortcutManager$ComponentBookmark;

    return p0

    :pswitch_0
    instance-of p0, p1, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
