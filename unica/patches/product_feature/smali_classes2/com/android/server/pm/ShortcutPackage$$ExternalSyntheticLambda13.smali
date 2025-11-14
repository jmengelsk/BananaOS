.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .registers 3

    iput p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda13;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda13;->f$0:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda13;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda13;->f$0:Ljava/util/List;

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    packed-switch v0, :pswitch_data_18

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_13

    :cond_10
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_13
    return-void

    :pswitch_14  #0x0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14  #00000000
    .end packed-switch
.end method
