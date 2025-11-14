.class public final synthetic Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda4;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/policy/ModifierShortcutManager$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    packed-switch v0, :pswitch_data_36

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/AppLaunchData$RoleData;

    invoke-virtual {p1}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0

    :pswitch_22  #0x0
    check-cast p1, Lcom/android/server/policy/ModifierShortcutManager$Bookmark;

    instance-of v0, p1, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;

    if-eqz v0, :cond_34

    check-cast p1, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;

    iget-object p1, p1, Lcom/android/server/policy/ModifierShortcutManager$RoleBookmark;->mRole:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x1

    goto :goto_35

    :cond_34
    const/4 p0, 0x0

    :goto_35
    return p0

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_22  #00000000
    .end packed-switch
.end method
