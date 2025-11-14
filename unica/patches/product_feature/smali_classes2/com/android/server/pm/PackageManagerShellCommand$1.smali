.class public final Lcom/android/server/pm/PackageManagerShellCommand$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    iget p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_2c

    check-cast p1, Landroid/content/pm/InstrumentationInfo;

    check-cast p2, Landroid/content/pm/InstrumentationInfo;

    iget-object p0, p1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    iget-object p1, p2, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_12  #0x0
    check-cast p1, Landroid/content/pm/FeatureInfo;

    check-cast p2, Landroid/content/pm/FeatureInfo;

    iget-object p0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget-object p1, p2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-ne p0, p1, :cond_1e

    const/4 p0, 0x0

    goto :goto_2a

    :cond_1e
    if-nez p0, :cond_22

    const/4 p0, -0x1

    goto :goto_2a

    :cond_22
    if-nez p1, :cond_26

    const/4 p0, 0x1

    goto :goto_2a

    :cond_26
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    :goto_2a
    return p0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_12  #00000000
    .end packed-switch
.end method
