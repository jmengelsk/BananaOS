.class public final synthetic Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/people/data/UserData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/UserData;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/people/data/UserData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/people/data/UserData;

    check-cast p1, Ljava/lang/String;

    packed-switch v0, :pswitch_data_18

    iget-object p0, p0, Lcom/android/server/people/data/UserData;->mDefaultSmsApp:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :pswitch_10  #0x0
    iget-object p0, p0, Lcom/android/server/people/data/UserData;->mDefaultDialer:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_10  #00000000
    .end packed-switch
.end method
