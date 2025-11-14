.class public final Lcom/android/server/wm/AppCompatUtils$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public mRead:Z

.field public mValue:Z

.field public final synthetic val$supplier:Ljava/util/function/BooleanSupplier;


# direct methods
.method public constructor <init>(Ljava/util/function/BooleanSupplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatUtils$1;->val$supplier:Ljava/util/function/BooleanSupplier;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatUtils$1;->mRead:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatUtils$1;->mRead:Z

    iget-object v0, p0, Lcom/android/server/wm/AppCompatUtils$1;->val$supplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatUtils$1;->mValue:Z

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatUtils$1;->mValue:Z

    return p0
.end method
