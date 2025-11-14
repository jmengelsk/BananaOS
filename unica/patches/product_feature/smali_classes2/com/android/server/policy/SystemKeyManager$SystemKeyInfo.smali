.class public final Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field public final keyCode:I

.field public final keyPressOld:Z

.field public final press:I


# direct methods
.method public constructor <init>(IILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->keyCode:I

    iput p2, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->press:I

    iput-object p3, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->componentName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(ILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->keyCode:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->keyPressOld:Z

    iput-object p2, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->componentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "keyCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->keyCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->keyPressOld:Z

    if-eqz v1, :cond_0

    const-string v1, " keyPressOld"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, " press="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->press:I

    invoke-static {v1}, Lcom/android/server/policy/SystemKeyManager;->keyPressToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, " componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
