.class public final synthetic Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/utils/OptPropFactory;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/utils/OptPropFactory;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/utils/OptPropFactory;

    iput-object p2, p0, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Z
    .locals 4

    iget v0, p0, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/utils/OptPropFactory;

    iget-object v1, v0, Lcom/android/server/wm/utils/OptPropFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, v0, Lcom/android/server/wm/utils/OptPropFactory;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/wm/utils/OptPropFactory;->mUserId:I

    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/utils/OptPropFactory;

    iget-object v1, v0, Lcom/android/server/wm/utils/OptPropFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, v0, Lcom/android/server/wm/utils/OptPropFactory;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/wm/utils/OptPropFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/wm/utils/OptPropFactory;->mUserId:I

    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
